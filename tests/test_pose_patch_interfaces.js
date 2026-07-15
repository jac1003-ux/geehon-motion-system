const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const profilePatchPath = path.join(
  root,
  "patchers/control/mt_interaction_profile.maxpat"
);
const profileScriptPath = path.join(
  root,
  "javascript/mt_pose_interaction_state.js"
);

function readPatch(filePath) {
  return JSON.parse(fs.readFileSync(filePath, "utf8")).patcher;
}

function sortedPorts(patcher, maxclass) {
  return (patcher.boxes || [])
    .map((entry) => entry.box)
    .filter((box) => box.maxclass === maxclass)
    .sort((a, b) => a.patching_rect[0] - b.patching_rect[0]);
}

function findText(patcher, text) {
  return (patcher.boxes || [])
    .map((entry) => entry.box)
    .find((box) => box.text === text);
}

function isConnected(patcher, source, destination, sourceOutlet = null) {
  return (patcher.lines || []).some(({ patchline }) => {
    if (!patchline.source || !patchline.destination) return false;
    return (
      patchline.source[0] === source.id &&
      (sourceOutlet === null || patchline.source[1] === sourceOutlet) &&
      patchline.destination[0] === destination.id
    );
  });
}

assert(fs.existsSync(profileScriptPath), "Missing interaction state Max bridge");
assert(fs.existsSync(profilePatchPath), "Missing interaction profile patch");

const profileModule = require(profileScriptPath);
assert.strictEqual(
  typeof profileModule.PoseInteractionBridge,
  "function",
  "Interaction bridge must expose a testable constructor"
);

const profileScriptSource = fs.readFileSync(profileScriptPath, "utf8");
const orderedEmissions = [
  "outlet(6, dictionary.transform)",
  "outlet(5, dictionary.texture)",
  "outlet(4, dictionary.space)",
  "outlet(3, dictionary.energy)",
  "outlet(2, dictionary.tracking_confidence)",
  "outlet(1, dictionary.active)",
  'outlet(0, "dictionary", result.dictionaryName)',
];
let previousEmission = -1;
for (const emission of orderedEmissions) {
  const position = profileScriptSource.indexOf(emission);
  assert(position > previousEmission, `Incorrect output order at: ${emission}`);
  previousEmission = position;
}

const bridge = new profileModule.PoseInteractionBridge({
  dictName: "test_pose_interaction",
});
bridge.command("arm", 1);
const bridgeResult = bridge.process({
  timestamp_ms: 100,
  calibration_phase: "idle",
  calibrated: 1,
  tracking_valid: 1,
  inside_control_zone: 1,
  model_ready: 1,
  camera_ready: 1,
  has_pose: 1,
  tracking_confidence: 0.8,
  torso_sway: 0.25,
});

assert.strictEqual(bridgeResult.dictionaryName, "test_pose_interaction");
for (const field of [
  "profile",
  "state",
  "calibrated",
  "tracking_valid",
  "inside_control_zone",
  "armed",
  "clutch_gate",
  "model_ready",
  "camera_ready",
  "has_pose",
  "torso_sway",
  "torso_lean",
  "shoulder_tilt",
  "head_turn",
  "body_proximity",
  "motion_energy",
]) {
  assert(
    Object.prototype.hasOwnProperty.call(bridgeResult.dictionary, field),
    `Missing final dictionary field: ${field}`
  );
}

const profilePatch = readPatch(profilePatchPath);
const inlets = sortedPorts(profilePatch, "inlet");
const outlets = sortedPorts(profilePatch, "outlet");

assert.strictEqual(inlets.length, 2, "Interaction profile must expose 2 inlets");
assert.deepStrictEqual(
  inlets.map((box) => box.comment),
  ["feature engine dictionary", "interaction commands"]
);
assert.strictEqual(
  outlets.length,
  7,
  "Interaction profile must expose 7 outlets"
);
assert.deepStrictEqual(
  outlets.map((box) => box.comment),
  [
    "final interaction dictionary",
    "active 0/1",
    "tracking confidence 0-1",
    "Energy macro (unassigned)",
    "Space macro (unassigned)",
    "Texture macro (unassigned)",
    "Transform macro (unassigned)",
  ]
);

assert(
  findText(profilePatch, "declarepath ../../javascript"),
  "Missing JavaScript search path"
);
const js = findText(profilePatch, "js mt_pose_interaction_state.js");
assert(js, "Missing interaction state bridge object");
assert(isConnected(profilePatch, inlets[0], js), "Dictionary inlet is disconnected");
assert(isConnected(profilePatch, inlets[1], js), "Command inlet is disconnected");

const loadbangs = (profilePatch.boxes || [])
  .map((entry) => entry.box)
  .filter((box) => box.text === "loadbang");
assert.strictEqual(loadbangs.length, 1, "Use one central loadbang");
assert.strictEqual(
  (profilePatch.boxes || [])
    .map((entry) => entry.box)
    .filter((box) => /^loadmess(?:\s|$)/.test(box.text || "")).length,
  0,
  "Interaction profile must not use loadmess"
);

for (const message of [
  "dict_name #0_pose_interaction",
  "arm 0",
  "profile singer",
  "clutch 1",
  "pedal_mode 0",
  "pedal_connected 1",
]) {
  const box = findText(profilePatch, message);
  assert(box, `Missing initialization message: ${message}`);
  assert(isConnected(profilePatch, box, js), `${message} is not connected`);
}

for (let index = 0; index < outlets.length; index += 1) {
  assert(
    isConnected(profilePatch, js, outlets[index], index),
    `JS outlet ${index} is not connected to external outlet ${index + 1}`
  );
}

const sharedBus = (profilePatch.boxes || [])
  .map((entry) => entry.box.text || "")
  .filter((text) => /^(?:s|send|r|receive)\s+/.test(text));
assert.deepStrictEqual(sharedBus, [], "Do not use shared send/receive buses");

console.log("Pose patch interfaces: PASS");

const midiPatchPath = path.join(
  root,
  "patchers/control/mt_midi_clutch.maxpat"
);
const midiScriptPath = path.join(root, "javascript/mt_midi_device_watch.js");

assert(fs.existsSync(midiScriptPath), "Missing MIDI device watcher script");
assert(fs.existsSync(midiPatchPath), "Missing MIDI clutch patch");

const midiModule = require(midiScriptPath);
assert.strictEqual(
  typeof midiModule.MidiDeviceWatch,
  "function",
  "MIDI watcher must expose a testable constructor"
);

const watcher = new midiModule.MidiDeviceWatch();
watcher.select("Expression Pedal");
watcher.beginRefresh();
watcher.append("Other Device");
assert.strictEqual(watcher.finishRefresh().connected, 0);
watcher.beginRefresh();
watcher.append("Expression Pedal");
assert.strictEqual(watcher.finishRefresh().connected, 1);
watcher.learn(1);
const learned = watcher.processCC(100, 21, 3);
assert.strictEqual(learned.learn, 0);
assert.strictEqual(learned.value, 100);
assert.strictEqual(watcher.processCC(80, 22, 3).matched, 0);
assert.strictEqual(watcher.processCC(80, 21, 3).matched, 1);

const midiPatch = readPatch(midiPatchPath);
const midiBoxes = (midiPatch.boxes || []).map((entry) => entry.box);
const midiOutlets = sortedPorts(midiPatch, "outlet");

for (const varname of [
  "pose_midi_device",
  "pose_midi_learn",
  "pose_midi_mode",
]) {
  assert(
    midiBoxes.some((box) => box.varname === varname),
    `Missing MIDI control varname: ${varname}`
  );
}

assert.strictEqual(midiOutlets.length, 4, "MIDI clutch must expose 4 outlets");
assert.deepStrictEqual(
  midiOutlets.map((box) => box.comment),
  [
    "clutch 0/1",
    "pedal_mode 0/1",
    "pedal_connected 0/1",
    "status symbol",
  ]
);

for (const text of [
  "midiinfo",
  "ctlin",
  "metro 1000",
  ">= 64",
  "declarepath ../../javascript",
  "js mt_midi_device_watch.js",
]) {
  assert(findText(midiPatch, text), `Missing MIDI object: ${text}`);
}

const mode = midiBoxes.find((box) => box.varname === "pose_midi_mode");
const metro = findText(midiPatch, "metro 1000");
const modeTrigger = findText(midiPatch, "t i i i i i");
assert(modeTrigger, "Missing ordered pedal-mode fan-out");
assert(isConnected(midiPatch, mode, modeTrigger), "Pedal mode trigger is disconnected");
assert(
  isConnected(midiPatch, modeTrigger, metro, 2),
  "Pedal mode must control polling through the ordered trigger"
);

const safeDisconnect = findText(midiPatch, "t 0 0");
assert(safeDisconnect, "Missing ordered disconnect safety trigger");
assert(
  isConnected(midiPatch, safeDisconnect, midiOutlets[0], 1),
  "Disconnect must close clutch from the right trigger outlet first"
);
assert(
  isConnected(midiPatch, safeDisconnect, midiOutlets[2], 0),
  "Disconnect must report pedal disconnected after closing clutch"
);

assert.strictEqual(
  midiBoxes.filter((box) => box.text === "loadbang").length,
  1,
  "MIDI clutch must use one central loadbang"
);
assert.strictEqual(
  midiBoxes.filter((box) => /^loadmess(?:\s|$)/.test(box.text || "")).length,
  0,
  "MIDI clutch must not use loadmess"
);

console.log("Pose MIDI clutch interface: PASS");
