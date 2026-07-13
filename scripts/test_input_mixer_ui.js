const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(root, "mt_input_mixer_ui.maxpat");
const localPng = path.join(root, "input_mixer_panel_v1.png");
const assetPng = path.join(root, "assets", "ui", "input_mixer_panel_v1.png");
const assetSvg = path.join(root, "assets", "ui", "input_mixer_panel_v1.svg");

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

function hasLine(patcher, sourceId, outlet, destinationId, inlet) {
  return (patcher.lines || []).some((entry) => {
    const line = entry.patchline;
    return line.source[0] === sourceId && line.source[1] === outlet
      && line.destination[0] === destinationId && line.destination[1] === inlet;
  });
}

assert(fs.existsSync(patchPath), "mt_input_mixer_ui.maxpat has not been generated");
assert(fs.existsSync(localPng), "module-local input_mixer_panel_v1.png is missing");
assert(fs.existsSync(assetPng), "canonical input_mixer_panel_v1.png is missing");
assert(fs.existsSync(assetSvg), "editable input_mixer_panel_v1.svg is missing");
assert.deepStrictEqual(pngSize(localPng), [1520, 640]);
assert.deepStrictEqual(pngSize(assetPng), [1520, 640]);
const svg = fs.readFileSync(assetSvg, "utf8");
assert(svg.includes('<rect x="594" y="13" width="148" height="22"'), "Dry Bus header pill is too narrow");
assert(svg.includes('<rect x="17" y="138" width="48" height="82"'), "Mic icon well is not vertically centered");
assert(svg.includes('<rect x="199" y="138" width="48" height="82"'), "File icon well is not vertically centered");
assert(svg.includes('<rect x="381" y="138" width="48" height="82"'), "Granular icon well is not vertically centered");

const raw = fs.readFileSync(patchPath, "utf8");
assert(!raw.includes("mt_grain_enable_state"), "legacy granular state bus name remains in Input Mixer");
assert(raw.includes("mt_granular_enable_state"), "Input Mixer must use the Granular module state bus");
assert(!raw.includes("/Users/"), "formal patch contains an absolute user path");
const doc = JSON.parse(raw);
const p = doc.patcher;
const boxes = boxMap(p);
const recursiveBoxes = allBoxes(p);

validateGraph(p);
assert.strictEqual(p.openinpresentation, 1, "patch must open in Presentation Mode");
assert(p.rect[2] >= 760 && p.rect[3] >= 320, "standalone window must expose the full Presentation area");

const bg = boxes.get("mx-bg");
assert(bg && bg.maxclass === "fpic", "missing PNG background");
assert.deepStrictEqual(bg.presentation_rect, [0, 0, 760, 320]);
assert.strictEqual(bg.pic, "input_mixer_panel_v1.png");
assert.strictEqual(bg.background, 1);
assert.strictEqual(bg.ignoreclick, 1);
assert.strictEqual(bg.autofit, 1);
assert.strictEqual(bg.forceaspect, 1);
assert((p.dependency_cache || []).some((item) => item.name === "input_mixer_panel_v1.png"));

const inlets = p.boxes.map((entry) => entry.box).filter((box) => box.maxclass === "inlet");
const outlets = p.boxes.map((entry) => entry.box).filter((box) => box.maxclass === "outlet");
assert.strictEqual(inlets.length, 9, "mixer must expose six audio and three Enable inlets");
assert.strictEqual(outlets.length, 2, "mixer must expose stereo L/R outlets");
assert.deepStrictEqual(inlets.map((box) => box.comment), [
  "Mic audio L",
  "Mic audio R",
  "File audio L",
  "File audio R",
  "Granular audio L",
  "Granular audio R",
  "Mic Enable 0/1",
  "File Enable 0/1",
  "Granular Enable 0/1",
]);
assert.deepStrictEqual(outlets.map((box) => box.comment), ["Mixed audio L", "Mixed audio R"]);

assert.strictEqual(boxes.get("mx-mic-enable").varname, "mixer_mic_enable");
assert.strictEqual(boxes.get("mx-file-enable").varname, "mixer_file_enable");
assert.strictEqual(boxes.get("mx-grain-enable").varname, "mixer_granular_enable");
assert.strictEqual(boxes.get("mx-mute-button").varname, "mixer_mute_all");
assert.strictEqual(boxes.get("mx-master-readout").varname, "mixer_master_db");

const gainIds = ["mx-mic-gain", "mx-file-gain", "mx-grain-gain", "mx-master-gain"];
assert.deepStrictEqual(gainIds.map((id) => boxes.get(id).maxclass), ["live.gain~", "live.gain~", "live.gain~", "live.gain~"]);
assert.deepStrictEqual(gainIds.map((id) => boxes.get(id).varname), [
  "mixer_mic_gain",
  "mixer_file_gain",
  "mixer_granular_gain",
  "mixer_master_gain",
]);
assert.deepStrictEqual(gainIds.map((id) => boxes.get(id).saved_attribute_attributes.valueof.parameter_initial), [[-12], [-12], [-12], [-8]]);

assert.strictEqual(recursiveBoxes.filter((box) => box.text === "$1 20").length, 3, "three 20 ms Enable ramps required");
assert(recursiveBoxes.some((box) => box.text === "s mt_mic_enable_state"));
assert(recursiveBoxes.some((box) => box.text === "s mt_file_enable_state"));
assert(recursiveBoxes.some((box) => box.text === "s mt_granular_enable_state"));
assert(hasLine(p, "mx-mute-route", 0, "mx-mic-enable", 0));
assert(hasLine(p, "mx-mute-route", 1, "mx-file-enable", 0));
assert(hasLine(p, "mx-mute-route", 2, "mx-grain-enable", 0));
assert(hasLine(p, "mx-master-gain", 2, "mx-master-readout", 0), "Master dB readout must use live.gain~ dB outlet");

const externalPairs = [
  ["mx-mic-enable-route", "mx-mic-enable-set", "mx-mic-msg"],
  ["mx-file-enable-route", "mx-file-enable-set", "mx-file-msg"],
  ["mx-grain-enable-route", "mx-grain-enable-set", "mx-grain-msg"],
];
for (const [routeId, setId, rampId] of externalPairs) {
  assert(hasLine(p, routeId, 0, setId, 0));
  assert(hasLine(p, routeId, 1, rampId, 0));
}

assert(!recursiveBoxes.some((box) => box.text && box.text.startsWith("ezdac~")));
assert(!recursiveBoxes.some((box) => box.text && box.text.startsWith("loadmess")));
const approvedColors = new Set([
  JSON.stringify([0.44, 0.72, 1, 1]),
  JSON.stringify([1, 0.62, 0.24, 1]),
  JSON.stringify([0.68, 0.95, 0.34, 1]),
]);
for (const entry of p.lines || []) {
  assert(approvedColors.has(JSON.stringify(entry.patchline.color)), "uncategorized mixer patchline");
}

console.log("Input Mixer UI static contract: PASS");
