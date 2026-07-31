const assert = require("assert");
const fs = require("fs");
const path = require("path");
const { FXHandMapper } = require("../javascript/mt_fx_hand_mapper.js");

const point = (x, y, z = 0) => ({ x, y, z });

function hand(x = 0.25, y = 0.5, pinch = 0.2) {
  return {
    wrist: point(x, y + 0.2),
    thumb_tip: point(x - pinch * 0.1, y),
    index_finger_mcp: point(x - 0.09, y + 0.08),
    middle_finger_mcp: point(x - 0.03, y + 0.06),
    ring_finger_mcp: point(x + 0.03, y + 0.08),
    pinky_finger_mcp: point(x + 0.09, y + 0.1),
    index_finger_tip: point(x + pinch * 0.1, y),
  };
}

function gesture(name) {
  const result = hand(0.25);
  result.Gestures = { [name]: 0.95 };
  return result;
}

function frames(mapper, name, control = hand(0.25)) {
  let result;
  for (let index = 0; index < 3; index += 1) {
    result = mapper.process({ Left: gesture(name), Right: control });
  }
  return result;
}

const mapper = new FXHandMapper({ debounceFrames: 3, smoothing: 1 });
assert.strictEqual(mapper.setTarget(2).status, "ARM: LEFT FIST");
assert.strictEqual(frames(mapper, "Open_Palm").gate, 0, "open palm cannot bypass arming");
assert.strictEqual(frames(mapper, "Closed_Fist").gate, 0, "fist arms and holds");
const bitcrusher = frames(mapper, "Open_Palm", hand(0.25, 0.3, 0.15));
assert.strictEqual(bitcrusher.gate, 1);
assert.strictEqual(bitcrusher.updated, true);
assert(bitcrusher.values[0] >= 500 && bitcrusher.values[0] <= 48000);
assert(bitcrusher.values[1] >= 2 && bitcrusher.values[1] <= 24);
assert(bitcrusher.values[2] >= 0 && bitcrusher.values[2] <= 1);

const outside = mapper.process({ Left: gesture("Open_Palm"), Right: hand(0.8, 0.5) });
assert.strictEqual(outside.status, "OUTSIDE ZONE");
assert.strictEqual(outside.updated, false);

for (const target of [1, 3, 4]) {
  mapper.setTarget(target);
  frames(mapper, "Closed_Fist");
  const result = frames(mapper, "Open_Palm");
  assert.strictEqual(result.target, target);
  assert.strictEqual(result.updated, true);
}
assert(mapper.values[3][1] <= 0.85, "delay feedback safety cap");

const root = path.resolve(__dirname, "..");
const tracker = fs.readFileSync(path.join(root, "web/hand-landmarker/js/jweb-hands-landmarker.js"), "utf8");
const trackerStyle = fs.readFileSync(path.join(root, "web/hand-landmarker/css/mesh-style.css"), "utf8");
assert(tracker.includes("drawControlZone"), "camera overlay includes the active control zone");
assert(tracker.includes('output[handName]["Gestures"]'), "gesture scores reach the landmark dictionary");
assert(tracker.includes("const x = inset"), "right-hand zone is drawn on the mirrored right side");
assert(trackerStyle.includes("calc(100vh * 4 / 3)") && trackerStyle.includes("calc(100vw * 3 / 4)"), "camera overlay preserves its 4:3 aspect ratio");

const main = JSON.parse(fs.readFileSync(path.join(root, "patchers/mt_portfolio_main.maxpat"), "utf8")).patcher;
function collectBoxes(patcher, result = []) {
  for (const { box } of patcher.boxes || []) {
    result.push(box);
    if (box.patcher) collectBoxes(box.patcher, result);
  }
  return result;
}
const boxes = new Map(collectBoxes(main).map((box) => [box.id, box]));
const lines = main.lines.map(({ patchline }) => patchline);
const hasLine = (source, outlet, destination, inlet) =>
  lines.some((line) =>
    line.source[0] === source &&
    line.source[1] === outlet &&
    line.destination[0] === destination &&
    line.destination[1] === inlet
  );

const mapperBox = boxes.get("pm-bitcrusher-hand-mapper");
assert.strictEqual(mapperBox.text, "js Patcher:/../javascript/mt_fx_hand_mapper.js");
assert.strictEqual(mapperBox.numinlets, 2);
assert.strictEqual(mapperBox.numoutlets, 9);
assert.deepStrictEqual(
  boxes.get("pm-gesture-target").items.filter((item) => item !== ","),
  ["Off", "Vocoder", "Bitcrusher", "Feedback Delay", "Multiband Filter"]
);

const routes = {
  x: [["pm-vocoder", 7], ["pm-bitcrusher", 4], ["pm-feedback-delay", 3], ["pm-multiband", 3]],
  y: [["pm-vocoder", 4], ["pm-bitcrusher", 3], ["pm-feedback-delay", 4], ["pm-multiband", 4]],
  pinch: [["pm-vocoder", 5], ["pm-bitcrusher", 5], ["pm-feedback-delay", 6], ["pm-multiband", 5]],
};
for (const [axis, destinations] of Object.entries(routes)) {
  destinations.forEach(([destination, inlet], outlet) => {
    assert(
      hasLine(`pm-gesture-${axis}-gate`, outlet, destination, inlet),
      `${axis} target ${outlet + 1} route`
    );
  });
}
assert(
  !lines.some((line) =>
    line.source[0].startsWith("pm-gesture-") &&
    ["pm-vocoder", "pm-bitcrusher", "pm-feedback-delay", "pm-multiband"].includes(line.destination[0]) &&
    line.destination[1] === 2
  ),
  "gesture target selection must not enable FX"
);
for (const varname of [
  "ui_gesture_target",
  "ui_gesture_status",
  "ui_gesture_zone_note",
]) {
  const gesturePageCommands = [...boxes.entries()]
    .filter(([id]) => id === "page-msg-3" || id.startsWith("page-msg-3-chunk-"))
    .map(([, box]) => box.text)
    .join(", ");
  assert(
    gesturePageCommands.includes(`script show ${varname}`),
    `gesture page shows ${varname}`
  );
}

console.log("Shared four-FX hand mapper: PASS");
