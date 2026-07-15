(function (root) {
  "use strict";

  var RAW_FEATURES = [
    "torso_sway",
    "torso_lean",
    "shoulder_tilt",
    "head_turn",
    "body_proximity",
    "motion_energy",
  ];
  var PROFILES = ["singer", "instrumentalist"];

  function finiteNumber(value, fallback) {
    return typeof value === "number" && isFinite(value) ? value : fallback;
  }

  function positiveNumber(value, fallback) {
    return typeof value === "number" && isFinite(value) && value >= 0
      ? value
      : fallback;
  }

  function flag(value) {
    var numeric;
    if (value === true) {
      return 1;
    }
    numeric = Number(value);
    return isFinite(numeric) && numeric !== 0 ? 1 : 0;
  }

  function clip(value, minimum, maximum) {
    return Math.min(maximum, Math.max(minimum, value));
  }

  function profileName(value) {
    var name = String(value || "").toLowerCase();
    return PROFILES.indexOf(name) >= 0 ? name : null;
  }

  function neutralFeatures() {
    return {
      torso_sway: 0,
      torso_lean: 0,
      shoulder_tilt: 0,
      head_turn: 0,
      body_proximity: 0,
      motion_energy: 0,
    };
  }

  function sanitizeFeatures(source) {
    var input = source || {};
    var output = neutralFeatures();
    var index;
    var name;
    var value;

    for (index = 0; index < RAW_FEATURES.length; index += 1) {
      name = RAW_FEATURES[index];
      value = finiteNumber(input[name], 0);
      output[name] = clip(value, name === "motion_energy" ? 0 : -1, 1);
    }
    return output;
  }

  function copyFeatures(source) {
    return sanitizeFeatures(source);
  }

  function interpolateFeatures(start, target, amount) {
    var output = neutralFeatures();
    var progress = clip(finiteNumber(amount, 0), 0, 1);
    var index;
    var name;

    for (index = 0; index < RAW_FEATURES.length; index += 1) {
      name = RAW_FEATURES[index];
      output[name] = start[name] + (target[name] - start[name]) * progress;
    }
    return output;
  }

  function calibrationActive(engine) {
    var phase = String((engine && engine.calibration_phase) || "idle");
    return phase !== "" && phase !== "idle";
  }

  function InteractionState(options) {
    var settings = options || {};

    this.holdMs = positiveNumber(settings.holdMs, 300);
    this.returnMs = positiveNumber(settings.returnMs, 800);
    this.reconnectMs = positiveNumber(settings.reconnectMs, 200);
    this.intentionalReleaseMs = positiveNumber(
      settings.intentionalReleaseMs,
      80
    );

    this.arm = 0;
    this.profile = "singer";
    this.clutch = 1;
    this.pedalMode = 0;
    this.pedalConnected = 1;
    this.pedalFault = 0;

    this.state = "NO_CAMERA";
    this.active = 0;
    this.lastTimestampMs = null;
    this.currentOutput = neutralFeatures();

    this.lossStartMs = null;
    this.lossOutput = neutralFeatures();
    this.reconnectStartMs = null;
    this.reconnectOutput = neutralFeatures();
    this.releaseStartMs = null;
    this.releaseOutput = neutralFeatures();
    this.intentionalReleasePending = 0;
    this.needsReconnect = 0;
  }

  InteractionState.prototype.clutchGate = function () {
    if (this.pedalMode) {
      if (!this.pedalConnected || this.pedalFault) {
        return 0;
      }
      return this.clutch;
    }
    return this.clutch;
  };

  InteractionState.prototype.hasControlledOutput = function () {
    var index;
    for (index = 0; index < RAW_FEATURES.length; index += 1) {
      if (Math.abs(this.currentOutput[RAW_FEATURES[index]]) > 0.0000001) {
        return true;
      }
    }
    return this.state === "ACTIVE" || this.state === "HOLD" || this.state === "RETURN";
  };

  InteractionState.prototype.queueIntentionalRelease = function () {
    if (this.hasControlledOutput()) {
      this.intentionalReleasePending = 1;
    }
  };

  InteractionState.prototype.command = function (name, value) {
    var normalized = String(name || "").toLowerCase();
    var next;
    var selected;
    var previousGate = this.clutchGate();

    if (normalized === "arm" || normalized === "enable") {
      next = flag(value);
      if (this.arm && !next) {
        this.queueIntentionalRelease();
      }
      this.arm = next;
    } else if (normalized === "profile") {
      selected = profileName(value);
      if (selected && selected !== this.profile) {
        this.queueIntentionalRelease();
        this.profile = selected;
      }
    } else if (normalized === "clutch") {
      this.clutch = flag(value);
      if (previousGate && !this.clutchGate()) {
        this.queueIntentionalRelease();
      }
    } else if (normalized === "pedal_mode") {
      next = flag(value);
      this.pedalMode = next;
      if (!next) {
        this.pedalFault = 0;
        this.clutch = 1;
      } else if (!this.pedalConnected) {
        this.pedalFault = 1;
        this.clutch = 0;
      }
      if (previousGate && !this.clutchGate()) {
        this.queueIntentionalRelease();
      }
    } else if (normalized === "pedal_connected") {
      next = flag(value);
      this.pedalConnected = next;
      if (this.pedalMode && !next) {
        this.pedalFault = 1;
        this.clutch = 0;
      }
      if (previousGate && !this.clutchGate()) {
        this.queueIntentionalRelease();
      }
    } else if (normalized === "pedal_reset" || normalized === "reset_pedal") {
      if (flag(value) && this.pedalConnected) {
        this.pedalFault = 0;
        this.clutch = 0;
      }
    }

    return this;
  };

  InteractionState.prototype.clearTransitions = function () {
    this.lossStartMs = null;
    this.reconnectStartMs = null;
    this.releaseStartMs = null;
    this.intentionalReleasePending = 0;
  };

  InteractionState.prototype.resetForTimestamp = function (timestampMs) {
    this.clearTransitions();
    this.currentOutput = neutralFeatures();
    this.lossOutput = neutralFeatures();
    this.reconnectOutput = neutralFeatures();
    this.releaseOutput = neutralFeatures();
    this.reconnectStartMs = timestampMs;
    this.needsReconnect = 0;
  };

  InteractionState.prototype.releaseFeatures = function (timestampMs) {
    var elapsed;
    var progress;

    if (this.intentionalReleasePending) {
      this.releaseStartMs = timestampMs;
      this.releaseOutput = copyFeatures(this.currentOutput);
      this.intentionalReleasePending = 0;
      this.lossStartMs = null;
      this.reconnectStartMs = null;
    }
    if (this.releaseStartMs === null) {
      this.currentOutput = neutralFeatures();
      return this.currentOutput;
    }

    elapsed = Math.max(0, timestampMs - this.releaseStartMs);
    progress = this.intentionalReleaseMs
      ? elapsed / this.intentionalReleaseMs
      : 1;
    this.currentOutput = interpolateFeatures(
      this.releaseOutput,
      neutralFeatures(),
      progress
    );
    if (progress >= 1) {
      this.releaseStartMs = null;
    }
    return this.currentOutput;
  };

  InteractionState.prototype.lossFeatures = function (timestampMs) {
    var elapsed;
    var returnElapsed;

    if (this.lossStartMs === null) {
      this.lossStartMs = timestampMs;
      this.lossOutput = copyFeatures(this.currentOutput);
      this.reconnectStartMs = null;
      this.releaseStartMs = null;
    }
    elapsed = Math.max(0, timestampMs - this.lossStartMs);

    if (elapsed <= this.holdMs) {
      this.state = "HOLD";
      this.currentOutput = copyFeatures(this.lossOutput);
    } else if (elapsed <= this.holdMs + this.returnMs) {
      this.state = "RETURN";
      returnElapsed = elapsed - this.holdMs;
      this.currentOutput = interpolateFeatures(
        this.lossOutput,
        neutralFeatures(),
        this.returnMs ? returnElapsed / this.returnMs : 1
      );
    } else {
      this.state = "LOST";
      this.currentOutput = neutralFeatures();
    }
    return this.currentOutput;
  };

  InteractionState.prototype.activeFeatures = function (timestampMs, liveFeatures) {
    var progress;

    if (this.needsReconnect) {
      this.reconnectStartMs = timestampMs;
      this.reconnectOutput = copyFeatures(this.currentOutput);
      this.lossStartMs = null;
      this.needsReconnect = 0;
    } else if (
      this.lossStartMs !== null ||
      this.state === "HOLD" ||
      this.state === "RETURN" ||
      this.state === "LOST"
    ) {
      this.reconnectStartMs = timestampMs;
      this.reconnectOutput = copyFeatures(this.currentOutput);
      this.lossStartMs = null;
    }

    if (this.reconnectStartMs !== null) {
      progress = this.reconnectMs
        ? Math.max(0, timestampMs - this.reconnectStartMs) / this.reconnectMs
        : 1;
      this.currentOutput = interpolateFeatures(
        this.reconnectOutput,
        liveFeatures,
        progress
      );
      if (progress >= 1) {
        this.reconnectStartMs = null;
      }
    } else {
      this.currentOutput = copyFeatures(liveFeatures);
    }

    this.releaseStartMs = null;
    this.intentionalReleasePending = 0;
    this.state = "ACTIVE";
    return this.currentOutput;
  };

  InteractionState.prototype.output = function (engine, features) {
    var source = engine || {};
    var values = sanitizeFeatures(features);
    var output = {
      profile: this.profile,
      state: this.state,
      status: this.state,
      source_status: String(source.status || ""),
      calibration_phase: String(source.calibration_phase || "idle"),
      calibrated: flag(source.calibrated),
      tracking_valid: flag(source.tracking_valid),
      inside_control_zone: flag(source.inside_control_zone),
      armed: this.arm,
      clutch_gate: this.clutchGate(),
      pedal_mode: this.pedalMode,
      pedal_connected: this.pedalConnected,
      pedal_fault: this.pedalFault,
      model_ready: flag(source.model_ready),
      camera_ready: flag(source.camera_ready),
      has_pose: flag(source.has_pose),
      active: this.active,
      tracking_confidence: clip(
        finiteNumber(source.tracking_confidence, 0),
        0,
        1
      ),
      torso_sway: values.torso_sway,
      torso_lean: values.torso_lean,
      shoulder_tilt: values.shoulder_tilt,
      head_turn: values.head_turn,
      body_proximity: values.body_proximity,
      motion_energy: values.motion_energy,
      energy: 0,
      space: 0,
      texture: 0,
      transform: 0,
      Energy: 0,
      Space: 0,
      Texture: 0,
      Transform: 0,
      semantic_assigned: 0,
    };
    return output;
  };

  InteractionState.prototype.step = function (timestampMs, engineDictionary) {
    var engine = engineDictionary || {};
    var timestamp = finiteNumber(Number(timestampMs), 0);
    var timestampReset =
      this.lastTimestampMs !== null && timestamp < this.lastTimestampMs;
    var liveFeatures = sanitizeFeatures(engine);
    var cameraReady = flag(engine.camera_ready);
    var modelReady = flag(engine.model_ready);
    var calibrated = flag(engine.calibrated);
    var trackingValid = flag(engine.tracking_valid);
    var insideZone = flag(engine.inside_control_zone);
    var gate = this.clutchGate();
    var wasLossState =
      this.state === "HOLD" || this.state === "RETURN" || this.state === "LOST";
    var sourceInterrupted;

    if (timestampReset) {
      this.resetForTimestamp(timestamp);
    }
    this.lastTimestampMs = timestamp;

    if (!cameraReady || !modelReady) {
      sourceInterrupted = this.hasControlledOutput() || this.needsReconnect;
      this.clearTransitions();
      this.needsReconnect = sourceInterrupted ? 1 : 0;
      this.currentOutput = neutralFeatures();
      this.state = "NO_CAMERA";
      this.active = 0;
      return this.output(engine, this.currentOutput);
    }

    if (calibrationActive(engine)) {
      this.clearTransitions();
      this.needsReconnect = 0;
      this.currentOutput = neutralFeatures();
      this.state = "CALIBRATING";
      this.active = 0;
      return this.output(engine, this.currentOutput);
    }

    if (!insideZone && !this.hasControlledOutput() && !wasLossState) {
      this.clearTransitions();
      this.needsReconnect = 0;
      this.currentOutput = neutralFeatures();
      this.state = "POSITION";
      this.active = 0;
      return this.output(engine, this.currentOutput);
    }

    if (!calibrated) {
      this.clearTransitions();
      this.needsReconnect = 0;
      this.currentOutput = neutralFeatures();
      this.state = "UNCALIBRATED";
      this.active = 0;
      return this.output(engine, this.currentOutput);
    }

    if (!this.arm || !gate) {
      this.state = "READY";
      this.active = 0;
      return this.output(engine, this.releaseFeatures(timestamp));
    }

    if (!trackingValid || !insideZone) {
      if (this.hasControlledOutput() || wasLossState) {
        this.active = 0;
        return this.output(engine, this.lossFeatures(timestamp));
      }
      this.clearTransitions();
      this.needsReconnect = 0;
      this.currentOutput = neutralFeatures();
      this.state = insideZone ? "LOST" : "POSITION";
      this.active = 0;
      return this.output(engine, this.currentOutput);
    }

    if (timestampReset) {
      this.reconnectStartMs = timestamp;
      this.reconnectOutput = neutralFeatures();
    } else if (wasLossState && this.lossStartMs === null) {
      this.reconnectStartMs = timestamp;
      this.reconnectOutput = copyFeatures(this.currentOutput);
    }
    this.active = 1;
    return this.output(engine, this.activeFeatures(timestamp, liveFeatures));
  };

  root.PoseInteractionState = InteractionState;
  root.PoseInteractionStateAPI = {
    InteractionState: InteractionState,
    neutralFeatures: neutralFeatures,
  };

  if (typeof module === "object" && module.exports) {
    module.exports = root.PoseInteractionStateAPI;
  }
})(typeof global !== "undefined" ? global : this);
