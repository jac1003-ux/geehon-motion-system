const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(root, "patchers", "inputs", "mt_input_mic_ui.maxpat");
const selectionWatchPath = path.join(root, "javascript", "mt_filtergraph_selection.js");
const eqControllerPath = path.join(root, "javascript", "mt_mic_eq_controller.js");

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
assert.strictEqual(boxes.get("m-ext-eq-open")?.comment, "Open EQ editor");
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

const eq = boxes.get("p-Mic-eq");
assert(eq && eq.patcher, "missing embedded Mic EQ");
assert.strictEqual(eq.numinlets, 2, "Mic EQ must receive stereo L/R");
assert.strictEqual(eq.numoutlets, 2, "Mic EQ must output stereo L/R");
const eqBoxes = boxMap(eq.patcher);
const filtergraph = [...eqBoxes.values()].find((box) => box.maxclass === "filtergraph~");
assert(filtergraph && filtergraph.nfilters === 7, "Mic EQ must use a 7-band filtergraph~");
assert.strictEqual(
  [...eqBoxes.values()].filter((box) => box.text === "cascade~").length,
  2,
  "Mic EQ must use one cascade~ per channel"
);
for (const varname of ["mic_eq_frequency", "mic_eq_gain_db", "mic_eq_q"]) {
  assert([...eqBoxes.values()].some((box) => box.varname === varname), `missing EQ control ${varname}`);
}
assert(!eqBoxes.has("eq-flat") && !eqBoxes.has("eq-flat-msg"), "FLAT must live inside the preset menu");
const typeMenu = eqBoxes.get("eq-type-menu");
const presetMenu = eqBoxes.get("eq-preset-menu");
const eqController = eqBoxes.get("eq-controller");
assert.deepStrictEqual(
  typeMenu?.items.filter((item) => item !== ","),
  ["LOW CUT", "LOW SHELF", "BELL", "NOTCH", "HIGH SHELF", "HIGH CUT"],
  "EQ type menu must expose the useful commercial filter modes"
);
assert.deepStrictEqual(
  presetMenu?.items.filter((item) => item !== ","),
  ["FLAT", "RADIO", "TELEPHONE", "WARM VOCAL", "AIR / PRESENCE", "MEGAPHONE"],
  "EQ preset menu must include the six agreed profiles"
);
assert.deepStrictEqual(typeMenu?.presentation_rect, [458, 344, 126, 22]);
assert.deepStrictEqual(presetMenu?.presentation_rect, [600, 344, 136, 22]);
assert.strictEqual(eqController?.text, "js Patcher:/../../javascript/mt_mic_eq_controller.js");
assert.strictEqual(eqController?.numinlets, 3);
assert.strictEqual(eqController?.numoutlets, 2);
for (const parameter of ["p-Mic-eq::eq-freq", "p-Mic-eq::eq-gain", "p-Mic-eq::eq-q"]) {
  assert(p.parameters?.[parameter], `missing registered EQ parameter ${parameter}`);
}
const eqLines = (eq.patcher.lines || []).map((entry) => entry.patchline);
const hasEqLine = (source, destination) => eqLines.some((patchline) =>
  patchline.source[0] === source && patchline.destination[0] === destination
);
const hasExactEqLine = (source, sourceOutlet, destination, destinationInlet) => eqLines.some((patchline) =>
  patchline.source[0] === source &&
  patchline.source[1] === sourceOutlet &&
  patchline.destination[0] === destination &&
  patchline.destination[1] === destinationInlet
);
for (const [gate, setter, control] of [
  ["eq-feedback-freq", "eq-set-freq", "eq-freq"],
  ["eq-feedback-gain", "eq-set-gain", "eq-gain"],
  ["eq-feedback-q", "eq-set-q", "eq-q"],
]) {
  assert.strictEqual(eqBoxes.get(gate)?.text, "gate 1 1", `missing guarded EQ feedback ${gate}`);
  assert(hasEqLine(gate, setter) && hasEqLine(setter, control), `${control} feedback must pass through set`);
}
assert.strictEqual(eqBoxes.get("eq-band-set")?.text, "prepend set", "EQ band display must update without feedback");
assert(
  hasEqLine("eq-band-plus", "eq-band-set") &&
  hasEqLine("eq-band-set", "eq-band"),
  "EQ node click must update BAND"
);
assert.strictEqual(
  eqBoxes.get("eq-band-select")?.text,
  "selectfilt $1, bang",
  "BAND must select and query the matching filtergraph node"
);
assert(
  hasEqLine("eq-band", "eq-band-minus") &&
  hasEqLine("eq-band-select", "eq-graph"),
  "BAND must control filtergraph selection"
);
assert.strictEqual(filtergraph.varname, "mic_eq_graph", "filtergraph~ needs a stable name for selected-node state");
assert(
  eqBoxes.get("eq-selected-pattr")?.text.includes("@bindto mic_eq_graph::edit_filter"),
  "selected EQ node must follow filtergraph~ edit_filter"
);
for (const gate of ["eq-selected-freq", "eq-selected-gain", "eq-selected-q"]) {
  assert.strictEqual(eqBoxes.get(gate)?.text, "gate 1 1", `missing selected-node filter ${gate}`);
}
assert(
  hasEqLine("eq-selected-pattr", "eq-selected-trigger") &&
  hasEqLine("eq-graph", "eq-index-match") &&
  hasEqLine("eq-index-match", "eq-index-gates"),
  "filtergraph feedback must be restricted to the selected node"
);
assert.strictEqual(
  eqBoxes.get("eq-selection-watch")?.text,
  "js Patcher:/../../javascript/mt_filtergraph_selection.js",
  "graph selection needs a mouse-selection watcher"
);
assert(
  eqBoxes.get("eq-mouse-state")?.text === "mousestate" &&
  eqBoxes.get("eq-mouse-start")?.text === "mode 1" &&
  eqBoxes.get("eq-mouse-poll")?.text === "qmetro 20 @active 1" &&
  eqBoxes.get("eq-filter-state")?.text === "pak i f f f" &&
  hasEqLine("eq-selection-watch", "eq-band") &&
  hasEqLine("eq-mouse-state", "eq-selection-watch") &&
  hasEqLine("eq-mouse-poll", "eq-mouse-state") &&
  hasEqLine("eq-filter-state", "eq-selection-watch"),
  "graph clicks and BAND edits must share one selected-node path"
);
assert(fs.existsSync(selectionWatchPath), "EQ selection watcher script is missing");
assert(fs.existsSync(eqControllerPath), "EQ type and preset controller script is missing");
const selectionWatch = fs.readFileSync(selectionWatchPath, "utf8");
assert(selectionWatch.includes("selectNearest"), "selection watcher must hit-test EQ nodes");
assert(selectionWatch.includes("clickedFrequency"), "selection watcher must use logarithmic frequency position");
assert(selectionWatch.includes("outlet(0, nearest + 1)"), "selection watcher must report the one-based BAND value");
assert(!selectionWatch.includes("EQ_SELECTION_DEBUG"), "selection watcher must not log per-click debug output");
assert(hasExactEqLine("eq-type-menu", 0, "eq-controller", 0), "type menu must drive the EQ controller");
assert(hasExactEqLine("eq-preset-menu", 0, "eq-controller", 1), "preset menu must drive the EQ controller");
assert(hasExactEqLine("eq-selected-trigger", 0, "eq-controller", 2), "selected node must drive the EQ controller");
assert(hasExactEqLine("eq-controller", 0, "eq-graph", 0), "EQ controller must update filtergraph~");
assert(hasExactEqLine("eq-controller", 1, "eq-type-menu", 0), "node selection must refresh the type menu");
const rootLines = p.lines.map((entry) => entry.patchline);
const hasRootLine = (source, destination) => rootLines.some((patchline) =>
  patchline.source[0] === source && patchline.destination[0] === destination
);
const hasExactRootLine = (source, sourceOutlet, destination, destinationInlet) => rootLines.some((patchline) =>
  patchline.source[0] === source &&
  patchline.source[1] === sourceOutlet &&
  patchline.destination[0] === destination &&
  patchline.destination[1] === destinationInlet
);
assert(hasRootLine("p-Mic-input", "p-Mic-eq"), "Mic DSP must feed the embedded EQ");
assert(hasRootLine("p-Mic-eq", "m-gain"), "Mic EQ must feed the output gain");
assert(!hasRootLine("p-Mic-input", "m-gain"), "Mic audio must not bypass the EQ");
assert(boxes.get("m-eq-open")?.varname === "mic_eq_open", "missing Mic EQ editor button");
assert(hasExactRootLine("m-ext-eq-open", 0, "m-eq-open-msg", 0), "external EQ trigger must reuse the editor open path");
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
