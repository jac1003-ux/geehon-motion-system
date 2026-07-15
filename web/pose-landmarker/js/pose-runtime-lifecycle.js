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

  function confirmedFrameId(dictionary) {
    if (!dictionary) {
      return null;
    }
    if (dictionary.meta && typeof dictionary.meta.frame_id === "number") {
      return dictionary.meta.frame_id;
    }
    if (typeof dictionary["meta::frame_id"] === "number") {
      return dictionary["meta::frame_id"];
    }
    return null;
  }

  function createFramePublisher(options) {
    var setDict = options.setDict;
    var getDict = options.getDict;
    var emitUpdate = options.emitUpdate;
    var emitError = options.emitError;
    var isGenerationCurrent = options.isGenerationCurrent;
    var setTimer = options.setTimer || setTimeout;
    var maxAttempts = Math.max(1, options.maxAttempts || 8);
    var retryDelayMs = Math.max(0, options.retryDelayMs || 12);
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
      if (!isGenerationCurrent(target.generation)) {
        finish();
        return;
      }

      try {
        getDict(target.targetDictName, function (dictionary) {
          if (!isGenerationCurrent(target.generation)) {
            finish();
            return;
          }

          if (confirmedFrameId(dictionary) === target.targetFrameId) {
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
        });
      } catch (error) {
        if (attempt + 1 >= maxAttempts) {
          failTimeout(target);
          return;
        }
        setTimer(function () {
          confirm(target, attempt + 1);
        }, retryDelayMs);
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
    stopStream: stopStream,
    acceptCurrentStream: acceptCurrentStream,
    createFramePublisher: createFramePublisher,
  };
});
