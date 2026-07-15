(function (root) {
  "use strict";

  var math = root.PoseFeatureMath;
  var CORE_NAMES = [
    "nose",
    "left_shoulder",
    "right_shoulder",
    "left_hip",
    "right_hip",
  ];
  var SIGNED_FEATURES = [
    "torso_sway",
    "torso_lean",
    "shoulder_tilt",
    "head_turn",
    "body_proximity",
  ];
  var PROFILES = ["singer", "instrumentalist"];
  var ZONE = { minimumX: 0.15, maximumX: 0.85, minimumY: 0.1, maximumY: 0.9 };

  if (!math && typeof require === "function") {
    math = require("./pose_feature_math.js");
  }
  if (!math && typeof include === "function") {
    include("pose_feature_math.js");
    math = root.PoseFeatureMath;
  }
  if (!math) {
    throw new Error("PoseFeatureMath is required");
  }

  function finiteNumber(value) {
    return typeof value === "number" && isFinite(value);
  }

  function flag(value) {
    return value === true || Number(value) !== 0 ? 1 : 0;
  }

  function profileName(value) {
    var name = String(value || "").toLowerCase();
    return PROFILES.indexOf(name) >= 0 ? name : null;
  }

  function frameMeta(frame, name, fallback) {
    var meta = frame && frame.meta;
    if (meta && meta[name] != null) {
      return meta[name];
    }
    if (frame && frame[name] != null) {
      return frame[name];
    }
    return fallback;
  }

  function pointInside(point) {
    return (
      point &&
      finiteNumber(point.x) &&
      finiteNumber(point.y) &&
      point.x >= ZONE.minimumX &&
      point.x <= ZONE.maximumX &&
      point.y >= ZONE.minimumY &&
      point.y <= ZONE.maximumY
    );
  }

  function controlZoneContains(geometry) {
    var points;
    if (!geometry || !geometry.points) {
      return false;
    }
    points = geometry.points;
    return (
      pointInside(points.left_shoulder) &&
      pointInside(points.right_shoulder) &&
      pointInside(points.left_hip) &&
      pointInside(points.right_hip)
    );
  }

  function zeroFeatures() {
    return {
      torso_sway: 0,
      torso_lean: 0,
      shoulder_tilt: 0,
      head_turn: 0,
      body_proximity: 0,
      motion_energy: 0,
    };
  }

  function copyPoint(point) {
    return { x: point.x, y: point.y };
  }

  function motionSnapshot(geometry, timestampMs) {
    var points = {};
    var index;
    for (index = 0; index < CORE_NAMES.length; index += 1) {
      points[CORE_NAMES[index]] = copyPoint(geometry.points[CORE_NAMES[index]]);
    }
    return {
      timestampMs: timestampMs,
      bodyScale: geometry.bodyScale,
      points: points,
    };
  }

  function PoseFeatureEngine(options) {
    var settings = options || {};
    this.outputDictName = settings.dictName || "pose_features";
    this.profile = "singer";
    this.calibrations = { singer: null, instrumentalist: null };
    this.calibrationSession = null;
    this.cameraReady = 0;
    this.modelReady = 0;
    this.trackingValid = 0;
    this.highConfidenceSince = null;
    this.lowConfidenceSince = null;
    this.lastTimestampMs = null;
    this.lastSmoothingTimestampMs = null;
    this.smoothed = zeroFeatures();
    this.motionHistory = [];
    this.lastStatus = null;
  }

  PoseFeatureEngine.prototype.command = function (name, value) {
    var normalized = String(name || "").toLowerCase();
    var selected;

    if (normalized === "profile") {
      selected = profileName(value);
      if (selected) {
        this.profile = selected;
        this.calibrationSession = null;
        this.resetTemporalFeatures();
      }
    } else if (normalized === "calibrate") {
      this.calibrationSession = {
        startTimestampMs: null,
        samples: [],
        attemptedFrames: 0,
        phase: "preparing",
      };
      this.resetTemporalFeatures();
    } else if (normalized === "reset_calibration") {
      this.calibrations[this.profile] = null;
      this.calibrationSession = null;
      this.resetTemporalFeatures();
    } else if (normalized === "camera_ready") {
      this.cameraReady = flag(value);
      if (!this.cameraReady) {
        this.resetTracking();
        this.resetTemporalFeatures();
      }
    } else if (normalized === "model_ready") {
      this.modelReady = flag(value);
      if (!this.modelReady) {
        this.resetTracking();
        this.resetTemporalFeatures();
      }
    } else if (normalized === "dict_name") {
      if (value != null && String(value).length) {
        this.outputDictName = String(value);
      }
    }

    return this;
  };

  PoseFeatureEngine.prototype.resetTracking = function () {
    this.trackingValid = 0;
    this.highConfidenceSince = null;
    this.lowConfidenceSince = null;
  };

  PoseFeatureEngine.prototype.resetTemporalFeatures = function () {
    this.lastSmoothingTimestampMs = null;
    this.smoothed = zeroFeatures();
    this.motionHistory = [];
  };

  PoseFeatureEngine.prototype.isCalibrated = function (profile) {
    var selected = profileName(profile || this.profile);
    return Boolean(selected && this.calibrations[selected]);
  };

  PoseFeatureEngine.prototype.calibrationFor = function (profile) {
    var selected = profileName(profile || this.profile);
    return selected ? this.calibrations[selected] : null;
  };

  PoseFeatureEngine.prototype.calibrationSampleCount = function () {
    return this.calibrationSession ? this.calibrationSession.samples.length : 0;
  };

  PoseFeatureEngine.prototype.updateTracking = function (
    confidence,
    timestampMs,
    runtimeReady
  ) {
    if (!runtimeReady) {
      this.resetTracking();
      return;
    }

    if (confidence >= 0.6) {
      this.lowConfidenceSince = null;
      if (this.highConfidenceSince === null) {
        this.highConfidenceSince = timestampMs;
      }
      if (
        !this.trackingValid &&
        timestampMs - this.highConfidenceSince >= 150
      ) {
        this.trackingValid = 1;
      }
    } else if (confidence < 0.45) {
      this.highConfidenceSince = null;
      if (this.lowConfidenceSince === null) {
        this.lowConfidenceSince = timestampMs;
      }
      if (
        this.trackingValid &&
        timestampMs - this.lowConfidenceSince >= 100
      ) {
        this.trackingValid = 0;
      }
    } else {
      this.highConfidenceSince = null;
      this.lowConfidenceSince = null;
    }
  };

  PoseFeatureEngine.prototype.updateCalibration = function (
    timestampMs,
    geometry,
    insideZone,
    events
  ) {
    var session = this.calibrationSession;
    var elapsed;
    var baseline;
    var validRatio;

    if (!session) {
      return "idle";
    }
    if (session.startTimestampMs === null) {
      session.startTimestampMs = timestampMs;
    }

    elapsed = Math.max(0, timestampMs - session.startTimestampMs);
    if (elapsed < 1000) {
      session.phase = "preparing";
      return session.phase;
    }
    if (elapsed < 3000) {
      session.phase = "collecting";
      session.attemptedFrames += 1;
      if (geometry && insideZone && geometry.confidence >= 0.6) {
        session.samples.push(geometry);
      }
      return session.phase;
    }

    validRatio = session.attemptedFrames
      ? session.samples.length / session.attemptedFrames
      : 0;
    baseline =
      validRatio >= 0.6 ? math.calibrationFromSamples(session.samples) : null;
    if (baseline) {
      this.calibrations[this.profile] = baseline;
      events.push("calibration_complete " + this.profile);
    } else {
      events.push("calibration_failed " + this.profile);
    }
    this.calibrationSession = null;
    this.resetTemporalFeatures();
    return "idle";
  };

  PoseFeatureEngine.prototype.motionEnergy = function (geometry, timestampMs) {
    var history = this.motionHistory;
    var cutoff = timestampMs - 250;
    var velocityTotal = 0;
    var velocityCount = 0;
    var previous;
    var current;
    var dtSeconds;
    var scale;
    var pointDistance;
    var pointCount;
    var index;
    var nameIndex;
    var name;

    history.push(motionSnapshot(geometry, timestampMs));
    while (history.length > 2 && history[1].timestampMs < cutoff) {
      history.shift();
    }

    for (index = 1; index < history.length; index += 1) {
      previous = history[index - 1];
      current = history[index];
      dtSeconds = (current.timestampMs - previous.timestampMs) / 1000;
      if (!(dtSeconds > 0)) {
        continue;
      }
      scale = Math.max(0.05, (previous.bodyScale + current.bodyScale) / 2);
      pointDistance = 0;
      pointCount = 0;
      for (nameIndex = 0; nameIndex < CORE_NAMES.length; nameIndex += 1) {
        name = CORE_NAMES[nameIndex];
        pointDistance += math.distance(previous.points[name], current.points[name]);
        pointCount += 1;
      }
      velocityTotal += pointDistance / pointCount / scale / dtSeconds;
      velocityCount += 1;
    }

    if (!velocityCount) {
      return 0;
    }
    return math.clip(velocityTotal / velocityCount / 2.5, 0, 1);
  };

  PoseFeatureEngine.prototype.filteredFeatures = function (
    geometry,
    baseline,
    timestampMs
  ) {
    var raw = math.featuresFromGeometry(geometry, baseline);
    var filtered = zeroFeatures();
    var dtMs;
    var alpha;
    var index;
    var field;
    var target;

    if (!raw) {
      return filtered;
    }

    dtMs =
      this.lastSmoothingTimestampMs === null
        ? 0
        : Math.max(0, timestampMs - this.lastSmoothingTimestampMs);
    alpha = this.lastSmoothingTimestampMs === null ? 1 : math.smoothingAlpha(dtMs, 80);

    for (index = 0; index < SIGNED_FEATURES.length; index += 1) {
      field = SIGNED_FEATURES[index];
      target = math.deadzoneSigned(raw[field], 0.04);
      filtered[field] = math.clip(
        this.smoothed[field] + alpha * (target - this.smoothed[field]),
        -1,
        1
      );
    }
    filtered.motion_energy = this.motionEnergy(geometry, timestampMs);
    this.lastSmoothingTimestampMs = timestampMs;
    this.smoothed = filtered;
    return filtered;
  };

  PoseFeatureEngine.prototype.statusFor = function (state) {
    if (!state.cameraReady) {
      return "no_camera";
    }
    if (!state.modelReady) {
      return "model_loading";
    }
    if (!state.hasPose) {
      return "no_pose";
    }
    if (!state.insideZone) {
      return "position";
    }
    if (state.calibrationPhase !== "idle") {
      return "calibrating";
    }
    if (!state.calibrated) {
      return "uncalibrated";
    }
    if (!state.trackingValid) {
      return "tracking";
    }
    return "ready";
  };

  PoseFeatureEngine.prototype.processFrame = function (frame) {
    var events = [];
    var timestampMs = Number(frameMeta(frame, "timestamp_ms", 0));
    var hasPose = flag(frameMeta(frame, "has_pose", 0));
    var geometry;
    var confidence;
    var insideZone;
    var calibrationPhase;
    var baseline;
    var features;
    var calibrated;
    var status;
    var output;

    if (!finiteNumber(timestampMs)) {
      timestampMs = this.lastTimestampMs === null ? 0 : this.lastTimestampMs;
    }
    if (this.lastTimestampMs !== null && timestampMs < this.lastTimestampMs) {
      this.resetTracking();
      this.resetTemporalFeatures();
    }
    this.lastTimestampMs = timestampMs;

    if (frameMeta(frame, "model_ready", null) != null) {
      this.modelReady = flag(frameMeta(frame, "model_ready", 0));
    }
    if (frameMeta(frame, "camera_ready", null) != null) {
      this.cameraReady = flag(frameMeta(frame, "camera_ready", 0));
    }
    if (!this.modelReady || !this.cameraReady) {
      hasPose = 0;
    }

    geometry = hasPose ? math.geometry(frame) : null;
    confidence = geometry ? math.frameConfidence(frame) : 0;
    insideZone = geometry ? controlZoneContains(geometry) : false;
    this.updateTracking(
      confidence,
      timestampMs,
      Boolean(this.modelReady && this.cameraReady)
    );

    calibrationPhase = this.updateCalibration(
      timestampMs,
      geometry,
      insideZone,
      events
    );
    baseline = this.calibrations[this.profile];
    calibrated = baseline ? 1 : 0;

    if (geometry && baseline) {
      features = this.filteredFeatures(geometry, baseline, timestampMs);
    } else {
      features = zeroFeatures();
      this.resetTemporalFeatures();
    }

    status = this.statusFor({
      cameraReady: this.cameraReady,
      modelReady: this.modelReady,
      hasPose: hasPose && geometry,
      insideZone: insideZone,
      calibrationPhase: calibrationPhase,
      calibrated: calibrated,
      trackingValid: this.trackingValid,
    });
    if (status !== this.lastStatus) {
      events.push("status " + status);
      this.lastStatus = status;
    }

    output = {
      profile: this.profile,
      status: status,
      calibration_phase: calibrationPhase,
      timestamp_ms: timestampMs,
      calibrated: calibrated,
      tracking_valid: this.trackingValid,
      inside_control_zone: insideZone ? 1 : 0,
      model_ready: this.modelReady,
      camera_ready: this.cameraReady,
      has_pose: hasPose && geometry ? 1 : 0,
      torso_sway: features.torso_sway,
      torso_lean: features.torso_lean,
      shoulder_tilt: features.shoulder_tilt,
      head_turn: features.head_turn,
      body_proximity: features.body_proximity,
      motion_energy: features.motion_energy,
      tracking_confidence: math.clip(confidence, 0, 1),
      Energy: 0,
      Space: 0,
      Texture: 0,
      Transform: 0,
      semantic_assigned: 0,
    };

    return {
      dictionary: output,
      dictionaryName: this.outputDictName,
      events: events,
    };
  };

  root.PoseFeatureEngine = PoseFeatureEngine;
  root.PoseFeatureEngineAPI = {
    PoseFeatureEngine: PoseFeatureEngine,
    controlZoneContains: controlZoneContains,
  };

  if (typeof module === "object" && module.exports) {
    module.exports = root.PoseFeatureEngineAPI;
  }
})(typeof global !== "undefined" ? global : this);

var poseFeatureEngine = new PoseFeatureEngine();

if (typeof outlet === "function") {
  autowatch = 1;
  inlets = 2;
  outlets = 6;
}

function writeEngineDictionary(name, values) {
  var dictionaryObject = new Dict(name);
  var keys = Object.keys(values);
  var index;
  dictionaryObject.clear();
  for (index = 0; index < keys.length; index += 1) {
    dictionaryObject.set(keys[index], values[keys[index]]);
  }
}

function emitEngineResult(result) {
  var dictionary = result.dictionary;
  var index;
  writeEngineDictionary(result.dictionaryName, dictionary);
  for (index = 0; index < result.events.length; index += 1) {
    outlet(5, result.events[index]);
  }
  outlet(4, dictionary.inside_control_zone);
  outlet(3, dictionary.calibrated);
  outlet(2, dictionary.tracking_valid);
  outlet(1, dictionary.tracking_confidence);
  outlet(0, "dictionary", result.dictionaryName);
}

function frameObjectFromDict(name) {
  var source = new Dict(String(name));
  var serialized = source.stringify();
  return serialized ? JSON.parse(serialized) : null;
}

function dictionary(name) {
  var frame;
  if (inlet !== 0) {
    return;
  }
  try {
    frame = frameObjectFromDict(name);
    emitEngineResult(poseFeatureEngine.processFrame(frame));
  } catch (error) {
    outlet(5, "error " + String(error));
  }
}

function profile(value) {
  if (inlet === 1) {
    poseFeatureEngine.command("profile", value);
  }
}

function calibrate() {
  if (inlet === 1) {
    poseFeatureEngine.command("calibrate");
    outlet(5, "calibration_started " + poseFeatureEngine.profile);
  }
}

function reset_calibration() {
  if (inlet === 1) {
    poseFeatureEngine.command("reset_calibration");
    outlet(5, "calibration_reset " + poseFeatureEngine.profile);
  }
}

function camera_ready(value) {
  if (inlet === 1) {
    poseFeatureEngine.command("camera_ready", value);
  }
}

function model_ready(value) {
  if (inlet === 1) {
    poseFeatureEngine.command("model_ready", value);
  }
}

function dict_name(value) {
  if (inlet === 1) {
    poseFeatureEngine.command("dict_name", value);
  }
}
