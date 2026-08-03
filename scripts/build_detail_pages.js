const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(root, "patchers", "mt_portfolio_main.maxpat");
const assetDir = path.join(root, "assets", "ui");
const document = JSON.parse(fs.readFileSync(patchPath, "utf8"));
const patcher = document.patcher;

patcher.boxes = patcher.boxes.filter((entry) => entry.box.id !== "pm-project-paths");
patcher.lines = patcher.lines.filter((entry) =>
  entry.patchline.source[0] !== "pm-project-paths"
  && entry.patchline.destination[0] !== "pm-project-paths"
);

const byId = () => new Map(patcher.boxes.map((entry) => [entry.box.id, entry.box]));
const line = (source, outlet, destination, inlet) => ({
  patchline: { source: [source, outlet], destination: [destination, inlet] },
});

function replaceBox(box) {
  const index = patcher.boxes.findIndex((entry) => entry.box.id === box.id);
  if (index >= 0) patcher.boxes[index] = { box };
  else patcher.boxes.push({ box });
}

function fpic(id, pic, varname, x) {
  return {
    autofit: 1,
    background: 1,
    forceaspect: 1,
    hidden: 1,
    id,
    ignoreclick: 1,
    maxclass: "fpic",
    numinlets: 1,
    numoutlets: 1,
    outlettype: ["jit_matrix"],
    patching_rect: [x, 20, 346, 169],
    pic,
    presentation: 1,
    presentation_rect: [0, 96, 1732, 845],
    varname,
  };
}

function detailRouter(id, text, choices) {
  const boxes = [
    { box: { id: `${id}-in`, index: 1, maxclass: "inlet", numinlets: 0, numoutlets: 1, outlettype: ["int"], patching_rect: [24, 24, 30, 30] } },
    { box: { id: `${id}-sel`, maxclass: "newobj", numinlets: choices.length + 1, numoutlets: choices.length + 1, outlettype: [...choices.map(() => "bang"), ""], patching_rect: [24, 70, 90, 22], text: `sel ${choices.map((_, index) => index).join(" ")}` } },
    ...choices.map((message, index) => ({ box: { id: `${id}-msg-${index}`, maxclass: "message", numinlets: 2, numoutlets: 1, outlettype: [""], patching_rect: [24, 110 + index * 44, 660, 36], text: message } })),
    { box: { id: `${id}-out`, index: 1, maxclass: "outlet", numinlets: 1, numoutlets: 0, patching_rect: [24, 130 + choices.length * 44, 30, 30] } },
  ];
  const lines = [
    line(`${id}-in`, 0, `${id}-sel`, 0),
    ...choices.flatMap((_, index) => [
      line(`${id}-sel`, index, `${id}-msg-${index}`, 0),
      line(`${id}-msg-${index}`, 0, `${id}-out`, 0),
    ]),
  ];
  return {
    id,
    maxclass: "newobj",
    numinlets: 1,
    numoutlets: 1,
    outlettype: [""],
    patcher: {
      fileversion: 1,
      appversion: patcher.appversion,
      classnamespace: "box",
      rect: [120, 120, 720, 360],
      gridsize: [15, 15],
      boxes,
      lines,
    },
    patching_rect: [2380, 220, 150, 22],
    text,
  };
}

const fxOutputBindings = [
  { key: "vocoder", bind: "ui_fx_vocoder::vocoder_output_gain" },
  { key: "bitcrusher", bind: "ui_fx_bitcrusher::bitcrusher_output_gain" },
  { key: "multiband", bind: "ui_fx_multiband::multiband_filter_output_gain" },
  { key: "feedback-delay", bind: "ui_fx_feedback_delay::delay_output_gain" },
];

const hideVarnames = [
  "ui_source_shell", "ui_fx_shell", "ui_gesture_shell", "ui_master_shell",
  "ui_source_selector", "ui_fx_selector",
  "ui_gesture_target_label", "ui_gesture_target", "ui_gesture_readout", "ui_gesture_status", "ui_gesture_zone_note",
  "ui_perform_shell", "ui_perform_mic", "ui_perform_mic_eq", "ui_perform_file", "ui_perform_grain",
  "ui_perform_vocoder", "ui_perform_bitcrusher", "ui_perform_feedback_delay", "ui_perform_multiband",
  "ui_source_mic", "ui_source_file", "ui_source_grain", "ui_source_mixer",
  "ui_fx_vocoder", "ui_fx_bitcrusher", "ui_fx_feedback_delay", "ui_fx_multiband",
  "ui_gesture_hand", "ui_gesture_map_title",
  "ui_gesture_input_x", "ui_gesture_input_y", "ui_gesture_input_pinch",
  "ui_gesture_slot1", "ui_gesture_slot1_label", "ui_gesture_slot2", "ui_gesture_slot2_label",
  "ui_gesture_slot3", "ui_gesture_slot3_label", "ui_gesture_slot4", "ui_gesture_slot4_label",
  "ui_util_eq_title", "ui_util_eq_open",
  "ui_master_record_editor", "ui_master_monitor", "ui_perform_record", "ui_perform_stop",
  "ui_perform_record_status", "ui_perform_record_time",
  "ui_output_meter_l", "ui_output_meter_r", "ui_output_dac", "ui_output_label",
  "ui_fx_output_mixer",
  "ui_perform_file_play", "ui_perform_file_progress",
  "ui_perform_grain_play", "ui_perform_grain_preset",
  "ui_perform_grain_wet", "ui_perform_grain_density", "ui_perform_grain_size", "ui_perform_grain_pitch",
  "ui_perform_gesture_readout", "ui_perform_gesture_x", "ui_perform_gesture_y",
  "ui_perform_gesture_pinch", "ui_perform_target", "ui_perform_gesture_status",
  "ui_perform_target_vocoder", "ui_perform_target_bitcrusher",
  "ui_perform_target_multiband", "ui_perform_target_delay",
  "ui_perform_monitor_gain", "ui_perform_monitor_mute", "ui_perform_monitor_peak",
];
const hideAll = hideVarnames.map((name) => `script hide ${name}`);
const show = (...names) => names.map((name) => `script show ${name}`);
const rect = (name, values) => `script sendbox ${name} presentation_rect ${values.join(" ")}`;
const set = (name, value) => `script sendbox ${name} set ${value}`;
const command = (...parts) => [...new Set(parts.flat().filter(Boolean))].join(", ");

replaceBox(fpic("pm-source-bg", "source_detail_shell_v3.png", "ui_source_shell", 2360));
replaceBox(fpic("pm-fx-bg", "fx_detail_shell_v4.png", "ui_fx_shell", 2720));
replaceBox(fpic("pm-gesture-bg", "gesture_detail_shell_v3.png", "ui_gesture_shell", 3080));
replaceBox(fpic("pm-master-bg", "master_detail_shell_v3.png", "ui_master_shell", 3440));
const sourceBackgroundIndex = patcher.boxes.findIndex((entry) => entry.box.id === "pm-source-bg");
const [sourceBackground] = patcher.boxes.splice(sourceBackgroundIndex, 1);
const mainShellIndex = patcher.boxes.findIndex((entry) => entry.box.id === "pm-shell-bg");
patcher.boxes.splice(mainShellIndex, 0, sourceBackground);
const fxBackgroundIndex = patcher.boxes.findIndex((entry) => entry.box.id === "pm-fx-bg");
const [fxBackground] = patcher.boxes.splice(fxBackgroundIndex, 1);
patcher.boxes.splice(patcher.boxes.findIndex((entry) => entry.box.id === "pm-shell-bg"), 0, fxBackground);
const gestureBackgroundIndex = patcher.boxes.findIndex((entry) => entry.box.id === "pm-gesture-bg");
const [gestureBackground] = patcher.boxes.splice(gestureBackgroundIndex, 1);
patcher.boxes.splice(patcher.boxes.findIndex((entry) => entry.box.id === "pm-shell-bg"), 0, gestureBackground);
const masterBackgroundIndex = patcher.boxes.findIndex((entry) => entry.box.id === "pm-master-bg");
const [masterBackground] = patcher.boxes.splice(masterBackgroundIndex, 1);
patcher.boxes.splice(patcher.boxes.findIndex((entry) => entry.box.id === "pm-shell-bg"), 0, masterBackground);
replaceBox({
  bgcolor: [0.862745, 0.909804, 0.87451, 1],
  fontsize: 14,
  hidden: 1,
  htabcolor: [0.941176, 0.788235, 0.301961, 1],
  id: "pm-source-selector",
  maxclass: "tab",
  multiline: 0,
  numinlets: 1,
  numoutlets: 3,
  outlettype: ["int", "", ""],
  parameter_enable: 0,
  patching_rect: [2360, 220, 646, 48],
  presentation: 1,
  presentation_rect: [1034, 126, 646, 48],
  tabcolor: [0.862745, 0.909804, 0.87451, 1],
  tabs: ["MIC INPUT", "FILE PLAYER", "GRANULAR"],
  textcolor: [0.192157, 0.278431, 0.239216, 1],
  varname: "ui_source_selector",
});
replaceBox({
  bgcolor: [0.862745, 0.909804, 0.87451, 1],
  fontsize: 14,
  hidden: 1,
  htabcolor: [0.941176, 0.788235, 0.301961, 1],
  id: "pm-fx-selector",
  maxclass: "tab",
  multiline: 0,
  numinlets: 1,
  numoutlets: 3,
  outlettype: ["int", "", ""],
  parameter_enable: 0,
  patching_rect: [2720, 220, 1100, 48],
  presentation: 1,
  presentation_rect: [600, 126, 1100, 48],
  tabcolor: [0.862745, 0.909804, 0.87451, 1],
  tabs: ["VOCODER", "BITCRUSHER", "MULTIBAND", "FEEDBACK DELAY"],
  textcolor: [0.192157, 0.278431, 0.239216, 1],
  varname: "ui_fx_selector",
});

for (const [id, varname, x] of [
  ["pm-gesture-input-x", "ui_gesture_input_x", 1110],
  ["pm-gesture-input-y", "ui_gesture_input_y", 1298],
  ["pm-gesture-input-pinch", "ui_gesture_input_pinch", 1486],
]) {
  replaceBox({
    bgcolor: [0.94, 0.96, 0.94, 1], fontface: 1, fontsize: 20, hidden: 1,
    id, maxclass: "flonum", numdecimalplaces: 2, numinlets: 1, numoutlets: 2,
    outlettype: ["", "bang"], parameter_enable: 0, patching_rect: [x + 1200, 1060, 90, 22],
    presentation: 1, presentation_rect: [x, 694, 130, 30],
    textcolor: [0.12, 0.25, 0.21, 1], varname,
  });
}

const gestureBoxes = byId();
const gestureMapper = gestureBoxes.get("pm-bitcrusher-hand-mapper");
gestureMapper.numoutlets = 15;
gestureMapper.outlettype = Array(15).fill("");
Object.assign(gestureBoxes.get("pm-gesture-readout"), {
  fontface: 1, fontsize: 32, presentation_rect: [1094, 262, 574, 60],
});
Object.assign(gestureBoxes.get("pm-gesture-target"), {
  fontsize: 10, presentation_rect: [1094, 468, 574, 62],
});
Object.assign(gestureBoxes.get("pm-hand-map-title"), {
  fontface: 0, fontsize: 10, presentation_rect: [1094, 746, 554, 18],
  textcolor: [0.36, 0.5, 0.44, 1],
});
for (const [id, rect] of [
  ["pm-slot1-monitor", [1110, 804, 130, 30]],
  ["pm-slot2-monitor", [1298, 804, 130, 30]],
  ["pm-slot3-monitor", [1486, 804, 130, 30]],
]) {
  Object.assign(gestureBoxes.get(id), {
    bgcolor: [1, 0.98, 0.91, 1], fontface: 1, fontsize: 20,
    numdecimalplaces: 2, presentation_rect: rect, textcolor: [0.12, 0.25, 0.21, 1],
  });
}
for (const [id, rect] of [
  ["pm-slot1-label", [1110, 776, 170, 22]],
  ["pm-slot2-label", [1298, 776, 170, 22]],
  ["pm-slot3-label", [1486, 776, 170, 22]],
]) {
  Object.assign(gestureBoxes.get(id), {
    fontsize: 8, presentation_rect: rect, textcolor: [0.49, 0.58, 0.54, 1],
  });
}
Object.assign(gestureBoxes.get("pm-gesture-status"), {
  fontsize: 11, presentation_rect: [1094, 846, 554, 34], textcolor: [0.94, 0.97, 0.95, 1],
});

const gestureInputIds = new Set(["pm-gesture-input-x", "pm-gesture-input-y", "pm-gesture-input-pinch"]);
patcher.lines = patcher.lines.filter(({ patchline }) => !gestureInputIds.has(patchline.destination[0]));
patcher.lines.push(
  line("pm-bitcrusher-hand-mapper", 12, "pm-gesture-input-x", 0),
  line("pm-bitcrusher-hand-mapper", 13, "pm-gesture-input-y", 0),
  line("pm-bitcrusher-hand-mapper", 14, "pm-gesture-input-pinch", 0)
);

const sourceChoices = [
  command(
    ["script hide ui_source_file", "script hide ui_source_grain"],
    rect("ui_source_mic", [234, 350, 420, 280]),
    "script show ui_source_mic"
  ),
  command(
    ["script hide ui_source_mic", "script hide ui_source_grain"],
    rect("ui_source_file", [184, 320, 520, 340]),
    "script show ui_source_file"
  ),
  command(
    ["script hide ui_source_mic", "script hide ui_source_file"],
    rect("ui_source_grain", [84, 270, 720, 440]),
    "script show ui_source_grain"
  ),
];
const fxChoices = [
  command(
    ["script hide ui_fx_bitcrusher", "script hide ui_fx_feedback_delay", "script hide ui_fx_multiband"],
    rect("ui_fx_vocoder", [190, 366, 760, 268]),
    "script show ui_fx_vocoder"
  ),
  command(
    ["script hide ui_fx_vocoder", "script hide ui_fx_feedback_delay", "script hide ui_fx_multiband"],
    rect("ui_fx_bitcrusher", [190, 366, 760, 268]),
    "script show ui_fx_bitcrusher"
  ),
  command(
    ["script hide ui_fx_vocoder", "script hide ui_fx_bitcrusher", "script hide ui_fx_feedback_delay"],
    rect("ui_fx_multiband", [20, 300, 1100, 400]),
    "script show ui_fx_multiband"
  ),
  command(
    ["script hide ui_fx_vocoder", "script hide ui_fx_bitcrusher", "script hide ui_fx_multiband"],
    rect("ui_fx_feedback_delay", [145, 366, 850, 268]),
    "script show ui_fx_feedback_delay"
  ),
];
replaceBox(detailRouter("pm-source-detail-router", "p Source_detail_router", sourceChoices));
replaceBox(detailRouter("pm-fx-detail-router", "p FX_detail_router", fxChoices));
replaceBox({
  id: "pm-page-defer",
  maxclass: "newobj",
  numinlets: 1,
  numoutlets: 1,
  outlettype: [""],
  patching_rect: [1990, 20, 62, 22],
  text: "deferlow",
});

patcher.lines = patcher.lines.filter((entry) => ![
  "pm-source-selector", "pm-source-detail-router", "pm-fx-selector", "pm-fx-detail-router",
].includes(entry.patchline.source[0]) && ![
  "pm-source-selector", "pm-source-detail-router", "pm-fx-selector", "pm-fx-detail-router",
].includes(entry.patchline.destination[0])
  && !(entry.patchline.source[0] === "pm-page-load"
    && ["pm-page-tab", "pm-page-defer"].includes(entry.patchline.destination[0]))
  && !(entry.patchline.source[0] === "pm-page-defer"
    && entry.patchline.destination[0] === "pm-page-tab"));
patcher.lines.push(
  line("pm-source-selector", 0, "pm-source-detail-router", 0),
  line("pm-source-detail-router", 0, "pm-thispatcher", 0),
  line("pm-fx-selector", 0, "pm-fx-detail-router", 0),
  line("pm-fx-detail-router", 0, "pm-thispatcher", 0),
  line("pm-page-load", 0, "pm-page-defer", 0),
  line("pm-page-defer", 0, "pm-page-tab", 0)
);

const oldRecorderIds = new Set([
  "pm-rec-title", "pm-rec-open-label", "pm-rec-start-label", "pm-rec-stop-label",
  "pm-rec-open", "pm-rec-start", "pm-rec-stop", "pm-recorder", "pm-rec-control",
  "pm-rec-file-display", "pm-rec-status-display", "pm-rec-time-display",
]);
const recordIntegrationIds = new Set([
  "pm-record-editor", "pm-record-audition-bypass", "pm-master-monitor",
  "pm-record-quick-record", "pm-record-quick-stop",
  "pm-record-command-record", "pm-record-command-stop",
  "pm-record-quick-status", "pm-record-quick-status-set", "pm-record-quick-time",
]);
const recordInsertAt = patcher.boxes.findIndex((entry) =>
  oldRecorderIds.has(entry.box.id) || recordIntegrationIds.has(entry.box.id)
);
const removedRecordIds = new Set([...oldRecorderIds, ...recordIntegrationIds]);
patcher.boxes = patcher.boxes.filter((entry) => !removedRecordIds.has(entry.box.id));
patcher.lines = patcher.lines.filter((entry) => {
  const { source, destination } = entry.patchline;
  if (removedRecordIds.has(source[0]) || removedRecordIds.has(destination[0])) return false;
  return !(source[0] === "pm-feedback-delay-bypass"
    && ["pm-dac", "pm-meter-l", "pm-meter-r"].includes(destination[0]));
});

const recordBoxes = [
  {
    box: {
      bgmode: 0, border: 0, clickthrough: 0, enablehscroll: 0, enablevscroll: 0,
      hidden: 1, id: "pm-record-editor", lockeddragscroll: 0, lockedsize: 0,
      maxclass: "bpatcher", name: "mt_record_export_editor.maxpat", numinlets: 3, numoutlets: 6,
      offset: [0, 0], outlettype: ["signal", "signal", "", "int", "int", ""],
      patching_rect: [1200, 2080, 960, 528], presentation: 1,
      presentation_rect: [64, 266, 960, 528], varname: "ui_master_record_editor", viewvisibility: 1,
    },
  },
  {
    box: {
      bgmode: 0, border: 0, clickthrough: 0, enablehscroll: 0, enablevscroll: 0,
      hidden: 1, id: "pm-master-monitor", lockeddragscroll: 0, lockedsize: 0,
      maxclass: "bpatcher", name: "mt_master_monitor.maxpat", numinlets: 2, numoutlets: 2,
      offset: [0, 0], outlettype: ["signal", "signal"],
      patching_rect: [2200, 2080, 574, 578], presentation: 1,
      presentation_rect: [1094, 266, 574, 578], varname: "ui_master_monitor", viewvisibility: 1,
    },
  },
  {
    box: {
      id: "pm-record-audition-bypass", maxclass: "newobj", numinlets: 5, numoutlets: 2,
      outlettype: ["signal", "signal"], patching_rect: [1040, 1940, 128, 22], text: "mt_serial_bypass",
    },
  },
  {
    box: {
      id: "pm-record-quick-record", maxclass: "textbutton", numinlets: 1, numoutlets: 1,
      outlettype: ["bang"], mode: 0, text: "●  RECORD", texton: "●  RECORD", rounded: 8,
      bgcolor: [0.42, 0.68, 0.61, 1], bgoncolor: [0.31, 0.56, 0.49, 1],
      textcolor: [1, 1, 1, 1], textoncolor: [1, 1, 1, 1],
      patching_rect: [1200, 2640, 112, 32], presentation: 1,
      presentation_rect: [430, 814, 112, 34], varname: "ui_perform_record",
    },
  },
  {
    box: {
      id: "pm-record-quick-stop", maxclass: "textbutton", numinlets: 1, numoutlets: 1,
      outlettype: ["bang"], mode: 0, text: "■  STOP", texton: "■  STOP", rounded: 8,
      bgcolor: [0.9, 0.93, 0.91, 1], bgoncolor: [0.82, 0.87, 0.84, 1],
      textcolor: [0.12, 0.25, 0.21, 1], textoncolor: [0.12, 0.25, 0.21, 1],
      patching_rect: [1324, 2640, 104, 32], presentation: 1,
      presentation_rect: [554, 814, 96, 34], varname: "ui_perform_stop",
    },
  },
  { box: { id: "pm-record-command-record", maxclass: "message", patching_rect: [1200, 2690, 52, 22], text: "record" } },
  { box: { id: "pm-record-command-stop", maxclass: "message", patching_rect: [1324, 2690, 44, 22], text: "stop" } },
  {
    box: {
      id: "pm-record-quick-status", maxclass: "comment", patching_rect: [1440, 2640, 124, 32],
      presentation: 1, presentation_rect: [682, 814, 160, 34], text: "READY", fontsize: 11,
      textcolor: [0.24, 0.4, 0.34, 1], textjustification: 1, varname: "ui_perform_record_status",
    },
  },
  {
    box: {
      id: "pm-record-quick-status-set", maxclass: "newobj", numinlets: 1, numoutlets: 1,
      outlettype: [""], patching_rect: [1440, 2690, 76, 22], text: "prepend set",
    },
  },
  {
    box: {
      id: "pm-record-quick-time", maxclass: "comment", patching_rect: [1576, 2640, 80, 32],
      presentation: 1, presentation_rect: [1086, 814, 86, 34], text: "00:00", fontsize: 15,
      fontface: 1, textcolor: [0.12, 0.25, 0.21, 1], textjustification: 1,
      varname: "ui_perform_record_time",
    },
  },
];
patcher.boxes.splice(recordInsertAt < 0 ? 33 : recordInsertAt, 0, ...recordBoxes);
patcher.lines.push(
  line("pm-feedback-delay-bypass", 0, "pm-record-editor", 0),
  line("pm-feedback-delay-bypass", 1, "pm-record-editor", 1),
  line("pm-feedback-delay-bypass", 0, "pm-record-audition-bypass", 0),
  line("pm-feedback-delay-bypass", 1, "pm-record-audition-bypass", 1),
  line("pm-record-editor", 0, "pm-record-audition-bypass", 2),
  line("pm-record-editor", 1, "pm-record-audition-bypass", 3),
  line("pm-record-editor", 4, "pm-record-audition-bypass", 4),
  line("pm-record-audition-bypass", 0, "pm-master-monitor", 0),
  line("pm-record-audition-bypass", 1, "pm-master-monitor", 1),
  line("pm-master-monitor", 0, "pm-dac", 0),
  line("pm-master-monitor", 1, "pm-dac", 1),
  line("pm-master-monitor", 0, "pm-meter-l", 0),
  line("pm-master-monitor", 1, "pm-meter-r", 0),
  line("pm-record-quick-record", 0, "pm-record-command-record", 0),
  line("pm-record-command-record", 0, "pm-record-editor", 2),
  line("pm-record-quick-stop", 0, "pm-record-command-stop", 0),
  line("pm-record-command-stop", 0, "pm-record-editor", 2),
  line("pm-record-editor", 2, "pm-record-quick-status-set", 0),
  line("pm-record-quick-status-set", 0, "pm-record-quick-status", 0),
  line("pm-record-editor", 5, "pm-record-quick-time", 0)
);
if (!patcher.dependency_cache.some((entry) => entry.name === "mt_record_export_editor.maxpat")) {
  patcher.dependency_cache.push({
    name: "mt_record_export_editor.maxpat", patcherrelativepath: ".", type: "JSON", implicit: 1,
  });
}
if (!patcher.dependency_cache.some((entry) => entry.name === "mt_master_monitor.maxpat")) {
  patcher.dependency_cache.push({
    name: "mt_master_monitor.maxpat", patcherrelativepath: "mixers", type: "JSON", implicit: 1,
  });
}

patcher.boxes = patcher.boxes.filter((entry) => !entry.box.id.startsWith("pm-fx-trim-"));
patcher.lines = patcher.lines.filter((entry) => {
  const { source, destination } = entry.patchline;
  return !source[0].startsWith("pm-fx-trim-") && !destination[0].startsWith("pm-fx-trim-");
});
const oldFxOutputIds = new Set([
  "pm-fx-output-mixer", "pm-fx-output-load", "pm-fx-output-load-defer", "pm-fx-output-load-trigger",
  "pm-fx-meter-vocoder-enable", "pm-fx-meter-vocoder-l-gate", "pm-fx-meter-vocoder-r-gate",
  ...fxOutputBindings.map(({ key }) => `pm-fx-output-${key}-bind`),
  ...fxOutputBindings.map(({ key }) => `pm-fx-output-${key}-init-once`),
]);
patcher.boxes = patcher.boxes.filter((entry) => !oldFxOutputIds.has(entry.box.id));
patcher.lines = patcher.lines.filter(({ patchline }) =>
  !oldFxOutputIds.has(patchline.source[0]) && !oldFxOutputIds.has(patchline.destination[0])
);
patcher.boxes.push(
  { box: {
    bgmode: 0, border: 0, clickthrough: 0, enablehscroll: 0, enablevscroll: 0,
    hidden: 1, id: "pm-fx-output-mixer", lockeddragscroll: 0, lockedsize: 0,
    maxclass: "bpatcher", name: "mt_fx_output_trim_panel.maxpat", numinlets: 13, numoutlets: 4,
    offset: [0, 0], outlettype: ["", "", "", ""], patching_rect: [2860, 1210, 560, 450],
    presentation: 1, presentation_rect: [1140, 270, 560, 450],
    varname: "ui_fx_output_mixer", viewvisibility: 1,
  } },
  { box: {
    id: "pm-fx-output-load", maxclass: "newobj", numinlets: 1, numoutlets: 1,
    outlettype: ["bang"], patching_rect: [2860, 1680, 62, 22], text: "loadbang",
  } },
  { box: {
    id: "pm-fx-output-load-defer", maxclass: "newobj", numinlets: 1, numoutlets: 1,
    outlettype: ["bang"], patching_rect: [2934, 1680, 62, 22], text: "deferlow",
  } },
  { box: {
    id: "pm-fx-output-load-trigger", maxclass: "newobj", numinlets: 1, numoutlets: 4,
    outlettype: ["bang", "bang", "bang", "bang"], patching_rect: [3008, 1680, 76, 22], text: "t b b b b",
  } },
  { box: {
    id: "pm-fx-meter-vocoder-enable", maxclass: "newobj", numinlets: 1, numoutlets: 2,
    outlettype: ["int", "int"], patching_rect: [3340, 1500, 42, 22], text: "t i i",
  } },
  { box: {
    id: "pm-fx-meter-vocoder-l-gate", maxclass: "newobj", numinlets: 2, numoutlets: 1,
    outlettype: ["signal"], patching_rect: [3340, 1540, 30, 22], text: "*~",
  } },
  { box: {
    id: "pm-fx-meter-vocoder-r-gate", maxclass: "newobj", numinlets: 2, numoutlets: 1,
    outlettype: ["signal"], patching_rect: [3384, 1540, 30, 22], text: "*~",
  } },
  ...fxOutputBindings.map(({ key, bind }, index) => ({ box: {
    id: `pm-fx-output-${key}-bind`, maxclass: "newobj", numinlets: 1, numoutlets: 1,
    outlettype: [""], patching_rect: [2860, 1720 + index * 34, 430, 22],
    text: `pattr fx_output_${key.replaceAll("-", "_")} @bindto ${bind} @autorestore 0 @thru 2`,
  } })),
);
patcher.lines.push(
  line("pm-fx-output-load", 0, "pm-fx-output-load-defer", 0),
  line("pm-fx-output-load-defer", 0, "pm-fx-output-load-trigger", 0),
  ...fxOutputBindings.flatMap(({ key }, index) => [
    line("pm-fx-output-mixer", index, `pm-fx-output-${key}-bind`, 0),
    line(`pm-fx-output-${key}-bind`, 0, "pm-fx-output-mixer", index),
    line("pm-fx-output-load-trigger", fxOutputBindings.length - 1 - index, `pm-fx-output-${key}-bind`, 0),
  ]),
  line("pm-fx-selector", 0, "pm-fx-output-mixer", 4),
  line("p-FX-state-router", 1, "pm-fx-meter-vocoder-enable", 0),
  line("pm-fx-meter-vocoder-enable", 0, "pm-fx-meter-vocoder-l-gate", 1),
  line("pm-fx-meter-vocoder-enable", 1, "pm-fx-meter-vocoder-r-gate", 1),
  line("pm-vocoder", 0, "pm-fx-meter-vocoder-l-gate", 0),
  line("pm-vocoder", 1, "pm-fx-meter-vocoder-r-gate", 0),
  line("pm-fx-meter-vocoder-l-gate", 0, "pm-fx-output-mixer", 5),
  line("pm-fx-meter-vocoder-r-gate", 0, "pm-fx-output-mixer", 6),
  line("pm-bitcrusher", 0, "pm-fx-output-mixer", 7),
  line("pm-bitcrusher", 1, "pm-fx-output-mixer", 8),
  line("pm-multiband", 0, "pm-fx-output-mixer", 9),
  line("pm-multiband", 1, "pm-fx-output-mixer", 10),
  line("pm-feedback-delay", 0, "pm-fx-output-mixer", 11),
  line("pm-feedback-delay", 1, "pm-fx-output-mixer", 12),
);
if (!patcher.dependency_cache.some((entry) => entry.name === "mt_fx_output_trim_panel.maxpat")) {
  patcher.dependency_cache.push({
    name: "mt_fx_output_trim_panel.maxpat", patcherrelativepath: "mixers", type: "JSON", implicit: 1,
  });
}

const boxes = byId();
const pageRouter = boxes.get("pm-page-router").patcher;
const routerBoxes = new Map(pageRouter.boxes.map((entry) => [entry.box.id, entry.box]));
routerBoxes.get("page-msg-0").text = command(
  hideAll,
  rect("ui_gesture_hand", [402, 172, 798, 486]),
  rect("ui_perform_record", [430, 814, 112, 34]),
  rect("ui_perform_stop", [554, 814, 96, 34]),
  rect("ui_perform_record_status", [682, 814, 160, 34]),
  rect("ui_perform_record_time", [1086, 814, 86, 34]),
  rect("ui_output_meter_l", [1402, 789, 18, 58]),
  rect("ui_output_meter_r", [1430, 789, 18, 58]),
  show(
    "ui_perform_shell", "ui_perform_mic", "ui_perform_mic_eq", "ui_perform_file", "ui_perform_grain",
    "ui_perform_vocoder", "ui_perform_bitcrusher", "ui_perform_feedback_delay",
    "ui_perform_multiband", "ui_gesture_hand", "ui_perform_record", "ui_perform_stop",
    "ui_perform_record_status", "ui_perform_record_time",
    "ui_output_meter_l", "ui_output_meter_r",
    "ui_perform_file_play", "ui_perform_file_progress",
    "ui_perform_grain_play", "ui_perform_grain_preset",
    "ui_perform_grain_wet", "ui_perform_grain_density", "ui_perform_grain_size", "ui_perform_grain_pitch",
    "ui_perform_gesture_readout", "ui_perform_gesture_x", "ui_perform_gesture_y",
    "ui_perform_gesture_pinch", "ui_perform_target", "ui_perform_gesture_status",
    "ui_perform_target_vocoder", "ui_perform_target_bitcrusher",
    "ui_perform_target_multiband", "ui_perform_target_delay",
    "ui_perform_monitor_gain", "ui_perform_monitor_mute", "ui_perform_monitor_peak"
  )
);
routerBoxes.get("page-msg-1").text = command(
  hideAll,
  set("ui_source_selector", 0),
  rect("ui_source_mic", [234, 350, 420, 280]),
  rect("ui_source_mixer", [904, 330, 760, 320]),
  show("ui_source_shell", "ui_source_selector", "ui_source_mic", "ui_source_mixer")
);
routerBoxes.get("page-msg-2").text = command(
  hideAll,
  "script sendbox ui_fx_selector 1",
  rect("ui_fx_bitcrusher", [190, 366, 760, 268]),
  rect("ui_fx_output_mixer", [1140, 270, 560, 450]),
  show("ui_fx_shell", "ui_fx_selector", "ui_fx_bitcrusher", "ui_fx_output_mixer")
);
routerBoxes.get("page-msg-3").text = command(
  hideAll,
  rect("ui_gesture_hand", [64, 264, 964, 507]),
  rect("ui_gesture_target", [1094, 468, 574, 62]),
  rect("ui_gesture_readout", [1094, 262, 574, 60]),
  rect("ui_gesture_input_x", [1110, 694, 130, 30]),
  rect("ui_gesture_input_y", [1298, 694, 130, 30]),
  rect("ui_gesture_input_pinch", [1486, 694, 130, 30]),
  rect("ui_gesture_slot1_label", [1110, 776, 170, 22]),
  rect("ui_gesture_slot1", [1110, 804, 130, 30]),
  rect("ui_gesture_slot2_label", [1298, 776, 170, 22]),
  rect("ui_gesture_slot2", [1298, 804, 130, 30]),
  rect("ui_gesture_slot3_label", [1486, 776, 170, 22]),
  rect("ui_gesture_slot3", [1486, 804, 130, 30]),
  rect("ui_gesture_status", [1094, 846, 554, 34]),
  show(
    "ui_gesture_shell", "ui_gesture_hand", "ui_gesture_target", "ui_gesture_readout",
    "ui_gesture_input_x", "ui_gesture_input_y", "ui_gesture_input_pinch",
    "ui_gesture_slot1", "ui_gesture_slot1_label",
    "ui_gesture_slot2", "ui_gesture_slot2_label", "ui_gesture_slot3", "ui_gesture_slot3_label",
    "ui_gesture_status"
  )
);
routerBoxes.get("page-msg-4").text = command(
  hideAll,
  rect("ui_master_record_editor", [64, 266, 960, 528]),
  rect("ui_master_monitor", [1094, 266, 574, 578]),
  show(
    "ui_master_shell", "ui_master_record_editor", "ui_master_monitor"
  )
);

function splitPageCommands(index, chunkSize = 20) {
  const prefix = `page-msg-${index}`;
  const commands = routerBoxes.get(prefix).text.split(", ");
  const chunks = [];
  for (let offset = 0; offset < commands.length; offset += chunkSize) {
    chunks.push(commands.slice(offset, offset + chunkSize));
  }

  pageRouter.boxes = pageRouter.boxes.filter((entry) => {
    const id = entry.box.id;
    return id !== `page-trigger-${index}` && !id.startsWith(`${prefix}-chunk-`);
  });
  pageRouter.lines = pageRouter.lines.filter((entry) => {
    const patchline = entry.patchline;
    const source = patchline.source[0];
    const destination = patchline.destination[0];
    if (source === "page-select" && patchline.source[1] === index) return false;
    return source !== prefix
      && destination !== prefix
      && source !== `page-trigger-${index}`
      && destination !== `page-trigger-${index}`
      && !source.startsWith(`${prefix}-chunk-`)
      && !destination.startsWith(`${prefix}-chunk-`);
  });

  const base = pageRouter.boxes.find((entry) => entry.box.id === prefix).box;
  base.text = chunks[0].join(", ");
  base.patching_rect = [170, 110 + index * 54, 720, 36];

  const triggerId = `page-trigger-${index}`;
  pageRouter.boxes.push({
    box: {
      id: triggerId,
      maxclass: "newobj",
      numinlets: 1,
      numoutlets: chunks.length,
      outlettype: chunks.map(() => "bang"),
      patching_rect: [120, 110 + index * 54, 42, 22],
      text: `t ${chunks.map(() => "b").join(" ")}`,
    },
  });
  pageRouter.lines.push(line("page-select", index, triggerId, 0));

  chunks.forEach((chunk, chunkIndex) => {
    const messageId = chunkIndex === 0 ? prefix : `${prefix}-chunk-${chunkIndex}`;
    if (chunkIndex > 0) {
      pageRouter.boxes.push({
        box: {
          id: messageId,
          maxclass: "message",
          numinlets: 2,
          numoutlets: 1,
          outlettype: [""],
          patching_rect: [170, 110 + index * 54 + chunkIndex * 38, 720, 36],
          text: chunk.join(", "),
        },
      });
    }
    pageRouter.lines.push(
      line(triggerId, chunks.length - 1 - chunkIndex, messageId, 0),
      line(messageId, 0, "page-out", 0)
    );
  });
}

for (let index = 0; index < 5; index += 1) splitPageCommands(index);

const oldShells = new Set([
  "source_detail_shell_v1.png", "source_detail_shell_v2.png", "fx_detail_shell_v1.png", "fx_detail_shell_v2.png",
  "fx_detail_shell_v3.png", "gesture_detail_shell_v1.png", "gesture_detail_shell_v2.png",
  "master_detail_shell_v1.png", "master_detail_shell_v2.png",
]);
patcher.dependency_cache = patcher.dependency_cache.filter((entry) => !oldShells.has(entry.name));
for (const name of [
  "source_detail_shell_v3.png", "fx_detail_shell_v4.png",
  "gesture_detail_shell_v3.png", "master_detail_shell_v3.png",
]) {
  if (!patcher.dependency_cache.some((entry) => entry.name === name)) {
    patcher.dependency_cache.push({ bootpath: "~/Documents/maxmsp插件制作/geehon-motion-system/assets/ui", name, type: "PNG " });
  }
}

function shellSvg({ title, subtitle, panels, footer }) {
  const panelMarkup = panels.map(({ x, y, width, height, label, tint = "#ffffff" }) => `
  <rect x="${x}" y="${y}" width="${width}" height="${height}" rx="8" fill="${tint}" stroke="#c4d2ca"/>
  <text x="${x + 18}" y="${y + 30}" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="13" font-weight="600" fill="#456156">${label}</text>`).join("");
  const footerMarkup = footer ? `
  <line x1="48" y1="785" x2="1682" y2="785" stroke="#d2ded7"/>
  <text x="48" y="802" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" fill="#7b9087">${footer}</text>` : "";
  return `<svg xmlns="http://www.w3.org/2000/svg" width="1732" height="845" viewBox="0 0 1732 845">
  <rect width="1732" height="845" fill="#eef4ef"/>
  <rect x="22" y="20" width="1688" height="790" rx="10" fill="#f9fbf8" stroke="#bfd0c6" stroke-width="2"/>
  <text x="48" y="62" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="24" font-weight="500" fill="#243f35">${title}</text>
  <text x="48" y="85" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="11" letter-spacing="1.2" fill="#7b9087">${subtitle}</text>
  ${panelMarkup}
  ${footerMarkup}
</svg>`;
}

function gestureShellSvg() {
  return `<svg xmlns="http://www.w3.org/2000/svg" width="1732" height="845" viewBox="0 0 1732 845">
  <rect width="1732" height="845" fill="#eef4ef"/>
  <text x="40" y="55" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="32" font-weight="600" fill="#21483b">GESTURE</text>
  <text x="40" y="82" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="12" letter-spacing="1.5" fill="#7b968d">LIVE CONTROL / TARGET FEEDBACK / PARAMETER MAPPING</text>
  <rect x="1490" y="28" width="202" height="42" rx="9" fill="#f9fbf8" stroke="#c6d4cc"/>
  <text x="1510" y="54" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="11" letter-spacing="1" fill="#7b968d">FIST = HOLD PARAMETERS</text>
  <line x1="40" y1="96" x2="1692" y2="96" stroke="#c8d7cf"/>

  <rect x="40" y="116" width="1010" height="685" rx="11" fill="#f9fbf8" stroke="#c4d2ca"/>
  <text x="64" y="150" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="14" font-weight="600" letter-spacing=".6" fill="#355b4e">CAMERA / CONTROL WORKSPACE</text>
  <text x="786" y="150" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" letter-spacing="1" fill="#829990">LEFT: TARGET · RIGHT: PARAMETERS</text>

  <rect x="1070" y="116" width="622" height="180" rx="11" fill="#f9fbf8" stroke="#c4d2ca"/>
  <text x="1094" y="150" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="14" font-weight="600" letter-spacing=".6" fill="#355b4e">GESTURE READ</text>

  <rect x="1070" y="316" width="622" height="150" rx="11" fill="#f9fbf8" stroke="#c4d2ca"/>
  <text x="1094" y="352" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="14" font-weight="600" letter-spacing=".6" fill="#355b4e">CONTROL TARGET</text>
  <text x="1514" y="352" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" letter-spacing="1" fill="#829990">MANUAL OR GESTURE</text>

  <rect x="1070" y="486" width="622" height="315" rx="11" fill="#f9fbf8" stroke="#c4d2ca"/>
  <text x="1094" y="520" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="14" font-weight="600" letter-spacing=".6" fill="#355b4e">PARAMETER MAPPING</text>
  <text x="1094" y="556" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" letter-spacing="1" fill="#829990">GESTURE INPUT DATA</text>
  <rect x="1094" y="566" width="178" height="72" rx="8" fill="#f1f5f2" stroke="#ccd9d2"/>
  <rect x="1282" y="566" width="178" height="72" rx="8" fill="#f1f5f2" stroke="#ccd9d2"/>
  <rect x="1470" y="566" width="178" height="72" rx="8" fill="#f1f5f2" stroke="#ccd9d2"/>
  <text x="1110" y="589" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" letter-spacing=".8" fill="#789087">X AXIS</text>
  <text x="1298" y="589" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" letter-spacing=".8" fill="#789087">Y AXIS</text>
  <text x="1486" y="589" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" letter-spacing=".8" fill="#789087">PINCH</text>
  <text x="1094" y="660" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" letter-spacing="1" fill="#829990">MAPPED PARAMETERS</text>
  <rect x="1094" y="670" width="178" height="70" rx="8" fill="#fff9e9" stroke="#ecc557"/>
  <rect x="1282" y="670" width="178" height="70" rx="8" fill="#fff9e9" stroke="#ecc557"/>
  <rect x="1470" y="670" width="178" height="70" rx="8" fill="#fff9e9" stroke="#ecc557"/>
  <rect x="1094" y="750" width="554" height="34" rx="7" fill="#21483b"/>
  </svg>`;
}

const svgs = {
  source_detail_shell_v3: shellSvg({
    title: "SOURCE", subtitle: "INPUT DETAIL / SOURCE MIX / DRY BUS",
    panels: [
      { x: 38, y: 120, width: 812, height: 680, label: "SELECTED SOURCE" },
      { x: 874, y: 120, width: 820, height: 680, label: "SOURCE MIXER / DRY BUS", tint: "#f3f7f3" },
    ],
  }),
  fx_detail_shell_v4: shellSvg({
    title: "FX", subtitle: "EFFECT DETAIL / SERIAL CHAIN / OUTPUT LEVELS",
    panels: [
      { x: 22, y: 120, width: 1116, height: 680, label: "SELECTED EFFECT" },
      { x: 1158, y: 120, width: 536, height: 680, label: "FX OUTPUT LEVELS · SERIAL STAGES", tint: "#f3f7f3" },
    ],
  }),
  gesture_detail_shell_v3: gestureShellSvg(),
  master_detail_shell_v3: shellSvg({
    title: "MASTER", subtitle: "RECORD / EDIT / EXPORT / FINAL LISTENING",
    panels: [
      { x: 40, y: 116, width: 1010, height: 685, label: "RECORD / EXPORT EDITOR" },
      { x: 1070, y: 116, width: 622, height: 685, label: "MASTER MONITOR", tint: "#f3f7f3" },
    ],
    footer: "RECORD TAP: POST-FX / PRE-MONITOR · WAV · 48 kHz · 24-bit",
  }),
};
for (const [name, svg] of Object.entries(svgs)) {
  fs.writeFileSync(path.join(assetDir, `${name}.svg`), svg);
}

fs.writeFileSync(patchPath, `${JSON.stringify(document, null, 2)}\n`);
console.log("Detail pages rebuilt and record editor integrated.");
