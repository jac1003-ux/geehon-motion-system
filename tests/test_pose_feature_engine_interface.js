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
