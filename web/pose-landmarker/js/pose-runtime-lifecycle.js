(function (root, factory) {
  var api = factory();

  if (typeof module === "object" && module.exports) {
    module.exports = api;
  }

  root.PoseRuntimeLifecycle = api;
})(typeof globalThis !== "undefined" ? globalThis : this, function () {
  "use strict";

  function createGeneration() {
    var value = 0;

    return {
      current: function () {
        return value;
      },
      advance: function () {
        value += 1;
        return value;
      },
      isCurrent: function (candidate) {
        return candidate === value;
      },
    };
  }

  function createSessionId(now, random) {
    var timestamp = (now || Date.now)().toString(36);
    var entropy = (random || Math.random)().toString(36).slice(2, 12);
    return "pose-" + timestamp + "-" + entropy;
  }

  function stopStream(stream) {
    if (!stream || typeof stream.getTracks !== "function") {
      return;
    }

    stream.getTracks().forEach(function (track) {
      if (track && typeof track.stop === "function") {
        track.stop();
      }
    });
  }

  function acceptCurrentStream(generation, token, stream) {
    if (!generation.isCurrent(token)) {
      stopStream(stream);
      return false;
    }
    return true;
  }

  function createCameraLifecycle(initialMode) {
    var generation = createGeneration();
    var intendedMode = initialMode || "VIDEO";

    return {
      beginOpen: function () {
        intendedMode = "VIDEO";
        return generation.advance();
      },
      invalidateForImage: function () {
        intendedMode = "IMAGE";
        return generation.advance();
      },
      stop: function () {
        return generation.advance();
      },
      currentGeneration: function () {
        return generation.current();
      },
      currentMode: function () {
        return intendedMode;
      },
      isCurrent: function (token, mode) {
        return (
          generation.isCurrent(token) && (!mode || intendedMode === mode)
        );
      },
      acceptVideoStream: function (token, stream) {
        if (!generation.isCurrent(token) || intendedMode !== "VIDEO") {
          stopStream(stream);
          return false;
        }
        return true;
      },
    };
  }

  function createModeCoordinator(options) {
    var desiredRunningMode = options.initialDesiredMode;
    var appliedModelMode = options.initialAppliedMode;
    var applyMode = options.applyMode;
    var convergence = null;

    function converge() {
      if (convergence) {
        return convergence;
      }

      convergence = (async function () {
        while (appliedModelMode !== desiredRunningMode) {
          var targetMode = desiredRunningMode;
          await applyMode(targetMode);
          appliedModelMode = targetMode;
        }
        return appliedModelMode;
      })();

      convergence = convergence.then(
        function (mode) {
          convergence = null;
          if (appliedModelMode !== desiredRunningMode) {
            return converge();
          }
          return mode;
        },
        function (error) {
          convergence = null;
          throw error;
        }
      );
      return convergence;
    }

    return {
      request: function (mode) {
        desiredRunningMode = mode;
        return converge();
      },
      desiredMode: function () {
        return desiredRunningMode;
      },
      appliedMode: function () {
        return appliedModelMode;
      },
      isConverged: function (mode) {
        return (
          desiredRunningMode === mode &&
          appliedModelMode === mode &&
          convergence === null
        );
      },
    };
  }

  function metaValue(dictionary, key) {
    if (!dictionary) {
      return null;
    }
    if (dictionary.meta && dictionary.meta[key] != null) {
      return dictionary.meta[key];
    }
    if (dictionary["meta::" + key] != null) {
      return dictionary["meta::" + key];
    }
    return null;
  }

  function confirmsPublication(dictionary, target) {
    return (
      metaValue(dictionary, "session_id") === target.sessionId &&
      metaValue(dictionary, "frame_id") === target.targetFrameId
    );
  }

  function createFramePublisher(options) {
    var setDict = options.setDict;
    var getDict = options.getDict;
    var emitUpdate = options.emitUpdate;
    var emitError = options.emitError;
    var isGenerationCurrent = options.isGenerationCurrent;
    var setTimer = options.setTimer || setTimeout;
    var clearTimer = options.clearTimer || clearTimeout;
    var maxAttempts = Math.max(1, options.maxAttempts || 8);
    var retryDelayMs = Math.max(
      0,
      options.retryDelayMs == null ? 12 : options.retryDelayMs
    );
    var callbackTimeoutMs = Math.max(
      1,
      options.callbackTimeoutMs == null ? 80 : options.callbackTimeoutMs
    );
    var pending = null;
    var inFlight = false;

    function finish() {
      inFlight = false;
      pump();
    }

    function failTimeout(target) {
      emitError(
        "DICT_CONFIRM_TIMEOUT",
        "Dictionary " +
          target.targetDictName +
          " did not confirm frame " +
          target.targetFrameId
      );
      finish();
    }

    function confirm(target, attempt) {
      var settled = false;
      var watchdog;

      if (!isGenerationCurrent(target.generation)) {
        finish();
        return;
      }

      function settle(dictionary, callbackTimedOut) {
        if (settled) {
          return;
        }
        settled = true;
        clearTimer(watchdog);

        if (!isGenerationCurrent(target.generation)) {
          finish();
          return;
        }

        if (!callbackTimedOut && confirmsPublication(dictionary, target)) {
          emitUpdate(
            target.targetDictName,
            target.targetFrameId,
            target.timestampMs
          );
          finish();
          return;
        }

        if (attempt + 1 >= maxAttempts) {
          failTimeout(target);
          return;
        }

        setTimer(function () {
          confirm(target, attempt + 1);
        }, retryDelayMs);
      }

      watchdog = setTimer(function () {
        settle(null, true);
      }, callbackTimeoutMs);

      try {
        getDict(target.targetDictName, function (dictionary) {
          settle(dictionary, false);
        });
      } catch (error) {
        settle(null, true);
      }
    }

    function pump() {
      var target;

      if (inFlight || !pending) {
        return;
      }

      target = pending;
      pending = null;

      if (!isGenerationCurrent(target.generation)) {
        pump();
        return;
      }

      inFlight = true;
      try {
        setDict(target.targetDictName, target.frame);
      } catch (error) {
        emitError("DICT_WRITE_FAILED", String(error));
        finish();
        return;
      }
      confirm(target, 0);
    }

    return {
      enqueue: function (publication) {
        pending = {
          targetDictName: publication.targetDictName,
          targetFrameId: publication.targetFrameId,
          timestampMs: publication.timestampMs,
          generation: publication.generation,
          sessionId: publication.sessionId,
          frame: publication.frame,
        };
        pump();
      },
      isBusy: function () {
        return inFlight;
      },
    };
  }

  return {
    createGeneration: createGeneration,
    createSessionId: createSessionId,
    stopStream: stopStream,
    acceptCurrentStream: acceptCurrentStream,
    createCameraLifecycle: createCameraLifecycle,
    createModeCoordinator: createModeCoordinator,
    createFramePublisher: createFramePublisher,
  };
});
