const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const mainPath = path.join(root, "patchers", "mt_portfolio_main.maxpat");
const handPath = path.join(root, "patchers", "control", "mt_control_hand_jweb.maxpat");

function read(file) {
  return JSON.parse(fs.readFileSync(file, "utf8"));
}

function write(file, value) {
  fs.writeFileSync(file, `${JSON.stringify(value, null, 2)}\n`);
}

function boxMap(patcher) {
  return new Map(patcher.boxes.map((entry) => [entry.box.id, entry.box]));
}

function setPresentation(box, rect, visible = true) {
  box.presentation = visible ? 1 : 0;
  if (rect) box.presentation_rect = rect;
}

function patchline(source, outlet, destination, inlet) {
  return {
    patchline: {
      color: [0.44, 0.72, 1, 1],
      source: [source, outlet],
      destination: [destination, inlet],
    },
  };
}

function quickStatePatcher(states) {
  const boxes = [];
  const lines = [];

  states.forEach((state, index) => {
    const x = 24 + index * 110;
    boxes.push(
      { box: { id: `quick-in-${index}`, index: index + 1, maxclass: "inlet", numinlets: 0, numoutlets: 1, outlettype: [""], patching_rect: [x, 28, 30, 30] } },
      { box: { id: `quick-send-${index}`, maxclass: "newobj", numinlets: 1, numoutlets: 0, patching_rect: [x, 82, 100, 22], text: `s ${state}` } },
      { box: { id: `quick-recv-${index}`, maxclass: "newobj", numinlets: 0, numoutlets: 1, outlettype: [""], patching_rect: [x, 130, 100, 22], text: `r ${state}` } },
      { box: { id: `quick-set-${index}`, maxclass: "newobj", numinlets: 1, numoutlets: 1, outlettype: [""], patching_rect: [x, 170, 80, 22], text: "prepend set" } },
      { box: { id: `quick-out-${index}`, index: index + 1, maxclass: "outlet", numinlets: 1, numoutlets: 0, patching_rect: [x, 220, 30, 30] } },
    );
    lines.push(
      patchline(`quick-in-${index}`, 0, `quick-send-${index}`, 0),
      patchline(`quick-recv-${index}`, 0, `quick-set-${index}`, 0),
      patchline(`quick-set-${index}`, 0, `quick-out-${index}`, 0),
    );
  });

  return {
    fileversion: 1,
    appversion: { major: 9, minor: 0, revision: 5, architecture: "x64", modernui: 1 },
    classnamespace: "box",
    rect: [120, 120, 700, 290],
    gridsize: [15, 15],
    boxes,
    lines,
  };
}

function quickButton(id, varname, rect, patchX, patchY) {
  return {
    box: {
      id,
      maxclass: "textbutton",
      numinlets: 1,
      numoutlets: 1,
      outlettype: ["int"],
      mode: 1,
      text: "OFF",
      texton: "ON",
      rounded: 14,
      bgcolor: [0.88, 0.92, 0.89, 1],
      bgoncolor: [0.3, 0.56, 0.45, 1],
      textcolor: [0.35, 0.46, 0.41, 1],
      textoncolor: [0.97, 0.99, 0.97, 1],
      patching_rect: [patchX, patchY, 48, 28],
      presentation: 1,
      presentation_rect: rect,
      varname,
    },
  };
}

function updateHand() {
  const document = read(handPath);
  const patcher = document.patcher;
  const boxes = boxMap(patcher);

  patcher.rect = [80, 80, 798, 420];
  patcher.locked_bgcolor = [0.949, 0.969, 0.953, 1];
  patcher.bgcolor = [0.949, 0.969, 0.953, 1];

  const layout = {
    "hp-jweb-reload": [12, 12, 60, 22],
    "hp-jweb-devices": [80, 12, 112, 22],
    "hp-camera-menu": [200, 12, 214, 22],
    "hp-camera-set": [422, 12, 120, 22],
    "hj-mirror-toggle": [548, 12, 22, 22],
    "hj-mirror-label": [578, 14, 48, 18],
    "hj-free-hand-label": [638, 14, 62, 18],
    "hj-free-hand-menu": [708, 12, 78, 22],
    "hp-jweb": [12, 50, 774, 358],
  };

  for (const box of boxes.values()) {
    if (layout[box.id]) setPresentation(box, layout[box.id]);
    else if (box.presentation) setPresentation(box, null, false);
  }

  boxes.get("hj-mirror-label").text = "Mirror";

  write(handPath, document);
}

function updateMain() {
  const document = read(mainPath);
  const patcher = document.patcher;
  const boxes = boxMap(patcher);

  const modulePaths = {
    "pm-mic": "mt_input_mic_ui.maxpat",
    "pm-file": "mt_input_file_ui.maxpat",
    "pm-grain": "mt_input_granular_ui.maxpat",
    "pm-mixer": "mt_input_mixer_ui.maxpat",
    "pm-vocoder": "mt_mod_vocoder.maxpat",
    "pm-fx-return": "mt_fx_return_mixer.maxpat",
    "pm-hand": "mt_control_hand_jweb.maxpat",
    "pm-bitcrusher": "mt_mod_bitcrusher.maxpat",
    "pm-feedback-delay": "mt_mod_feedback_delay.maxpat",
    "pm-multiband": "mt_mod_multiband_filter_v2.maxpat",
  };
  for (const [id, name] of Object.entries(modulePaths)) {
    boxes.get(id).name = name;
  }
  boxes.get("pm-hand").numoutlets = 5;
  boxes.get("pm-hand").outlettype = ["", "", "", "", ""];
  patcher.boxes = patcher.boxes.filter((entry) => entry.box.id !== "pm-project-paths");
  patcher.boxes.unshift({
    box: {
      id: "pm-project-paths",
      maxclass: "newobj",
      numinlets: 1,
      numoutlets: 0,
      patching_rect: [24, 24, 720, 22],
      text: "declare -path inputs -path mixers -path effects -path control -path dsp -path ../javascript -path ../assets/ui",
    },
  });

  const oldIds = new Set([
    "pm-perform-bg",
    "pm-perform-mic",
    "pm-perform-file",
    "pm-perform-grain",
    "pm-perform-vocoder",
    "pm-perform-bitcrusher",
    "pm-perform-feedback-delay",
    "pm-perform-multiband",
    "pm-perform-chop",
    "pm-perform-tremolo",
    "pm-perform-state",
  ]);
  patcher.boxes = patcher.boxes.filter((entry) => !oldIds.has(entry.box.id));
  patcher.lines = patcher.lines.filter((entry) =>
    !oldIds.has(entry.patchline.source[0]) && !oldIds.has(entry.patchline.destination[0])
  );

  const shellIndex = patcher.boxes.findIndex((entry) => entry.box.id === "pm-shell-bg");
  // Max draws background objects in reverse list order. Insert the page skin
  // before the persistent shell so it stays above the shell but below controls.
  patcher.boxes.splice(shellIndex, 0, {
    box: {
      autofit: 1,
      background: 1,
      forceaspect: 1,
      id: "pm-perform-bg",
      ignoreclick: 1,
      maxclass: "fpic",
      numinlets: 1,
      numoutlets: 1,
      outlettype: ["jit_matrix"],
      patching_rect: [1980, 20, 346, 169],
      pic: "perform_shell_v2.png",
      presentation: 1,
      presentation_rect: [0, 96, 1732, 845],
      varname: "ui_perform_shell",
    },
  });

  const quick = [
    ["pm-perform-mic", "ui_perform_mic", [282, 256, 48, 28]],
    ["pm-perform-file", "ui_perform_file", [282, 380, 48, 28]],
    ["pm-perform-grain", "ui_perform_grain", [282, 504, 48, 28]],
    ["pm-perform-vocoder", "ui_perform_vocoder", [1620, 238, 48, 28]],
    ["pm-perform-bitcrusher", "ui_perform_bitcrusher", [1620, 337, 48, 28]],
    ["pm-perform-feedback-delay", "ui_perform_feedback_delay", [1620, 436, 48, 28]],
    ["pm-perform-multiband", "ui_perform_multiband", [1620, 535, 48, 28]],
  ];
  quick.forEach(([id, varname, rect], index) => {
    patcher.boxes.push(quickButton(id, varname, rect, 1860 + index * 72, 980));
  });

  const stateNames = [
    "mt_mic_enable_state",
    "mt_file_enable_state",
    "mt_granular_enable_state",
    "mt_vocoder_enable_state",
    "mt_bitcrusher_enable_state",
    "mt_feedback_delay_enable_state",
    "mt_multiband_filter_enable_state",
  ];
  patcher.boxes.push({
    box: {
      id: "pm-perform-state",
      maxclass: "newobj",
      numinlets: 7,
      numoutlets: 7,
      outlettype: ["", "", "", "", "", "", ""],
      patcher: quickStatePatcher(stateNames),
      patching_rect: [1860, 1040, 150, 22],
      text: "p Perform_quick_state",
    },
  });

  quick.forEach(([id], index) => {
    patcher.lines.push(
      patchline(id, 0, "pm-perform-state", index),
      patchline("pm-perform-state", index, id, 0),
    );
  });

  const refreshed = boxMap(patcher);
  setPresentation(refreshed.get("pm-hand"), [402, 222, 798, 420]);
  setPresentation(refreshed.get("pm-rec-open"), [760, 842, 82, 22]);
  setPresentation(refreshed.get("pm-rec-start"), [850, 842, 58, 22]);
  setPresentation(refreshed.get("pm-rec-stop"), [916, 842, 50, 22]);
  setPresentation(refreshed.get("pm-rec-file-display"), [974, 842, 250, 22]);
  setPresentation(refreshed.get("pm-rec-status-display"), [760, 868, 110, 20]);
  setPresentation(refreshed.get("pm-rec-time-display"), [880, 868, 80, 20]);
  setPresentation(refreshed.get("pm-meter-l"), [1284, 844, 164, 12]);
  setPresentation(refreshed.get("pm-meter-r"), [1284, 864, 164, 12]);
  setPresentation(refreshed.get("pm-dac"), [1584, 826, 42, 42]);
  setPresentation(refreshed.get("pm-output-label"), [1464, 878, 114, 18]);

  patcher.dependency_cache = patcher.dependency_cache || [];
  const dependencyPaths = {
    "file_panel_v1.png": "../assets/ui",
    "fx_return_mixer_panel_v1.png": "../assets/ui",
    "granular_knob_gain_v1.png": "../assets/ui",
    "granular_knob_v1.png": "../assets/ui",
    "granular_panel_v1.png": "../assets/ui",
    "input_mixer_panel_v1.png": "../assets/ui",
    "mic_panel_v1.png": "../assets/ui",
    "mt_control_hand_jweb.maxpat": "control",
    "mt_fx_return_mixer.maxpat": "mixers",
    "mt_grain_voice.maxpat": "dsp",
    "mt_granular_synth.maxpat": "dsp",
    "mt_input_file_ui.maxpat": "inputs",
    "mt_input_granular_ui.maxpat": "inputs",
    "mt_input_mic_ui.maxpat": "inputs",
    "mt_input_mixer_ui.maxpat": "mixers",
    "mt_mod_vocoder.maxpat": "effects",
    "mt_vocoder_pfft.maxpat": "effects",
  };
  for (const item of patcher.dependency_cache) {
    if (dependencyPaths[item.name]) item.patcherrelativepath = dependencyPaths[item.name];
  }
  const performAsset = patcher.dependency_cache.find((item) => item.name === "perform_shell_v2.png");
  if (performAsset) performAsset.patcherrelativepath = "../assets/ui";
  else patcher.dependency_cache.unshift({
    name: "perform_shell_v2.png",
    patcherrelativepath: "../assets/ui",
    type: "PNG",
    implicit: 1,
  });
  const shellAsset = patcher.dependency_cache.find((item) => item.name === "main_shell_v1.png");
  if (shellAsset) shellAsset.patcherrelativepath = "../assets/ui";
  else patcher.dependency_cache.unshift({
    name: "main_shell_v1.png",
    patcherrelativepath: "../assets/ui",
    type: "PNG",
    implicit: 1,
  });

  write(mainPath, document);
}

updateHand();
updateMain();
console.log("Perform UI rebuilt.");
