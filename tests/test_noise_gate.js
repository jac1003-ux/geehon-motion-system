const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patch = JSON.parse(
  fs.readFileSync(path.join(root, "patchers/inputs/mt_input_mic_ui.maxpat"), "utf8")
).patcher;
const project = JSON.parse(
  fs.readFileSync(path.join(root, "geehon-motion-system.maxproj"), "utf8")
);

const topBoxes = patch.boxes.map((entry) => entry.box);
const micInput = topBoxes.find((box) => box.id === "p-Mic-input");
const micBoxes = micInput.patcher.boxes.map((entry) => entry.box);
const gate = micBoxes.find((box) => box.id === "p-Mic-noise-gate").patcher;
const micLines = micInput.patcher.lines.map((entry) => entry.patchline);
const texts = new Set(gate.boxes.map((entry) => entry.box.text).filter(Boolean));
const hasLine = (source, destination) => micLines.some((line) =>
  line.source[0] === source && line.destination[0] === destination
);

assert(topBoxes.some((box) => box.varname === "mic_gate_threshold"));
assert(topBoxes.some((box) => box.varname === "mic_gate_release"));
assert.strictEqual(micInput.numinlets, 5);
assert.strictEqual(micInput.numoutlets, 3);
for (const text of [
  "peakamp~ 10",
  "maximum 0.",
  "atodb",
  ">= -45.",
  "delay 40",
  "1. 5",
  "clip 20 500"
]) assert(texts.has(text), `Missing gate object: ${text}`);
assert(!texts.has("- 100."), "atodb already outputs dBFS; do not offset it");

assert(hasLine("mi-sum-l", "p-Mic-noise-gate"));
assert(hasLine("mi-sum-r", "p-Mic-noise-gate"));
assert(hasLine("mi-enable", "p-Mic-noise-gate"), "Gate must follow Mic enable");
assert(hasLine("p-Mic-noise-gate", "mi-gate-l"));
assert(hasLine("p-Mic-noise-gate", "mi-gate-r"));
assert(!project.contents.patchers["mt_mod_noise_gate.maxpat"], "Gate must not be a standalone project module");
console.log("PASS: Mic Input embedded noise gate contract");
