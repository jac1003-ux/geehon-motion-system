(function (root, factory) {
  var api = factory();
  var name;

  if (typeof exports === "object") {
    for (name in api) {
      if (Object.prototype.hasOwnProperty.call(api, name)) {
        exports[name] = api[name];
      }
    }
  }

  if (typeof module === "object" && module.exports) {
    module.exports = api;
  }

  root.PoseFeatureMath = api;
})(typeof global !== "undefined" ? global : this, function () {
  "use strict";

  var REQUIRED_POINTS = [
    "nose",
    "left_ear",
    "right_ear",
    "left_shoulder",
    "right_shoulder",
    "left_hip",
    "right_hip",
  ];

  function clip(value, minimum, maximum) {
    return Math.max(minimum, Math.min(maximum, value));
  }

  function distance(first, second) {
    var dx = first.x - second.x;
    var dy = first.y - second.y;
    return Math.sqrt(dx * dx + dy * dy);
  }

  function median(values) {
    var sorted;
    var middle;

    if (!values || values.length === 0) {
      return null;
    }

    sorted = values.slice(0).sort(function (a, b) {
      return a - b;
    });
    middle = Math.floor(sorted.length / 2);

    if (sorted.length % 2) {
      return sorted[middle];
    }

    return (sorted[middle - 1] + sorted[middle]) / 2;
  }

  function pointConfidence(point) {
    var visibility;
    var presence;

    if (!point) {
      return 0;
    }

    visibility = confidenceComponent(point.visibility);
    presence = confidenceComponent(point.presence);
    return Math.min(visibility, presence);
  }

  function confidenceComponent(value) {
    if (value == null) {
      return 1;
    }

    if (!finiteNumber(value)) {
      return 0;
    }

    return clip(value, 0, 1);
  }

  function findPoint(frame, name) {
    var groups = ["neutral", "left", "right"];
    var index;

    if (!frame) {
      return null;
    }

    if (frame[name]) {
      return frame[name];
    }

    for (index = 0; index < groups.length; index += 1) {
      if (frame[groups[index]] && frame[groups[index]][name]) {
        return frame[groups[index]][name];
      }
    }

    return null;
  }

  function validPoint(point) {
    return (
      point &&
      typeof point.x === "number" &&
      isFinite(point.x) &&
      typeof point.y === "number" &&
      isFinite(point.y)
    );
  }

  function finiteNumber(value) {
    return typeof value === "number" && isFinite(value);
  }

  function frameConfidence(frame) {
    var names = [
      "nose",
      "left_shoulder",
      "right_shoulder",
      "left_hip",
      "right_hip",
    ];
    var total = 0;
    var index;

    for (index = 0; index < names.length; index += 1) {
      total += pointConfidence(findPoint(frame, names[index]));
    }

    return total / names.length;
  }

  function midpoint(first, second) {
    return {
      x: (first.x + second.x) / 2,
      y: (first.y + second.y) / 2,
    };
  }

  function geometry(frame) {
    var points = {};
    var index;
    var shoulderCenter;
    var hipCenter;
    var earCenter;
    var earWidth;
    var shoulderWidth;
    var torsoLength;
    var bodyScale;

    for (index = 0; index < REQUIRED_POINTS.length; index += 1) {
      points[REQUIRED_POINTS[index]] = findPoint(frame, REQUIRED_POINTS[index]);
      if (!validPoint(points[REQUIRED_POINTS[index]])) {
        return null;
      }
    }

    shoulderCenter = midpoint(points.left_shoulder, points.right_shoulder);
    hipCenter = midpoint(points.left_hip, points.right_hip);
    earCenter = midpoint(points.left_ear, points.right_ear);
    earWidth = distance(points.left_ear, points.right_ear);
    shoulderWidth = distance(points.left_shoulder, points.right_shoulder);
    torsoLength = distance(shoulderCenter, hipCenter);
    bodyScale = Math.max(0.05, shoulderWidth * 0.65 + torsoLength * 0.35);

    if (!(earWidth > 0) || !(shoulderWidth > 0)) {
      return null;
    }

    return {
      points: points,
      shoulderCenter: shoulderCenter,
      hipCenter: hipCenter,
      earCenter: earCenter,
      earWidth: earWidth,
      shoulderWidth: shoulderWidth,
      torsoLength: torsoLength,
      centerX: (shoulderCenter.x + hipCenter.x) / 2,
      bodyScale: bodyScale,
      torsoLean: (hipCenter.x - shoulderCenter.x) / bodyScale,
      shoulderTilt:
        (points.left_shoulder.y - points.right_shoulder.y) / shoulderWidth,
      headTurn: (earCenter.x - points.nose.x) / earWidth,
      confidence: frameConfidence(frame),
      timestampMs:
        frame && frame.meta && finiteNumber(frame.meta.timestamp_ms)
          ? frame.meta.timestamp_ms
          : 0,
    };
  }

  function isGeometry(sample) {
    return (
      sample &&
      finiteNumber(sample.centerX) &&
      finiteNumber(sample.bodyScale) &&
      sample.bodyScale > 0 &&
      finiteNumber(sample.torsoLean) &&
      finiteNumber(sample.shoulderTilt) &&
      finiteNumber(sample.headTurn)
    );
  }

  function calibrationFromSamples(samples) {
    var valid = [];
    var scales = [];
    var scaleMedian;
    var scaleMinimum;
    var scaleMaximum;
    var index;
    var current;

    if (!samples || samples.length === 0) {
      return null;
    }

    for (index = 0; index < samples.length; index += 1) {
      current = isGeometry(samples[index]) ? samples[index] : geometry(samples[index]);
      if (current) {
        valid.push(current);
        scales.push(current.bodyScale);
      }
    }

    if (valid.length / samples.length < 0.6) {
      return null;
    }

    scaleMedian = median(scales);
    scaleMinimum = Math.min.apply(Math, scales);
    scaleMaximum = Math.max.apply(Math, scales);

    if (!(scaleMedian > 0) || scaleMaximum - scaleMinimum > scaleMedian * 0.15) {
      return null;
    }

    return {
      centerX: median(
        valid.map(function (item) {
          return item.centerX;
        })
      ),
      bodyScale: scaleMedian,
      torsoLean: median(
        valid.map(function (item) {
          return item.torsoLean;
        })
      ),
      shoulderTilt: median(
        valid.map(function (item) {
          return item.shoulderTilt;
        })
      ),
      headTurn: median(
        valid.map(function (item) {
          return item.headTurn;
        })
      ),
    };
  }

  function featuresFromGeometry(current, baseline) {
    var scale;

    if (!isGeometry(current) || !isGeometry(baseline) || !(baseline.bodyScale > 0)) {
      return null;
    }

    scale = baseline.bodyScale;

    return {
      torso_sway: clip(
        (baseline.centerX - current.centerX) / (scale * 0.75),
        -1,
        1
      ),
      torso_lean: clip(
        (current.torsoLean - baseline.torsoLean) / 0.5,
        -1,
        1
      ),
      shoulder_tilt: clip(
        (current.shoulderTilt - baseline.shoulderTilt) / 0.5,
        -1,
        1
      ),
      head_turn: clip((current.headTurn - baseline.headTurn) / 0.45, -1, 1),
      body_proximity: clip((current.bodyScale / scale - 1) / 0.6, -1, 1),
      motion_energy: 0,
      tracking_confidence:
        finiteNumber(current.confidence)
          ? clip(current.confidence, 0, 1)
          : 0,
    };
  }

  function deadzoneSigned(value, deadzone) {
    var amount = clip(value, -1, 1);
    var threshold = clip(Math.abs(deadzone), 0, 0.999999);
    var magnitude = Math.abs(amount);
    var sign;

    if (magnitude <= threshold) {
      return 0;
    }

    sign = amount < 0 ? -1 : 1;
    return sign * ((magnitude - threshold) / (1 - threshold));
  }

  function smoothingAlpha(dtMs, tauMs) {
    if (!(tauMs > 0)) {
      return 1;
    }

    if (!finiteNumber(dtMs)) {
      return 0;
    }

    return 1 - Math.exp(-Math.max(0, dtMs) / tauMs);
  }

  return {
    clip: clip,
    distance: distance,
    median: median,
    pointConfidence: pointConfidence,
    frameConfidence: frameConfidence,
    geometry: geometry,
    calibrationFromSamples: calibrationFromSamples,
    featuresFromGeometry: featuresFromGeometry,
    deadzoneSigned: deadzoneSigned,
    smoothingAlpha: smoothingAlpha,
  };
});
