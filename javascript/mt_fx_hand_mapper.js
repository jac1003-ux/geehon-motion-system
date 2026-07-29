(function (root) {
  "use strict";

  var TARGETS = {
    0: {
      title: "GESTURE MAPPING / OFF",
      labels: ["RIGHT X / UNASSIGNED", "RIGHT Y / UNASSIGNED", "RIGHT PINCH / UNASSIGNED"],
      values: [0, 0, 0],
    },
    1: {
      title: "GESTURE MAPPING / VOCODER",
      labels: ["RIGHT X / BRIGHTNESS 0-1", "RIGHT Y / CARRIER TONE 0-1", "RIGHT PINCH / NOISE MIX 0-1"],
      values: [0.65, 0.35, 0.25],
    },
    2: {
      title: "GESTURE MAPPING / BITCRUSHER",
      labels: ["RIGHT X / SAMPLE RATE 500-48000 Hz", "RIGHT Y / BIT DEPTH 2-24 bit", "RIGHT PINCH / DRIVE 0-1"],
      values: [12000, 12, 0.15],
    },
    3: {
      title: "GESTURE MAPPING / FEEDBACK DELAY",
      labels: ["RIGHT X / DELAY TIME 20-1000 ms", "RIGHT Y / FEEDBACK 0-0.85", "RIGHT PINCH / STEREO 0-80 ms"],
      values: [350, 0.35, 20],
    },
    4: {
      title: "GESTURE MAPPING / MULTIBAND FILTER",
      labels: ["RIGHT X / FOCUS 0-1", "RIGHT Y / CONTRAST 0-1", "RIGHT PINCH / SPREAD 0-1"],
      values: [0.5, 0.4, 0.5],
    },
  };

  function clip(value, minimum, maximum) {
    return Math.min(maximum, Math.max(minimum, value));
  }

  function point(hand, name) {
    var value = hand && hand[name];
    return value && isFinite(value.x) && isFinite(value.y) ? value : null;
  }

  function distance(a, b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    var dz = Number(a.z || 0) - Number(b.z || 0);
    return Math.sqrt(dx * dx + dy * dy + dz * dz);
  }

  function angleDegrees(a, b, c) {
    var abx = a.x - b.x;
    var aby = a.y - b.y;
    var cbx = c.x - b.x;
    var cby = c.y - b.y;
    var denominator = Math.sqrt(abx * abx + aby * aby) * Math.sqrt(cbx * cbx + cby * cby);
    if (!denominator) return 0;
    return Math.acos(clip((abx * cbx + aby * cby) / denominator, -1, 1)) * 180 / Math.PI;
  }

  function extendedFingerCount(hand) {
    var names = ["index", "middle", "ring", "pinky"];
    var count = 0;
    for (var index = 0; index < names.length; index += 1) {
      var name = names[index];
      var mcp = point(hand, name + "_finger_mcp");
      var pip = point(hand, name + "_finger_pip");
      var tip = point(hand, name + "_finger_tip");
      if (mcp && pip && tip && angleDegrees(mcp, pip, tip) > 150) count += 1;
    }
    return count;
  }

  function gestureCandidate(hand, threshold) {
    var gestures = hand && hand.Gestures;
    if (!gestures || typeof gestures !== "object") return null;
    var open = Number(gestures.Open_Palm) || 0;
    var fist = Number(gestures.Closed_Fist) || 0;
    if (open >= threshold && open > fist) return 1;
    if (fist >= threshold && fist > open) return 0;
    return -1;
  }

  function palmCenter(hand) {
    var names = ["wrist", "index_finger_mcp", "middle_finger_mcp", "pinky_finger_mcp"];
    var x = 0;
    var y = 0;
    for (var index = 0; index < names.length; index += 1) {
      var value = point(hand, names[index]);
      if (!value) return null;
      x += value.x;
      y += value.y;
    }
    return { x: x / names.length, y: y / names.length };
  }

  function pinchAmount(hand) {
    var thumb = point(hand, "thumb_tip");
    var index = point(hand, "index_finger_tip");
    var wrist = point(hand, "wrist");
    var pinky = point(hand, "pinky_finger_mcp");
    if (!thumb || !index || !wrist || !pinky) return null;
    var palmWidth = Math.max(distance(wrist, pinky), 0.001);
    return 1 - clip(distance(thumb, index) / palmWidth / 0.8, 0, 1);
  }

  function round(value, places) {
    var scale = Math.pow(10, places);
    return Math.round(value * scale) / scale;
  }

  function FXHandMapper(options) {
    var settings = options || {};
    this.debounceFrames = Math.max(1, Number(settings.debounceFrames) || 3);
    this.smoothing = clip(isFinite(settings.smoothing) ? Number(settings.smoothing) : 0.25, 0, 1);
    this.gestureThreshold = clip(isFinite(settings.gestureThreshold) ? Number(settings.gestureThreshold) : 0.6, 0, 1);
    this.target = 0;
    this.gate = 0;
    this.armed = false;
    this.candidate = -1;
    this.candidateFrames = 0;
    this.values = {};
    for (var key in TARGETS) this.values[key] = TARGETS[key].values.slice();
  }

  FXHandMapper.prototype.metadata = function () {
    return TARGETS[this.target];
  };

  FXHandMapper.prototype.snapshot = function (updated, status) {
    return {
      target: this.target,
      values: this.values[this.target].slice(),
      gate: this.gate,
      updated: updated,
      status: status,
      metadata: this.metadata(),
    };
  };

  FXHandMapper.prototype.hold = function (status, rearm) {
    this.gate = 0;
    if (rearm) this.armed = false;
    this.candidate = -1;
    this.candidateFrames = 0;
    return this.snapshot(false, status);
  };

  FXHandMapper.prototype.setTarget = function (target) {
    var next = clip(Math.floor(Number(target) || 0), 0, 4);
    if (next !== this.target) {
      this.target = next;
      this.gate = 0;
      this.armed = false;
      this.candidate = -1;
      this.candidateFrames = 0;
    }
    return this.snapshot(true, next ? "ARM: LEFT FIST" : "OFF");
  };

  FXHandMapper.prototype.updateGesture = function (candidate) {
    if (candidate < 0) {
      this.candidate = -1;
      this.candidateFrames = 0;
      return;
    }
    if (candidate !== this.candidate) {
      this.candidate = candidate;
      this.candidateFrames = 1;
      return;
    }
    this.candidateFrames += 1;
    if (this.candidateFrames < this.debounceFrames) return;
    if (candidate === 0) {
      this.armed = true;
      this.gate = 0;
    } else if (this.armed) {
      this.gate = 1;
    }
    this.candidate = -1;
    this.candidateFrames = 0;
  };

  FXHandMapper.prototype.mapValues = function (x, y, pinch) {
    if (this.target === 1) return [x, y, pinch];
    if (this.target === 2) return [
      500 * Math.pow(48000 / 500, x),
      2 + y * 22,
      pinch,
    ];
    if (this.target === 3) return [
      20 + x * 980,
      y * 0.85,
      pinch * 80,
    ];
    return [x, y, pinch];
  };

  FXHandMapper.prototype.process = function (frame) {
    if (!this.target) return this.snapshot(false, "OFF");

    var input = frame || {};
    var gateHand = input.Left;
    var controlHand = input.Right;
    if (!gateHand) return this.hold("NO LEFT HAND", true);

    var nativeGesture = gestureCandidate(gateHand, this.gestureThreshold);
    var fingers = nativeGesture === null ? extendedFingerCount(gateHand) : -1;
    this.updateGesture(nativeGesture === null ? (fingers >= 3 ? 1 : fingers <= 1 ? 0 : -1) : nativeGesture);

    if (!controlHand) return this.hold("NO RIGHT HAND", true);
    if (!this.armed) return this.snapshot(false, "ARM: LEFT FIST");
    if (!this.gate) return this.snapshot(false, "HOLD: LEFT OPEN TO CONTROL");

    var center = palmCenter(controlHand);
    var pinch = pinchAmount(controlHand);
    if (!center || pinch === null) return this.hold("NO RIGHT HAND", true);

    var screenX = 1 - center.x;
    var screenY = center.y;
    if (screenX < 0.5 || screenX > 1 || screenY < 0.175 || screenY > 0.825) {
      return this.snapshot(false, "OUTSIDE ZONE");
    }

    var normalizedX = clip((screenX - 0.5) / 0.5, 0, 1);
    var normalizedY = clip(1 - (screenY - 0.175) / 0.65, 0, 1);
    var targets = this.mapValues(normalizedX, normalizedY, pinch);
    var current = this.values[this.target];
    var alpha = this.smoothing;
    for (var index = 0; index < 3; index += 1) {
      current[index] += (targets[index] - current[index]) * alpha;
    }
    if (this.target === 2) {
      current[0] = Math.round(current[0]);
      current[1] = Math.round(current[1]);
    } else {
      current[0] = round(current[0], this.target === 3 ? 1 : 3);
      current[1] = round(current[1], 3);
    }
    current[2] = round(current[2], this.target === 3 ? 1 : 3);
    return this.snapshot(true, "CONTROL");
  };

  root.FXHandMapper = FXHandMapper;
  if (typeof module === "object" && module.exports) {
    module.exports = { FXHandMapper: FXHandMapper, TARGETS: TARGETS };
  }
})(typeof global !== "undefined" ? global : this);

var fxHandMapper = new FXHandMapper();

if (typeof outlet === "function") {
  autowatch = 1;
  inlets = 2;
  outlets = 9;
}

function emitText(index, text) {
  outlet(index, ["set", text]);
}

function emitResult(result, forceValues) {
  emitText(8, result.metadata.title);
  emitText(7, result.metadata.labels[2]);
  emitText(6, result.metadata.labels[1]);
  emitText(5, result.metadata.labels[0]);
  emitText(4, result.status);
  outlet(3, result.gate);
  if (!result.updated && !forceValues) return;
  outlet(2, result.values[2]);
  outlet(1, result.values[1]);
  outlet(0, result.values[0]);
}

function readHandsDictionary() {
  var source = new Dict("hands_landmarkdict");
  var serialized = source.stringify();
  return serialized ? JSON.parse(serialized) : {};
}

function processHandsDictionary() {
  emitResult(fxHandMapper.process(readHandsDictionary()), false);
}

function bang() {
  if (inlet === 0) processHandsDictionary();
}

function msg_int(value) {
  if (inlet === 1) emitResult(fxHandMapper.setTarget(value), true);
  else if (Number(value)) processHandsDictionary();
  else emitResult(fxHandMapper.hold("NO CAMERA", true), false);
}

function anything() {
  if (inlet === 0) processHandsDictionary();
}

function loadbang() {
  emitResult(fxHandMapper.setTarget(0), true);
}
