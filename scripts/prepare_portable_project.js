const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");

const runtimePatchers = [
  "patchers/mt_portfolio_main.maxpat",
  "patchers/inputs/mt_input_mic_ui.maxpat",
  "patchers/inputs/mt_input_file_ui.maxpat",
  "patchers/inputs/mt_input_granular_ui.maxpat",
  "patchers/mixers/mt_input_mixer_ui.maxpat",
  "patchers/mixers/mt_fx_return_mixer.maxpat",
  "patchers/effects/mt_mod_vocoder.maxpat",
  "patchers/effects/mt_mod_bitcrusher.maxpat",
  "patchers/effects/mt_mod_feedback_delay.maxpat",
  "patchers/effects/mt_mod_multiband_filter_v2.maxpat",
  "patchers/control/mt_control_hand_jweb.maxpat",
  "patchers/control/mt_control_hand_stub.maxpat",
  "patchers/dsp/mt_granular_synth.maxpat",
  "patchers/dsp/mt_grain_voice.maxpat",
  "patchers/dsp/mt_vocoder_pfft.maxpat",
];

function removeLegacyBootpaths(relativePath) {
  const filePath = path.join(root, relativePath);
  const source = fs.readFileSync(filePath, "utf8");
  const updated = source.replace(
    /^\s*"bootpath"\s*:\s*"~\/Documents\/maxmsp插件制作\/gesture_input_system",\r?\n/gm,
    ""
  );
  JSON.parse(updated);
  if (updated !== source) fs.writeFileSync(filePath, updated, "utf8");
}

function newObject(id, maxclass, text, rect, extra = {}) {
  const box = {
    id,
    maxclass,
    numinlets: maxclass === "message" ? 2 : 1,
    numoutlets: 1,
    outlettype: [""],
    patching_rect: rect,
    ...extra,
  };
  if (text) box.text = text;
  return { box };
}

function addPortableHandTrackerPath() {
  const relativePath = "patchers/control/mt_control_hand_jweb.maxpat";
  const filePath = path.join(root, relativePath);
  const document = JSON.parse(fs.readFileSync(filePath, "utf8"));
  const patcher = document.patcher;
  const boxes = patcher.boxes;
  const lines = patcher.lines;
  const ids = new Set(boxes.map((entry) => entry.box.id));

  const jweb = boxes.find((entry) => entry.box.id === "hp-jweb");
  if (!jweb) throw new Error("hp-jweb object is missing");
  delete jweb.box.url;

  const additions = [
    newObject("hp-path-note", "comment", null, [1300, 95, 520, 22], {
      numoutlets: 0,
      text: "Portable startup: resolve the local hand tracker from the Max Project root.",
    }),
    newObject("hp-path-load", "newobj", "loadbang", [1300, 130, 70, 22], {
      outlettype: ["bang"],
    }),
    newObject(
      "hp-path-project",
      "message",
      "Project:/web/hand-landmarker/jweb-hands-landmarker.html",
      [1300, 165, 350, 22]
    ),
    newObject("hp-path-absolute", "newobj", "absolutepath", [1300, 200, 95, 22]),
    newObject("hp-path-fileurl", "newobj", "sprintf file://%s", [1300, 235, 105, 22]),
    newObject(
      "hp-path-symbol",
      "newobj",
      "tosymbol @separator \" \"",
      [1300, 270, 145, 22]
    ),
    newObject("hp-path-url", "newobj", "prepend url", [1300, 305, 85, 22]),
  ];

  for (const entry of additions) {
    if (!ids.has(entry.box.id)) boxes.push(entry);
  }

  const connections = [
    ["hp-path-load", "hp-path-project"],
    ["hp-path-project", "hp-path-absolute"],
    ["hp-path-absolute", "hp-path-fileurl"],
    ["hp-path-fileurl", "hp-path-symbol"],
    ["hp-path-symbol", "hp-path-url"],
    ["hp-path-url", "hp-jweb"],
  ];

  for (const [source, destination] of connections) {
    const exists = lines.some(
      (entry) =>
        entry.patchline.source[0] === source &&
        entry.patchline.destination[0] === destination
    );
    if (!exists) {
      lines.push({
        patchline: {
          source: [source, 0],
          destination: [destination, 0],
          color: [0.302, 0.651, 1.0, 1.0],
        },
      });
    }
  }

  fs.writeFileSync(filePath, `${JSON.stringify(document, null, 2)}\n`, "utf8");
}

for (const relativePath of runtimePatchers) removeLegacyBootpaths(relativePath);
addPortableHandTrackerPath();

console.log("PASS: active patchers use project-local dependency metadata");
