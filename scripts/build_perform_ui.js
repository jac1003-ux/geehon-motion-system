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

  patcher.rect = [80, 80, 798, 486];
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
    "hp-jweb": [12, 50, 774, 424],
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
    "pm-hand": "mt_control_hand_jweb.maxpat",
    "pm-bitcrusher": "mt_mod_bitcrusher.maxpat",
    "pm-feedback-delay": "mt_mod_feedback_delay.maxpat",
    "pm-multiband": "mt_mod_multiband_filter_v2.maxpat",
  };
  for (const [id, name] of Object.entries(modulePaths)) {
    boxes.get(id).name = name;
  }
  boxes.get("pm-mic").numinlets = 2;
  boxes.get("pm-file").numoutlets = 3;
  boxes.get("pm-file").outlettype = ["signal", "signal", ""];
  boxes.get("pm-hand").numoutlets = 5;
  boxes.get("pm-hand").outlettype = ["", "", "", "", ""];
  patcher.boxes = patcher.boxes.filter((entry) => entry.box.id !== "pm-project-paths");
  patcher.lines = patcher.lines.filter((entry) =>
    entry.patchline.source[0] !== "pm-project-paths"
    && entry.patchline.destination[0] !== "pm-project-paths"
  );

  const oldIds = new Set([
    "pm-perform-bg",
    "pm-perform-mic",
    "pm-perform-mic-eq",
    "pm-perform-file",
    "pm-perform-grain",
    "pm-perform-vocoder",
    "pm-perform-bitcrusher",
    "pm-perform-feedback-delay",
    "pm-perform-multiband",
    "pm-perform-chop",
    "pm-perform-tremolo",
    "pm-perform-state",
    "pm-perform-dsp", "pm-dsp-select",
    "pm-perform-file-play", "pm-perform-file-progress", "pm-perform-file-play-bind",
    "pm-perform-grain-play", "pm-perform-grain-preset",
    "pm-perform-grain-play-bind", "pm-perform-grain-preset-bind",
    "pm-perform-grain-wet", "pm-perform-grain-density", "pm-perform-grain-size", "pm-perform-grain-pitch",
    "pm-perform-grain-wet-bind", "pm-perform-grain-density-bind",
    "pm-perform-grain-size-bind", "pm-perform-grain-pitch-bind",
    "pm-perform-bind-load", "pm-perform-bind-defer", "pm-perform-bind-trigger",
    "pm-perform-gesture-readout", "pm-perform-gesture-fanout",
    "pm-perform-gesture-x", "pm-perform-gesture-y", "pm-perform-gesture-pinch",
    "pm-perform-target", "pm-perform-gesture-status", "pm-perform-status-fanout",
    "pm-perform-target-vocoder", "pm-perform-target-bitcrusher",
    "pm-perform-target-multiband", "pm-perform-target-delay",
    "pm-perform-target-vocoder-eq", "pm-perform-target-bitcrusher-eq",
    "pm-perform-target-multiband-eq", "pm-perform-target-delay-eq",
    "pm-perform-monitor-gain", "pm-perform-monitor-mute", "pm-perform-monitor-peak",
    "pm-perform-monitor-gain-bind", "pm-perform-monitor-mute-bind", "pm-perform-monitor-peak-bind",
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
      pic: "perform_shell_v4.png",
      presentation: 1,
      presentation_rect: [0, 96, 1732, 845],
      varname: "ui_perform_shell",
    },
  });

  const quick = [
    ["pm-perform-mic", "ui_perform_mic", [290, 294, 48, 28]],
    ["pm-perform-file", "ui_perform_file", [290, 368, 48, 28]],
    ["pm-perform-grain", "ui_perform_grain", [290, 492, 48, 28]],
    ["pm-perform-vocoder", "ui_perform_vocoder", [1616, 258, 48, 28]],
    ["pm-perform-bitcrusher", "ui_perform_bitcrusher", [1616, 357, 48, 28]],
    ["pm-perform-feedback-delay", "ui_perform_feedback_delay", [1616, 555, 48, 28]],
    ["pm-perform-multiband", "ui_perform_multiband", [1616, 456, 48, 28]],
  ];
  quick.forEach(([id, varname, rect], index) => {
    patcher.boxes.push(quickButton(id, varname, rect, 1860 + index * 72, 980));
  });
  patcher.boxes.push({
    box: {
      id: "pm-perform-mic-eq",
      maxclass: "textbutton",
      numinlets: 1,
      numoutlets: 1,
      outlettype: ["bang"],
      mode: 0,
      text: "OPEN EQ",
      rounded: 6,
      bgcolor: [0.92, 0.94, 0.92, 1],
      textcolor: [0.15, 0.28, 0.23, 1],
      patching_rect: [1860, 940, 80, 28],
      presentation: 1,
      presentation_rect: [196, 293, 82, 30],
      varname: "ui_perform_mic_eq",
    },
  });
  patcher.lines.push(patchline("pm-perform-mic-eq", 0, "pm-mic", 1));

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

  const performControls = [
    { id: "pm-perform-dsp", maxclass: "textbutton", numinlets: 1, numoutlets: 1, outlettype: ["int"], mode: 1,
      text: "DSP OFF", texton: "DSP ON", rounded: 9,
      bgcolor: [0.88, 0.92, 0.89, 1], bgoncolor: [0.95, 0.79, 0.3, 1],
      textcolor: [0.12, 0.25, 0.21, 1], textoncolor: [0.12, 0.25, 0.21, 1],
      patching_rect: [1860, 1110, 120, 46], presentation: 1, presentation_rect: [1582, 25, 120, 46],
      varname: "ui_perform_dsp" },
    { id: "pm-dsp-select", maxclass: "newobj", numinlets: 1, numoutlets: 2, outlettype: ["bang", "bang"],
      patching_rect: [1990, 1110, 54, 22], text: "sel 1 0" },
    { id: "pm-perform-file-play", maxclass: "textbutton", numinlets: 1, numoutlets: 1, outlettype: ["int"],
      mode: 1, text: "▶", texton: "❚❚", rounded: 5, patching_rect: [1860, 1170, 32, 28],
      presentation: 1, presentation_rect: [68, 420, 32, 28], varname: "ui_perform_file_play" },
    { id: "pm-perform-file-progress", maxclass: "slider", numinlets: 1, numoutlets: 1, outlettype: ["float"],
      floatoutput: 1, ignoreclick: 1, min: 0, size: 1, patching_rect: [1904, 1170, 150, 10],
      presentation: 1, presentation_rect: [112, 424, 150, 10], varname: "ui_perform_file_progress" },
    { id: "pm-perform-grain-play", maxclass: "textbutton", numinlets: 1, numoutlets: 1, outlettype: ["int"],
      mode: 1, text: "PLAY", texton: "STOP", rounded: 5, patching_rect: [1860, 1210, 46, 28],
      presentation: 1, presentation_rect: [68, 543, 46, 28], varname: "ui_perform_grain_play" },
    { id: "pm-perform-grain-preset", maxclass: "umenu", numinlets: 1, numoutlets: 3, outlettype: ["int", "", ""],
      items: ["Safe Cloud", ",", "Frozen Pad", ",", "Rhythmic Dust"], patching_rect: [1918, 1210, 144, 28],
      presentation: 1, presentation_rect: [126, 543, 144, 28], varname: "ui_perform_grain_preset" },
    ...[
      ["wet", [67, 754, 44, 44]], ["density", [135, 754, 44, 44]],
      ["size", [203, 754, 44, 44]], ["pitch", [271, 754, 44, 44]],
    ].map(([key, presentation_rect], index) => ({
      id: `pm-perform-grain-${key}`, maxclass: "pictctrl", numinlets: 1, numoutlets: 1,
      outlettype: ["int"], frames: 64, mode: 2, multiplier: 1, name: "granular_knob_v1.png",
      range: 255, tracking: 1, trackhorizontal: 1, trackvertical: 1,
      patching_rect: [1860 + index * 56, 1260, 44, 44], presentation: 1, presentation_rect,
      varname: `ui_perform_grain_${key}`,
    })),
    { id: "pm-perform-gesture-readout", maxclass: "comment", numinlets: 1, numoutlets: 0,
      fontsize: 11, fontface: 1, text: "GESTURE READ: --", textcolor: [0.97, 0.99, 0.97, 1],
      patching_rect: [2100, 1170, 202, 36], presentation: 1,
      presentation_rect: [418, 590, 202, 36], varname: "ui_perform_gesture_readout" },
    { id: "pm-perform-gesture-fanout", maxclass: "newobj", numinlets: 1, numoutlets: 2,
      outlettype: ["list", "list"], patching_rect: [2100, 1218, 42, 22], text: "t l l" },
    ...[
      ["x", [418, 628, 92, 24]], ["y", [526, 628, 92, 24]], ["pinch", [634, 628, 110, 24]],
    ].map(([key, presentation_rect], index) => ({
      id: `pm-perform-gesture-${key}`, maxclass: "flonum", numinlets: 1, numoutlets: 2,
      outlettype: ["", "bang"], ignoreclick: 1, numdecimalplaces: 2, triangle: 0,
      bgcolor: [0.94, 0.96, 0.94, 1], bordercolor: [0.76, 0.82, 0.79, 1],
      fontsize: 11, textcolor: [0.12, 0.25, 0.21, 1],
      patching_rect: [2160 + index * 92, 1260, 82, 22], presentation: 1, presentation_rect,
      varname: `ui_perform_gesture_${key}`,
    })),
    { id: "pm-perform-target", maxclass: "umenu", numinlets: 1, numoutlets: 3,
      outlettype: ["int", "", ""], ignoreclick: 1,
      items: ["HOLD", ",", "VOCODER", ",", "BITCRUSHER", ",", "MULTIBAND", ",", "DELAY", ",", "ALL"],
      patching_rect: [2100, 1300, 220, 36], presentation: 1,
      presentation_rect: [964, 590, 220, 36], varname: "ui_perform_target" },
    { id: "pm-perform-gesture-status", maxclass: "comment", numinlets: 1, numoutlets: 0,
      fontsize: 9, text: "CONTROL IDLE", patching_rect: [2332, 1300, 180, 22], presentation: 1,
      presentation_rect: [1008, 628, 176, 20], varname: "ui_perform_gesture_status" },
    { id: "pm-perform-status-fanout", maxclass: "newobj", numinlets: 1, numoutlets: 2,
      outlettype: ["list", "list"], patching_rect: [2332, 1336, 42, 22], text: "t l l" },
    ...[
      ["vocoder", [1522, 244, 76, 22]], ["bitcrusher", [1522, 343, 76, 22]],
      ["multiband", [1522, 442, 76, 22]], ["delay", [1522, 541, 76, 22]],
    ].map(([key, presentation_rect], index) => ({
      id: `pm-perform-target-${key}`, maxclass: "textbutton", numinlets: 1, numoutlets: 1,
      outlettype: ["int"], ignoreclick: 1, mode: 1, rounded: 11, text: "", texton: "TARGET",
      bgcolor: [0.94, 0.96, 0.94, 1], bgoncolor: [0.95, 0.79, 0.3, 1],
      fontsize: 9, patching_rect: [2520 + index * 86, 1170, 76, 22], presentation: 1,
      presentation_rect, varname: `ui_perform_target_${key}`,
    })),
    ...["vocoder", "bitcrusher", "multiband", "delay"].map((key, index) => ({
      id: `pm-perform-target-${key}-eq`, maxclass: "newobj", numinlets: 1, numoutlets: 1,
      outlettype: ["int"], patching_rect: [2520 + index * 86, 1210, 36, 22], text: `== ${index + 1}`,
    })),
    { id: "pm-perform-monitor-gain", maxclass: "live.dial", numinlets: 1, numoutlets: 2,
      outlettype: ["", "float"], parameter_enable: 1,
      saved_attribute_attributes: { valueof: { parameter_mmin: -70, parameter_mmax: 6,
        parameter_type: 0, parameter_unitstyle: 4, parameter_shortname: "Monitor Level" } },
      patching_rect: [2520, 1260, 52, 52],
      presentation: 1, presentation_rect: [1270, 797, 52, 52], varname: "ui_perform_monitor_gain" },
    { id: "pm-perform-monitor-mute", maxclass: "textbutton", numinlets: 1, numoutlets: 1,
      outlettype: ["int"], mode: 1, rounded: 6, text: "MUTE", texton: "MUTED",
      bgcolor: [1, 0.98, 0.91, 1], bgoncolor: [0.95, 0.79, 0.3, 1],
      patching_rect: [2584, 1260, 104, 28], presentation: 1,
      presentation_rect: [1472, 830, 104, 28], varname: "ui_perform_monitor_mute" },
    { id: "pm-perform-monitor-peak", maxclass: "flonum", numinlets: 1, numoutlets: 2,
      outlettype: ["", "bang"], ignoreclick: 1, numdecimalplaces: 1,
      patching_rect: [2700, 1260, 98, 24], presentation: 1,
      presentation_rect: [1474, 800, 98, 24], varname: "ui_perform_monitor_peak" },
  ];
  patcher.boxes.push(...performControls.map((box) => ({ box })));

  const bindings = [
    ["pm-perform-file-play-bind", "perform_file_play", "ui_source_file::file_play", "pm-perform-file-play"],
    ["pm-perform-grain-play-bind", "perform_grain_play", "ui_source_grain::granular_play", "pm-perform-grain-play"],
    ["pm-perform-grain-preset-bind", "perform_grain_preset", "ui_source_grain::granular_preset", "pm-perform-grain-preset"],
    ["pm-perform-grain-wet-bind", "perform_grain_wet", "ui_source_grain::granular_wet", "pm-perform-grain-wet"],
    ["pm-perform-grain-density-bind", "perform_grain_density", "ui_source_grain::granular_density", "pm-perform-grain-density"],
    ["pm-perform-grain-size-bind", "perform_grain_size", "ui_source_grain::granular_grain_size", "pm-perform-grain-size"],
    ["pm-perform-grain-pitch-bind", "perform_grain_pitch", "ui_source_grain::granular_pitch", "pm-perform-grain-pitch"],
    ["pm-perform-monitor-gain-bind", "perform_monitor_gain", "ui_master_monitor::master_monitor_gain", "pm-perform-monitor-gain"],
    ["pm-perform-monitor-mute-bind", "perform_monitor_mute", "ui_master_monitor::master_monitor_mute", "pm-perform-monitor-mute"],
    ["pm-perform-monitor-peak-bind", "perform_monitor_peak", "ui_master_monitor::master_monitor_peak", "pm-perform-monitor-peak"],
  ];
  patcher.boxes.push(
    ...bindings.map(([id, name, bind], index) => ({ box: {
      id, maxclass: "newobj", numinlets: 1, numoutlets: 1, outlettype: [""],
      patching_rect: [1860, 1360 + index * 30, 520, 22],
      text: `pattr ${name} @bindto ${bind} @autorestore 0 @thru 2`,
    } })),
    { box: { id: "pm-perform-bind-load", maxclass: "newobj", numinlets: 1, numoutlets: 1,
      outlettype: ["bang"], patching_rect: [2400, 1360, 62, 22], text: "loadbang" } },
    { box: { id: "pm-perform-bind-defer", maxclass: "newobj", numinlets: 1, numoutlets: 1,
      outlettype: ["bang"], patching_rect: [2474, 1360, 62, 22], text: "deferlow" } },
    { box: { id: "pm-perform-bind-trigger", maxclass: "newobj", numinlets: 1, numoutlets: bindings.length,
      outlettype: Array(bindings.length).fill("bang"), patching_rect: [2548, 1360, 152, 22],
      text: `t ${bindings.map(() => "b").join(" ")}` } },
  );

  patcher.lines = patcher.lines.filter(({ patchline: { source, destination } }) =>
    !(source[0] === "pm-bitcrusher-hand-mapper" && source[1] === 11 && destination[0] === "pm-gesture-readout")
    && !(source[0] === "pm-bitcrusher-hand-mapper" && source[1] === 4 && destination[0] === "pm-gesture-status")
  );
  patcher.lines.push(
    patchline("pm-perform-dsp", 0, "pm-dsp-select", 0),
    patchline("pm-dsp-select", 0, "pm-dsp-on", 0),
    patchline("pm-dsp-select", 1, "pm-dsp-off", 0),
    patchline("pm-file", 2, "pm-perform-file-progress", 0),
    patchline("pm-bitcrusher-hand-mapper", 11, "pm-perform-gesture-fanout", 0),
    patchline("pm-perform-gesture-fanout", 0, "pm-gesture-readout", 0),
    patchline("pm-perform-gesture-fanout", 1, "pm-perform-gesture-readout", 0),
    patchline("pm-gesture-input-x", 0, "pm-perform-gesture-x", 0),
    patchline("pm-gesture-input-y", 0, "pm-perform-gesture-y", 0),
    patchline("pm-gesture-input-pinch", 0, "pm-perform-gesture-pinch", 0),
    patchline("pm-bitcrusher-hand-mapper", 4, "pm-perform-status-fanout", 0),
    patchline("pm-perform-status-fanout", 0, "pm-gesture-status", 0),
    patchline("pm-perform-status-fanout", 1, "pm-perform-gesture-status", 0),
    patchline("pm-perform-bind-load", 0, "pm-perform-bind-defer", 0),
    patchline("pm-perform-bind-defer", 0, "pm-perform-bind-trigger", 0),
    ...bindings.flatMap(([id, , , control], index) => [
      patchline(control, 0, id, 0),
      patchline(id, 0, control, 0),
      patchline("pm-perform-bind-trigger", bindings.length - 1 - index, id, 0),
    ]),
  );

  const targetFanout = boxMap(patcher).get("pm-gesture-target-fanout");
  targetFanout.numoutlets = 9;
  targetFanout.outlettype = Array(9).fill("int");
  targetFanout.text = "t i i i i i i i i i";
  patcher.lines.push(
    patchline("pm-gesture-target-fanout", 4, "pm-perform-target", 0),
    ...["vocoder", "bitcrusher", "multiband", "delay"].flatMap((key, index) => [
      patchline("pm-gesture-target-fanout", 5 + index, `pm-perform-target-${key}-eq`, 0),
      patchline(`pm-perform-target-${key}-eq`, 0, `pm-perform-target-${key}`, 0),
    ]),
  );

  const refreshed = boxMap(patcher);
  setPresentation(refreshed.get("pm-page-tab"), [730, 27, 800, 42]);
  setPresentation(refreshed.get("pm-hand"), [402, 172, 798, 486]);
  setPresentation(refreshed.get("pm-record-quick-record"), [430, 814, 112, 34]);
  setPresentation(refreshed.get("pm-record-quick-stop"), [554, 814, 96, 34]);
  setPresentation(refreshed.get("pm-record-quick-status"), [682, 814, 160, 34]);
  setPresentation(refreshed.get("pm-record-quick-time"), [1086, 814, 86, 34]);
  setPresentation(refreshed.get("pm-meter-l"), [1402, 789, 18, 58]);
  setPresentation(refreshed.get("pm-meter-r"), [1430, 789, 18, 58]);
  setPresentation(refreshed.get("pm-dac"), null, false);
  setPresentation(refreshed.get("pm-dsp-on"), null, false);
  setPresentation(refreshed.get("pm-dsp-off"), null, false);
  setPresentation(refreshed.get("pm-output-label"), null, false);

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
  patcher.dependency_cache = patcher.dependency_cache.filter((item) =>
    !["perform_shell_v2.png", "perform_shell_v3.png"].includes(item.name)
  );
  const performAsset = patcher.dependency_cache.find((item) => item.name === "perform_shell_v4.png");
  if (performAsset) performAsset.patcherrelativepath = "../assets/ui";
  else patcher.dependency_cache.unshift({
    name: "perform_shell_v4.png",
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
