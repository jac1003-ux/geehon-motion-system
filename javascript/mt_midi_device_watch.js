(function (root) {
  "use strict";

  function deviceName(parts) {
    if (Array.isArray(parts)) {
      return parts.join(" ").trim();
    }
    return String(parts == null ? "" : parts).trim();
  }

  function midiInteger(value, minimum, maximum, fallback) {
    var numeric = Number(value);
    if (!isFinite(numeric)) {
      return fallback;
    }
    numeric = Math.round(numeric);
    return Math.min(maximum, Math.max(minimum, numeric));
  }

  function MidiDeviceWatch() {
    this.selectedName = "";
    this.devices = [];
    this.connected = 0;
    this.learning = 0;
    this.controller = 64;
    this.channel = 1;
  }

  MidiDeviceWatch.prototype.select = function (name) {
    this.selectedName = deviceName(name);
    return this.finishRefresh();
  };

  MidiDeviceWatch.prototype.beginRefresh = function () {
    this.devices = [];
    return this;
  };

  MidiDeviceWatch.prototype.append = function (name) {
    var normalized = deviceName(name);
    if (normalized && this.devices.indexOf(normalized) < 0) {
      this.devices.push(normalized);
    }
    return this;
  };

  MidiDeviceWatch.prototype.finishRefresh = function () {
    this.connected =
      this.selectedName && this.devices.indexOf(this.selectedName) >= 0 ? 1 : 0;
    return {
      connected: this.connected,
      status: this.selectedName
        ? this.connected
          ? "connected"
          : "device_missing"
        : "select_device",
    };
  };

  MidiDeviceWatch.prototype.learn = function (value) {
    this.learning = Number(value) !== 0 ? 1 : 0;
    return this.learning;
  };

  MidiDeviceWatch.prototype.processCC = function (value, controller, channel) {
    var ccValue = midiInteger(value, 0, 127, 0);
    var ccNumber = midiInteger(controller, 0, 127, -1);
    var ccChannel = midiInteger(channel, 1, 16, -1);
    var matched;
    var learned = 0;

    if (ccNumber < 0 || ccChannel < 0) {
      return {
        matched: 0,
        value: null,
        learn: this.learning,
        status: "invalid_cc",
      };
    }

    if (this.learning) {
      this.controller = ccNumber;
      this.channel = ccChannel;
      this.learning = 0;
      learned = 1;
    }

    matched =
      ccNumber === this.controller && ccChannel === this.channel ? 1 : 0;
    return {
      matched: matched,
      value: matched ? ccValue : null,
      learn: this.learning,
      controller: this.controller,
      channel: this.channel,
      learned: learned,
      status: learned
        ? "learned_cc_" + this.controller + "_ch_" + this.channel
        : matched
          ? "cc"
          : "ignored_cc",
    };
  };

  root.MidiDeviceWatch = MidiDeviceWatch;
  root.MidiDeviceWatchAPI = { MidiDeviceWatch: MidiDeviceWatch };

  if (typeof module === "object" && module.exports) {
    module.exports = root.MidiDeviceWatchAPI;
  }
})(typeof global !== "undefined" ? global : this);

var midiDeviceWatch = new MidiDeviceWatch();
var refreshTask = null;

if (typeof outlet === "function") {
  autowatch = 1;
  inlets = 4;
  outlets = 4;
  if (typeof Task === "function") {
    refreshTask = new Task(finish_device_refresh, this);
  }
}

function outputDeviceState(result) {
  outlet(1, result.connected);
  outlet(2, result.status);
}

function finish_device_refresh() {
  outputDeviceState(midiDeviceWatch.finishRefresh());
}

function scheduleDeviceRefreshFinish() {
  if (refreshTask) {
    refreshTask.cancel();
    refreshTask.schedule(40);
  } else {
    finish_device_refresh();
  }
}

function clear() {
  if (inlet !== 0) {
    return;
  }
  midiDeviceWatch.beginRefresh();
  scheduleDeviceRefreshFinish();
}

function append() {
  if (inlet !== 0) {
    return;
  }
  midiDeviceWatch.append(arrayfromargs(arguments));
  scheduleDeviceRefreshFinish();
}

function set() {
  // midiinfo may send a final menu-selection message; it is not a device name.
}

function device() {
  var result;
  if (inlet !== 1) {
    return;
  }
  result = midiDeviceWatch.select(arrayfromargs(arguments));
  outputDeviceState(result);
}

function learn(value) {
  if (inlet !== 3) {
    return;
  }
  midiDeviceWatch.learn(value);
  outlet(3, midiDeviceWatch.learning);
  outlet(2, midiDeviceWatch.learning ? "learning" : "learn_off");
}

function list() {
  var values;
  var result;
  if (inlet !== 2) {
    return;
  }
  values = arrayfromargs(arguments);
  result = midiDeviceWatch.processCC(values[0], values[1], values[2]);
  if (result.matched) {
    outlet(0, result.value);
  }
  if (result.learned) {
    outlet(3, 0);
  }
  outlet(2, result.status);
}
