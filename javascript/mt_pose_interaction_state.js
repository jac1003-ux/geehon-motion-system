(function (root) {
  "use strict";

  var stateApi = root.PoseInteractionStateAPI;

  if (!stateApi && typeof require === "function") {
    stateApi = require("./pose_interaction_state.js");
  }
  if (!stateApi && typeof include === "function") {
    include("Patcher:/../../javascript/pose_interaction_state.js");
    stateApi = root.PoseInteractionStateAPI;
  }
  if (!stateApi || typeof stateApi.InteractionState !== "function") {
    throw new Error("PoseInteractionStateAPI is required");
  }

  function PoseInteractionBridge(options) {
    var settings = options || {};
    this.outputDictName = settings.dictName || "pose_interaction";
    this.state = new stateApi.InteractionState(settings);
  }

  PoseInteractionBridge.prototype.command = function (name, value) {
    var normalized = String(name || "").toLowerCase();
    if (normalized === "dict_name") {
      if (value != null && String(value).length) {
        this.outputDictName = String(value);
      }
      return this;
    }
    this.state.command(normalized, value);
    return this;
  };

  PoseInteractionBridge.prototype.process = function (engineDictionary) {
    var engine = engineDictionary || {};
    var timestamp = Number(engine.timestamp_ms);
    var dictionary;

    if (!isFinite(timestamp)) {
      timestamp = this.state.lastTimestampMs === null
        ? 0
        : this.state.lastTimestampMs;
    }
    dictionary = this.state.step(timestamp, engine);
    return {
      dictionaryName: this.outputDictName,
      dictionary: dictionary,
    };
  };

  root.PoseInteractionBridge = PoseInteractionBridge;
  root.PoseInteractionBridgeAPI = {
    PoseInteractionBridge: PoseInteractionBridge,
  };

  if (typeof module === "object" && module.exports) {
    module.exports = root.PoseInteractionBridgeAPI;
  }
})(typeof global !== "undefined" ? global : this);

var poseInteractionBridge = new PoseInteractionBridge();

if (typeof outlet === "function") {
  autowatch = 1;
  inlets = 2;
  outlets = 7;
}

function interactionObjectFromDict(name) {
  var source = new Dict(String(name));
  var serialized = source.stringify();
  return serialized ? JSON.parse(serialized) : {};
}

function writeInteractionDictionary(name, values) {
  var destination = new Dict(name);
  var keys = Object.keys(values);
  var index;

  destination.clear();
  for (index = 0; index < keys.length; index += 1) {
    destination.set(keys[index], values[keys[index]]);
  }
}

function emitInteractionResult(result) {
  var dictionary = result.dictionary;
  writeInteractionDictionary(result.dictionaryName, dictionary);

  outlet(6, dictionary.transform);
  outlet(5, dictionary.texture);
  outlet(4, dictionary.space);
  outlet(3, dictionary.energy);
  outlet(2, dictionary.tracking_confidence);
  outlet(1, dictionary.active);
  outlet(0, "dictionary", result.dictionaryName);
}

function dictionary(name) {
  if (inlet !== 0) {
    return;
  }
  try {
    emitInteractionResult(
      poseInteractionBridge.process(interactionObjectFromDict(name))
    );
  } catch (error) {
    if (typeof post === "function") {
      post("mt_pose_interaction_state: " + String(error) + "\n");
    }
  }
}

function applyInteractionCommand(name, value) {
  if (inlet === 1) {
    poseInteractionBridge.command(name, value);
  }
}

function dict_name(value) {
  applyInteractionCommand("dict_name", value);
}

function arm(value) {
  applyInteractionCommand("arm", value);
}

function enable(value) {
  applyInteractionCommand("enable", value);
}

function profile(value) {
  applyInteractionCommand("profile", value);
}

function clutch(value) {
  applyInteractionCommand("clutch", value);
}

function pedal_mode(value) {
  applyInteractionCommand("pedal_mode", value);
}

function pedal_connected(value) {
  applyInteractionCommand("pedal_connected", value);
}

function pedal_reset(value) {
  applyInteractionCommand("pedal_reset", value);
}

function reset_pedal(value) {
  applyInteractionCommand("reset_pedal", value);
}
