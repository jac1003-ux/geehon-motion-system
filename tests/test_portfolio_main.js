const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(root, "patchers", "mt_portfolio_main.maxpat");
const patcher = JSON.parse(fs.readFileSync(patchPath, "utf8")).patcher;
const boxes = new Map((patcher.boxes || []).map((entry) => [entry.box.id, entry.box]));

assert.deepStrictEqual(patcher.rect.slice(2), [1732, 941], "main saved window size");
assert.strictEqual(
  boxes.get("pm-project-paths")?.text,
  "declare -path inputs -path mixers -path effects -path control -path dsp -path ../javascript -path ../assets/ui",
  "main patch must declare portable module and asset paths"
);
assert.strictEqual(boxes.get("pm-perform-bg")?.pic, "perform_shell_v2.png", "perform shell uses declared asset path");

function hasLine(sourceId, sourceOutlet, destinationId, destinationInlet) {
  return (patcher.lines || []).some((entry) => {
    const line = entry.patchline;
    return line.source[0] === sourceId
      && line.source[1] === sourceOutlet
      && line.destination[0] === destinationId
      && line.destination[1] === destinationInlet;
  });
}

function pngDimensions(file) {
  const data = fs.readFileSync(file);
  return [data.readUInt32BE(16), data.readUInt32BE(20)];
}

function validateGraph(current, label = "root") {
  const ids = new Set();
  for (const entry of current.boxes || []) {
    const box = entry.box;
    assert(box.id, `${label}: object without id`);
    assert(!ids.has(box.id), `${label}: duplicate id ${box.id}`);
    ids.add(box.id);
    if (box.patcher) validateGraph(box.patcher, `${label}/${box.id}`);
  }
  for (const entry of current.lines || []) {
    assert(ids.has(entry.patchline.source[0]), `${label}: missing source ${entry.patchline.source[0]}`);
    assert(ids.has(entry.patchline.destination[0]), `${label}: missing destination ${entry.patchline.destination[0]}`);
  }
}

validateGraph(patcher);

const expectedSources = {
  "pm-mic": ["mt_input_mic_ui.maxpat", "mt_input_mic_ui.maxpat", "inputs", [24, 160, 420, 280], 1, 2],
  "pm-file": ["mt_input_file_ui.maxpat", "mt_input_file_ui.maxpat", "inputs", [468, 160, 520, 340], 2, 2],
  "pm-grain": ["mt_input_granular_ui.maxpat", "mt_input_granular_ui.maxpat", "inputs", [1012, 160, 720, 440], 1, 2],
};
for (const [id, [patcherName, name, folder, presentationRect, inlets, outlets]] of Object.entries(expectedSources)) {
  const box = boxes.get(id);
  assert(box, `${id} is missing`);
  assert.strictEqual(box.maxclass, "bpatcher", `${id} must be a bpatcher`);
  assert.strictEqual(box.name, patcherName, `${id} source file`);
  assert(fs.existsSync(path.resolve(path.dirname(patchPath), folder, name)), `${id} bpatcher path must exist`);
  const dependency = patcher.dependency_cache.find((item) => item.name === name);
  assert(dependency, `${id} dependency cache entry`);
  assert(
    fs.existsSync(path.resolve(path.dirname(patchPath), dependency.patcherrelativepath, name)),
    `${id} dependency path must exist`
  );
  assert.deepStrictEqual(box.presentation_rect, presentationRect, `${id} presentation size`);
  assert.strictEqual(box.numinlets, inlets, `${id} inlet count`);
  assert.strictEqual(box.numoutlets, outlets, `${id} outlet count`);
}

for (const [id, [name, folder]] of Object.entries({
  "pm-mixer": ["mt_input_mixer_ui.maxpat", "mixers"],
  "pm-vocoder": ["mt_mod_vocoder.maxpat", "effects"],
  "pm-fx-return": ["mt_fx_return_mixer.maxpat", "mixers"],
  "pm-hand": ["mt_control_hand_jweb.maxpat", "control"],
  "pm-bitcrusher": ["mt_mod_bitcrusher.maxpat", "effects"],
  "pm-feedback-delay": ["mt_mod_feedback_delay.maxpat", "effects"],
  "pm-multiband": ["mt_mod_multiband_filter_v2.maxpat", "effects"],
})) {
  const dependency = patcher.dependency_cache.find((item) => item.name === name);
  assert.strictEqual(boxes.get(id)?.name, name, `${id} source file`);
  assert(fs.existsSync(path.resolve(path.dirname(patchPath), folder, name)), `${id} bpatcher path must exist`);
  assert(dependency, `${id} dependency cache entry`);
  assert(
    fs.existsSync(path.resolve(path.dirname(patchPath), dependency.patcherrelativepath, name)),
    `${id} dependency path must exist`
  );
}
assert.strictEqual(boxes.get("pm-hand").numoutlets, 5, "Hand bpatcher outlet cache");

assert(hasLine("pm-grain", 0, "pm-mixer", 4), "Granular L route is missing");
assert(hasLine("pm-grain", 1, "pm-mixer", 5), "Granular R route is missing");

const sourceRouter = boxes.get("p-Source-state-router");
assert(sourceRouter?.patcher, "p Source_state_router is missing");
assert.strictEqual(sourceRouter.patcher.boxes.filter((entry) => entry.box.maxclass === "inlet").length, 0, "source router uses shared receives only");
assert.strictEqual(sourceRouter.patcher.boxes.filter((entry) => entry.box.maxclass === "outlet").length, 3, "source router outlet count");
for (const stateName of ["mt_mic_enable_state", "mt_file_enable_state", "mt_granular_enable_state"]) {
  assert(sourceRouter.patcher.boxes.some((entry) => entry.box.text === `r ${stateName}`), `missing source state receive ${stateName}`);
}
assert(hasLine("p-Source-state-router", 0, "pm-mixer", 6), "Mic state to mixer");
assert(hasLine("p-Source-state-router", 1, "pm-mixer", 7), "File state to mixer");
assert(hasLine("p-Source-state-router", 2, "pm-mixer", 8), "Granular state to mixer");

const fxRouter = boxes.get("p-FX-state-router");
assert(fxRouter?.patcher, "p FX_state_router is missing");
assert.strictEqual(fxRouter.patcher.boxes.filter((entry) => entry.box.maxclass === "outlet").length, 9, "FX router outlet count");
assert.strictEqual(fxRouter.patcher.boxes.filter((entry) => entry.box.text === "loadmess 1.").length, 1, "only Vocoder needs a wet default");
assert(hasLine("p-FX-state-router", 0, "pm-vocoder", 2), "Vocoder enable to module");
assert(hasLine("p-FX-state-router", 1, "pm-fx-return", 11), "Vocoder enable to return");
assert(hasLine("p-FX-state-router", 2, "pm-bitcrusher", 2), "Bitcrusher enable to module");
assert(hasLine("p-FX-state-router", 3, "pm-fx-return", 12), "Bitcrusher enable to return");
assert(hasLine("p-FX-state-router", 4, "pm-feedback-delay", 2), "Delay enable to module");
assert(hasLine("p-FX-state-router", 5, "pm-fx-return", 13), "Delay enable to return");
assert(hasLine("p-FX-state-router", 6, "pm-multiband", 2), "Multiband enable to module");
assert(hasLine("p-FX-state-router", 7, "pm-fx-return", 14), "Multiband enable to return");
assert(hasLine("p-FX-state-router", 8, "pm-vocoder", 3), "Vocoder wet default");

for (const removedId of [
  "pm-mic-enable", "pm-mic-enable-label", "pm-file-enable", "pm-file-enable-label",
  "pm-file-play", "pm-file-play-label", "pm-grain-enable", "pm-grain-enable-label",
  "pm-mic-enable-send", "pm-file-enable-send", "pm-grain-enable-send",
  "pm-mic-enable-recv", "pm-file-enable-recv", "pm-grain-enable-recv",
  "pm-mic-enable-sync", "pm-file-enable-sync", "pm-grain-enable-sync",
  "pm-mic-enable-set", "pm-file-enable-set", "pm-grain-enable-set",
  "pm-vocoder-enable-recv", "pm-vocoder-enable-sync",
  "pm-bitcrusher-enable-recv", "pm-bitcrusher-enable-sync",
  "pm-feedback-delay-enable-recv", "pm-feedback-delay-enable-sync",
  "pm-multiband-enable-recv", "pm-multiband-enable-sync",
  "pm-vocoder-wet-force",
]) {
  assert(!boxes.has(removedId), `${removedId} should be collected or removed`);
}

assert(!fs.readFileSync(patchPath, "utf8").includes("mt_grain_enable_state"), "legacy granular state name remains in Main");

const pageTab = boxes.get("pm-page-tab");
assert(pageTab, "pm-page-tab is missing");
assert.strictEqual(pageTab.maxclass, "tab", "pm-page-tab class");
assert.deepStrictEqual(pageTab.tabs, ["PERFORM", "SOURCE", "FX", "GESTURE", "MASTER"], "page labels");
const pageRouter = boxes.get("pm-page-router");
assert(pageRouter, "pm-page-router is missing");
const routerBoxes = new Map((pageRouter.patcher?.boxes || []).map((entry) => [entry.box.id, entry.box]));
function pageMessages(index) {
  const prefix = `page-msg-${index}`;
  return [...routerBoxes.values()]
    .filter((box) => box.id === prefix || box.id.startsWith(`${prefix}-chunk-`))
    .sort((a, b) => {
      const chunk = (box) => box.id === prefix ? 0 : Number(box.id.slice(`${prefix}-chunk-`.length));
      return chunk(a) - chunk(b);
    });
}
function pageText(index) {
  return pageMessages(index).map((box) => box.text).join(", ");
}
for (let index = 0; index < 5; index += 1) {
  const messages = pageMessages(index);
  assert(messages.length > 1, `page ${index} commands must be split to avoid Max stack overflow`);
  for (const message of messages) {
    assert(message.text.split(", ").length <= 20, `${message.id} exceeds the safe command chunk size`);
  }
  assert(pageText(index).includes("script hide"), `page ${index} hide commands`);
  assert(pageText(index).includes("script show"), `page ${index} show commands`);
}
assert(pageText(0).includes("script show ui_perform_shell"), "PERFORM commercial shell");
assert(pageText(0).includes("script show ui_gesture_hand"), "PERFORM gesture camera");
assert(pageText(0).includes("script show ui_output_dac"), "PERFORM main output");
assert(pageText(0).includes("script show ui_util_rec_file"), "PERFORM recorder destination");
assert(pageText(0).includes("script show ui_util_rec_status"), "PERFORM recorder status");
assert(pageText(0).includes("script show ui_util_rec_time"), "PERFORM recorder timer");
assert(!pageText(0).includes("script show ui_source_mixer"), "PERFORM must not embed the full source mixer");
assert(!pageText(0).includes("script show ui_master_returns"), "PERFORM must not embed the full FX mixer");
assert(pageText(0).includes("presentation_rect 402 222 798 420"), "PERFORM camera placement");
for (const varname of [
  "ui_perform_mic", "ui_perform_file", "ui_perform_grain",
  "ui_perform_vocoder", "ui_perform_bitcrusher", "ui_perform_feedback_delay",
  "ui_perform_multiband",
]) {
  assert(pageText(0).includes(`script show ${varname}`), `PERFORM quick control ${varname}`);
  for (let index = 1; index < 5; index += 1) {
    assert(pageText(index).includes(`script hide ${varname}`), `${varname} hidden on detail page ${index}`);
  }
}
assert(pageText(1).includes("script show ui_source_shell"), "SOURCE shell");
assert(pageText(1).includes("script show ui_source_selector"), "SOURCE selector");
assert(pageText(1).includes("script show ui_source_mic"), "SOURCE default module");
assert(pageText(1).includes("presentation_rect 897 300 760 320"), "SOURCE mixer placement");
assert(pageText(2).includes("script show ui_fx_shell"), "FX shell");
assert(pageText(2).includes("script show ui_fx_selector"), "FX selector");
assert(pageText(2).includes("script show ui_fx_bitcrusher"), "FX default module");
assert(!pageText(2).includes("script show ui_fx_vocoder"), "FX only shows the selected processor");
assert(pageText(3).includes("script show ui_gesture_hand"), "GESTURE page contents");
assert(pageText(3).includes("presentation_rect 48 190 900 474"), "GESTURE camera placement");
assert(pageText(4).includes("script show ui_master_returns"), "MASTER page contents");
assert(pageText(4).includes("presentation_rect 92 300 905 300"), "MASTER FX return placement");
assert(pageText(4).includes("script show ui_output_dac"), "MASTER main output");
for (const page of [1, 2, 3]) {
  assert(pageText(page).includes("script hide ui_output_dac"), `output hidden on page ${page}`);
}
assert.strictEqual(boxes.get("pm-thispatcher")?.text, "thispatcher", "top-level thispatcher");

const shell = boxes.get("pm-shell-bg");
assert(shell, "commercial main shell is missing");
assert.strictEqual(shell.maxclass, "fpic", "main shell class");
assert.strictEqual(shell.pic, "main_shell_v1.png", "main shell asset");
assert.deepStrictEqual(shell.presentation_rect, [0, 0, 1732, 941], "main shell fills the saved window");
assert(fs.existsSync(path.join(root, "assets", "ui", shell.pic)), "main shell asset exists");

const performShell = boxes.get("pm-perform-bg");
assert(performShell, "PERFORM page shell is missing");
assert.strictEqual(performShell.maxclass, "fpic", "PERFORM shell class");
assert.strictEqual(
  performShell.pic,
  "perform_shell_v2.png",
  "PERFORM shell uses the declared portable asset path"
);
assert.deepStrictEqual(performShell.presentation_rect, [0, 96, 1732, 845], "PERFORM shell fills the content area");
assert(fs.existsSync(path.join(root, "assets", "ui", "perform_shell_v2.svg")), "editable PERFORM SVG exists");
assert(fs.existsSync(path.join(root, "assets", "ui", "perform_shell_v2.png")), "rendered PERFORM PNG exists");
assert(!boxes.has("pm-perform-chop"), "legacy Chop quick control remains");
assert(!boxes.has("pm-perform-tremolo"), "legacy Tremolo quick control remains");

for (const [id, pic] of [
  ["pm-source-bg", "source_detail_shell_v1.png"],
  ["pm-fx-bg", "fx_detail_shell_v1.png"],
  ["pm-gesture-bg", "gesture_detail_shell_v1.png"],
  ["pm-master-bg", "master_detail_shell_v1.png"],
]) {
  const shellBox = boxes.get(id);
  const png = path.join(root, "assets", "ui", pic);
  assert.strictEqual(shellBox?.pic, pic, `${id} asset`);
  assert.deepStrictEqual(shellBox?.presentation_rect, [0, 96, 1732, 845], `${id} content size`);
  assert.deepStrictEqual(pngDimensions(png), [1732, 845], `${pic} rendered dimensions`);
}

const expectedVarnames = {
  "pm-mic": "ui_source_mic",
  "pm-file": "ui_source_file",
  "pm-grain": "ui_source_grain",
  "pm-mixer": "ui_source_mixer",
  "pm-vocoder": "ui_fx_vocoder",
  "pm-bitcrusher": "ui_fx_bitcrusher",
  "pm-feedback-delay": "ui_fx_feedback_delay",
  "pm-multiband": "ui_fx_multiband",
  "pm-hand": "ui_gesture_hand",
  "pm-fx-return": "ui_master_returns",
  "pm-meter-l": "ui_output_meter_l",
  "pm-meter-r": "ui_output_meter_r",
  "pm-dac": "ui_output_dac",
  "pm-output-label": "ui_output_label",
  "pm-rec-title": "ui_util_rec_title",
  "pm-rec-open": "ui_util_rec_open",
  "pm-rec-start": "ui_util_rec_start",
  "pm-rec-stop": "ui_util_rec_stop",
  "pm-rec-file-display": "ui_util_rec_file",
  "pm-rec-status-display": "ui_util_rec_status",
  "pm-rec-time-display": "ui_util_rec_time",
  "pm-perform-bg": "ui_perform_shell",
  "pm-perform-mic": "ui_perform_mic",
  "pm-perform-file": "ui_perform_file",
  "pm-perform-grain": "ui_perform_grain",
  "pm-perform-vocoder": "ui_perform_vocoder",
  "pm-perform-bitcrusher": "ui_perform_bitcrusher",
  "pm-perform-feedback-delay": "ui_perform_feedback_delay",
  "pm-perform-multiband": "ui_perform_multiband",
  "pm-source-bg": "ui_source_shell",
  "pm-fx-bg": "ui_fx_shell",
  "pm-gesture-bg": "ui_gesture_shell",
  "pm-master-bg": "ui_master_shell",
  "pm-source-selector": "ui_source_selector",
  "pm-fx-selector": "ui_fx_selector",
};
for (const [id, varname] of Object.entries(expectedVarnames)) {
  assert.strictEqual(boxes.get(id)?.varname, varname, `${id} varname`);
}

assert.strictEqual(
  boxes.get("pm-page-defer")?.text,
  "deferlow",
  "page initialization must wait for Max low-priority queue"
);
assert(hasLine("pm-page-load", 0, "pm-page-defer", 0), "deferred page initialization input");
assert(hasLine("pm-page-defer", 0, "pm-page-tab", 0), "default PERFORM page initialization");
assert(!hasLine("pm-page-load", 0, "pm-page-tab", 0), "page initialization must not run before bpatchers load");
assert(hasLine("pm-page-tab", 0, "pm-page-router", 0), "tab to page router");
assert(hasLine("pm-page-router", 0, "pm-thispatcher", 0), "page router to thispatcher");
assert(hasLine("pm-source-selector", 0, "pm-source-detail-router", 0), "source selector routing");
assert(hasLine("pm-source-detail-router", 0, "pm-thispatcher", 0), "source detail routing");
assert(hasLine("pm-fx-selector", 0, "pm-fx-detail-router", 0), "FX selector routing");
assert(hasLine("pm-fx-detail-router", 0, "pm-thispatcher", 0), "FX detail routing");

const performState = boxes.get("pm-perform-state");
assert(performState?.patcher, "PERFORM quick-state router is missing");
assert.strictEqual(performState.numinlets, 7, "PERFORM quick-state inlet count");
assert.strictEqual(performState.numoutlets, 7, "PERFORM quick-state outlet count");
for (const [index, id] of [
  "pm-perform-mic", "pm-perform-file", "pm-perform-grain",
  "pm-perform-vocoder", "pm-perform-bitcrusher", "pm-perform-feedback-delay",
  "pm-perform-multiband",
].entries()) {
  assert(hasLine(id, 0, "pm-perform-state", index), `${id} writes shared state`);
  assert(hasLine("pm-perform-state", index, id, 0), `${id} follows shared state`);
}

assert(!boxes.has("pm-eq-plugin"), "master output must not depend on an external EQ plugin");
for (const [outlet, destination, inlet] of [
  [0, "pm-dac", 0], [1, "pm-dac", 1],
  [0, "pm-meter-l", 0], [1, "pm-meter-r", 0],
  [0, "pm-recorder", 0], [1, "pm-recorder", 1],
]) {
  assert(hasLine("pm-fx-return", outlet, destination, inlet), `return mixer to ${destination}`);
}

assert.strictEqual(boxes.get("pm-recorder")?.text, "sfrecord~ 2", "stereo master recorder");
for (const [id, text, inlet] of [
  ["pm-rec-open", "Choose File", 0],
  ["pm-rec-start", "Record", 1],
  ["pm-rec-stop", "Stop", 2],
]) {
  assert.strictEqual(boxes.get(id)?.text, text, `${id} command`);
  assert(hasLine(id, 0, "pm-rec-control", inlet), `${id} to recorder control`);
}
assert(hasLine("pm-rec-control", 0, "pm-recorder", 0), "recorder control to sfrecord~");
assert(hasLine("pm-rec-control", 1, "pm-rec-file-display", 0), "recorder filename feedback");
assert(hasLine("pm-rec-control", 2, "pm-rec-status-display", 0), "recorder status feedback");
assert(hasLine("pm-rec-control", 3, "pm-rec-time-display", 0), "recorder timer feedback");

const recorderControl = boxes.get("pm-rec-control")?.patcher;
assert(recorderControl, "master recorder control patcher");
const recorderControlBoxes = new Map(recorderControl.boxes.map(entry => [entry.box.id, entry.box]));
assert.strictEqual(recorderControlBoxes.get("rc-save-dialog")?.text, "savedialog", "native save dialog");
assert.strictEqual(recorderControlBoxes.get("rc-open-command")?.text, "prepend open wave", "WAV recording command");
assert.strictEqual(recorderControlBoxes.get("rc-record-gate")?.text, "gate 1", "record blocked until destination is selected");
assert.strictEqual(recorderControlBoxes.get("rc-time-format")?.text, "sprintf %02ld:%02ld", "elapsed time format");
assert.strictEqual(recorderControlBoxes.get("rc-format-int24")?.text, "loadmess samptype int24", "24-bit recording format");
assert(
  recorderControl.lines.some((entry) => entry.patchline.source[0] === "rc-format-int24"
    && entry.patchline.destination[0] === "rc-command-out"),
  "24-bit format reaches sfrecord command outlet"
);

for (const entry of patcher.lines || []) {
  const source = entry.patchline.source[0];
  const destination = entry.patchline.destination[0];
  if (source === "pm-page-tab" || source === "pm-page-router") {
    assert(!/enable|wet-force/.test(destination), "page routing must not alter DSP state");
  }
}

for (const entry of patcher.lines || []) {
  assert(boxes.has(entry.patchline.source[0]), `missing source ${entry.patchline.source[0]}`);
  assert(boxes.has(entry.patchline.destination[0]), `missing destination ${entry.patchline.destination[0]}`);
}

console.log("Portfolio Main source integration contract: PASS");
