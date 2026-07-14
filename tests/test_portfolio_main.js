const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(root, "patchers", "mt_portfolio_main.maxpat");
const patcher = JSON.parse(fs.readFileSync(patchPath, "utf8")).patcher;
const boxes = new Map((patcher.boxes || []).map((entry) => [entry.box.id, entry.box]));

assert.deepStrictEqual(patcher.rect.slice(2), [1732, 941], "main saved window size");

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
  assert(box, `${id} is missing`);
  assert.strictEqual(box.maxclass, "bpatcher", `${id} must be a bpatcher`);
  assert.strictEqual(box.name, name, `${id} source file`);
  assert.deepStrictEqual(box.presentation_rect, presentationRect, `${id} presentation size`);
  assert.strictEqual(box.numinlets, inlets, `${id} inlet count`);
  assert.strictEqual(box.numoutlets, outlets, `${id} outlet count`);
}

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
assert.strictEqual(fxRouter.patcher.boxes.filter((entry) => entry.box.maxclass === "outlet").length, 8, "FX router outlet count");
assert.strictEqual(fxRouter.patcher.boxes.filter((entry) => entry.box.text === "loadmess 1.").length, 2, "Vocoder and Chop wet defaults");
assert(hasLine("p-FX-state-router", 0, "pm-vocoder", 2), "Vocoder enable to module");
assert(hasLine("p-FX-state-router", 1, "pm-fx-return", 9), "Vocoder enable to return");
assert(hasLine("p-FX-state-router", 2, "pm-chop", 2), "Chop enable to module");
assert(hasLine("p-FX-state-router", 3, "pm-fx-return", 10), "Chop enable to return");
assert(hasLine("p-FX-state-router", 4, "pm-tremolo", 2), "Tremolo enable to module");
assert(hasLine("p-FX-state-router", 5, "pm-fx-return", 11), "Tremolo enable to return");
assert(hasLine("p-FX-state-router", 6, "pm-vocoder", 3), "Vocoder wet default");
assert(hasLine("p-FX-state-router", 7, "pm-chop", 8), "Chop wet default");

for (const removedId of [
  "pm-mic-enable", "pm-mic-enable-label", "pm-file-enable", "pm-file-enable-label",
  "pm-file-play", "pm-file-play-label", "pm-grain-enable", "pm-grain-enable-label",
  "pm-mic-enable-send", "pm-file-enable-send", "pm-grain-enable-send",
  "pm-mic-enable-recv", "pm-file-enable-recv", "pm-grain-enable-recv",
  "pm-mic-enable-sync", "pm-file-enable-sync", "pm-grain-enable-sync",
  "pm-mic-enable-set", "pm-file-enable-set", "pm-grain-enable-set",
  "pm-vocoder-enable-recv", "pm-vocoder-enable-sync",
  "pm-chop-enable-recv", "pm-chop-enable-sync",
  "pm-tremolo-enable-recv", "pm-tremolo-enable-sync",
  "pm-vocoder-wet-force", "pm-chop-wet-force",
]) {
  assert(!boxes.has(removedId), `${removedId} should be collected or removed`);
}

assert(!fs.readFileSync(patchPath, "utf8").includes("mt_grain_enable_state"), "legacy granular state name remains in Main");

const pageTab = boxes.get("pm-page-tab");
assert(pageTab, "pm-page-tab is missing");
assert.strictEqual(pageTab.maxclass, "tab", "pm-page-tab class");
assert.deepStrictEqual(pageTab.tabs, ["SOURCE", "FX", "GESTURE", "MASTER"], "page labels");
const pageRouter = boxes.get("pm-page-router");
assert(pageRouter, "pm-page-router is missing");
const routerBoxes = new Map((pageRouter.patcher?.boxes || []).map((entry) => [entry.box.id, entry.box]));
for (let index = 0; index < 4; index += 1) {
  assert(routerBoxes.get(`page-msg-${index}`)?.text.includes("script hide"), `page ${index} hide commands`);
  assert(routerBoxes.get(`page-msg-${index}`)?.text.includes("script show"), `page ${index} show commands`);
}
assert(routerBoxes.get("page-msg-0").text.includes("script show ui_source_mixer"), "SOURCE page contents");
assert(routerBoxes.get("page-msg-1").text.includes("script show ui_fx_vocoder"), "FX page contents");
assert(routerBoxes.get("page-msg-2").text.includes("script show ui_gesture_hand"), "GESTURE page contents");
assert(routerBoxes.get("page-msg-3").text.includes("script show ui_master_returns"), "MASTER page contents");
assert.strictEqual(boxes.get("pm-thispatcher")?.text, "thispatcher", "top-level thispatcher");

const expectedVarnames = {
  "pm-mic": "ui_source_mic",
  "pm-file": "ui_source_file",
  "pm-grain": "ui_source_grain",
  "pm-mixer": "ui_source_mixer",
  "pm-vocoder": "ui_fx_vocoder",
  "pm-chop": "ui_fx_chop",
  "pm-tremolo": "ui_fx_tremolo",
  "pm-hand": "ui_gesture_hand",
  "pm-fx-return": "ui_master_returns",
};
for (const [id, varname] of Object.entries(expectedVarnames)) {
  assert.strictEqual(boxes.get(id)?.varname, varname, `${id} varname`);
}

assert(hasLine("pm-page-load", 0, "pm-page-tab", 0), "default SOURCE page initialization");
assert(hasLine("pm-page-tab", 0, "pm-page-router", 0), "tab to page router");
assert(hasLine("pm-page-router", 0, "pm-thispatcher", 0), "page router to thispatcher");

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
