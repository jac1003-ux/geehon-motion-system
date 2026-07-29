const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(root, "patchers", "mixers", "mt_fx_return_mixer.maxpat");
const assetPng = path.join(root, "assets", "ui", "fx_return_mixer_panel_v1.png");
const assetSvg = path.join(root, "assets", "ui", "fx_return_mixer_panel_v1.svg");

function boxMap(patcher) {
  return new Map((patcher.boxes || []).map((entry) => [entry.box.id, entry.box]));
}

function validateGraph(patcher, label = "root") {
  const ids = new Set();
  for (const entry of patcher.boxes || []) {
    const box = entry.box;
    assert(box.id, `${label}: object without id`);
    assert(!ids.has(box.id), `${label}: duplicate id ${box.id}`);
    ids.add(box.id);
    if (box.patcher) validateGraph(box.patcher, `${label}/${box.id}`);
  }
  for (const entry of patcher.lines || []) {
    const { source, destination } = entry.patchline;
    assert(ids.has(source[0]), `${label}: missing patchline source ${source[0]}`);
    assert(ids.has(destination[0]), `${label}: missing patchline destination ${destination[0]}`);
  }
}

function pngSize(filePath) {
  const data = fs.readFileSync(filePath);
  assert.strictEqual(data.toString("ascii", 1, 4), "PNG", `${filePath} is not PNG`);
  return [data.readUInt32BE(16), data.readUInt32BE(20)];
}

function hasLine(patcher, sourceId, outlet, destinationId, inlet) {
  return (patcher.lines || []).some((entry) => {
    const patchline = entry.patchline;
    return patchline.source[0] === sourceId && patchline.source[1] === outlet
      && patchline.destination[0] === destinationId && patchline.destination[1] === inlet;
  });
}

function assertRectNear(actual, expected, tolerance = 1) {
  assert.strictEqual(actual.length, expected.length);
  actual.forEach((value, index) => {
    assert(
      Math.abs(value - expected[index]) <= tolerance,
      `rect ${actual} differs from ${expected}`
    );
  });
}

assert(fs.existsSync(patchPath), "mt_fx_return_mixer.maxpat is missing");
assert(fs.existsSync(assetPng), "canonical FX mixer PNG is missing");
assert(fs.existsSync(assetSvg), "editable FX mixer SVG is missing");
assert.deepStrictEqual(pngSize(assetPng), [1810, 600]);

const svg = fs.readFileSync(assetSvg, "utf8");
assert(
  svg.includes("MULTIBAND"),
  "Multiband lane must be present"
);
for (const x of [145, 290, 435, 580, 725]) {
  assert(svg.includes(`<line x1="${x}" y1="48" x2="${x}" y2="300"`), `missing equal-grid divider ${x}`);
}
assert(svg.includes("RETURN BANK A"));
assert(svg.includes("FX RETURN MIXER"));

const raw = fs.readFileSync(patchPath, "utf8");
assert(!raw.includes("/Users/"), "formal patch contains an absolute user path");
const p = JSON.parse(raw).patcher;
const boxes = boxMap(p);
validateGraph(p);

assert.strictEqual(p.openinpresentation, 1);
const bg = boxes.get("fx-bg");
assert(bg && bg.maxclass === "fpic", "missing FX mixer background fpic");
assert.deepStrictEqual(bg.presentation_rect, [0, 0, 905, 300]);
assert.strictEqual(bg.pic, "fx_return_mixer_panel_v1.png");
assert.strictEqual(bg.background, 1);
assert.strictEqual(bg.ignoreclick, 1);
assert.strictEqual(bg.autofit, 1);
assert.strictEqual(bg.forceaspect, 1);
assert((p.dependency_cache || []).some((item) => item.name === "fx_return_mixer_panel_v1.png"));

const inlets = p.boxes.map((entry) => entry.box).filter((box) => box.maxclass === "inlet");
const outlets = p.boxes.map((entry) => entry.box).filter((box) => box.maxclass === "outlet");
assert.strictEqual(inlets.length, 15, "mixer must expose ten audio and five Enable inlets");
assert.strictEqual(outlets.length, 6, "mixer must expose stereo audio and four Enable-state outlets");
assert.deepStrictEqual(inlets.map((box) => box.comment), [
  "Dry audio L", "Dry audio R",
  "Vocoder return L", "Vocoder return R",
  "Bitcrusher return L", "Bitcrusher return R",
  "Feedback Delay return L", "Feedback Delay return R",
  "Multiband return L", "Multiband return R",
  "Dry Enable 0/1", "Vocoder Enable 0/1", "Bitcrusher Enable 0/1",
  "Feedback Delay Enable 0/1", "Multiband Enable 0/1",
]);
assert.deepStrictEqual(outlets.map((box) => box.comment), [
  "Mixed audio L", "Mixed audio R", "Vocoder Enable state", "Bitcrusher Enable state",
  "Feedback Delay Enable state", "Multiband Enable state",
]);

const lanes = [
  ["dry", 0, 0],
  ["voc", 145, -10],
  ["bit", 290, 0],
  ["delay", 435, -10],
  ["multi", 580, -10],
];
for (const [key, x, initial] of lanes) {
  const enable = boxes.get(`fx-${key}-enable`);
  const gain = boxes.get(`fx-${key}-gain`);
  assert.deepStrictEqual(enable.presentation_rect, [x + 111, 57, 24, 24]);
  assertRectNear(gain.presentation_rect, [x + 75, 108, 54, 139]);
  assert.deepStrictEqual(gain.saved_attribute_attributes.valueof.parameter_initial, [initial]);
  assert(!boxes.has(`fx-${key}-meter`), `${key} duplicate meter should be removed from the shell`);
}
assert.strictEqual(boxes.get("fx-dry-enable").varname, "fx_return_dry_enable");
assert.strictEqual(boxes.get("fx-voc-enable").varname, "fx_return_vocoder_enable");
assert.strictEqual(boxes.get("fx-bit-enable").varname, "fx_return_bitcrusher_enable");
assert.strictEqual(boxes.get("fx-delay-enable").varname, "fx_return_feedback_delay_enable");
assert.strictEqual(boxes.get("fx-multi-enable").varname, "fx_return_multiband_enable");
assert.strictEqual(boxes.get("fx-master").varname, "fx_return_master_gain");
assertRectNear(boxes.get("fx-master").presentation_rect, [741, 103, 54, 144]);
assert.deepStrictEqual(boxes.get("fx-meter-l").presentation_rect, [815, 96, 12, 150]);
assert.deepStrictEqual(boxes.get("fx-meter-r").presentation_rect, [835, 96, 12, 150]);

const laneCore = boxes.get("p-Return-lanes");
const sumCore = boxes.get("p-Return-sum");
assert(laneCore && laneCore.patcher, "return lane DSP must be collected in p Return_lanes");
assert(sumCore && sumCore.patcher, "return summing must be collected in p Return_sum");
for (const maxclass of ["inlet", "outlet"]) {
  const ports = laneCore.patcher.boxes
    .map((entry) => entry.box)
    .filter((box) => box.maxclass === maxclass)
    .sort((a, b) => a.patching_rect[0] - b.patching_rect[0]);
  assert.deepStrictEqual(
    ports.map((box) => box.index),
    ports.map((_, index) => index + 1),
    `Return_lanes ${maxclass}s must be ordered left-to-right`
  );
}
assert.strictEqual(p.boxes.filter((entry) => entry.box.text === "$1 20").length, 0, "20 ms ramps must not clutter the shell");
assert.strictEqual(p.boxes.filter((entry) => entry.box.text === "line~").length, 0, "line~ objects must live in Return_lanes");
assert.strictEqual(p.boxes.filter((entry) => entry.box.text === "*~ 0.").length, 0, "lane gates must live in Return_lanes");
assert.strictEqual(p.boxes.filter((entry) => entry.box.text === "+~").length, 0, "summing operators must live in Return_sum");
assert.strictEqual(laneCore.patcher.boxes.filter((entry) => entry.box.text === "$1 20").length, 5, "five 20 ms return ramps required");
assert.strictEqual(laneCore.patcher.boxes.filter((entry) => entry.box.text === "loadmess 1").length, 1, "only Dry needs a default-on initializer");
assert.strictEqual(sumCore.patcher.boxes.filter((entry) => entry.box.text === "+~").length, 8, "stereo five-lane sum requires eight adders");
assert(hasLine(p, "fx-dry-gain", 0, "p-Return-sum", 0));
assert(hasLine(p, "fx-dry-gain", 1, "p-Return-sum", 1));
assert(hasLine(p, "fx-voc-gain", 0, "p-Return-sum", 2));
assert(hasLine(p, "fx-voc-gain", 1, "p-Return-sum", 3));
assert(hasLine(p, "fx-bit-gain", 0, "p-Return-sum", 4));
assert(hasLine(p, "fx-bit-gain", 1, "p-Return-sum", 5));
assert(hasLine(p, "fx-delay-gain", 0, "p-Return-sum", 6));
assert(hasLine(p, "fx-delay-gain", 1, "p-Return-sum", 7));
assert(hasLine(p, "fx-multi-gain", 0, "p-Return-sum", 8));
assert(hasLine(p, "fx-multi-gain", 1, "p-Return-sum", 9));
assert(hasLine(p, "p-Return-sum", 0, "fx-master", 0));
assert(hasLine(p, "p-Return-sum", 1, "fx-master", 1));
assert(hasLine(p, "fx-master", 0, "fx-out-l", 0));
assert(hasLine(p, "fx-master", 1, "fx-out-r", 0));

console.log("FX Return Mixer UI static contract: PASS");
