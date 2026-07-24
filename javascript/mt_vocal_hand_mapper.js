(function (root) {
  "use strict";

  function finiteNumber(value, fallback) {
    var numeric = Number(value);
    return isFinite(numeric) ? numeric : fallback;
  }

  function flag(value) {
    return finiteNumber(value, 0) !== 0 ? 1 : 0;
  }

  function clip(value, minimum, maximum) {
    return Math.min(maximum, Math.max(minimum, value));
  }

  function VocalHandMapper(options) {
    var settings = options || {};

    this.engageThreshold = finiteNumber(settings.engageThreshold, 0.16);
    this.releaseThreshold = finiteNumber(settings.releaseThreshold, 0.23);
    this.sensitivityX = finiteNumber(settings.sensitivityX, 1.5);
    this.sensitivityY = finiteNumber(settings.sensitivityY, 1.5);
    this.defaultBrightness = clip(
      finiteNumber(settings.defaultBrightness, 0.65),
      0,
      1
    );
    this.defaultTone = clip(finiteNumber(settings.defaultTone, 0.35), 0, 1);

    this.arm = 0;
    this.tracking = 0;
    this.clutch = 0;
    this.readyToEngage = 0;
    this.brightness = this.defaultBrightness;
    this.tone = this.defaultTone;
    this.palm = 0;
    this.lastPinch = 1;
    this.anchorX = 0;
    this.anchorY = 0;
    this.anchorBrightness = this.brightness;
    this.anchorTone = this.tone;
    this.status = "DISARMED";
  }

  VocalHandMapper.prototype.command = function (name, value) {
    var commandName = String(name || "").toLowerCase();
    var next;

    if (commandName === "arm" || commandName === "enable") {
      next = flag(value);
      if (next !== this.arm) {
        this.clutch = 0;
        this.readyToEngage = next && this.lastPinch >= this.releaseThreshold ? 1 : 0;
      }
      this.arm = next;
      this.status = this.arm ? (this.tracking ? "READY" : "NO_TRACKING") : "DISARMED";
    } else if (commandName === "reset") {
      this.clutch = 0;
      this.readyToEngage = 0;
      this.brightness = this.defaultBrightness;
      this.tone = this.defaultTone;
      this.status = this.arm ? "NO_TRACKING" : "DISARMED";
    } else if (commandName === "brightness") {
      this.brightness = clip(finiteNumber(value, this.brightness), 0, 1);
    } else if (commandName === "tone") {
      this.tone = clip(finiteNumber(value, this.tone), 0, 1);
    } else if (commandName === "engage_threshold") {
      this.engageThreshold = clip(finiteNumber(value, this.engageThreshold), 0, 1);
    } else if (commandName === "release_threshold") {
      this.releaseThreshold = clip(finiteNumber(value, this.releaseThreshold), 0, 1);
    } else if (commandName === "sensitivity_x") {
      this.sensitivityX = Math.max(0, finiteNumber(value, this.sensitivityX));
    } else if (commandName === "sensitivity_y") {
      this.sensitivityY = Math.max(0, finiteNumber(value, this.sensitivityY));
    }

    return this.snapshot();
  };

  VocalHandMapper.prototype.engage = function (x, y) {
    this.clutch = 1;
    this.readyToEngage = 0;
    this.anchorX = x;
    this.anchorY = y;
    this.anchorBrightness = this.brightness;
    this.anchorTone = this.tone;
    this.status = "ACTIVE";
  };

  VocalHandMapper.prototype.process = function (frame) {
    var input = frame || {};
    var x = clip(finiteNumber(input.x, 0), 0, 1);
    var y = clip(finiteNumber(input.y, 0), 0, 1);
    var pinch = clip(finiteNumber(input.pinch, 1), 0, 1);

    this.palm = clip(finiteNumber(input.palm, this.palm), 0, 1);
    this.tracking = flag(input.tracking);
    this.lastPinch = pinch;

    if (!this.tracking) {
      this.clutch = 0;
      this.readyToEngage = 0;
      this.status = this.arm ? "NO_TRACKING" : "DISARMED";
      return this.snapshot();
    }

    if (!this.arm) {
      this.clutch = 0;
      this.readyToEngage = pinch >= this.releaseThreshold ? 1 : 0;
      this.status = "DISARMED";
      return this.snapshot();
    }

    if (this.clutch) {
      if (pinch >= this.releaseThreshold) {
        this.clutch = 0;
        this.readyToEngage = 1;
        this.status = "HOLD";
      } else {
        this.brightness = clip(
          this.anchorBrightness + (x - this.anchorX) * this.sensitivityX,
          0,
          1
        );
        this.tone = clip(
          this.anchorTone + (this.anchorY - y) * this.sensitivityY,
          0,
          1
        );
        this.status = "ACTIVE";
      }
      return this.snapshot();
    }

    if (pinch >= this.releaseThreshold) {
      this.readyToEngage = 1;
      this.status = "READY";
    } else if (this.readyToEngage && pinch <= this.engageThreshold) {
      this.engage(x, y);
    } else {
      this.status = "RELEASE_PINCH";
    }

    return this.snapshot();
  };

  VocalHandMapper.prototype.snapshot = function () {
    return {
      brightness: this.brightness,
      tone: this.tone,
      clutch: this.clutch,
      tracking: this.tracking,
      palm: this.palm,
      status: this.status,
    };
  };

  root.VocalHandMapper = VocalHandMapper;

  if (typeof module === "object" && module.exports) {
    module.exports = { VocalHandMapper: VocalHandMapper };
  }
})(typeof global !== "undefined" ? global : this);

var vocalHandMapper = new VocalHandMapper();

if (typeof outlet === "function") {
  autowatch = 1;
  inlets = 1;
  outlets = 5;
}

function emitVocalHandResult(result) {
  outlet(4, result.status);
  outlet(3, result.tracking);
  outlet(2, result.clutch);
  outlet(1, result.tone);
  outlet(0, result.brightness);
}

function applyVocalHandCommand(name, value) {
  emitVocalHandResult(vocalHandMapper.command(name, value));
}

function loadbang() {
  emitVocalHandResult(vocalHandMapper.snapshot());
}

function frame(x, y, pinch, palm, tracking) {
  emitVocalHandResult(
    vocalHandMapper.process({
      x: x,
      y: y,
      pinch: pinch,
      palm: palm,
      tracking: tracking,
    })
  );
}

function arm(value) {
  applyVocalHandCommand("arm", value);
}

function enable(value) {
  applyVocalHandCommand("enable", value);
}

function reset(value) {
  applyVocalHandCommand("reset", value);
}

function brightness(value) {
  applyVocalHandCommand("brightness", value);
}

function tone(value) {
  applyVocalHandCommand("tone", value);
}

function engage_threshold(value) {
  applyVocalHandCommand("engage_threshold", value);
}

function release_threshold(value) {
  applyVocalHandCommand("release_threshold", value);
}

function sensitivity_x(value) {
  applyVocalHandCommand("sensitivity_x", value);
}

function sensitivity_y(value) {
  applyVocalHandCommand("sensitivity_y", value);
}
