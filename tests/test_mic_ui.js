const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(root, "patchers", "inputs", "mt_input_mic_ui.maxpat");

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

function allBoxes(patcher) {
  const result = [];
  for (const entry of patcher.boxes || []) {
    result.push(entry.box);
    if (entry.box.patcher) result.push(...allBoxes(entry.box.patcher));
  }
  return result;
}

assert(fs.existsSync(patchPath), "mt_input_mic_ui.maxpat has not been generated");
const raw = fs.readFileSync(patchPath, "utf8");
assert(!raw.includes("/Users/"), "formal patch contains an absolute user path");

const doc = JSON.parse(raw);
const p = doc.patcher;
const boxes = boxMap(p);
const recursiveBoxes = allBoxes(p);

assert.strictEqual(p.openinpresentation, 1, "patch must open in presentation mode");
validateGraph(p);

const bg = boxes.get("m-bg");
assert(bg && bg.maxclass === "fpic", "missing PNG background");
assert.deepStrictEqual(bg.presentation_rect.slice(2), [420, 280], "bpatcher footprint must be 420 x 280");
assert.strictEqual(bg.pic, "mic_panel_v1.png", "PNG must resolve beside the formal module");
assert.strictEqual(bg.background, 1, "PNG must be a background object");
assert.strictEqual(bg.forceaspect, 1, "2x PNG must preserve its 420 x 280 aspect ratio");
assert.strictEqual(bg.ignoreclick, 1, "PNG must not intercept UI clicks");
assert((p.dependency_cache || []).some((item) => item.name === "mic_panel_v1.png"), "PNG missing from dependency cache");

const enable = boxes.get("m-enable");
const mono = boxes.get("m-channel");
const pair = boxes.get("m-pair");
const gain = boxes.get("m-gain");
assert.strictEqual(enable.varname, "mic_enable");
assert.strictEqual(mono.varname, "mic_mono_channel");
assert.strictEqual(pair.varname, "mic_stereo_pair");
assert.strictEqual(gain.varname, "mic_output_gain");
assert.deepStrictEqual(enable.presentation_rect, [38, 109, 28, 28]);
assert.deepStrictEqual(mono.presentation_rect, [115.42857658863068, 132.50000592321157, 75.28571765124798, 22]);
assert.deepStrictEqual(pair.presentation_rect, [231, 123, 20, 82]);
assert.deepStrictEqual(gain.presentation_rect, [351, 112, 36, 98]);
assert.strictEqual(mono.minimum, 1);
assert.strictEqual(mono.maximum, 8);
assert.deepStrictEqual(gain.saved_attribute_attributes.valueof.parameter_initial, [0]);

assert.strictEqual(boxes.get("m-ext-enable").comment, "Enable 0/1");
assert.strictEqual(boxes.get("m-out-l").comment, "Mic audio L");
assert.strictEqual(boxes.get("m-out-r").comment, "Mic audio R");
assert(recursiveBoxes.some((box) => box.text === "s mt_mic_enable_state"), "shared Enable sender missing");
assert(recursiveBoxes.some((box) => box.text === "r mt_mic_enable_state"), "shared Enable receiver missing");
assert(fs.existsSync(path.join(root, "assets", "ui", "mic_panel_v1.svg")), "editable Mic SVG skin is missing");
assert(fs.existsSync(path.join(root, "assets", "ui", "mic_panel_v1.png")), "canonical 2x Mic PNG skin is missing");
for (const id of ["m-title", "m-note", "m-enable-label", "m-channel-label", "m-pair-label", "m-pair-items", "m-gain-label", "m-out-note"]) {
  assert(!boxes.has(id), `${id} must not duplicate text baked into the PNG`);
}
assert(!recursiveBoxes.some((box) => box.text && box.text.startsWith("ezdac~")), "formal module must not contain ezdac~");
assert(!recursiveBoxes.some((box) => box.text && box.text.startsWith("loadmess")), "defaults must use one centralized initialization chain");

const core = boxes.get("p-Mic-input");
assert(core && core.patcher, "missing Mic DSP subpatch");
const coreBoxes = boxMap(core.patcher);
assert([...coreBoxes.values()].some((box) => box.text === "$1 20"), "Enable 20 ms ramp missing");
assert([...coreBoxes.values()].some((box) => box.text === "0 20"), "route fade-down missing");
assert([...coreBoxes.values()].some((box) => box.text === "1 20"), "route fade-up missing");
assert([...coreBoxes.values()].some((box) => box.text === "pipe 20"), "route switch delay missing");
const approvedColors = new Set([
  JSON.stringify([0.44, 0.72, 1, 1]),
  JSON.stringify([1, 0.62, 0.24, 1]),
  JSON.stringify([0.68, 0.95, 0.34, 1]),
]);
for (const entry of p.lines || []) {
  assert(approvedColors.has(JSON.stringify(entry.patchline.color)), "outer Mic UI patchline has no approved category color");
}
for (const entry of core.patcher.lines || []) {
  const color = entry.patchline.color;
  assert(color, "every Mic DSP patchline must be categorized by color");
  assert(approvedColors.has(JSON.stringify(color)), "Mic DSP patchline has an unexpected color");
}
const control = boxes.get("p-Mic-control");
assert(!control.patcher.lines.some((entry) =>
  entry.patchline.source[0] === "mc-ext-clip" && entry.patchline.destination[0] === "mc-enable-send"
), "external Enable must not feed the shared state bus");
assert(control.patcher.lines.some((entry) =>
  entry.patchline.source[0] === "mc-ext-clip" && entry.patchline.destination[0] === "mc-enable-trigger"
), "external Enable must drive the local enable path");
for (const entry of control.patcher.lines || []) {
  assert(approvedColors.has(JSON.stringify(entry.patchline.color)), "Mic control patchline has no approved category color");
}

console.log("Mic UI static contract: PASS");
