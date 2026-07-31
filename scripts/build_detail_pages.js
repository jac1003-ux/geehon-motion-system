const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(root, "patchers", "mt_portfolio_main.maxpat");
const assetDir = path.join(root, "assets", "ui");
const document = JSON.parse(fs.readFileSync(patchPath, "utf8"));
const patcher = document.patcher;

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

function menu(id, varname, items, x, presentationRect) {
  return {
    hidden: 1,
    id,
    items: items.flatMap((item, index) => index ? [",", item] : [item]),
    maxclass: "umenu",
    numinlets: 1,
    numoutlets: 3,
    outlettype: ["int", "", ""],
    parameter_enable: 0,
    patching_rect: [x, 220, 220, 22],
    presentation: 1,
    presentation_rect: presentationRect,
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

const hideVarnames = [
  "ui_source_shell", "ui_fx_shell", "ui_gesture_shell", "ui_master_shell",
  "ui_source_selector", "ui_fx_selector",
  "ui_gesture_target_label", "ui_gesture_target", "ui_gesture_status", "ui_gesture_zone_note",
  "ui_perform_shell", "ui_perform_mic", "ui_perform_file", "ui_perform_grain",
  "ui_perform_vocoder", "ui_perform_bitcrusher", "ui_perform_feedback_delay", "ui_perform_multiband",
  "ui_source_mic", "ui_source_file", "ui_source_grain", "ui_source_mixer",
  "ui_fx_vocoder", "ui_fx_bitcrusher", "ui_fx_feedback_delay", "ui_fx_multiband",
  "ui_gesture_hand", "ui_gesture_map_title",
  "ui_gesture_slot1", "ui_gesture_slot1_label", "ui_gesture_slot2", "ui_gesture_slot2_label",
  "ui_gesture_slot3", "ui_gesture_slot3_label", "ui_gesture_slot4", "ui_gesture_slot4_label",
  "ui_master_returns", "ui_util_eq_title", "ui_util_eq_open",
  "ui_util_rec_title", "ui_util_rec_open_label", "ui_util_rec_start_label", "ui_util_rec_stop_label",
  "ui_util_rec_open", "ui_util_rec_start", "ui_util_rec_stop",
  "ui_util_rec_file", "ui_util_rec_status", "ui_util_rec_time",
  "ui_output_meter_l", "ui_output_meter_r", "ui_output_dac", "ui_output_label",
];
const hideAll = hideVarnames.map((name) => `script hide ${name}`);
const show = (...names) => names.map((name) => `script show ${name}`);
const rect = (name, values) => `script sendbox ${name} presentation_rect ${values.join(" ")}`;
const set = (name, value) => `script sendbox ${name} set ${value}`;
const command = (...parts) => [...new Set(parts.flat().filter(Boolean))].join(", ");

replaceBox(fpic("pm-source-bg", "source_detail_shell_v1.png", "ui_source_shell", 2360));
replaceBox(fpic("pm-fx-bg", "fx_detail_shell_v1.png", "ui_fx_shell", 2720));
replaceBox(fpic("pm-gesture-bg", "gesture_detail_shell_v1.png", "ui_gesture_shell", 3080));
replaceBox(fpic("pm-master-bg", "master_detail_shell_v1.png", "ui_master_shell", 3440));
replaceBox(menu(
  "pm-source-selector", "ui_source_selector",
  ["Mic Input", "File Player", "Granular"], 2360, [574, 136, 220, 28]
));
replaceBox(menu(
  "pm-fx-selector", "ui_fx_selector",
  ["Vocoder", "Bitcrusher", "Feedback Delay", "Multiband Filter"], 2720, [574, 136, 220, 28]
));

const sourceChoices = [
  command(
    ["script hide ui_source_file", "script hide ui_source_grain"],
    rect("ui_source_mic", [225, 300, 420, 280]),
    "script show ui_source_mic"
  ),
  command(
    ["script hide ui_source_mic", "script hide ui_source_grain"],
    rect("ui_source_file", [175, 270, 520, 340]),
    "script show ui_source_file"
  ),
  command(
    ["script hide ui_source_mic", "script hide ui_source_file"],
    rect("ui_source_grain", [75, 230, 720, 440]),
    "script show ui_source_grain"
  ),
];
const fxChoices = [
  command(
    ["script hide ui_fx_bitcrusher", "script hide ui_fx_feedback_delay", "script hide ui_fx_multiband"],
    rect("ui_fx_vocoder", [55, 300, 760, 225]),
    "script show ui_fx_vocoder"
  ),
  command(
    ["script hide ui_fx_vocoder", "script hide ui_fx_feedback_delay", "script hide ui_fx_multiband"],
    rect("ui_fx_bitcrusher", [55, 278, 760, 268]),
    "script show ui_fx_bitcrusher"
  ),
  command(
    ["script hide ui_fx_vocoder", "script hide ui_fx_bitcrusher", "script hide ui_fx_multiband"],
    rect("ui_fx_feedback_delay", [10, 278, 850, 268]),
    "script show ui_fx_feedback_delay"
  ),
  command(
    ["script hide ui_fx_vocoder", "script hide ui_fx_bitcrusher", "script hide ui_fx_feedback_delay"],
    rect("ui_fx_multiband", [38, 200, 794, 500]),
    "script show ui_fx_multiband"
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

const boxes = byId();
const pageRouter = boxes.get("pm-page-router").patcher;
const routerBoxes = new Map(pageRouter.boxes.map((entry) => [entry.box.id, entry.box]));
routerBoxes.get("page-msg-0").text = command(
  hideAll,
  rect("ui_gesture_hand", [402, 222, 798, 420]),
  rect("ui_util_rec_title", [760, 842, 300, 20]),
  rect("ui_util_rec_open", [760, 876, 110, 28]),
  rect("ui_util_rec_start", [880, 876, 82, 28]),
  rect("ui_util_rec_stop", [972, 876, 70, 28]),
  rect("ui_util_rec_file", [760, 916, 320, 24]),
  rect("ui_util_rec_status", [760, 956, 120, 24]),
  rect("ui_util_rec_time", [900, 956, 90, 24]),
  rect("ui_output_meter_l", [1230, 918, 300, 14]),
  rect("ui_output_meter_r", [1230, 948, 300, 14]),
  rect("ui_output_dac", [1570, 908, 52, 52]),
  rect("ui_output_label", [1230, 978, 180, 20]),
  show(
    "ui_perform_shell", "ui_perform_mic", "ui_perform_file", "ui_perform_grain",
    "ui_perform_vocoder", "ui_perform_bitcrusher", "ui_perform_feedback_delay",
    "ui_perform_multiband", "ui_gesture_hand", "ui_util_rec_title",
    "ui_util_rec_open", "ui_util_rec_start", "ui_util_rec_stop",
    "ui_util_rec_file", "ui_util_rec_status", "ui_util_rec_time",
    "ui_output_meter_l", "ui_output_meter_r", "ui_output_dac", "ui_output_label"
  )
);
routerBoxes.get("page-msg-1").text = command(
  hideAll,
  set("ui_source_selector", 0),
  rect("ui_source_mic", [225, 300, 420, 280]),
  rect("ui_source_mixer", [897, 300, 760, 320]),
  show("ui_source_shell", "ui_source_selector", "ui_source_mic", "ui_source_mixer")
);
routerBoxes.get("page-msg-2").text = command(
  hideAll,
  set("ui_fx_selector", 1),
  rect("ui_fx_bitcrusher", [55, 278, 760, 268]),
  rect("ui_master_returns", [824, 300, 905, 300]),
  show("ui_fx_shell", "ui_fx_selector", "ui_fx_bitcrusher", "ui_master_returns")
);
routerBoxes.get("page-msg-3").text = command(
  hideAll,
  rect("ui_gesture_hand", [48, 190, 900, 474]),
  rect("ui_gesture_target_label", [1000, 190, 180, 20]),
  rect("ui_gesture_target", [1000, 216, 620, 28]),
  rect("ui_gesture_map_title", [1000, 278, 520, 22]),
  rect("ui_gesture_slot1", [1000, 326, 96, 24]),
  rect("ui_gesture_slot1_label", [1110, 328, 430, 20]),
  rect("ui_gesture_slot2", [1000, 372, 96, 24]),
  rect("ui_gesture_slot2_label", [1110, 374, 430, 20]),
  rect("ui_gesture_slot3", [1000, 418, 96, 24]),
  rect("ui_gesture_slot3_label", [1110, 420, 430, 20]),
  rect("ui_gesture_slot4", [1000, 464, 96, 24]),
  rect("ui_gesture_slot4_label", [1110, 466, 480, 20]),
  rect("ui_gesture_status", [1000, 536, 520, 28]),
  rect("ui_gesture_zone_note", [1000, 590, 610, 46]),
  show(
    "ui_gesture_shell", "ui_gesture_hand", "ui_gesture_target_label", "ui_gesture_target",
    "ui_gesture_map_title", "ui_gesture_slot1", "ui_gesture_slot1_label",
    "ui_gesture_slot2", "ui_gesture_slot2_label", "ui_gesture_slot3", "ui_gesture_slot3_label",
    "ui_gesture_slot4", "ui_gesture_slot4_label", "ui_gesture_status", "ui_gesture_zone_note"
  )
);
routerBoxes.get("page-msg-4").text = command(
  hideAll,
  rect("ui_master_returns", [92, 300, 905, 300]),
  rect("ui_util_rec_title", [1120, 292, 300, 20]),
  rect("ui_util_rec_open", [1120, 332, 110, 28]),
  rect("ui_util_rec_start", [1240, 332, 82, 28]),
  rect("ui_util_rec_stop", [1332, 332, 70, 28]),
  rect("ui_util_rec_open_label", [1120, 382, 90, 18]),
  rect("ui_util_rec_file", [1120, 406, 440, 24]),
  rect("ui_util_rec_start_label", [1120, 454, 60, 18]),
  rect("ui_util_rec_status", [1120, 478, 140, 24]),
  rect("ui_util_rec_stop_label", [1280, 454, 60, 18]),
  rect("ui_util_rec_time", [1280, 478, 100, 24]),
  rect("ui_output_meter_l", [1120, 602, 400, 14]),
  rect("ui_output_meter_r", [1120, 632, 400, 14]),
  rect("ui_output_dac", [1580, 136, 52, 52]),
  rect("ui_output_label", [1120, 668, 180, 20]),
  show(
    "ui_master_shell", "ui_master_returns", "ui_util_rec_title",
    "ui_util_rec_open_label", "ui_util_rec_start_label", "ui_util_rec_stop_label",
    "ui_util_rec_open", "ui_util_rec_start", "ui_util_rec_stop",
    "ui_util_rec_file", "ui_util_rec_status", "ui_util_rec_time",
    "ui_output_meter_l", "ui_output_meter_r", "ui_output_dac", "ui_output_label"
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

const recorder = boxes.get("pm-rec-control").patcher;
if (!recorder.boxes.some((entry) => entry.box.id === "rc-format-int24")) {
  recorder.boxes.push({
    box: {
      id: "rc-format-int24",
      maxclass: "newobj",
      numinlets: 1,
      numoutlets: 1,
      outlettype: [""],
      patching_rect: [24, 460, 146, 22],
      text: "loadmess samptype int24",
    },
  });
  recorder.lines.push(line("rc-format-int24", 0, "rc-command-out", 0));
}

for (const name of [
  "source_detail_shell_v1.png", "fx_detail_shell_v1.png",
  "gesture_detail_shell_v1.png", "master_detail_shell_v1.png",
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

const svgs = {
  source_detail_shell_v1: shellSvg({
    title: "SOURCE", subtitle: "INPUT SELECTION / DETAILED EDITOR / SOURCE MIX",
    panels: [
      { x: 38, y: 104, width: 794, height: 658, label: "SELECTED SOURCE" },
      { x: 860, y: 104, width: 834, height: 658, label: "SOURCE MIXER", tint: "#f3f7f3" },
    ],
    footer: "MIC / FILE / GRANULAR · SHARED DRY BUS",
  }),
  fx_detail_shell_v1: shellSvg({
    title: "FX", subtitle: "MODULE SELECTION / DETAILED EDITOR / PARALLEL RETURN",
    panels: [
      { x: 38, y: 104, width: 794, height: 658, label: "SELECTED PROCESSOR" },
      { x: 860, y: 104, width: 834, height: 658, label: "FX RETURN MIXER", tint: "#f3f7f3" },
    ],
    footer: null,
  }),
  gesture_detail_shell_v1: shellSvg({
    title: "GESTURE", subtitle: "CAMERA / CONTROL ZONE / TARGET MAPPING / SAFETY CLUTCH",
    panels: [
      { x: 38, y: 104, width: 922, height: 590, label: "CAMERA / CONTROL ZONE" },
      { x: 982, y: 104, width: 712, height: 464, label: "TARGET / MAPPING" },
      { x: 982, y: 588, width: 712, height: 106, label: "CONTROL STATUS", tint: "#f3f7f3" },
    ],
    footer: "PHYSICAL RIGHT: CONTINUOUS CONTROL · PHYSICAL LEFT: HOLD / RELEASE",
  }),
  master_detail_shell_v1: shellSvg({
    title: "MASTER", subtitle: "FX RETURNS / RECORD / EXPORT / MAIN OUTPUT",
    panels: [
      { x: 38, y: 104, width: 1014, height: 658, label: "FX RETURNS" },
      { x: 1076, y: 104, width: 618, height: 658, label: "MASTER OUTPUT / RECORD", tint: "#f3f7f3" },
    ],
    footer: "WAV · 48 kHz · 24-bit · STEREO",
  }),
};
for (const [name, svg] of Object.entries(svgs)) {
  fs.writeFileSync(path.join(assetDir, `${name}.svg`), svg);
}

fs.writeFileSync(patchPath, `${JSON.stringify(document, null, 2)}\n`);
console.log("Detail page UI and 24-bit recorder format applied.");
