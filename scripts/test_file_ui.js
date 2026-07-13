const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(root, "mt_input_file_ui.maxpat");
const localPng = path.join(root, "file_panel_v1.png");
const assetPng = path.join(root, "assets", "ui", "file_panel_v1.png");
const assetSvg = path.join(root, "assets", "ui", "file_panel_v1.svg");

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
    assert(ids.has(source[0]), `${label}: missing patchline source ${source[0]}`);
    assert(ids.has(destination[0]), `${label}: missing patchline destination ${destination[0]}`);
  }
}

function pngSize(filePath) {
  const data = fs.readFileSync(filePath);
  assert.strictEqual(data.toString("ascii", 1, 4), "PNG", `${filePath} is not PNG`);
  return [data.readUInt32BE(16), data.readUInt32BE(20)];
}

assert(fs.existsSync(patchPath), "mt_input_file_ui.maxpat has not been generated");
assert(fs.existsSync(localPng), "module-local file_panel_v1.png is missing");
assert(fs.existsSync(assetPng), "canonical file_panel_v1.png is missing");
assert(fs.existsSync(assetSvg), "editable file_panel_v1.svg is missing");
assert.deepStrictEqual(pngSize(localPng), [1040, 680]);
assert.deepStrictEqual(pngSize(assetPng), [1040, 680]);

const raw = fs.readFileSync(patchPath, "utf8");
assert(!raw.includes("/Users/"), "formal patch contains an absolute user path");
const doc = JSON.parse(raw);
const p = doc.patcher;
const boxes = boxMap(p);
const recursiveBoxes = allBoxes(p);

validateGraph(p);
assert.strictEqual(p.openinpresentation, 1, "patch must open in presentation mode");
assert(p.rect[2] >= 520 && p.rect[3] >= 340, "standalone window must contain the complete 520 x 340 module");
const bg = boxes.get("f-bg");
assert(bg && bg.maxclass === "fpic", "missing PNG background");
assert.deepStrictEqual(bg.presentation_rect, [0, 0, 520, 340]);
assert.strictEqual(bg.pic, "file_panel_v1.png");
assert.strictEqual(bg.background, 1);
assert.strictEqual(bg.forceaspect, 1);
assert.strictEqual(bg.ignoreclick, 1);
assert((p.dependency_cache || []).some((item) => item.name === "file_panel_v1.png"));

assert.strictEqual(boxes.get("f-enable").varname, "file_enable");
assert.strictEqual(boxes.get("f-play").varname, "file_play");
assert.strictEqual(boxes.get("f-loop").varname, "file_loop");
assert.strictEqual(boxes.get("f-drop").varname, "file_drop");
assert.strictEqual(boxes.get("f-load-button").varname, "file_load");
assert.strictEqual(boxes.get("f-waveform").varname, "file_waveform");
assert.strictEqual(boxes.get("f-gain").varname, "file_output_gain");
assert.deepStrictEqual(boxes.get("f-enable").presentation_rect, [26, 72, 24, 24]);
assert.deepStrictEqual(boxes.get("f-play").presentation_rect, [70, 72, 24, 24]);
assert.deepStrictEqual(boxes.get("f-loop").presentation_rect, [114, 72, 24, 24]);
assert.deepStrictEqual(boxes.get("f-waveform").presentation_rect, [24, 152, 412, 100]);
assert.deepStrictEqual(boxes.get("f-gain").saved_attribute_attributes.valueof.parameter_initial, [0]);
assert.strictEqual(boxes.get("f-name").text, "No file loaded");
assert.strictEqual(boxes.get("f-time-current").text, "00:00");
assert.strictEqual(boxes.get("f-time-total").text, "00:00");
for (const id of ["f-title", "f-note", "f-enable-label", "f-play-label", "f-loop-label", "f-drop-label", "f-load-label", "f-status-label", "f-time-label", "f-gain-label"]) {
  const box = boxes.get(id);
  assert(!box || box.presentation !== 1, `${id} must not duplicate text baked into the PNG`);
}

assert.strictEqual(boxes.get("f-ext-enable").comment, "Enable 0/1");
assert.strictEqual(boxes.get("f-ext-play").comment, "Play 0/1");
assert.strictEqual(boxes.get("f-out-l").comment, "File audio L");
assert.strictEqual(boxes.get("f-out-r").comment, "File audio R");
assert(!recursiveBoxes.some((box) => box.text && box.text.startsWith("ezdac~")));
assert(!recursiveBoxes.some((box) => box.text && box.text.startsWith("loadmess")));

const control = boxes.get("p-File-control");
assert(control && control.patcher, "missing File control subpatch");
const controlBoxes = boxMap(control.patcher);
assert([...controlBoxes.values()].some((box) => box.text === "loadbang"), "central initialization missing");
assert([...controlBoxes.values()].some((box) => box.text === "s mt_file_enable_state"));
assert([...controlBoxes.values()].some((box) => box.text === "r mt_file_enable_state"));
assert([...controlBoxes.values()].some((box) => box.text === "strippath"), "short filename extraction missing");
assert([...controlBoxes.values()].some((box) => box.text === "sprintf %02ld:%02ld"), "MM:SS formatter missing");
assert(control.patcher.lines.some((entry) =>
  entry.patchline.source[0] === "fc-ext-enable-clip" && entry.patchline.destination[0] === "fc-enable-trigger"
), "external Enable must drive only the local enable path");
assert(!control.patcher.lines.some((entry) =>
  entry.patchline.source[0] === "fc-ext-enable-clip" && entry.patchline.destination[0] === "fc-enable-send"
), "external Enable must not feed the shared state bus");

const core = boxes.get("p-File-input");
assert(core && core.patcher, "missing File DSP subpatch");
const coreBoxes = [...boxMap(core.patcher).values()];
assert(coreBoxes.some((box) => box.text === "buffer~ #0_file_buffer 30000 2"));
assert(coreBoxes.some((box) => box.text === "groove~ #0_file_buffer 2"));
assert(coreBoxes.some((box) => box.text === "$1 20"), "20 ms Enable ramp missing");
assert(coreBoxes.some((box) => box.text === "prepend loop"), "explicit Loop control missing");
assert(coreBoxes.some((box) => box.text === "prepend line"), "waveform playhead feedback missing");
assert(coreBoxes.some((box) => box.text && box.text.startsWith("expr min(max(0.")), "safe waveform seek missing");

const initLoop = controlBoxes.get("fc-init-loop");
assert(initLoop && initLoop.text === "0", "Loop must initialize Off");
const approvedColors = new Set([
  JSON.stringify([0.44, 0.72, 1, 1]),
  JSON.stringify([1, 0.62, 0.24, 1]),
  JSON.stringify([0.68, 0.95, 0.34, 1]),
]);
for (const patcher of [p, control.patcher, core.patcher]) {
  for (const entry of patcher.lines || []) {
    assert(approvedColors.has(JSON.stringify(entry.patchline.color)), "uncategorized File UI patchline");
  }
}

console.log("File UI static contract: PASS");
