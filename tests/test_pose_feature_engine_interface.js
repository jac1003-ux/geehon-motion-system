const assert = require("assert");
const fs = require("fs");
const path = require("path");

const patchPath = path.resolve(
  __dirname,
  "../patchers/control/mt_control_pose_jweb.maxpat"
);

assert(fs.existsSync(patchPath), "Missing Pose jweb bridge patch");

const root = JSON.parse(fs.readFileSync(patchPath, "utf8")).patcher;
const boxes = (root.boxes || []).map((entry) => entry.box);
const lines = (root.lines || []).map((entry) => entry.patchline);
const byId = new Map(boxes.map((box) => [box.id, box]));

function findByVarname(varname) {
  return boxes.find((box) => box.varname === varname);
}

function findByText(text) {
  return boxes.find((box) => box.text === text);
}

function isConnected(source, destination) {
  return lines.some(
    (line) =>
      line.source &&
      line.destination &&
      line.source[0] === source.id &&
      line.destination[0] === destination.id
  );
}

function isConnectedFromOutlet(source, outlet, destination) {
  return lines.some(
    (line) =>
      line.source &&
      line.destination &&
      line.source[0] === source.id &&
      line.source[1] === outlet &&
      line.destination[0] === destination.id
  );
}

function assertConnectedChain(texts) {
  const chain = texts.map((text) => {
    const box = findByText(text);
    assert(box, `Missing path object: ${text}`);
    return box;
  });

  for (let index = 0; index < chain.length - 1; index += 1) {
    assert(
      isConnected(chain[index], chain[index + 1]),
      `Broken path chain: ${texts[index]} -> ${texts[index + 1]}`
    );
  }

  return chain;
}

for (const varname of [
  "pose_jweb",
  "pose_camera_menu",
  "pose_reload",
  "pose_mirror",
  "pose_draw_skeleton",
  "pose_draw_zone",
]) {
  assert(findByVarname(varname), `Missing top-level varname: ${varname}`);
}

const outletOrder = boxes
  .filter((box) => box.maxclass === "outlet")
  .sort((a, b) => a.patching_rect[0] - b.patching_rect[0]);

assert.strictEqual(outletOrder.length, 4, "Pose bridge must expose four outlets");
assert.deepStrictEqual(
  outletOrder.map((box) => box.comment),
  [
    "frame dictionary update",
    "camera menu append",
    "status",
    "error",
  ]
);

const route = findByText("route update mediadevices status error");
const unpack = findByText("unpack s i i");
const prependDictionary = findByText("prepend dictionary");
assert(route, "Missing browser output route");
assert(unpack, "Missing update payload unpack");
assert(prependDictionary, "Missing dictionary message conversion");
assert(isConnected(route, unpack), "Update branch is not connected to unpack");
assert(
  isConnected(unpack, prependDictionary),
  "Dictionary name is not connected to prepend dictionary"
);
assert(
  isConnected(prependDictionary, outletOrder[0]),
  "Frame dictionary update is not connected to outlet 1"
);

const cameraMenu = findByVarname("pose_camera_menu");
const deviceRefreshTrigger = findByText("t l clear");
const deviceIterator = findByText("iter");
const prependAppend = findByText("prepend append");
const appendFanout = findByText("t l l");
assert(deviceRefreshTrigger, "Missing ordered camera-menu clear/list trigger");
assert(deviceIterator, "Missing per-device iterator");
assert(prependAppend, "Missing per-device append message");
assert(appendFanout, "Missing camera append fan-out trigger");
assert(
  isConnectedFromOutlet(route, 1, deviceRefreshTrigger),
  "mediadevices output is not connected to t l clear"
);
assert(
  isConnectedFromOutlet(deviceRefreshTrigger, 1, cameraMenu),
  "t l clear must send clear from its right outlet to the camera menu first"
);
assert(
  isConnectedFromOutlet(deviceRefreshTrigger, 0, deviceIterator),
  "t l clear must send the device list from its left outlet to iter"
);
assert(
  isConnected(deviceIterator, prependAppend),
  "Camera devices are not iterated into individual append messages"
);
assert(
  isConnected(prependAppend, appendFanout),
  "Per-device append messages are not connected to the fan-out trigger"
);
assert(
  isConnectedFromOutlet(appendFanout, 1, cameraMenu),
  "Per-device append messages do not populate the camera menu"
);
assert(
  isConnectedFromOutlet(appendFanout, 0, outletOrder[1]),
  "Per-device append messages do not reach outlet 2"
);
assert(
  !isConnectedFromOutlet(route, 1, prependAppend),
  "mediadevices list must not be prepended with append as one message"
);

const pathChain = assertConnectedChain([
  "Project:/web/pose-landmarker/jweb-pose-landmarker.html",
  "absolutepath",
  "sprintf file://%s",
  'tosymbol @separator " "',
  "prepend url",
]);
assert(
  isConnected(pathChain[pathChain.length - 1], findByVarname("pose_jweb")),
  "Resolved local URL is not connected to pose_jweb"
);

const initMessages = [
  "set_dict_name #0_pose_frame",
  "flip_image 1",
  "draw_landmarks 1",
  "draw_connectors 1",
  "draw_control_zone 1",
];
const initTrigger = findByText("t b b b b b");
assert(initTrigger, "Missing ordered initialization trigger");
for (const text of initMessages) {
  const box = findByText(text);
  assert(box, `Missing initialization message: ${text}`);
  assert(
    isConnected(box, findByVarname("pose_jweb")),
    `Initialization message is not connected to pose_jweb: ${text}`
  );
}

for (const [index, text] of initMessages.entries()) {
  const outlet = initMessages.length - index - 1;
  assert(
    isConnectedFromOutlet(initTrigger, outlet, findByText(text)),
    `Initialization trigger does not drive ${text} from outlet ${outlet}`
  );
}

const loadbangs = boxes.filter((box) => box.text === "loadbang");
assert.strictEqual(
  loadbangs.length,
  1,
  "Pose bridge must use exactly one loadbang"
);
assert.strictEqual(
  boxes.filter((box) => /^loadmess(?:\s|$)/.test(box.text || "")).length,
  0,
  "Pose bridge must not use loadmess"
);

const approvedColors = new Set([
  JSON.stringify([0.44, 0.72, 1, 1]),
  JSON.stringify([1, 0.62, 0.24, 1]),
  JSON.stringify([0.68, 0.95, 0.34, 1]),
]);
for (const line of lines) {
  assert(
    approvedColors.has(JSON.stringify(line.color)),
    `Unapproved or missing patchline color from ${line.source[0]}`
  );
}

const destinationsBySourceOutlet = new Map();
for (const line of lines) {
  const key = `${line.source[0]}:${line.source[1]}`;
  destinationsBySourceOutlet.set(
    key,
    (destinationsBySourceOutlet.get(key) || 0) + 1
  );
}
for (const [key, count] of destinationsBySourceOutlet) {
  if (count < 2) continue;
  const source = byId.get(key.split(":")[0]);
  assert(
    source && /^(?:t|trigger)\s/.test(source.text || ""),
    `Control-rate fan-out must use trigger: ${key}`
  );
}

for (const line of lines) {
  assert(byId.has(line.source[0]), `Missing source object ${line.source[0]}`);
  assert(
    byId.has(line.destination[0]),
    `Missing destination object ${line.destination[0]}`
  );
}

console.log("Pose jweb bridge interface: PASS");

const engineScriptPath = path.resolve(
  __dirname,
  "../javascript/mt_pose_feature_engine.js"
);
const enginePatchPath = path.resolve(
  __dirname,
  "../patchers/control/mt_pose_feature_engine.maxpat"
);

assert(fs.existsSync(engineScriptPath), "Missing Pose feature engine script");
assert(fs.existsSync(enginePatchPath), "Missing Pose feature engine patch");

const engineModule = require(engineScriptPath);
const { makeFrame } = require("./fixtures/pose_frames");
const poseMath = require("../javascript/pose_feature_math.js");
const PoseFeatureEngine = engineModule.PoseFeatureEngine;

assert.strictEqual(
  typeof PoseFeatureEngine,
  "function",
  "Pose feature engine must expose a testable constructor"
);

function noPoseFrame(timestampMs, overrides = {}) {
  return {
    meta: Object.assign(
      {
        frame_id: timestampMs,
        timestamp_ms: timestampMs,
        has_pose: 0,
        model_ready: 1,
        camera_ready: 1,
      },
      overrides
    ),
    neutral: {},
    left: {},
    right: {},
  };
}

function readyEngine(profile = "singer") {
  const engine = new PoseFeatureEngine();
  engine.command("model_ready", 1);
  engine.command("camera_ready", 1);
  engine.command("profile", profile);
  return engine;
}

function calibrateStable(engine, startMs, options = {}) {
  engine.command("calibrate");
  let result;
  for (let timestampMs = startMs; timestampMs <= startMs + 3000; timestampMs += 100) {
    result = engine.processFrame(makeFrame(Object.assign({}, options, { timestampMs })));
  }
  return result;
}

function assertRange(value, minimum, maximum, label) {
  assert(
    value >= minimum && value <= maximum,
    `${label} must stay in ${minimum}..${maximum}; received ${value}`
  );
}

// Calibration uses frame timestamps: one second prepare, then two seconds collect.
{
  const engine = readyEngine();
  engine.command("calibrate");
  const prepare = engine.processFrame(makeFrame({ timestampMs: 1000 }));
  assert.strictEqual(prepare.dictionary.calibration_phase, "preparing");
  assert.strictEqual(engine.calibrationSampleCount(), 0);

  engine.processFrame(makeFrame({ timestampMs: 1999 }));
  assert.strictEqual(engine.calibrationSampleCount(), 0);
  engine.processFrame(makeFrame({ timestampMs: 2000 }));
  assert.strictEqual(engine.calibrationSampleCount(), 1);

  const collecting = engine.processFrame(makeFrame({ timestampMs: 3999 }));
  assert.strictEqual(collecting.dictionary.calibration_phase, "collecting");
  assert(engine.calibrationSampleCount() > 1);

  const complete = engine.processFrame(makeFrame({ timestampMs: 4000 }));
  assert.strictEqual(complete.dictionary.calibrated, 1);
  assert.strictEqual(complete.dictionary.calibration_phase, "idle");
  assert(
    complete.events.includes("calibration_complete singer"),
    "Successful calibration must emit a profile-specific event"
  );
}

// Profiles own independent baselines and reset only the selected profile.
{
  const engine = readyEngine("singer");
  calibrateStable(engine, 0);
  assert.strictEqual(engine.isCalibrated("singer"), true);
  assert.strictEqual(engine.isCalibrated("instrumentalist"), false);

  engine.command("profile", "instrumentalist");
  calibrateStable(engine, 5000, { shiftX: -0.05 });
  assert.strictEqual(engine.isCalibrated("instrumentalist"), true);

  engine.command("reset_calibration");
  assert.strictEqual(engine.isCalibrated("instrumentalist"), false);
  assert.strictEqual(engine.isCalibrated("singer"), true);
}

// Tracking confidence uses 150 ms entry and 100 ms exit hysteresis.
{
  const engine = readyEngine();
  let result = engine.processFrame(makeFrame({ timestampMs: 0 }));
  assert.strictEqual(result.dictionary.tracking_valid, 0);
  result = engine.processFrame(makeFrame({ timestampMs: 149 }));
  assert.strictEqual(result.dictionary.tracking_valid, 0);
  result = engine.processFrame(makeFrame({ timestampMs: 150 }));
  assert.strictEqual(result.dictionary.tracking_valid, 1);

  result = engine.processFrame(
    makeFrame({ timestampMs: 200, visibility: 0.5, presence: 0.5 })
  );
  assert.strictEqual(result.dictionary.tracking_valid, 1);
  result = engine.processFrame(
    makeFrame({ timestampMs: 250, visibility: 0.3, presence: 0.3 })
  );
  assert.strictEqual(result.dictionary.tracking_valid, 1);
  result = engine.processFrame(
    makeFrame({ timestampMs: 349, visibility: 0.3, presence: 0.3 })
  );
  assert.strictEqual(result.dictionary.tracking_valid, 1);
  result = engine.processFrame(
    makeFrame({ timestampMs: 350, visibility: 0.3, presence: 0.3 })
  );
  assert.strictEqual(result.dictionary.tracking_valid, 0);
}

// All shoulders and hips must remain inside the control zone.
{
  const engine = readyEngine();
  const inside = engine.processFrame(makeFrame({ timestampMs: 0 }));
  assert.strictEqual(inside.dictionary.inside_control_zone, 1);

  const outsideFrame = makeFrame({ timestampMs: 10 });
  outsideFrame.left.left_shoulder.x = 0.86;
  const outside = engine.processFrame(outsideFrame);
  assert.strictEqual(outside.dictionary.inside_control_zone, 0);
}

// Missing pose and unavailable runtime state never emit fresh live features.
{
  const engine = readyEngine();
  calibrateStable(engine, 0);
  engine.processFrame(makeFrame({ timestampMs: 3100, shiftX: -0.08 }));

  const missing = engine.processFrame(noPoseFrame(3200));
  assert.strictEqual(missing.dictionary.has_pose, 0);
  assert.strictEqual(missing.dictionary.torso_sway, 0);
  assert.strictEqual(missing.dictionary.motion_energy, 0);

  const lost = engine.processFrame(noPoseFrame(3300));
  assert.strictEqual(lost.dictionary.tracking_valid, 0);

  engine.command("camera_ready", 0);
  const noCamera = engine.processFrame(
    noPoseFrame(3400, { camera_ready: 0 })
  );
  assert.strictEqual(noCamera.dictionary.camera_ready, 0);
  assert.strictEqual(noCamera.dictionary.tracking_valid, 0);
  assert.strictEqual(noCamera.dictionary.status, "no_camera");
}

// Calibrated output is smoothed, dead-zoned, bounded, and carries motion energy.
{
  const engine = readyEngine();
  calibrateStable(engine, 0);
  const tiny = engine.processFrame(
    makeFrame({ timestampMs: 3100, shiftX: -0.001 })
  );
  assert.strictEqual(tiny.dictionary.torso_sway, 0);

  const movedFrame = makeFrame({ timestampMs: 3180, shiftX: -0.08 });
  const moved = engine.processFrame(movedFrame);
  const raw = poseMath.featuresFromGeometry(
    poseMath.geometry(movedFrame),
    engine.calibrationFor("singer")
  );
  assert(moved.dictionary.torso_sway > 0);
  assert(
    moved.dictionary.torso_sway < poseMath.deadzoneSigned(raw.torso_sway, 0.04),
    "80 ms smoothing must soften a sudden pose change"
  );
  assert(moved.dictionary.motion_energy > 0);

  for (const field of [
    "torso_sway",
    "torso_lean",
    "shoulder_tilt",
    "head_turn",
    "body_proximity",
  ]) {
    assertRange(moved.dictionary[field], -1, 1, field);
  }
  assertRange(moved.dictionary.motion_energy, 0, 1, "motion_energy");
  assertRange(
    moved.dictionary.tracking_confidence,
    0,
    1,
    "tracking_confidence"
  );
  for (const macro of ["Energy", "Space", "Texture", "Transform"]) {
    assert.strictEqual(moved.dictionary[macro], 0);
  }
  assert.strictEqual(moved.dictionary.semantic_assigned, 0);
}

const engineRoot = JSON.parse(fs.readFileSync(enginePatchPath, "utf8")).patcher;
const engineBoxes = (engineRoot.boxes || []).map((entry) => entry.box);
const engineLines = (engineRoot.lines || []).map((entry) => entry.patchline);
const engineById = new Map(engineBoxes.map((box) => [box.id, box]));
const engineByText = (text) => engineBoxes.find((box) => box.text === text);
const engineConnected = (source, destination) =>
  engineLines.some(
    (line) =>
      line.source[0] === source.id && line.destination[0] === destination.id
  );

const engineInlets = engineBoxes
  .filter((box) => box.maxclass === "inlet")
  .sort((a, b) => a.patching_rect[0] - b.patching_rect[0]);
const engineOutlets = engineBoxes
  .filter((box) => box.maxclass === "outlet")
  .sort((a, b) => a.patching_rect[0] - b.patching_rect[0]);

assert.strictEqual(engineInlets.length, 2, "Feature engine needs two inlets");
assert.deepStrictEqual(
  engineInlets.map((box) => box.comment),
  ["frame dictionary", "profile and calibration commands"]
);
assert.strictEqual(engineOutlets.length, 6, "Feature engine needs six outlets");
assert.deepStrictEqual(
  engineOutlets.map((box) => box.comment),
  [
    "feature dictionary",
    "tracking confidence",
    "tracking valid",
    "calibrated",
    "inside control zone",
    "calibration and status event",
  ]
);

const declarePath = engineByText("declarepath ../../javascript");
const engineJs = engineByText("js mt_pose_feature_engine.js");
const initName = engineByText("dict_name #0_pose_features");
assert(declarePath, "Missing feature-engine JavaScript search path");
assert(engineJs, "Missing feature-engine js object");
assert(initName, "Missing instance-safe output dictionary initialization");
assert(engineConnected(engineInlets[0], engineJs));
assert(engineConnected(engineInlets[1], engineJs));
assert(engineConnected(initName, engineJs));

for (let index = 0; index < engineOutlets.length; index += 1) {
  assert(
    engineLines.some(
      (line) =>
        line.source[0] === engineJs.id &&
        line.source[1] === index &&
        line.destination[0] === engineOutlets[index].id
    ),
    `Feature-engine outlet ${index + 1} is not wired in contract order`
  );
}

assert.strictEqual(
  engineBoxes.filter((box) => box.text === "loadbang").length,
  1,
  "Feature engine must use one loadbang"
);
assert.strictEqual(
  engineBoxes.filter((box) => /^loadmess(?:\s|$)/.test(box.text || "")).length,
  0,
  "Feature engine must not use loadmess"
);
assert(
  engineBoxes.some((box) => /^(?:t|trigger)\s/.test(box.text || "")),
  "Feature engine initialization must use trigger"
);

const engineSource = fs.readFileSync(engineScriptPath, "utf8");
for (const token of [
  "dictionary",
  "profile",
  "calibrate",
  "reset_calibration",
  "camera_ready",
  "model_ready",
  "dict_name",
]) {
  assert(engineSource.includes(token), `Missing engine command: ${token}`);
}
assert(!engineSource.includes("posedict"), "Engine must not use fixed posedict");
assert(!engineSource.includes("/Users/"), "Engine must not use an absolute user path");

console.log("Pose feature engine interface and behavior: PASS");
