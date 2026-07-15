const assert = require("assert");
const fs = require("fs");
const path = require("path");

const demoPath = path.resolve(
  __dirname,
  "../patchers/control/mt_control_pose_demo.maxpat"
);

assert(fs.existsSync(demoPath), "Missing standalone Pose interaction demo");

const patcher = JSON.parse(fs.readFileSync(demoPath, "utf8")).patcher;
const boxes = (patcher.boxes || []).map((entry) => entry.box);
const lines = (patcher.lines || []).map((entry) => entry.patchline);

function findAbstraction(name) {
  return boxes.find(
    (box) => box.name === `${name}.maxpat` || box.text === name
  );
}

function findText(text) {
  return boxes.find((box) => box.text === text);
}

function connected(source, sourceOutlet, destination, destinationInlet) {
  return lines.some(
    (line) =>
      line.source &&
      line.destination &&
      line.source[0] === source.id &&
      line.source[1] === sourceOutlet &&
      line.destination[0] === destination.id &&
      line.destination[1] === destinationInlet
  );
}

const pose = findAbstraction("mt_control_pose_jweb");
const engine = findAbstraction("mt_pose_feature_engine");
const profile = findAbstraction("mt_interaction_profile");
const midi = findAbstraction("mt_midi_clutch");

assert(pose, "Missing mt_control_pose_jweb abstraction");
assert(engine, "Missing mt_pose_feature_engine abstraction");
assert(profile, "Missing mt_interaction_profile abstraction");
assert(midi, "Missing mt_midi_clutch abstraction");

assert(connected(pose, 0, engine, 0), "Pose frame must feed feature engine");
assert(
  connected(pose, 2, engine, 1),
  "Pose model/camera status must feed feature engine commands"
);
assert(
  connected(engine, 0, profile, 0),
  "Feature dictionary must feed interaction profile"
);

const profileCommand = findText("prepend profile");
const profileFanout = findText("t l l");
const armCommand = findText("prepend arm");
const calibrateCommand = findText("calibrate");
const calibrateFanout = findText("t s s");
const clutchCommand = findText("prepend clutch");
const pedalModeCommand = findText("prepend pedal_mode");
const pedalConnectedCommand = findText("prepend pedal_connected");

for (const [label, object] of [
  ["arm", armCommand],
  ["clutch", clutchCommand],
  ["pedal mode", pedalModeCommand],
  ["pedal connected", pedalConnectedCommand],
]) {
  assert(object, `Missing ${label} command object`);
  assert(
    connected(object, 0, profile, 1),
    `${label} command must reach interaction profile inlet 2`
  );
}

assert(profileFanout, "Missing ordered profile command fan-out");
assert(calibrateFanout, "Missing ordered calibrate command fan-out");
assert(
  connected(profileCommand, 0, profileFanout, 0),
  "Profile command fan-out is disconnected"
);
assert(
  connected(profileFanout, 1, profile, 1),
  "Profile command must reach interaction profile inlet 2"
);
assert(
  connected(profileFanout, 0, engine, 1),
  "Profile command must reach feature engine inlet 2"
);
assert(
  connected(calibrateCommand, 0, calibrateFanout, 0),
  "Calibrate command fan-out is disconnected"
);
assert(
  connected(calibrateFanout, 1, profile, 1),
  "Calibrate command must reach interaction profile inlet 2"
);
assert(
  connected(calibrateFanout, 0, engine, 1),
  "Calibrate command must reach feature engine inlet 2"
);
assert(connected(midi, 0, clutchCommand, 0), "MIDI clutch route is broken");
assert(connected(midi, 1, pedalModeCommand, 0), "MIDI mode route is broken");
assert(
  connected(midi, 2, pedalConnectedCommand, 0),
  "MIDI connection route is broken"
);

const outlets = boxes
  .filter((box) => box.maxclass === "outlet")
  .sort((a, b) => a.patching_rect[0] - b.patching_rect[0]);
assert.strictEqual(outlets.length, 7, "Pose demo must expose seven final outlets");
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

for (const varname of [
  "pose_demo_profile",
  "pose_demo_arm",
  "pose_demo_calibrate",
  "pose_demo_state",
  "pose_demo_confidence",
  "pose_demo_calibrated",
  "pose_demo_zone",
  "pose_demo_pedal_status",
]) {
  const control = boxes.find((box) => box.varname === varname);
  assert(control, `Missing demo UI varname: ${varname}`);
  assert(control.hint, `Missing assistance text for ${varname}`);
}

const objectTexts = boxes.map((box) => box.text || "");
assert(
  !objectTexts.some((text) => /(?:ezdac~|dac~|adc~|plugin~|plugout~)/.test(text)),
  "Pose demo must not contain audio I/O"
);
assert(
  !lines.some((line) => {
    const source = boxes.find((box) => box.id === line.source[0]);
    const destination = boxes.find((box) => box.id === line.destination[0]);
    return [source, destination].some(
      (box) => box && /(?:mt_input_|mt_mod_|mt_fx_|mt_vocoder)/.test(box.text || box.name || "")
    );
  }),
  "Pose demo must not connect to audio modules"
);

console.log("Pose standalone demo graph: PASS");
