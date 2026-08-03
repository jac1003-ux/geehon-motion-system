(function (root) {
  "use strict";

  var TARGETS = {
    0: {
      title: "GESTURE MAPPING / OFF",
      labels: ["PARAM X / UNASSIGNED", "PARAM Y / UNASSIGNED", "PARAM PINCH / UNASSIGNED"],
      values: [0, 0, 0],
    },
    1: {
      title: "GESTURE MAPPING / VOCODER",
      labels: ["PARAM X / BRIGHTNESS 0-1", "PARAM Y / CARRIER TONE 0-1", "PARAM PINCH / NOISE MIX 0-1"],
      values: [0.65, 0.35, 0.25],
    },
    2: {
      title: "GESTURE MAPPING / BITCRUSHER",
      labels: ["PARAM X / SAMPLE RATE 500-48000 Hz", "PARAM Y / BIT DEPTH 2-24 bit", "PARAM PINCH / DRIVE 0-1"],
      values: [12000, 12, 0.15],
    },
    3: {
      title: "GESTURE MAPPING / MULTIBAND FILTER",
      labels: ["PARAM X / FOCUS 0-1", "PARAM Y / CONTRAST 0-1", "PARAM PINCH / SPREAD 0-1"],
      values: [0.5, 0.4, 0.5],
    },
    4: {
      title: "GESTURE MAPPING / FEEDBACK DELAY",
      labels: ["PARAM X / DELAY TIME 20-1000 ms", "PARAM Y / FEEDBACK 0-0.85", "PARAM PINCH / STEREO 0-80 ms"],
      values: [350, 0.35, 20],
    },
    5: {
      title: "GESTURE MAPPING / ALL EFFECTS",
      labels: ["PARAM X / ALL EFFECTS", "PARAM Y / ALL EFFECTS", "PARAM PINCH / ALL EFFECTS"],
      values: [0, 0, 0],
    },
  };
  var TARGET_ROUTES = { 1: 1, 2: 2, 3: 4, 4: 3 };
  var PARAMETER_X_MAX = 0.45;
  var GATE_X_MIN = 0.55;
  var ZONE_Y_MIN = 0.175;
  var ZONE_Y_MAX = 0.825;

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

  function fingerIsExtended(hand, name) {
    var wrist = point(hand, "wrist");
    var mcp = point(hand, name + "_finger_mcp");
    var pip = point(hand, name + "_finger_pip");
    var dip = point(hand, name + "_finger_dip");
    var tip = point(hand, name + "_finger_tip");
    if (!wrist || !mcp || !pip || !dip || !tip) return false;
    return angleDegrees(mcp, pip, dip) > 150 &&
      angleDegrees(pip, dip, tip) > 150 &&
      distance(wrist, tip) > distance(wrist, pip) * 1.05;
  }

  function thumbIsExtended(hand) {
    var mcp = point(hand, "thumb_mcp");
    var ip = point(hand, "thumb_ip");
    var tip = point(hand, "thumb_tip");
    var indexMcp = point(hand, "index_finger_mcp");
    var pinkyMcp = point(hand, "pinky_finger_mcp");
    if (!mcp || !ip || !tip || !indexMcp || !pinkyMcp) return false;
    var palmWidth = Math.max(distance(indexMcp, pinkyMcp), 0.001);
    var palmCenter = {
      x: (indexMcp.x + pinkyMcp.x) * 0.5,
      y: (indexMcp.y + pinkyMcp.y) * 0.5,
      z: (Number(indexMcp.z || 0) + Number(pinkyMcp.z || 0)) * 0.5,
    };
    var tipRadius = distance(tip, palmCenter);
    return angleDegrees(mcp, ip, tip) > 145 &&
      tipRadius > palmWidth * 0.9 &&
      tipRadius > distance(ip, palmCenter) * 1.05;
  }

  function numberedGesture(hand, threshold) {
    var gestures = hand && hand.Gestures;
    if (gestures && Number(gestures.Closed_Fist) >= threshold) return 0;
    var names = ["index", "middle", "ring", "pinky"];
    var extended = [];
    for (var index = 0; index < names.length; index += 1) {
      if (!point(hand, names[index] + "_finger_mcp") ||
          !point(hand, names[index] + "_finger_pip") ||
          !point(hand, names[index] + "_finger_dip") ||
          !point(hand, names[index] + "_finger_tip")) return -1;
      extended.push(fingerIsExtended(hand, names[index]));
    }
    if (!point(hand, "thumb_mcp") || !point(hand, "thumb_ip") || !point(hand, "thumb_tip")) return -1;
    var count = 0;
    while (count < extended.length && extended[count]) count += 1;
    for (index = count; index < extended.length; index += 1) {
      if (extended[index]) return -1;
    }
    if (!count) return 0;
    if (count < 4) return count;
    var thumb = thumbIsExtended(hand);
    return thumb ? 5 : 4;
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

  function frameTimestamp(frame) {
    var timestamp = Number(frame && frame.meta && frame.meta.timestamp_ms);
    return isFinite(timestamp) ? timestamp : null;
  }

  function spatialRoles(frame) {
    var parameter = [];
    var gate = [];
    var hands = [];
    var key;
    for (key in frame) {
      if (/^Hand\d+$/.test(key) && frame[key]) hands.push(frame[key]);
    }
    if (!hands.length) hands = [frame && frame.Left, frame && frame.Right];
    for (var index = 0; index < hands.length; index += 1) {
      var hand = hands[index];
      var center = palmCenter(hand);
      if (!center || center.y < ZONE_Y_MIN || center.y > ZONE_Y_MAX) continue;
      if (center.x <= PARAMETER_X_MAX) parameter.push({ hand: hand, center: center });
      else if (center.x >= GATE_X_MIN) gate.push({ hand: hand, center: center });
    }

    if (parameter.length > 1 || gate.length > 1) return { status: "AMBIGUOUS HAND ZONES" };
    return {
      parameterHand: parameter.length ? parameter[0].hand : null,
      parameterCenter: parameter.length ? parameter[0].center : null,
      gateHand: gate.length ? gate[0].hand : null,
      status: null,
    };
  }

  function FXHandMapper(options) {
    var settings = options || {};
    this.debounceFrames = Math.max(1, Number(settings.debounceFrames) || 3);
    this.selectionDebounceFrames = Math.max(1, Number(settings.selectionDebounceFrames) || 9);
    this.holdDebounceFrames = Math.max(1, Number(settings.holdDebounceFrames) || this.debounceFrames);
    this.selectionDebounceMs = Math.max(0, isFinite(settings.selectionDebounceMs) ? Number(settings.selectionDebounceMs) : 300);
    this.holdDebounceMs = Math.max(0, isFinite(settings.holdDebounceMs) ? Number(settings.holdDebounceMs) : 100);
    this.roleStableMs = Math.max(0, isFinite(settings.roleStableMs) ? Number(settings.roleStableMs) : 100);
    this.smoothing = clip(isFinite(settings.smoothing) ? Number(settings.smoothing) : 0.25, 0, 1);
    this.smoothingMs = Math.max(0, isFinite(settings.smoothingMs) ? Number(settings.smoothingMs) : 100);
    this.lastTimestampMs = null;
    this.gestureThreshold = clip(isFinite(settings.gestureThreshold) ? Number(settings.gestureThreshold) : 0.6, 0, 1);
    this.target = 0;
    this.gate = 0;
    this.recognized = -1;
    this.inputValues = [0, 0, 0];
    this.candidate = -1;
    this.candidateFrames = 0;
    this.candidateSinceMs = null;
    this.rolesValidSinceMs = null;
    this.values = {};
    for (var key in TARGETS) this.values[key] = TARGETS[key].values.slice();
  }

  FXHandMapper.prototype.metadata = function () {
    return TARGETS[this.target];
  };

  FXHandMapper.prototype.snapshot = function (updated, status, events) {
    return {
      target: this.target,
      recognized: this.recognized,
      inputValues: this.inputValues.slice(),
      values: this.values[this.target].slice(),
      gate: this.gate,
      updated: updated,
      status: status,
      metadata: this.metadata(),
      events: events || [],
    };
  };

  FXHandMapper.prototype.resetCandidate = function () {
    this.candidate = -1;
    this.candidateFrames = 0;
    this.candidateSinceMs = null;
  };

  FXHandMapper.prototype.hold = function (status) {
    this.gate = 0;
    this.resetCandidate();
    return this.snapshot(false, status);
  };

  FXHandMapper.prototype.storedEvents = function () {
    var targets = this.target === 5 ? [1, 2, 3, 4] : [this.target];
    var events = [];
    for (var index = 0; index < targets.length; index += 1) {
      var target = targets[index];
      if (TARGET_ROUTES[target]) {
        events.push({ target: target, route: TARGET_ROUTES[target], values: this.values[target].slice() });
      }
    }
    return events;
  };

  FXHandMapper.prototype.setTarget = function (target) {
    var next = clip(Math.floor(Number(target) || 0), 0, 5);
    if (next !== this.target) {
      this.target = next;
      this.gate = next ? 1 : 0;
      this.resetCandidate();
      this.rolesValidSinceMs = null;
    }
    return this.snapshot(true, next ? "CONTROL" : "OFF", this.storedEvents());
  };

  FXHandMapper.prototype.smoothingAlpha = function (frame) {
    var timestamp = frameTimestamp(frame);
    if (timestamp === null) return this.smoothing;

    var previous = this.lastTimestampMs;
    this.lastTimestampMs = timestamp;
    if (previous === null || timestamp < previous) return this.smoothing;
    if (!this.smoothingMs) return 1;
    return 1 - Math.exp(-(timestamp - previous) / this.smoothingMs);
  };

  FXHandMapper.prototype.rolesAreStable = function (frame) {
    if (!this.roleStableMs) return true;
    var timestamp = frameTimestamp(frame);
    if (timestamp === null) return true;
    if (this.rolesValidSinceMs === null || timestamp < this.rolesValidSinceMs) {
      this.rolesValidSinceMs = timestamp;
      return false;
    }
    return timestamp - this.rolesValidSinceMs >= this.roleStableMs;
  };

  FXHandMapper.prototype.updateGesture = function (candidate, timestamp) {
    if (candidate < 0) {
      this.candidate = -1;
      this.candidateFrames = 0;
      this.candidateSinceMs = null;
      return;
    }
    if (candidate !== this.candidate) {
      this.candidate = candidate;
      this.candidateFrames = 1;
      this.candidateSinceMs = timestamp;
      return;
    }
    this.candidateFrames += 1;
    var debounceMs = candidate === 0 ? this.holdDebounceMs : this.selectionDebounceMs;
    var debounceFrames = candidate === 0 ? this.holdDebounceFrames : this.selectionDebounceFrames;
    if (timestamp !== null) {
      if (this.candidateSinceMs === null || timestamp < this.candidateSinceMs) {
        this.candidateSinceMs = timestamp;
        return false;
      }
      if (timestamp - this.candidateSinceMs < debounceMs) return false;
    } else if (this.candidateFrames < debounceFrames) return false;
    if (candidate === 0) {
      this.target = 0;
      this.gate = 0;
    } else {
      this.target = candidate;
      this.gate = 1;
    }
    this.resetCandidate();
    return true;
  };

  FXHandMapper.prototype.mapValues = function (target, x, y, pinch) {
    if (target === 1) return [x, y, pinch];
    if (target === 2) return [
      500 * Math.pow(48000 / 500, x),
      2 + y * 22,
      pinch,
    ];
    if (target === 4) return [
      20 + x * 980,
      y * 0.85,
      pinch * 80,
    ];
    return [x, y, pinch];
  };

  FXHandMapper.prototype.updateTargetValues = function (target, x, y, pinch, alpha) {
    var mapped = this.mapValues(target, x, y, pinch);
    var current = this.values[target];
    for (var index = 0; index < 3; index += 1) {
      current[index] += (mapped[index] - current[index]) * alpha;
    }
    if (target === 2) {
      current[0] = Math.round(current[0]);
      current[1] = Math.round(current[1]);
    } else {
      current[0] = round(current[0], target === 4 ? 1 : 3);
      current[1] = round(current[1], 3);
    }
    current[2] = round(current[2], target === 4 ? 1 : 3);
    return { target: target, route: TARGET_ROUTES[target], values: current.slice() };
  };

  FXHandMapper.prototype.process = function (frame) {
    var alpha = this.smoothingAlpha(frame);
    var input = frame || {};
    this.recognized = -1;
    var roles = spatialRoles(input);
    if (roles.status) {
      this.rolesValidSinceMs = null;
      return this.snapshot(false, roles.status);
    }
    if (!this.rolesAreStable(input)) return this.snapshot(false, "STABILIZING HAND ZONES");

    var controlHand = roles.parameterHand;
    var center = roles.parameterCenter;
    var pinch = controlHand ? pinchAmount(controlHand) : null;
    var normalizedX;
    var normalizedY;
    if (center && pinch !== null) {
      normalizedX = clip(1 - center.x / PARAMETER_X_MAX, 0, 1);
      normalizedY = clip(1 - (center.y - ZONE_Y_MIN) / (ZONE_Y_MAX - ZONE_Y_MIN), 0, 1);
      this.inputValues = [round(normalizedX, 3), round(normalizedY, 3), round(pinch, 3)];
    }

    var gateHand = roles.gateHand;
    if (gateHand) this.recognized = numberedGesture(gateHand, this.gestureThreshold);
    this.updateGesture(this.recognized, frameTimestamp(input));

    if (!this.target) return this.snapshot(false, this.recognized === 0 ? "HOLD: GATE FIST" : "SHOW 1-5 TO SELECT");
    if (!this.gate) return this.snapshot(false, "HOLD: GATE FIST");

    if (!controlHand) return this.snapshot(false, "NO PARAMETER HAND");
    if (pinch === null) return this.snapshot(false, "NO PARAMETER HAND");
    var targets = this.target === 5 ? [1, 2, 3, 4] : [this.target];
    var events = [];
    for (var index = 0; index < targets.length; index += 1) {
      events.push(this.updateTargetValues(targets[index], normalizedX, normalizedY, pinch, alpha));
    }
    if (this.target === 5) this.values[5] = [round(normalizedX, 3), round(normalizedY, 3), round(pinch, 3)];
    return this.snapshot(true, this.target === 5 ? "CONTROL: ALL EFFECTS" : "CONTROL", events);
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
  outlets = 15;
}

function emitText(index, text) {
  outlet(index, ["set", text]);
}

function emitResult(result, forceValues) {
  outlet(14, result.inputValues[2]);
  outlet(13, result.inputValues[1]);
  outlet(12, result.inputValues[0]);
  emitText(11, "GESTURE READ: " + (result.recognized < 0 ? "--" : result.recognized));
  outlet(10, result.target);
  emitText(8, result.metadata.title);
  emitText(7, result.metadata.labels[2]);
  emitText(6, result.metadata.labels[1]);
  emitText(5, result.metadata.labels[0]);
  emitText(4, result.status);
  outlet(3, result.gate);
  if (!result.updated && !forceValues) return;
  var events = result.events && result.events.length ? result.events : fxHandMapper.storedEvents();
  for (var index = 0; index < events.length; index += 1) {
    var event = events[index];
    outlet(9, event.route);
    outlet(2, event.values[2]);
    outlet(1, event.values[1]);
    outlet(0, event.values[0]);
  }
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
  else emitResult(fxHandMapper.hold("NO CAMERA"), false);
}

function anything() {
  if (inlet === 0) processHandsDictionary();
}

function loadbang() {
  emitResult(fxHandMapper.setTarget(0), true);
}
