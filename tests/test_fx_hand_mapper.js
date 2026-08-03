const assert = require("assert");
const fs = require("fs");
const path = require("path");
const { FXHandMapper, TARGETS } = require("../javascript/mt_fx_hand_mapper.js");

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

const fingerNames = ["index", "middle", "ring", "pinky"];

function numberedHand(number, x = 0.75) {
  const result = hand(x);
  result.wrist = point(x, 0.7);
  fingerNames.forEach((name, index) => {
    const fingerX = x + (index - 1.5) * 0.055;
    const extended = index < Math.min(number, 4);
    result[`${name}_finger_mcp`] = point(fingerX, 0.58);
    result[`${name}_finger_pip`] = point(fingerX, extended ? 0.48 : 0.5);
    result[`${name}_finger_dip`] = point(fingerX, extended ? 0.38 : 0.55);
    result[`${name}_finger_tip`] = point(fingerX, extended ? 0.28 : 0.6);
  });
  if (number === 5) {
    result.thumb_cmc = point(x - 0.08, 0.62);
    result.thumb_mcp = point(x - 0.15, 0.58);
    result.thumb_ip = point(x - 0.22, 0.54);
    result.thumb_tip = point(x - 0.3, 0.5);
    result.Gestures = { Open_Palm: 0.95 };
  } else {
    result.thumb_cmc = point(x - 0.06, 0.62);
    result.thumb_mcp = point(x - 0.04, 0.59);
    result.thumb_ip = point(x - 0.02, 0.58);
    result.thumb_tip = point(x - 0.01, 0.58);
  }
  if (number === 0) result.Gestures = { Closed_Fist: 0.95 };
  return result;
}

function inwardFoldedThumb(number, x = 0.75) {
  const result = numberedHand(number, x);
  result.thumb_mcp = point(x - 0.06, 0.58);
  result.thumb_ip = point(x, 0.575);
  result.thumb_tip = point(x + 0.06, 0.57);
  return result;
}

function processAt(mapper, gateHand, frameTimes, parameterHand = hand(0.25)) {
  let result;
  for (const timestampMs of frameTimes) {
    result = mapper.process({
      meta: { timestamp_ms: timestampMs },
      Hand0: parameterHand,
      Hand1: gateHand,
    });
  }
  return result;
}

const expectedRoutes = { 1: 1, 2: 2, 3: 4, 4: 3 };
const readMapper = new FXHandMapper({ selectionDebounceMs: 300, roleStableMs: 0 });
const reading = processAt(readMapper, numberedHand(4), [0]);
assert.strictEqual(reading.recognized, 4, "recognized digit is exposed before selection debounce");
assert.strictEqual(reading.target, 0, "target waits for a stable digit before changing");
assert(Array.isArray(reading.inputValues), "mapper exposes X/Y/Pinch input data");
assert.strictEqual(reading.inputValues.length, 3);
assert(reading.inputValues.every((value) => value >= 0 && value <= 1), "input data stays normalized");
assert.strictEqual(
  processAt(new FXHandMapper({ roleStableMs: 0 }), inwardFoldedThumb(3), [0]).recognized,
  3,
  "a folded thumb inside the palm must not block target 3"
);
assert.strictEqual(
  processAt(new FXHandMapper({ roleStableMs: 0 }), inwardFoldedThumb(4), [0]).recognized,
  4,
  "a folded thumb inside the palm must not turn target 4 into target 5"
);

for (const target of [1, 2, 3, 4, 5]) {
  const mapper = new FXHandMapper({ selectionDebounceMs: 300, roleStableMs: 0, smoothing: 1 });
  const result = processAt(mapper, numberedHand(target), [0, 100, 200, 300]);
  assert.strictEqual(result.target, target, `finger ${target} selects target ${target}`);
  assert.strictEqual(result.gate, 1, `finger ${target} resumes parameter mapping`);
  assert.strictEqual(result.updated, true);
  if (target < 5) {
    assert.deepStrictEqual(result.events.map((event) => event.route), [expectedRoutes[target]]);
  } else {
    assert.deepStrictEqual(result.events.map((event) => event.target), [1, 2, 3, 4]);
    assert.deepStrictEqual(result.events.map((event) => event.route), [1, 2, 4, 3]);
  }
}

const holdMapper = new FXHandMapper({ selectionDebounceMs: 300, holdDebounceMs: 100, roleStableMs: 0, smoothing: 1 });
processAt(holdMapper, numberedHand(2), [0, 100, 200, 300]);
const geometricFist = numberedHand(0);
delete geometricFist.Gestures;
const held = processAt(holdMapper, geometricFist, [400, 450, 500]);
assert.strictEqual(held.recognized, 0, "fist is exposed as gesture 0");
assert.strictEqual(held.target, 0, "fist moves the visible control target to Off");
assert.strictEqual(held.gate, 0, "fist freezes parameter mapping");
assert.strictEqual(held.updated, false);
assert.strictEqual(held.status, "HOLD: GATE FIST");
const resumed = processAt(holdMapper, numberedHand(3), [600, 700, 800, 900]);
assert.strictEqual(resumed.target, 3);
assert.strictEqual(resumed.gate, 1, "a number gesture resumes mapping");

const invalid = numberedHand(0);
delete invalid.Gestures;
invalid.middle_finger_pip = point(0.75, 0.48);
invalid.middle_finger_dip = point(0.75, 0.38);
invalid.middle_finger_tip = point(0.75, 0.28);
const unchanged = processAt(holdMapper, invalid, [1000, 1100, 1200, 1300]);
assert.strictEqual(unchanged.target, 3, "unsupported finger combinations are ignored");
assert.strictEqual(unchanged.gate, 1);
assert.strictEqual(unchanged.recognized, -1);

const noGate = holdMapper.process({ meta: { timestamp_ms: 1400 }, Hand0: hand(0.1) });
assert.strictEqual(noGate.target, 3, "number selection is latched when the gate hand leaves");
assert.strictEqual(noGate.updated, true, "parameter mapping continues without holding the number pose");
assert.strictEqual(noGate.recognized, -1);

const noParameterMapper = new FXHandMapper({ selectionDebounceMs: 300, roleStableMs: 0 });
let noParameter;
for (const timestampMs of [0, 100, 200, 300]) {
  noParameter = noParameterMapper.process({ meta: { timestamp_ms: timestampMs }, Hand0: numberedHand(4) });
}
assert.strictEqual(noParameter.target, 4, "gate-only frames can select a target");
assert.strictEqual(noParameter.updated, false);
assert.strictEqual(noParameter.status, "NO PARAMETER HAND");

assert(holdMapper.values[4][1] <= 0.85, "delay feedback safety cap");
for (const target of Object.values(TARGETS)) {
  assert(target.labels.every((label) => label.startsWith("PARAM ")), "parameter labels must describe spatial roles");
}

function delayResponseAt(frameTimes) {
  const mapper = new FXHandMapper({ smoothing: 0.25, smoothingMs: 100, roleStableMs: 0 });
  mapper.target = 4;
  mapper.gate = 1;
  mapper.lastTimestampMs = 0;
  let result;
  for (const timestampMs of frameTimes) {
    result = mapper.process({ meta: { timestamp_ms: timestampMs }, Hand0: hand(0.05) });
  }
  return result.values[0];
}

const response30Fps = delayResponseAt([100 / 3, 200 / 3, 100]);
const response60Fps = delayResponseAt([100 / 6, 200 / 6, 300 / 6, 400 / 6, 500 / 6, 100]);
assert(Math.abs(response30Fps - response60Fps) < 0.2, "smoothing must depend on elapsed time, not FPS");

const root = path.resolve(__dirname, "..");
const tracker = fs.readFileSync(path.join(root, "web/hand-landmarker/js/jweb-hands-landmarker.js"), "utf8");
const trackerStyle = fs.readFileSync(path.join(root, "web/hand-landmarker/css/mesh-style.css"), "utf8");
assert(tracker.includes("drawControlZone"), "camera overlay includes the active control zone");
assert(tracker.includes("detectedHand.Gestures"), "gesture scores reach each indexed hand dictionary");
assert(tracker.includes("timestamp_ms"), "camera frames must carry timestamps for frame-rate-independent smoothing");
assert(tracker.includes("PARAMETER ZONE"), "camera overlay must show the parameter role");
assert(tracker.includes("GATE: 1-5 / FIST"), "camera overlay must teach the numbered gate gestures");
assert(tracker.includes("Hand${handIndex}"), "camera bridge must preserve hands by detection index");
assert(tracker.includes("const parameterX = inset"), "parameter zone is drawn on the mirrored right side");
assert(!tracker.includes("const gateHand = output.Left"), "overlay roles must not depend on handedness labels");
assert(trackerStyle.includes("calc(100vh * 4 / 3)") && trackerStyle.includes("calc(100vw * 3 / 4)"), "camera overlay preserves its 4:3 aspect ratio");

const main = JSON.parse(fs.readFileSync(path.join(root, "patchers/mt_portfolio_main.maxpat"), "utf8")).patcher;
const mainSource = fs.readFileSync(path.join(root, "patchers/mt_portfolio_main.maxpat"), "utf8");
assert(!mainSource.includes("PHYSICAL LEFT") && !mainSource.includes("PHYSICAL RIGHT"), "main UI must not teach handedness roles");
assert(mainSource.includes("1 VOCODER / 2 BITCRUSHER / 3 MULTIBAND / 4 DELAY / 5 ALL"));
assert(!mainSource.includes("OPEN PALM CONTROL"), "obsolete palm-to-control instructions must be removed");
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
assert.strictEqual(mapperBox.numoutlets, 15);
assert.strictEqual(boxes.get("pm-gesture-target").maxclass, "tab");
assert.deepStrictEqual(
  boxes.get("pm-gesture-target").tabs,
  ["0 HOLD", "1 VOCODER", "2 BITCRUSHER", "3 MULTIBAND", "4 DELAY", "5 ALL"]
);
assert.strictEqual(boxes.get("pm-gesture-route-fanout")?.text, "t i i i");
assert.strictEqual(boxes.get("pm-gesture-target-set")?.text, "set $1");
assert(hasLine("pm-bitcrusher-hand-mapper", 9, "pm-gesture-route-fanout", 0));
assert(hasLine("pm-gesture-route-fanout", 2, "pm-gesture-x-gate", 0));
assert(hasLine("pm-gesture-route-fanout", 1, "pm-gesture-y-gate", 0));
assert(hasLine("pm-gesture-route-fanout", 0, "pm-gesture-pinch-gate", 0));
assert(hasLine("pm-bitcrusher-hand-mapper", 10, "pm-gesture-target-set", 0));
assert(hasLine("pm-gesture-target-set", 0, "pm-gesture-target", 0));
assert.strictEqual(boxes.get("pm-gesture-readout")?.varname, "ui_gesture_readout");
assert.strictEqual(boxes.get("pm-gesture-readout")?.text, "GESTURE READ: --");
assert.strictEqual(boxes.get("pm-perform-gesture-fanout")?.text, "t l l");
assert(hasLine("pm-bitcrusher-hand-mapper", 11, "pm-perform-gesture-fanout", 0));
assert(hasLine("pm-perform-gesture-fanout", 0, "pm-gesture-readout", 0));
for (const [outlet, monitor] of [
  [12, "pm-gesture-input-x"],
  [13, "pm-gesture-input-y"],
  [14, "pm-gesture-input-pinch"],
]) {
  assert(hasLine("pm-bitcrusher-hand-mapper", outlet, monitor, 0), `${monitor} receives normalized input data`);
}

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
  "ui_gesture_readout",
  "ui_gesture_status",
  "ui_gesture_input_x",
  "ui_gesture_input_y",
  "ui_gesture_input_pinch",
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
