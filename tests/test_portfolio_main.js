const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(root, "patchers", "mt_portfolio_main.maxpat");
const patcher = JSON.parse(fs.readFileSync(patchPath, "utf8")).patcher;
const boxes = new Map((patcher.boxes || []).map((entry) => [entry.box.id, entry.box]));

assert.deepStrictEqual(patcher.rect.slice(2), [1732, 941], "main saved window size");
assert(!boxes.has("pm-project-paths"), "Main must not contain the nonexistent Max declare object");
assert(
  ![...boxes.values()].some((box) => String(box.text || "").startsWith("declare -path")),
  "Main must rely on the Max Project search path instead of Pure Data's declare syntax"
);
assert(
  !fs.readFileSync(path.join(root, "scripts", "build_perform_ui.js"), "utf8").includes("declare -path"),
  "PERFORM rebuild must not recreate the invalid declare object"
);
assert.strictEqual(boxes.get("pm-perform-bg")?.pic, "perform_shell_v4.png", "perform shell uses declared asset path");

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
  "pm-mic": ["mt_input_mic_ui.maxpat", "mt_input_mic_ui.maxpat", "inputs", [24, 160, 420, 280], 2, 2],
  "pm-file": ["mt_input_file_ui.maxpat", "mt_input_file_ui.maxpat", "inputs", [468, 160, 520, 340], 2, 3],
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
assert(hasLine("p-FX-state-router", 2, "pm-bitcrusher", 2), "Bitcrusher enable to module");
assert(hasLine("p-FX-state-router", 3, "pm-bitcrusher-bypass", 4), "Bitcrusher enable to serial bypass");
assert(hasLine("p-FX-state-router", 4, "pm-feedback-delay", 2), "Delay enable to module");
assert(hasLine("p-FX-state-router", 5, "pm-feedback-delay-bypass", 4), "Delay enable to serial bypass");
assert(hasLine("p-FX-state-router", 6, "pm-multiband", 2), "Multiband enable to module");
assert(hasLine("p-FX-state-router", 7, "pm-multiband-bypass", 4), "Multiband enable to serial bypass");
assert(hasLine("p-FX-state-router", 8, "pm-vocoder", 3), "Vocoder wet default");

for (const id of [
  "pm-bitcrusher-bypass", "pm-multiband-bypass", "pm-feedback-delay-bypass",
]) {
  assert.strictEqual(boxes.get(id)?.text, "mt_serial_bypass", `${id} abstraction`);
  assert.strictEqual(boxes.get(id)?.numinlets, 5, `${id} inlet count`);
  assert.strictEqual(boxes.get(id)?.numoutlets, 2, `${id} outlet count`);
}

for (const [source, destination] of [
  ["pm-mixer", "pm-vocoder"],
  ["pm-vocoder", "pm-bitcrusher"],
  ["pm-bitcrusher-bypass", "pm-multiband"],
  ["pm-multiband-bypass", "pm-feedback-delay"],
]) {
  assert(hasLine(source, 0, destination, 0), `${source} L must feed ${destination}`);
  assert(hasLine(source, 1, destination, 1), `${source} R must feed ${destination}`);
}
assert(!boxes.has("pm-vocoder-bypass"), "Vocoder must reuse its built-in dry/wet bypass");
assert(!boxes.has("pm-fx-return"), "parallel FX return mixer must be removed from Main");

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
assert.deepStrictEqual(pageTab.presentation_rect, [730, 27, 800, 42], "navigation leaves room for the persistent DSP control");
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
assert(!pageText(0).includes("script show ui_output_dac"), "PERFORM must use the single persistent DSP control");
assert(pageText(0).includes("script show ui_perform_record"), "PERFORM record control");
assert(pageText(0).includes("script show ui_perform_stop"), "PERFORM stop control");
assert(pageText(0).includes("script show ui_perform_record_status"), "PERFORM recorder status");
assert(pageText(0).includes("script show ui_perform_record_time"), "PERFORM recorder timer");
assert(!pageText(0).includes("script show ui_source_mixer"), "PERFORM must not embed the full source mixer");
assert(!pageText(0).includes("script show ui_master_returns"), "PERFORM must not embed the full FX mixer");
assert(pageText(0).includes("presentation_rect 402 172 798 486"), "PERFORM camera placement");
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
assert.deepStrictEqual(
  boxes.get("pm-perform-multiband")?.presentation_rect,
  [1616, 456, 48, 28],
  "PERFORM serial row 03 is Multiband"
);
assert.deepStrictEqual(
  boxes.get("pm-perform-feedback-delay")?.presentation_rect,
  [1616, 555, 48, 28],
  "PERFORM serial row 04 is Feedback Delay"
);
assert.strictEqual(boxes.get("pm-perform-mic-eq")?.maxclass, "textbutton", "PERFORM Mic EQ control class");
assert.strictEqual(boxes.get("pm-perform-mic-eq")?.text, "OPEN EQ", "PERFORM Mic EQ control label");
assert.strictEqual(boxes.get("pm-perform-mic-eq")?.mode, 0, "PERFORM Mic EQ control must be momentary");
assert.deepStrictEqual(boxes.get("pm-perform-mic-eq")?.presentation_rect, [196, 293, 82, 30]);
assert(hasLine("pm-perform-mic-eq", 0, "pm-mic", 1), "PERFORM Mic EQ button must open the embedded editor");
assert(pageText(0).includes("script show ui_perform_mic_eq"), "PERFORM shows Mic EQ button");

const performDsp = boxes.get("pm-perform-dsp");
assert.strictEqual(performDsp?.maxclass, "textbutton", "PERFORM DSP control class");
assert.strictEqual(performDsp?.mode, 1, "PERFORM DSP control is a toggle");
assert.deepStrictEqual(performDsp?.presentation_rect, [1582, 25, 120, 46], "PERFORM DSP control stays in the header");
assert.strictEqual(boxes.get("pm-dsp-select")?.text, "sel 1 0", "DSP toggle routes ON and OFF explicitly");
assert(hasLine("pm-perform-dsp", 0, "pm-dsp-select", 0), "header DSP toggle routing");
assert(hasLine("pm-dsp-select", 0, "pm-dsp-on", 0), "header DSP ON command");
assert(hasLine("pm-dsp-select", 1, "pm-dsp-off", 0), "header DSP OFF command");
for (const id of ["pm-dsp-on", "pm-dsp-off", "pm-dac"]) {
  assert.notStrictEqual(boxes.get(id)?.presentation, 1, `${id} must not expose a second DSP control`);
}

for (const [id, rect] of [
  ["pm-perform-file-play", [68, 420, 32, 28]],
  ["pm-perform-file-progress", [112, 424, 150, 10]],
  ["pm-perform-grain-play", [68, 543, 46, 28]],
  ["pm-perform-grain-preset", [126, 543, 144, 28]],
]) {
  assert.deepStrictEqual(boxes.get(id)?.presentation_rect, rect, `${id} placement`);
  assert(pageText(0).includes(`script show ${boxes.get(id)?.varname}`), `${id} shown on PERFORM`);
}
assert.strictEqual(boxes.get("pm-file")?.numoutlets, 3, "File module exposes its existing progress signal as data");
assert(hasLine("pm-file", 2, "pm-perform-file-progress", 0), "File progress reaches the PERFORM timeline");
assert.strictEqual(boxes.get("pm-perform-file-play-bind")?.text, "pattr perform_file_play @bindto ui_source_file::file_play @autorestore 0 @thru 2");
assert.strictEqual(boxes.get("pm-perform-grain-play-bind")?.text, "pattr perform_grain_play @bindto ui_source_grain::granular_play @autorestore 0 @thru 2");
assert.strictEqual(boxes.get("pm-perform-grain-preset-bind")?.text, "pattr perform_grain_preset @bindto ui_source_grain::granular_preset @autorestore 0 @thru 2");
for (const [key, bind] of [
  ["wet", "granular_wet"], ["density", "granular_density"],
  ["size", "granular_grain_size"], ["pitch", "granular_pitch"],
]) {
  const control = boxes.get(`pm-perform-grain-${key}`);
  assert(control, `PERFORM granular ${key} control`);
  assert(pageText(0).includes(`script show ${control.varname}`), `PERFORM granular ${key} shown`);
  assert.strictEqual(
    boxes.get(`pm-perform-grain-${key}-bind`)?.text,
    `pattr perform_grain_${key} @bindto ui_source_grain::${bind} @autorestore 0 @thru 2`,
    `PERFORM granular ${key} binds the existing control`
  );
}

assert(hasLine("pm-bitcrusher-hand-mapper", 11, "pm-perform-gesture-fanout", 0), "gesture label enters explicit fan-out");
assert(hasLine("pm-perform-gesture-fanout", 0, "pm-gesture-readout", 0), "gesture page keeps its feedback");
assert(hasLine("pm-perform-gesture-fanout", 1, "pm-perform-gesture-readout", 0), "PERFORM mirrors gesture feedback");
assert.deepStrictEqual(boxes.get("pm-perform-gesture-readout")?.presentation_rect, [418, 590, 202, 36]);
assert.deepStrictEqual(boxes.get("pm-perform-target")?.presentation_rect, [964, 590, 220, 36]);
assert.strictEqual(boxes.get("pm-perform-target")?.maxclass, "umenu", "target feedback displays the selected target name");
for (const key of ["x", "y", "pinch"]) {
  const readout = boxes.get(`pm-perform-gesture-${key}`);
  assert(pageText(0).includes(`script show ui_perform_gesture_${key}`), `PERFORM ${key} feedback shown`);
  assert.strictEqual(readout?.triangle, 0, `PERFORM ${key} feedback hides the number-box underline`);
  assert.deepStrictEqual(readout?.bgcolor, [0.94, 0.96, 0.94, 1], `PERFORM ${key} feedback uses a readable card`);
  assert.deepStrictEqual(readout?.textcolor, [0.12, 0.25, 0.21, 1], `PERFORM ${key} feedback uses branded text`);
}

for (const [id, bind] of [
  ["pm-perform-monitor-gain-bind", "ui_master_monitor::master_monitor_gain"],
  ["pm-perform-monitor-mute-bind", "ui_master_monitor::master_monitor_mute"],
  ["pm-perform-monitor-peak-bind", "ui_master_monitor::master_monitor_peak"],
]) {
  assert(String(boxes.get(id)?.text || "").includes(`@bindto ${bind}`), `${id} reuses Master Monitor state`);
}
assert(pageText(0).includes("script show ui_perform_monitor_gain"), "PERFORM monitor gain shown");
assert(pageText(0).includes("script show ui_perform_monitor_mute"), "PERFORM monitor mute shown");
assert(pageText(0).includes("script show ui_perform_monitor_peak"), "PERFORM monitor peak shown");
assert.strictEqual(boxes.get("pm-perform-monitor-gain")?.saved_attribute_attributes?.valueof?.parameter_mmin, -70);
assert.strictEqual(boxes.get("pm-perform-monitor-gain")?.saved_attribute_attributes?.valueof?.parameter_mmax, 6);
assert(pageText(0).includes("presentation_rect 1402 789 18 58"), "PERFORM L meter placement");
assert(pageText(0).includes("presentation_rect 1430 789 18 58"), "PERFORM R meter placement");
for (let index = 1; index < 5; index += 1) {
  assert(pageText(index).includes("script hide ui_perform_mic_eq"), `Mic EQ button hidden on detail page ${index}`);
}
assert(pageText(1).includes("script show ui_source_shell"), "SOURCE shell");
assert(pageText(1).includes("script show ui_source_selector"), "SOURCE selector");
assert(pageText(1).includes("script show ui_source_mic"), "SOURCE default module");
assert(pageText(1).includes("presentation_rect 234 350 420 280"), "SOURCE default Mic is centered in the Granular-sized slot");
assert(pageText(1).includes("presentation_rect 904 330 760 320"), "SOURCE mixer placement");
const sourceSelector = boxes.get("pm-source-selector");
assert.strictEqual(sourceSelector?.maxclass, "tab", "SOURCE selector uses the approved three-segment control");
assert.deepStrictEqual(sourceSelector?.tabs, ["MIC INPUT", "FILE PLAYER", "GRANULAR"], "SOURCE selector labels");
assert.deepStrictEqual(sourceSelector?.presentation_rect, [1034, 126, 646, 48], "SOURCE selector placement");
const sourceDetailRouter = boxes.get("pm-source-detail-router")?.patcher;
assert(sourceDetailRouter, "SOURCE detail selector router");
const sourceChoiceText = sourceDetailRouter.boxes.map((entry) => String(entry.box.text || "")).join("\n");
for (const placement of [
  "ui_source_mic presentation_rect 234 350 420 280",
  "ui_source_file presentation_rect 184 320 520 340",
  "ui_source_grain presentation_rect 84 270 720 440",
]) {
  assert(sourceChoiceText.includes(placement), `SOURCE centered module placement: ${placement}`);
}
assert(pageText(2).includes("script show ui_fx_shell"), "FX shell");
assert(pageText(2).includes("script show ui_fx_selector"), "FX selector");
assert(pageText(2).includes("script show ui_fx_bitcrusher"), "FX default module");
assert(!pageText(2).includes("script show ui_fx_vocoder"), "FX only shows the selected processor");
const fxDetailRouter = boxes.get("pm-fx-detail-router")?.patcher;
assert(fxDetailRouter, "FX detail selector router");
const multibandDetailMessage = fxDetailRouter.boxes
  .map((entry) => entry.box)
  .find((box) => String(box.text || "").includes("script show ui_fx_multiband"));
assert(
  multibandDetailMessage?.text.includes("script sendbox ui_fx_multiband presentation_rect 20 300 1100 400"),
  "FX selector must preserve the complete 1100 x 400 Multiband Presentation"
);
const fxSelector = boxes.get("pm-fx-selector");
assert.strictEqual(fxSelector?.maxclass, "tab", "FX selector uses the four-segment strip from the approved concept");
assert.deepStrictEqual(
  fxSelector?.tabs,
  ["VOCODER", "BITCRUSHER", "MULTIBAND", "FEEDBACK DELAY"],
  "FX selector follows serial-chain order"
);
assert.deepStrictEqual(fxSelector?.presentation_rect, [600, 126, 1100, 48], "FX selector placement");

const fxOutputMixer = boxes.get("pm-fx-output-mixer");
assert.strictEqual(fxOutputMixer?.maxclass, "bpatcher", "FX page embeds the standalone output mixer");
assert.strictEqual(fxOutputMixer?.name, "mt_fx_output_trim_panel.maxpat");
assert.strictEqual(fxOutputMixer?.numinlets, 13);
assert.strictEqual(fxOutputMixer?.numoutlets, 4);
assert.deepStrictEqual(fxOutputMixer?.presentation_rect, [1140, 270, 560, 450], "FX output mixer placement");
assert(
  patcher.dependency_cache.some((entry) => entry.name === "mt_fx_output_trim_panel.maxpat"),
  "Main declares the embedded FX output mixer dependency"
);
assert(pageText(2).includes("script show ui_fx_output_mixer"), "FX page shows the output mixer");
assert(pageText(2).includes("script sendbox ui_fx_selector 1"), "FX page initializes Bitcrusher and Current feedback together");
for (const page of [0, 1, 3, 4]) {
  assert(pageText(page).includes("script hide ui_fx_output_mixer"), `page ${page} hides the FX output mixer`);
}
assert(hasLine("pm-fx-selector", 0, "pm-fx-output-mixer", 4), "selected effect drives Current feedback");
assert.strictEqual(boxes.get("pm-fx-meter-vocoder-enable")?.text, "t i i", "Vocoder monitor enable fans out explicitly");
for (const [channel, outlet] of [["l", 0], ["r", 1]]) {
  const gate = `pm-fx-meter-vocoder-${channel}-gate`;
  assert.strictEqual(boxes.get(gate)?.text, "*~", `Vocoder ${channel.toUpperCase()} monitor gate`);
  assert(hasLine("pm-vocoder", outlet, gate, 0), `Vocoder ${channel.toUpperCase()} feeds its enabled-only monitor`);
  assert(hasLine("pm-fx-meter-vocoder-enable", outlet, gate, 1), `Vocoder enable controls ${channel.toUpperCase()} monitor`);
  assert(hasLine(gate, 0, "pm-fx-output-mixer", 5 + outlet), `Vocoder ${channel.toUpperCase()} enabled-only monitor reaches mixer`);
}
assert(hasLine("p-FX-state-router", 1, "pm-fx-meter-vocoder-enable", 0), "Vocoder enable drives its monitor gates");
for (const [source, leftInlet] of [
  ["pm-bitcrusher", 7],
  ["pm-multiband", 9],
  ["pm-feedback-delay", 11],
]) {
  assert(hasLine(source, 0, "pm-fx-output-mixer", leftInlet), `${source} L feeds its enabled-only FX meter`);
  assert(hasLine(source, 1, "pm-fx-output-mixer", leftInlet + 1), `${source} R feeds its enabled-only FX meter`);
}
for (const [source, leftInlet] of [
  ["pm-bitcrusher-bypass", 7],
  ["pm-multiband-bypass", 9],
  ["pm-feedback-delay-bypass", 11],
]) {
  assert(!hasLine(source, 0, "pm-fx-output-mixer", leftInlet), `${source} bypass signal must not light a disabled effect meter`);
  assert(!hasLine(source, 1, "pm-fx-output-mixer", leftInlet + 1), `${source} bypass signal must not light a disabled effect meter`);
}

const fxOutputBindings = [
  ["vocoder", "ui_fx_vocoder::vocoder_output_gain"],
  ["bitcrusher", "ui_fx_bitcrusher::bitcrusher_output_gain"],
  ["multiband", "ui_fx_multiband::multiband_filter_output_gain"],
  ["feedback-delay", "ui_fx_feedback_delay::delay_output_gain"],
];
for (const [index, [key, bindTarget]] of fxOutputBindings.entries()) {
  const bindId = `pm-fx-output-${key}-bind`;
  assert.strictEqual(
    boxes.get(bindId)?.text,
    `pattr fx_output_${key.replaceAll("-", "_")} @bindto ${bindTarget} @autorestore 0 @thru 2`,
    `${key} mixer channel controls the existing Output Gain`
  );
  assert(hasLine("pm-fx-output-mixer", index, bindId, 0), `${key} fader writes Output Gain`);
  assert(hasLine(bindId, 0, "pm-fx-output-mixer", index), `${key} external Output Gain changes mirror into the fader`);
  assert(!boxes.has(`pm-fx-output-${key}-init-once`), `${key} no longer uses initialization-only feedback`);
}
assert.strictEqual(boxes.get("pm-fx-output-load-trigger")?.text, "t b b b b", "FX mixer initializes from existing gains");
assert(!patcher.boxes.some(({ box }) => box.id.startsWith("pm-fx-trim-")), "old horizontal FX trims are removed");
const vocoderGain = JSON.parse(
  fs.readFileSync(path.join(root, "patchers", "effects", "mt_mod_vocoder.maxpat"), "utf8")
).patcher.boxes.find((entry) => entry.box.id === "vm-gain")?.box;
assert.strictEqual(vocoderGain?.varname, "vocoder_output_gain", "Vocoder Output Gain needs a stable scripting name");
const fxShellSvg = fs.readFileSync(path.join(root, "assets", "ui", "fx_detail_shell_v4.svg"), "utf8");
assert(fxShellSvg.includes("FX OUTPUT LEVELS"), "FX shell labels the centralized output level bank");
assert(fxShellSvg.includes("SELECTED EFFECT"), "FX shell labels the selected effect area");
for (const obsolete of ["FX OUTPUT TRIM", "SERIAL SIGNAL FLOW", "MASTER / UTILITIES", "LIVE STATUS"]) {
  assert(!fxShellSvg.includes(obsolete), `FX shell removes ${obsolete}`);
}
assert.deepStrictEqual(
  boxes.get("pm-vocoder")?.presentation_rect,
  [24, 160, 760, 268],
  "Vocoder bpatcher reserves the full commercial editor height"
);
assert(pageText(3).includes("script show ui_gesture_hand"), "GESTURE page contents");
assert(pageText(3).includes("presentation_rect 64 264 964 507"), "GESTURE camera placement");
const gestureTarget = boxes.get("pm-gesture-target");
assert.strictEqual(gestureTarget?.maxclass, "tab", "gesture target uses an always-visible target strip");
assert.deepStrictEqual(
  gestureTarget?.tabs,
  ["0 HOLD", "1 VOCODER", "2 BITCRUSHER", "3 MULTIBAND", "4 DELAY", "5 ALL"],
  "gesture target strip labels"
);
assert.deepStrictEqual(gestureTarget?.presentation_rect, [1094, 468, 574, 62]);
assert.deepStrictEqual(boxes.get("pm-gesture-readout")?.presentation_rect, [1094, 262, 574, 60]);
assert.strictEqual(boxes.get("pm-gesture-readout")?.fontsize, 32, "gesture readout prominence");
for (const [id, rect] of [
  ["pm-gesture-input-x", [1110, 694, 130, 30]],
  ["pm-gesture-input-y", [1298, 694, 130, 30]],
  ["pm-gesture-input-pinch", [1486, 694, 130, 30]],
  ["pm-slot1-monitor", [1110, 804, 130, 30]],
  ["pm-slot2-monitor", [1298, 804, 130, 30]],
  ["pm-slot3-monitor", [1486, 804, 130, 30]],
]) {
  assert.strictEqual(boxes.get(id)?.maxclass, "flonum", `${id} is a numeric readout`);
  assert.deepStrictEqual(boxes.get(id)?.presentation_rect, rect, `${id} data-card placement`);
}
assert.deepStrictEqual(boxes.get("pm-gesture-status")?.presentation_rect, [1094, 846, 554, 34]);
assert(hasLine("pm-gesture-target", 0, "pm-gesture-target-fanout", 0), "manual target selection routing");
assert(hasLine("pm-gesture-target-set", 0, "pm-gesture-target", 0), "recognized gesture target feedback");
assert(!pageText(4).includes("ui_master_returns"), "MASTER must not expose the removed parallel mixer");
assert(pageText(4).includes("script show ui_master_record_editor"), "MASTER embeds the complete record editor");
assert(pageText(4).includes("script show ui_master_monitor"), "MASTER embeds the standalone monitor panel");
assert(!pageText(4).includes("script show ui_output_dac"), "MASTER reuses the persistent header DSP control");
for (const page of [1, 2, 3, 4]) {
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
  "perform_shell_v4.png",
  "PERFORM shell uses the declared portable asset path"
);
assert.deepStrictEqual(performShell.presentation_rect, [0, 96, 1732, 845], "PERFORM shell fills the content area");
assert(fs.existsSync(path.join(root, "assets", "ui", "perform_shell_v4.svg")), "editable PERFORM SVG exists");
assert(fs.existsSync(path.join(root, "assets", "ui", "perform_shell_v4.png")), "rendered PERFORM PNG exists");
assert.deepStrictEqual(pngDimensions(path.join(root, "assets", "ui", "perform_shell_v4.png")), [1732, 845], "PERFORM shell rendered dimensions");
const performShellSvg = fs.readFileSync(path.join(root, "assets", "ui", "perform_shell_v4.svg"), "utf8");
for (const label of ["EFFECTS", "SERIAL CHAIN", "RECORD / EXPORT", "MASTER OUTPUT"]) {
  assert(performShellSvg.includes(label), `PERFORM shell includes ${label}`);
}
for (const obsolete of ["FX RETURNS", "PARALLEL PROCESSING", "MASTER / UTILITIES", "7-BAND EQ", "LIVE STATUS"]) {
  assert(!performShellSvg.includes(obsolete), `PERFORM shell removes ${obsolete}`);
}
assert(!boxes.has("pm-perform-chop"), "legacy Chop quick control remains");
assert(!boxes.has("pm-perform-tremolo"), "legacy Tremolo quick control remains");

for (const [id, pic] of [
  ["pm-source-bg", "source_detail_shell_v3.png"],
  ["pm-fx-bg", "fx_detail_shell_v4.png"],
  ["pm-gesture-bg", "gesture_detail_shell_v3.png"],
  ["pm-master-bg", "master_detail_shell_v3.png"],
]) {
  const shellBox = boxes.get(id);
  const png = path.join(root, "assets", "ui", pic);
  assert.strictEqual(shellBox?.pic, pic, `${id} asset`);
  assert.deepStrictEqual(shellBox?.presentation_rect, [0, 96, 1732, 845], `${id} content size`);
  assert.deepStrictEqual(pngDimensions(png), [1732, 845], `${pic} rendered dimensions`);
}

assert(
  patcher.boxes.findIndex((entry) => entry.box.id === "pm-source-bg")
    < patcher.boxes.findIndex((entry) => entry.box.id === "pm-shell-bg"),
  "SOURCE background must render above the persistent main shell"
);
assert(
  patcher.boxes.findIndex((entry) => entry.box.id === "pm-fx-bg")
    < patcher.boxes.findIndex((entry) => entry.box.id === "pm-shell-bg"),
  "FX background must render above the persistent main shell"
);
const sourceShellSvg = fs.readFileSync(path.join(root, "assets", "ui", "source_detail_shell_v3.svg"), "utf8");
for (const label of ["SOURCE", "SELECTED SOURCE", "SOURCE MIXER / DRY BUS"]) {
  assert(sourceShellSvg.includes(label), `SOURCE shell includes ${label}`);
}

const gestureShellSvg = fs.readFileSync(path.join(root, "assets", "ui", "gesture_detail_shell_v3.svg"), "utf8");
for (const label of ["GESTURE READ", "CONTROL TARGET", "GESTURE INPUT DATA", "MAPPED PARAMETERS"]) {
  assert(gestureShellSvg.includes(label), `GESTURE shell includes ${label}`);
}
assert(
  patcher.boxes.findIndex((entry) => entry.box.id === "pm-gesture-bg")
    < patcher.boxes.findIndex((entry) => entry.box.id === "pm-shell-bg"),
  "GESTURE background must render above the persistent main shell"
);
assert(
  patcher.boxes.findIndex((entry) => entry.box.id === "pm-master-bg")
    < patcher.boxes.findIndex((entry) => entry.box.id === "pm-shell-bg"),
  "MASTER background must render above the persistent main shell"
);
for (const obsolete of ["PERFORM OVERVIEW", "MASTER / UTILITIES", "LIVE STATUS"]) {
  assert(!sourceShellSvg.includes(obsolete), `SOURCE shell removes ${obsolete}`);
}

const masterShellSvg = fs.readFileSync(path.join(root, "assets", "ui", "master_detail_shell_v3.svg"), "utf8");
assert(masterShellSvg.includes("RECORD / EXPORT EDITOR"), "MASTER shell reserves the record editor");
assert(masterShellSvg.includes("MASTER MONITOR"), "MASTER shell reserves the monitor section");
assert(!masterShellSvg.includes("SERIAL EFFECT ORDER"), "MASTER shell removes obsolete serial order artwork");

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
  "pm-meter-l": "ui_output_meter_l",
  "pm-meter-r": "ui_output_meter_r",
  "pm-dac": "ui_output_dac",
  "pm-output-label": "ui_output_label",
  "pm-record-editor": "ui_master_record_editor",
  "pm-record-quick-record": "ui_perform_record",
  "pm-record-quick-stop": "ui_perform_stop",
  "pm-record-quick-status": "ui_perform_record_status",
  "pm-record-quick-time": "ui_perform_record_time",
  "pm-perform-bg": "ui_perform_shell",
  "pm-perform-mic": "ui_perform_mic",
  "pm-perform-mic-eq": "ui_perform_mic_eq",
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
  "pm-master-monitor": "ui_master_monitor",
  "pm-source-selector": "ui_source_selector",
  "pm-fx-selector": "ui_fx_selector",
  "pm-fx-output-mixer": "ui_fx_output_mixer",
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

const masterMonitor = boxes.get("pm-master-monitor");
assert.strictEqual(masterMonitor?.maxclass, "bpatcher", "Main embeds Master Monitor as a bpatcher");
assert.strictEqual(masterMonitor?.name, "mt_master_monitor.maxpat", "Master Monitor source file");
assert.strictEqual(masterMonitor?.numinlets, 2, "Master Monitor stereo inputs");
assert.strictEqual(masterMonitor?.numoutlets, 2, "Master Monitor stereo outputs");
assert(
  patcher.dependency_cache.some((entry) => entry.name === "mt_master_monitor.maxpat"),
  "Main declares the Master Monitor dependency"
);
for (const [channel, outlet, meter, dacInlet] of [["L", 0, "pm-meter-l", 0], ["R", 1, "pm-meter-r", 1]]) {
  assert(hasLine("pm-record-audition-bypass", outlet, "pm-master-monitor", outlet), `${channel} audition reaches Master Monitor`);
  assert(hasLine("pm-master-monitor", outlet, meter, 0), `${channel} monitored signal reaches legacy PERFORM meter`);
  assert(hasLine("pm-master-monitor", outlet, "pm-dac", dacInlet), `${channel} monitored signal reaches DAC`);
  assert(!hasLine("pm-record-audition-bypass", outlet, meter, 0), `${channel} meter must not bypass Master Monitor`);
  assert(!hasLine("pm-record-audition-bypass", outlet, "pm-dac", dacInlet), `${channel} DAC must not bypass Master Monitor`);
}
const recordEditor = boxes.get("pm-record-editor");
assert.strictEqual(recordEditor?.maxclass, "bpatcher", "record editor must be embedded once");
assert.strictEqual(recordEditor?.name, "mt_record_export_editor.maxpat", "record editor source file");
assert.strictEqual(recordEditor?.numinlets, 3, "record editor inlet count");
assert.strictEqual(recordEditor?.numoutlets, 6, "record editor outlet count");
assert.deepStrictEqual(recordEditor?.presentation_rect, [64, 266, 960, 528], "MASTER editor placement");
const recordEditorDependency = patcher.dependency_cache.find((item) => item.name === "mt_record_export_editor.maxpat");
assert(recordEditorDependency, "record editor dependency cache entry");
assert(
  fs.existsSync(path.resolve(path.dirname(patchPath), recordEditorDependency.patcherrelativepath, recordEditorDependency.name)),
  "record editor dependency path must exist"
);
assert.strictEqual(
  patcher.boxes.filter((entry) => entry.box.name === "mt_record_export_editor.maxpat").length,
  1,
  "Main must own exactly one record buffer/editor"
);
assert.strictEqual(boxes.get("pm-record-audition-bypass")?.text, "mt_serial_bypass", "preview audition crossfade");
for (const outlet of [0, 1]) {
  assert(hasLine("pm-feedback-delay-bypass", outlet, "pm-record-editor", outlet), "serial output records before audition");
  assert(hasLine("pm-feedback-delay-bypass", outlet, "pm-record-audition-bypass", outlet), "live signal feeds audition dry path");
  assert(hasLine("pm-record-editor", outlet, "pm-record-audition-bypass", outlet + 2), "preview feeds audition wet path");
}
assert(hasLine("pm-record-editor", 4, "pm-record-audition-bypass", 4), "preview state controls audition crossfade");
assert(hasLine("pm-record-quick-record", 0, "pm-record-command-record", 0), "PERFORM record button command");
assert(hasLine("pm-record-command-record", 0, "pm-record-editor", 2), "PERFORM record reaches the sole editor");
assert(hasLine("pm-record-quick-stop", 0, "pm-record-command-stop", 0), "PERFORM stop button command");
assert(hasLine("pm-record-command-stop", 0, "pm-record-editor", 2), "PERFORM stop reaches the sole editor");
assert.strictEqual(boxes.get("pm-record-quick-status-set")?.text, "prepend set", "record status must update comment silently");
assert(hasLine("pm-record-editor", 2, "pm-record-quick-status-set", 0), "editor status enters prepend set");
assert(hasLine("pm-record-quick-status-set", 0, "pm-record-quick-status", 0), "formatted status mirrors on PERFORM");
assert(!hasLine("pm-record-editor", 2, "pm-record-quick-status", 0), "raw EMPTY status must not reach a comment");
assert(hasLine("pm-record-editor", 5, "pm-record-quick-time", 0), "editor time mirrors on PERFORM");
for (const removedId of [
  "pm-rec-title", "pm-rec-open-label", "pm-rec-start-label", "pm-rec-stop-label",
  "pm-rec-open", "pm-rec-start", "pm-rec-stop", "pm-recorder", "pm-rec-control",
  "pm-rec-file-display", "pm-rec-status-display", "pm-rec-time-display",
]) {
  assert(!boxes.has(removedId), `${removedId} old direct-to-disk recorder must be removed`);
}
assert(![...boxes.values()].some((box) => String(box.text || "").startsWith("sfrecord~")), "Main must not retain direct-to-disk recording");

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
