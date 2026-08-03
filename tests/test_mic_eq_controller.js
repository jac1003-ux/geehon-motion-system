const assert = require("assert");
const { FILTER_TYPES, PRESETS, MicEqController } = require("../javascript/mt_mic_eq_controller.js");

assert.deepStrictEqual(
  FILTER_TYPES.map((type) => type.label),
  ["LOW CUT", "LOW SHELF", "BELL", "NOTCH", "HIGH SHELF", "HIGH CUT"]
);
assert.deepStrictEqual(
  PRESETS.map((preset) => preset.name),
  ["FLAT", "RADIO", "TELEPHONE", "WARM VOCAL", "AIR / PRESENCE", "MEGAPHONE"]
);

const graphMessages = [];
const menuMessages = [];
const controller = new MicEqController(
  (message) => graphMessages.push(message),
  (message) => menuMessages.push(message)
);

controller.setSelected(3);
controller.setType(0);
assert.deepStrictEqual(graphMessages.shift(), ["setoptions", 3, 2, 0, 0, 0]);
assert.deepStrictEqual(graphMessages.shift(), ["bang"]);
assert.deepStrictEqual(menuMessages.pop(), ["set", 0]);

controller.applyPreset(1);
const optionMessages = graphMessages.filter((message) => message[0] === "setoptions");
const parameterMessages = graphMessages.filter((message) => message[0] === "setparams");
assert.strictEqual(optionMessages.length, 7, "Radio must configure all seven filter types");
assert.strictEqual(parameterMessages.length, 7, "Radio must configure all seven filter nodes");
assert.deepStrictEqual(optionMessages.map((message) => message[2]), [2, 2, 5, 5, 5, 1, 1]);
assert(parameterMessages[0][2] >= 250 && parameterMessages[0][2] <= 350, "Radio high-pass cutoff is missing");
assert(parameterMessages[6][2] >= 3000 && parameterMessages[6][2] <= 4500, "Radio low-pass cutoff is missing");
assert(parameterMessages.some((message) => message[2] >= 1000 && message[2] <= 2000 && message[3] >= 1.7), "Radio needs an obvious mid boost");
assert.deepStrictEqual(graphMessages.slice(-3), [["edit_filter", 0], ["selectfilt", 0], ["bang"]]);

graphMessages.length = 0;
controller.applyPreset(0);
assert.deepStrictEqual(
  graphMessages.filter((message) => message[0] === "setoptions").map((message) => message[2]),
  [6, 5, 5, 5, 5, 5, 7],
  "Flat must restore the original shelf/bell layout"
);
assert(
  graphMessages.filter((message) => message[0] === "setparams").every((message) => message[3] === 1),
  "Flat must restore unity gain on every node"
);

console.log("Mic EQ controller: PASS");
