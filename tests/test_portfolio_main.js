const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(root, "patchers", "mt_portfolio_main.maxpat");
const patcher = JSON.parse(fs.readFileSync(patchPath, "utf8")).patcher;
const boxes = new Map((patcher.boxes || []).map((entry) => [entry.box.id, entry.box]));

assert.deepStrictEqual(patcher.rect.slice(2), [1732, 941], "main saved window size");
assert(!boxes.has("pm-project-paths"), "invalid declarepath object must not be present");
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
  "pm-mic": ["mt_input_mic_ui.maxpat", [24, 160, 420, 280], 1, 2],
  "pm-file": ["mt_input_file_ui.maxpat", [468, 160, 520, 340], 2, 2],
  "pm-grain": ["mt_input_granular_ui.maxpat", [1012, 160, 720, 440], 1, 2],
};
for (const [id, [name, presentationRect, inlets, outlets]] of Object.entries(expectedSources)) {
  const box = boxes.get(id);
  const baseName = path.basename(name);
  assert(box, `${id} is missing`);
  assert.strictEqual(box.maxclass, "bpatcher", `${id} must be a bpatcher`);
  assert.strictEqual(box.name, name, `${id} source file`);
  const dependency = patcher.dependency_cache.find((item) => item.name === baseName);
  assert(dependency, `${id} dependency cache entry`);
  assert(
    fs.existsSync(path.resolve(path.dirname(patchPath), dependency.patcherrelativepath, baseName)),
    `${id} dependency path must exist`
  );
  assert.deepStrictEqual(box.presentation_rect, presentationRect, `${id} presentation size`);
  assert.strictEqual(box.numinlets, inlets, `${id} inlet count`);
  assert.strictEqual(box.numoutlets, outlets, `${id} outlet count`);
}

for (const [id, name] of Object.entries({
  "pm-mixer": "mt_input_mixer_ui.maxpat",
  "pm-vocoder": "mt_mod_vocoder.maxpat",
  "pm-fx-return": "mt_fx_return_mixer.maxpat",
  "pm-hand": "mt_control_hand_jweb.maxpat",
  "pm-bitcrusher": "mt_mod_bitcrusher.maxpat",
  "pm-feedback-delay": "mt_mod_feedback_delay.maxpat",
  "pm-multiband": "mt_mod_multiband_filter_v2.maxpat",
})) {
  const baseName = path.basename(name);
  const dependency = patcher.dependency_cache.find((item) => item.name === baseName);
  assert.strictEqual(boxes.get(id)?.name, name, `${id} uses a portable bpatcher name`);
  assert(dependency, `${id} dependency cache entry`);
  assert(
    fs.existsSync(path.resolve(path.dirname(patchPath), dependency.patcherrelativepath, baseName)),
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
for (let index = 0; index < 5; index += 1) {
  assert(routerBoxes.get(`page-msg-${index}`)?.text.includes("script hide"), `page ${index} hide commands`);
  assert(routerBoxes.get(`page-msg-${index}`)?.text.includes("script show"), `page ${index} show commands`);
}
assert(routerBoxes.get("page-msg-0").text.includes("script show ui_perform_shell"), "PERFORM commercial shell");
assert(routerBoxes.get("page-msg-0").text.includes("script show ui_gesture_hand"), "PERFORM gesture camera");
assert(!routerBoxes.get("page-msg-0").text.includes("script show ui_source_mixer"), "PERFORM must not embed the full source mixer");
assert(!routerBoxes.get("page-msg-0").text.includes("script show ui_master_returns"), "PERFORM must not embed the full FX mixer");
assert(routerBoxes.get("page-msg-0").text.includes("presentation_rect 402 222 798 420"), "PERFORM camera placement");
for (const varname of [
  "ui_perform_mic", "ui_perform_file", "ui_perform_grain",
  "ui_perform_vocoder", "ui_perform_bitcrusher", "ui_perform_feedback_delay",
  "ui_perform_multiband",
]) {
  assert(routerBoxes.get("page-msg-0").text.includes(`script show ${varname}`), `PERFORM quick control ${varname}`);
  for (let index = 1; index < 5; index += 1) {
    assert(routerBoxes.get(`page-msg-${index}`).text.includes(`script hide ${varname}`), `${varname} hidden on detail page ${index}`);
  }
}
assert(routerBoxes.get("page-msg-1").text.includes("script show ui_source_mic"), "SOURCE page contents");
assert(routerBoxes.get("page-msg-1").text.includes("presentation_rect 24 520 760 320"), "SOURCE mixer placement restore");
assert(routerBoxes.get("page-msg-2").text.includes("script show ui_fx_vocoder"), "FX page contents");
assert(routerBoxes.get("page-msg-2").text.includes("script show ui_fx_bitcrusher"), "FX Bitcrusher page contents");
assert(routerBoxes.get("page-msg-2").text.includes("script show ui_fx_feedback_delay"), "FX Delay page contents");
assert(routerBoxes.get("page-msg-2").text.includes("script show ui_fx_multiband"), "FX Multiband page contents");
assert(routerBoxes.get("page-msg-3").text.includes("script show ui_gesture_hand"), "GESTURE page contents");
assert(routerBoxes.get("page-msg-3").text.includes("presentation_rect 24 160 798 420"), "GESTURE camera placement restore");
assert(routerBoxes.get("page-msg-4").text.includes("script show ui_master_returns"), "MASTER page contents");
assert(routerBoxes.get("page-msg-4").text.includes("presentation_rect 24 160 905 300"), "MASTER return placement restore");
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
  "pm-perform-bg": "ui_perform_shell",
  "pm-perform-mic": "ui_perform_mic",
  "pm-perform-file": "ui_perform_file",
  "pm-perform-grain": "ui_perform_grain",
  "pm-perform-vocoder": "ui_perform_vocoder",
  "pm-perform-bitcrusher": "ui_perform_bitcrusher",
  "pm-perform-feedback-delay": "ui_perform_feedback_delay",
  "pm-perform-multiband": "ui_perform_multiband",
};
for (const [id, varname] of Object.entries(expectedVarnames)) {
  assert.strictEqual(boxes.get(id)?.varname, varname, `${id} varname`);
}

assert(hasLine("pm-page-load", 0, "pm-page-tab", 0), "default PERFORM page initialization");
assert(hasLine("pm-page-tab", 0, "pm-page-router", 0), "tab to page router");
assert(hasLine("pm-page-router", 0, "pm-thispatcher", 0), "page router to thispatcher");

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
for (const [id, text] of [["pm-rec-open", "open wave"], ["pm-rec-start", "1"], ["pm-rec-stop", "0"]]) {
  assert.strictEqual(boxes.get(id)?.text, text, `${id} command`);
  assert(hasLine(id, 0, "pm-recorder", 0), `${id} to recorder`);
}

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
