const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(
  root,
  process.env.GRANULAR_PATCH || path.join("patchers", "inputs", "mt_input_granular_ui.maxpat")
);
const assetPng = path.join(root, "assets", "ui", "granular_panel_v1.png");
const assetSvg = path.join(root, "assets", "ui", "granular_panel_v1.svg");

function boxMap(patcher) {
  return new Map((patcher.boxes || []).map((entry) => [entry.box.id, entry.box]));
}

function allBoxes(patcher) {
  const result = [];
  for (const entry of patcher.boxes || []) {
    result.push(entry.box);
    if (entry.box.patcher) result.push(...allBoxes(entry.box.patcher));
  }
  return result;
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
    assert(ids.has(source[0]), `${label}: missing source ${source[0]}`);
    assert(ids.has(destination[0]), `${label}: missing destination ${destination[0]}`);
  }
}

function pngSize(filePath) {
  const data = fs.readFileSync(filePath);
  assert.strictEqual(data.toString("ascii", 1, 4), "PNG");
  return [data.readUInt32BE(16), data.readUInt32BE(20)];
}

assert(fs.existsSync(patchPath), "mt_input_granular_ui.maxpat has not been generated");
assert(fs.existsSync(assetPng), "canonical granular_panel_v1.png is missing");
assert(fs.existsSync(assetSvg), "editable granular_panel_v1.svg is missing");
assert.deepStrictEqual(pngSize(assetPng), [1440, 880]);

const raw = fs.readFileSync(patchPath, "utf8");
assert(!raw.includes("/Users/"), "formal patch contains an absolute user path");
const p = JSON.parse(raw).patcher;
const boxes = boxMap(p);
const recursiveBoxes = allBoxes(p);
validateGraph(p);
assert.strictEqual(p.openinpresentation, 1);

const bg = boxes.get("g-bg");
assert(bg && bg.maxclass === "fpic");
assert.deepStrictEqual(bg.presentation_rect, [0, 0, 720, 440]);
assert.strictEqual(bg.pic, "granular_panel_v1.png");
assert.strictEqual(bg.background, 1);
assert.strictEqual(bg.forceaspect, 1);
assert.strictEqual(bg.ignoreclick, 1);
assert((p.dependency_cache || []).some((item) => item.name === "granular_panel_v1.png"));
assert((p.dependency_cache || []).some((item) => item.name === "granular_knob_v1.png"));
assert((p.dependency_cache || []).some((item) => item.name === "granular_knob_gain_v1.png"));

const expectedVarnames = {
  "g-enable": "granular_enable",
  "g-record": "granular_record",
  "g-play": "granular_play",
  "g-drop": "granular_drop",
  "g-load": "granular_load",
  "g-preset": "granular_preset",
  "g-waveform": "granular_waveform",
  "g-wet-dial": "granular_wet",
  "g-density-dial": "granular_density",
  "g-size-dial": "granular_grain_size",
  "g-pitch-dial": "granular_pitch",
  "g-spray-dial": "granular_spray",
  "g-amp-dial": "granular_grain_amp",
  "g-makeup-dial": "granular_makeup",
  "g-gain": "granular_output_gain",
};
for (const [id, varname] of Object.entries(expectedVarnames)) {
  assert.strictEqual(boxes.get(id).varname, varname, `${id} varname mismatch`);
}
assert.deepStrictEqual(boxes.get("g-enable").presentation_rect, [41, 70, 24, 24]);
assert.deepStrictEqual(boxes.get("g-record").presentation_rect, [123, 70, 24, 24]);
assert.deepStrictEqual(boxes.get("g-play").presentation_rect, [225, 70, 24, 24]);
assert.deepStrictEqual(boxes.get("g-waveform").presentation_rect, [24, 145, 606, 138]);
for (const name of ["wet", "density", "size", "pitch", "spray", "amp", "makeup"]) {
  const knob = boxes.get(`g-${name}-dial`);
  assert.strictEqual(knob.maxclass, "pictctrl", `${name} must use the approved picture knob`);
  const expectedSprite = name === "amp" || name === "makeup"
    ? "granular_knob_gain_v1.png"
    : "granular_knob_v1.png";
  assert.strictEqual(knob.name, expectedSprite);
  assert.strictEqual(knob.mode, 2);
  assert.strictEqual(knob.frames, 64);
  assert.strictEqual(knob.range, 255);
  assert(!boxes.has(`g-${name}-set`), `${name} prepend set must be hidden inside the knob map`);
}
assert.strictEqual(boxes.get("p-Granular-knob-map").text, "p Granular_knob_map");
const knobMap = boxes.get("p-Granular-knob-map").patcher;
assert(knobMap, "Granular knob map subpatch is missing");
const knobMapBoxes = boxMap(knobMap);
assert.strictEqual(knobMapBoxes.get("gkm-size-to-value").text, "expr 20. * pow(25.\\, $f1 / 254.)");
assert.strictEqual(knobMapBoxes.get("gkm-size-to-raw").text, "expr 254. * log($f1 / 20.) / log(25.)");
assert.strictEqual(knobMapBoxes.get("gkm-spray-to-value").text, "expr pow($f1 / 254.\\, 2.) * 1000.");
assert.strictEqual(knobMapBoxes.get("gkm-spray-to-raw").text, "expr 254. * sqrt($f1 / 1000.)");
const parameterNames = ["wet", "density", "size", "pitch", "spray", "amp", "makeup"];
parameterNames.forEach((name, index) => {
  assert(p.lines.some((entry) =>
    entry.patchline.source[0] === `g-${name}-dial`
    && entry.patchline.destination[0] === "p-Granular-knob-map"
    && entry.patchline.destination[1] === index
  ), `${name} picture knob raw mapping is wrong`);
  assert(p.lines.some((entry) =>
    entry.patchline.source[0] === "p-Granular-knob-map"
    && entry.patchline.source[1] === index
    && entry.patchline.destination[0] === `g-${name}-value`
  ), `${name} mapped value output is wrong`);
  assert(p.lines.some((entry) =>
    entry.patchline.source[0] === `g-${name}-value`
    && entry.patchline.destination[0] === "p-Granular-knob-map"
    && entry.patchline.destination[1] === 7 + index
  ), `${name} number-to-knob synchronization is wrong`);
  assert(p.lines.some((entry) =>
    entry.patchline.source[0] === "p-Granular-knob-map"
    && entry.patchline.source[1] === 7 + index
    && entry.patchline.destination[0] === `g-${name}-dial`
  ), `${name} silent knob set output is wrong`);
});
assert.deepStrictEqual(boxes.get("g-preset").items, ["Safe Cloud", ",", "Frozen Pad"]);
assert.strictEqual(boxes.get("g-file").text, "No material");
assert.strictEqual(boxes.get("g-status").text, "Idle");
assert.strictEqual(boxes.get("g-duration").text, "00:00");
assert.deepStrictEqual(boxes.get("g-gain").saved_attribute_attributes.valueof.parameter_initial, [0]);

const ranges = {
  wet: [0, 100], density: [1, 80], size: [20, 500], pitch: [-24, 24],
  spray: [0, 1000], amp: [-60, -3], makeup: [-60, 12],
};
for (const [name, [minimum, maximum]] of Object.entries(ranges)) {
  const value = boxes.get(`g-${name}-value`);
  assert.strictEqual(value.minimum, minimum, `${name} minimum`);
  assert.strictEqual(value.maximum, maximum, `${name} maximum`);
}

const decimalPlaces = {
  wet: 0,
  density: 1,
  size: 1,
  pitch: 1,
  spray: 1,
  amp: 1,
  makeup: 1,
};
for (const [name, places] of Object.entries(decimalPlaces)) {
  const actualPlaces = boxes.get(`g-${name}-value`).numdecimalplaces ?? 0;
  assert.strictEqual(actualPlaces, places, `${name} decimal places`);
  assert.strictEqual(knobMapBoxes.get(`gkm-${name}-raw-clip`).text, "clip 0 254", `${name} raw endpoint`);
}
assert.strictEqual(knobMapBoxes.get("gkm-wet-to-value").text, "scale 0 254 0. 100.");
assert.strictEqual(knobMapBoxes.get("gkm-density-to-value").text, "scale 0 254 1. 80.");
assert.strictEqual(knobMapBoxes.get("gkm-pitch-to-value").text, "scale 0 254 -24. 24.");
assert.strictEqual(knobMapBoxes.get("gkm-amp-to-value").text, "scale 0 254 -60. -3.");
assert.strictEqual(knobMapBoxes.get("gkm-makeup-to-value").text, "scale 0 254 -60. 12.");

for (const name of ["wet", "density", "size", "pitch", "spray", "amp", "makeup"]) {
  const label = boxes.get(`g-${name}-label`);
  assert(!label || label.presentation !== 1, `${name} label must be baked into the PNG only`);
}
for (const id of ["g-title", "g-note", "g-enable-label", "g-record-label", "g-play-label", "g-drop-label", "g-load-label", "g-preset-label", "g-file-label", "g-status-label", "g-duration-label", "g-gain-label"]) {
  const box = boxes.get(id);
  assert(!box || box.presentation !== 1, `${id} must not duplicate text baked into the PNG`);
}

const safeSizeMs = 129.370483;
const safeSprayMs = 57.6;
assert(Math.abs((100 * Math.log(safeSizeMs / 20) / Math.log(25)) - 58) < 0.000001);
assert(Math.abs((100 * Math.sqrt(safeSprayMs / 1000)) - 24) < 0.000001);

const params = boxes.get("p-Granular-params");
assert(params && params.patcher, "Granular parameter conversion subpatch is missing");
const paramBoxes = boxMap(params.patcher);
assert.strictEqual(paramBoxes.get("gp-wet-convert").text, "expr $f1 / 100.");
assert.strictEqual(paramBoxes.get("gp-size-convert").text, "expr 100. * log($f1 / 20.) / log(25.)");
assert.strictEqual(paramBoxes.get("gp-spray-convert").text, "expr 100. * sqrt($f1 / 1000.)");
for (const [source, destination] of [
  ["gp-wet-in", "gp-wet-convert"],
  ["gp-wet-convert", "gp-wet-send"],
  ["gp-size-in", "gp-size-convert"],
  ["gp-size-convert", "gp-size-send"],
  ["gp-spray-in", "gp-spray-convert"],
  ["gp-spray-convert", "gp-spray-send"],
]) {
  assert(params.patcher.lines.some((entry) =>
    entry.patchline.source[0] === source && entry.patchline.destination[0] === destination
  ), `${source} -> ${destination} conversion route is missing`);
}

assert.strictEqual(boxes.get("g-ext-enable").comment, "Enable 0/1");
assert.strictEqual(boxes.get("g-out-l").comment, "Granular audio L");
assert.strictEqual(boxes.get("g-out-r").comment, "Granular audio R");
assert(!recursiveBoxes.some((box) => box.text && box.text.startsWith("ezdac~")));
assert(!recursiveBoxes.some((box) => box.text && box.text.startsWith("loadmess")));

const control = boxes.get("p-Granular-control");
assert(control && control.patcher);
const controlBoxes = boxMap(control.patcher);
assert([...controlBoxes.values()].some((box) => box.text === "loadbang"));
assert([...controlBoxes.values()].some((box) => box.text === "90 28 129.370483 0 57.6 -32 0"));
assert([...controlBoxes.values()].some((box) => box.text === "95 56 280.117862 0 6.4 -32 0"));
assert([...controlBoxes.values()].some((box) => box.text === "s mt_granular_enable_state"));
assert([...controlBoxes.values()].some((box) => box.text === "r mt_granular_enable_state"));
assert(control.patcher.lines.some((entry) =>
  entry.patchline.source[0] === "gc-ext-enable-clip" && entry.patchline.destination[0] === "gc-enable-trigger"
));
assert(!control.patcher.lines.some((entry) =>
  entry.patchline.source[0] === "gc-ext-enable-clip" && entry.patchline.destination[0] === "gc-enable-send"
));

const core = boxes.get("p-Granular-input");
assert(core && core.patcher);
const coreBoxes = [...boxMap(core.patcher).values()];
assert(coreBoxes.some((box) => box.text === "mt_granular_synth"));
assert(coreBoxes.some((box) => box.text === "$1 20"));
assert(coreBoxes.some((box) => box.text === "adc~ 1"));
assert(coreBoxes.some((box) => box.text === "info~ mt_granular_buffer"));
assert(coreBoxes.some((box) => box.text === "s mt_granular_position"));

const synthPath = path.join(root, "patchers", "dsp", "mt_granular_synth.maxpat");
const synth = JSON.parse(fs.readFileSync(synthPath, "utf8")).patcher;
const synthBoxes = boxMap(synth);
assert.strictEqual(synthBoxes.get("g-c-amp-load").text, "loadmess -32");
assert.strictEqual(synthBoxes.get("g-c-gain-load").text, "loadmess 0");

const approvedColors = new Set([
  JSON.stringify([0.44, 0.72, 1, 1]),
  JSON.stringify([1, 0.62, 0.24, 1]),
  JSON.stringify([0.68, 0.95, 0.34, 1]),
]);
for (const patcher of [p, control.patcher, core.patcher]) {
  for (const entry of patcher.lines || []) {
    assert(approvedColors.has(JSON.stringify(entry.patchline.color)), "uncategorized Granular UI line");
  }
}

console.log("Granular UI static contract: PASS");
