const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");

function ensureDir(dir) {
  fs.mkdirSync(dir, { recursive: true });
}

function rect(x, y, w, h) {
  return [x, y, w, h];
}

function makeBox(id, maxclass, x, y, w, h, extra = {}) {
  return {
    box: {
      id,
      maxclass,
      patching_rect: rect(x, y, w, h),
      ...extra,
    },
  };
}

function presentationRect(x, y, w, h) {
  return rect(x, y, w, h);
}

function applyPresentation(boxes, layout) {
  const byId = new Map(boxes.map((entry) => [entry.box.id, entry.box]));
  for (const [id, pr] of Object.entries(layout)) {
    const box = byId.get(id);
    if (!box) {
      throw new Error(`Missing presentation box id: ${id}`);
    }
    box.presentation = 1;
    box.presentation_rect = pr;
  }
  return boxes;
}

function comment(id, text, x, y, w = 220, h = 22) {
  return makeBox(id, "comment", x, y, w, h, { text });
}

function newObj(id, text, x, y, w = 100, h = 22, extra = {}) {
  return makeBox(id, "newobj", x, y, w, h, { text, ...extra });
}

function msg(id, text, x, y, w = 60, h = 22) {
  return makeBox(id, "message", x, y, w, h, { text });
}

function inlet(id, x, y) {
  return makeBox(id, "inlet", x, y, 30, 30);
}

function outlet(id, x, y) {
  return makeBox(id, "outlet", x, y, 30, 30);
}

function toggle(id, x, y, extra = {}) {
  return makeBox(id, "toggle", x, y, 24, 24, extra);
}

function flonum(id, x, y, w = 62, extra = {}) {
  return makeBox(id, "flonum", x, y, w, 22, extra);
}

function number(id, x, y, w = 54, extra = {}) {
  return makeBox(id, "number", x, y, w, 22, extra);
}

function liveGain(id, shortname, x, y, h = 150, initial = -12) {
  return makeBox(id, "live.gain~", x, y, 54, h, {
    numinlets: 2,
    numoutlets: 5,
    channels: 2,
    parameter_enable: 1,
    showname: 0,
    saved_attribute_attributes: {
      valueof: {
        parameter_initial: [initial],
        parameter_mmax: 6,
        parameter_mmin: -70,
        parameter_modmode: 0,
        parameter_shortname: shortname,
        parameter_type: 0,
        parameter_unitstyle: 4,
      },
    },
  });
}

function liveMenu(id, shortname, items, x, y, w = 112, initial = 0) {
  return makeBox(id, "live.menu", x, y, w, 15, {
    numinlets: 1,
    numoutlets: 3,
    outlettype: ["", "", "float"],
    parameter_enable: 1,
    saved_attribute_attributes: {
      valueof: {
        parameter_enum: items,
        parameter_initial: [initial],
        parameter_initial_enable: 1,
        parameter_mmax: items.length - 1,
        parameter_modmode: 0,
        parameter_shortname: shortname,
        parameter_type: 2,
      },
    },
  });
}

function liveText(id, text, texton, shortname, x, y, w = 64, initial = 0) {
  return makeBox(id, "live.text", x, y, w, 15, {
    numinlets: 1,
    numoutlets: 2,
    outlettype: ["", ""],
    parameter_enable: 1,
    text,
    texton,
    saved_attribute_attributes: {
      valueof: {
        parameter_enum: ["off", "on"],
        parameter_initial: [initial],
        parameter_initial_enable: 1,
        parameter_mmax: 1,
        parameter_modmode: 0,
        parameter_shortname: shortname,
        parameter_type: 2,
      },
    },
  });
}

function line(source, outletNo, dest, inletNo) {
  return {
    patchline: {
      source: [source, outletNo],
      destination: [dest, inletNo],
    },
  };
}

function coloredLine(source, outletNo, dest, inletNo, color) {
  const entry = line(source, outletNo, dest, inletNo);
  entry.patchline.color = color;
  return entry;
}

function patcher(boxes, lines, rectValue = [80, 80, 900, 650], openInPresentation = 1) {
  return {
    fileversion: 1,
    appversion: {
      major: 9,
      minor: 0,
      revision: 5,
      architecture: "x64",
      modernui: 1,
    },
    classnamespace: "box",
    rect: rectValue,
    bglocked: openInPresentation ? 1 : 0,
    openinpresentation: openInPresentation,
    default_fontsize: 12,
    default_fontface: 0,
    default_fontname: "Arial",
    gridonopen: 1,
    gridsize: [15, 15],
    boxes,
    lines,
  };
}

function maxpat(boxes, lines, rectValue, openInPresentation = 1) {
  return JSON.stringify({ patcher: patcher(boxes, lines, rectValue, openInPresentation) }, null, 2);
}

function writeMaxpat(name, boxes, lines, rectValue = [80, 80, 900, 650], openInPresentation = 1) {
  fs.writeFileSync(path.join(root, name), maxpat(boxes, lines, rectValue, openInPresentation), "utf8");
}

function subpatch(text, boxes, lines, x, y, w = 135, h = 22, rectValue = [80, 80, 1100, 700]) {
  return newObj(text.replace(/[^A-Za-z0-9]+/g, "-"), text, x, y, w, h, {
    patcher: patcher(boxes, lines, rectValue, 0),
  });
}

function buildMicInput() {
  const innerBoxes = [
    comment("mi-title", "Mic_input internals: adc 1-8 -> mono/stereo select -> 20ms enable ramp -> L/R", 35, 25, 760),
    inlet("mi-enable", 35, 90),
    comment("mi-enable-label", "in 1 enable", 35, 70, 100),
    inlet("mi-channel", 165, 90),
    comment("mi-channel-label", "in 2 mono channel 0-8", 165, 70, 170),
    inlet("mi-pair", 355, 90),
    comment("mi-pair-label", "in 3 stereo pair 0/off, 1=1-2, 2=3-4, 3=5-6, 4=7-8", 355, 70, 430),
    msg("mi-enable-msg", "$1 20", 35, 140, 55),
    newObj("mi-enable-line", "line~", 35, 180, 50),
    newObj("mi-adc", "adc~ 1 2 3 4 5 6 7 8", 165, 155, 185),
    newObj("mi-mono-selector", "selector~ 8", 165, 250, 95),
    newObj("mi-pair-selector-l", "selector~ 4", 315, 250, 95),
    newObj("mi-pair-selector-r", "selector~ 4", 465, 250, 95),
    newObj("mi-channel-clears-pair", "t 0", 165, 125, 45),
    newObj("mi-pair-gt0", "> 0", 355, 125, 45),
    newObj("mi-pair-sel", "sel 1", 355, 160, 45),
    msg("mi-clear-mono", "0", 355, 195, 35),
    newObj("mi-sum-l", "+~", 165, 345, 35),
    newObj("mi-sum-r", "+~", 250, 345, 35),
    newObj("mi-gate-l", "*~ 0.", 165, 430, 55),
    newObj("mi-gate-r", "*~ 0.", 250, 430, 55),
    outlet("mi-out-l", 165, 520),
    outlet("mi-out-r", 250, 520),
  ];
  const innerLines = [
    line("mi-enable", 0, "mi-enable-msg", 0),
    line("mi-enable-msg", 0, "mi-enable-line", 0),
    line("mi-channel", 0, "mi-mono-selector", 0),
    line("mi-channel", 0, "mi-channel-clears-pair", 0),
    line("mi-channel-clears-pair", 0, "mi-pair-selector-l", 0),
    line("mi-channel-clears-pair", 0, "mi-pair-selector-r", 0),
    line("mi-pair", 0, "mi-pair-selector-l", 0),
    line("mi-pair", 0, "mi-pair-selector-r", 0),
    line("mi-pair", 0, "mi-pair-gt0", 0),
    line("mi-pair-gt0", 0, "mi-pair-sel", 0),
    line("mi-pair-sel", 0, "mi-clear-mono", 0),
    line("mi-clear-mono", 0, "mi-mono-selector", 0),
    line("mi-adc", 0, "mi-mono-selector", 1),
    line("mi-adc", 1, "mi-mono-selector", 2),
    line("mi-adc", 2, "mi-mono-selector", 3),
    line("mi-adc", 3, "mi-mono-selector", 4),
    line("mi-adc", 4, "mi-mono-selector", 5),
    line("mi-adc", 5, "mi-mono-selector", 6),
    line("mi-adc", 6, "mi-mono-selector", 7),
    line("mi-adc", 7, "mi-mono-selector", 8),
    line("mi-adc", 0, "mi-pair-selector-l", 1),
    line("mi-adc", 2, "mi-pair-selector-l", 2),
    line("mi-adc", 4, "mi-pair-selector-l", 3),
    line("mi-adc", 6, "mi-pair-selector-l", 4),
    line("mi-adc", 1, "mi-pair-selector-r", 1),
    line("mi-adc", 3, "mi-pair-selector-r", 2),
    line("mi-adc", 5, "mi-pair-selector-r", 3),
    line("mi-adc", 7, "mi-pair-selector-r", 4),
    line("mi-mono-selector", 0, "mi-sum-l", 0),
    line("mi-mono-selector", 0, "mi-sum-r", 0),
    line("mi-pair-selector-l", 0, "mi-sum-l", 1),
    line("mi-pair-selector-r", 0, "mi-sum-r", 1),
    line("mi-sum-l", 0, "mi-gate-l", 0),
    line("mi-sum-r", 0, "mi-gate-r", 0),
    line("mi-enable-line", 0, "mi-gate-l", 1),
    line("mi-enable-line", 0, "mi-gate-r", 1),
    line("mi-gate-l", 0, "mi-out-l", 0),
    line("mi-gate-r", 0, "mi-out-r", 0),
  ];

  const boxes = [
    comment("m-title", "MT Input Mic - portfolio source box", 24, 20, 310, 24),
    comment("m-note", "External inlet controls enable. UI selects mono channel or stereo pair. Output is clean stereo L/R.", 24, 48, 560),
    inlet("m-ext-enable", 24, 95),
    comment("m-ext-enable-label", "in: enable", 62, 100, 80),
    toggle("m-enable", 24, 145),
    comment("m-enable-label", "Enable", 55, 148, 70),
    number("m-channel", 145, 145, 70, { minimum: 0, maximum: 8 }),
    comment("m-channel-label", "Mono Channel 0-8", 145, 118, 140),
    makeBox("m-pair", "radiogroup", 310, 130, 20, 94, { size: 5 }),
    comment("m-pair-label", "Stereo Pair: off / 1-2 / 3-4 / 5-6 / 7-8", 340, 132, 250, 80),
    subpatch("p Mic_input", innerBoxes, innerLines, 145, 235, 135),
    liveGain("m-gain", "Mic Input", 325, 220, 140, -12),
    outlet("m-out-l", 520, 245),
    outlet("m-out-r", 570, 245),
    comment("m-out-label", "out 1/2: audio L/R", 505, 285, 160),
    newObj("m-channel-default", "loadmess 1", 145, 185, 80),
    msg("m-enable-set", "set $1", 24, 180, 60),
    newObj("m-enable-state-send", "s mt_mic_enable_state", 24, 210, 155),
  ];
  applyPresentation(boxes, {
    "m-title": presentationRect(12, 8, 300, 22),
    "m-note": presentationRect(12, 30, 300, 38),
    "m-enable": presentationRect(12, 82, 24, 24),
    "m-enable-label": presentationRect(44, 84, 70, 22),
    "m-channel-label": presentationRect(12, 122, 130, 22),
    "m-channel": presentationRect(12, 148, 68, 22),
    "m-pair": presentationRect(128, 128, 20, 94),
    "m-pair-label": presentationRect(158, 130, 155, 80),
    "m-gain": presentationRect(246, 78, 54, 138),
  });
  const lines = [
    line("m-ext-enable", 0, "m-enable-set", 0),
    line("m-enable-set", 0, "m-enable", 0),
    line("m-ext-enable", 0, "p-Mic-input", 0),
    line("m-enable", 0, "p-Mic-input", 0),
    line("m-enable", 0, "m-enable-state-send", 0),
    line("m-channel", 0, "p-Mic-input", 1),
    line("m-pair", 0, "p-Mic-input", 2),
    line("m-channel-default", 0, "m-channel", 0),
    line("p-Mic-input", 0, "m-gain", 0),
    line("p-Mic-input", 1, "m-gain", 1),
    line("m-gain", 0, "m-out-l", 0),
    line("m-gain", 1, "m-out-r", 0),
  ];
  writeMaxpat("mt_input_mic.maxpat", boxes, lines, [80, 80, 700, 390]);
}

function buildMicInputUI() {
  const stateColor = [0.44, 0.72, 1, 1];
  const controlColor = [1, 0.62, 0.24, 1];
  const audioColor = [0.68, 0.95, 0.34, 1];

  const controlBoxes = [
    inlet("mc-ext-enable", 40, 80),
    inlet("mc-ui-enable", 175, 80),
    inlet("mc-ui-mono", 310, 80),
    inlet("mc-ui-pair", 465, 80),
    comment("mc-label", "external enable / UI enable / mono 1-8 / stereo pair 0-4", 30, 30, 410),
    newObj("mc-ext-clip", "clip 0 1", 40, 145, 70),
    newObj("mc-enable-send", "s mt_mic_enable_state", 40, 200, 150),
    newObj("mc-enable-receive", "r mt_mic_enable_state", 40, 255, 150),
    newObj("mc-enable-trigger", "t i i", 40, 310, 50),
    msg("mc-enable-set", "set $1", 115, 310, 58),
    newObj("mc-mono-clip", "clip 1 8", 310, 145, 70),
    newObj("mc-mono-trigger", "t i 0", 310, 200, 50),
    msg("mc-pair-set", "set 0", 385, 200, 52),
    newObj("mc-pair-clip", "clip 0 4", 465, 145, 70),
    newObj("mc-pair-trigger", "t i i", 465, 200, 50),
    newObj("mc-mono-active-test", "== 0", 540, 255, 45),
    msg("mc-mono-active", "active $1", 540, 310, 70),
    newObj("mc-loadbang", "loadbang", 650, 80, 65),
    newObj("mc-init-trigger", "t b b b", 650, 145, 65),
    msg("mc-init-enable", "0", 630, 200, 32),
    msg("mc-init-mono", "1", 675, 200, 32),
    msg("mc-init-gain", "0", 720, 200, 32),
    outlet("mc-enable-out", 40, 405),
    outlet("mc-mono-out", 180, 405),
    outlet("mc-pair-out", 300, 405),
    outlet("mc-enable-ui-out", 410, 405),
    outlet("mc-pair-ui-out", 520, 405),
    outlet("mc-mono-active-out", 630, 405),
    outlet("mc-mono-ui-out", 740, 405),
    outlet("mc-gain-ui-out", 800, 405),
  ];
  const controlLines = [
    line("mc-ext-enable", 0, "mc-ext-clip", 0),
    line("mc-ext-clip", 0, "mc-enable-trigger", 0),
    line("mc-ui-enable", 0, "mc-enable-send", 0),
    line("mc-enable-receive", 0, "mc-enable-trigger", 0),
    line("mc-enable-trigger", 1, "mc-enable-out", 0),
    line("mc-enable-trigger", 0, "mc-enable-set", 0),
    line("mc-enable-set", 0, "mc-enable-ui-out", 0),
    line("mc-ui-mono", 0, "mc-mono-clip", 0),
    line("mc-mono-clip", 0, "mc-mono-trigger", 0),
    line("mc-mono-trigger", 0, "mc-mono-out", 0),
    line("mc-mono-trigger", 1, "mc-pair-set", 0),
    line("mc-pair-set", 0, "mc-pair-ui-out", 0),
    line("mc-ui-pair", 0, "mc-pair-clip", 0),
    line("mc-pair-clip", 0, "mc-pair-trigger", 0),
    line("mc-pair-trigger", 1, "mc-pair-out", 0),
    line("mc-pair-trigger", 0, "mc-mono-active-test", 0),
    line("mc-mono-active-test", 0, "mc-mono-active", 0),
    line("mc-mono-active", 0, "mc-mono-active-out", 0),
    line("mc-loadbang", 0, "mc-init-trigger", 0),
    line("mc-init-trigger", 2, "mc-init-enable", 0),
    line("mc-init-trigger", 1, "mc-init-mono", 0),
    line("mc-init-trigger", 0, "mc-init-gain", 0),
    line("mc-init-enable", 0, "mc-enable-send", 0),
    line("mc-init-mono", 0, "mc-mono-ui-out", 0),
    line("mc-init-gain", 0, "mc-gain-ui-out", 0),
  ];
  for (const entry of controlLines) {
    const source = entry.patchline.source[0];
    entry.patchline.color = source.includes("enable") || source === "mc-ext-clip"
      ? stateColor
      : controlColor;
  }

  const innerBoxes = [
    comment("mi-title", "Mic input DSP: adc 1-8 -> mono/stereo routing -> route ramp -> enable ramp -> L/R", 30, 25, 760),
    inlet("mi-enable", 45, 85),
    inlet("mi-channel", 250, 85),
    inlet("mi-pair", 485, 85),
    msg("mi-enable-msg", "$1 20", 45, 145, 55),
    newObj("mi-enable-line", "line~", 45, 190, 50),
    newObj("mi-route-control", "*~", 810, 690, 35),
    newObj("mi-channel-clip", "clip 1 8", 250, 145, 70),
    newObj("mi-channel-trigger", "t i i b", 250, 190, 60),
    newObj("mi-channel-store", "i 1", 340, 240, 40),
    newObj("mi-channel-delay", "pipe 20", 250, 285, 60),
    newObj("mi-channel-apply", "t b i 0 0", 250, 335, 75),
    newObj("mi-pair-clip", "clip 0 4", 485, 145, 70),
    newObj("mi-pair-trigger", "t i b", 485, 190, 50),
    newObj("mi-pair-delay", "pipe 20", 485, 285, 60),
    newObj("mi-pair-sel", "sel 0", 485, 335, 50),
    newObj("mi-pair-off-apply", "t b i 0 0", 405, 390, 75),
    newObj("mi-pair-on-apply", "t b i i 0", 560, 390, 75),
    msg("mi-route-down", "0 20", 680, 240, 48),
    msg("mi-route-up", "1 20", 680, 445, 48),
    newObj("mi-route-line", "line~", 680, 335, 50),
    newObj("mi-adc", "adc~ 1 2 3 4 5 6 7 8", 250, 490, 190),
    newObj("mi-mono-selector", "selector~ 8", 250, 585, 95),
    newObj("mi-pair-selector-l", "selector~ 4", 485, 585, 95),
    newObj("mi-pair-selector-r", "selector~ 4", 680, 585, 95),
    newObj("mi-sum-l", "+~", 375, 690, 35),
    newObj("mi-sum-r", "+~", 600, 690, 35),
    newObj("mi-gate-l", "*~ 0.", 375, 750, 55),
    newObj("mi-gate-r", "*~ 0.", 600, 750, 55),
    outlet("mi-out-l", 375, 840),
    outlet("mi-out-r", 600, 840),
  ];
  const innerLines = [
    line("mi-enable", 0, "mi-enable-msg", 0),
    line("mi-enable-msg", 0, "mi-enable-line", 0),
    line("mi-enable-line", 0, "mi-route-control", 0),
    line("mi-route-line", 0, "mi-route-control", 1),
    line("mi-channel", 0, "mi-channel-clip", 0),
    line("mi-channel-clip", 0, "mi-channel-trigger", 0),
    line("mi-channel-trigger", 2, "mi-route-down", 0),
    line("mi-channel-trigger", 1, "mi-channel-store", 1),
    line("mi-channel-trigger", 0, "mi-channel-delay", 0),
    line("mi-channel-delay", 0, "mi-channel-apply", 0),
    line("mi-channel-apply", 3, "mi-pair-selector-r", 0),
    line("mi-channel-apply", 2, "mi-pair-selector-l", 0),
    line("mi-channel-apply", 1, "mi-mono-selector", 0),
    line("mi-channel-apply", 0, "mi-route-up", 0),
    line("mi-pair", 0, "mi-pair-clip", 0),
    line("mi-pair-clip", 0, "mi-pair-trigger", 0),
    line("mi-pair-trigger", 1, "mi-route-down", 0),
    line("mi-pair-trigger", 0, "mi-pair-delay", 0),
    line("mi-pair-delay", 0, "mi-pair-sel", 0),
    line("mi-pair-sel", 0, "mi-channel-store", 0),
    line("mi-channel-store", 0, "mi-pair-off-apply", 0),
    line("mi-pair-off-apply", 3, "mi-pair-selector-r", 0),
    line("mi-pair-off-apply", 2, "mi-pair-selector-l", 0),
    line("mi-pair-off-apply", 1, "mi-mono-selector", 0),
    line("mi-pair-off-apply", 0, "mi-route-up", 0),
    line("mi-pair-sel", 1, "mi-pair-on-apply", 0),
    line("mi-pair-on-apply", 3, "mi-mono-selector", 0),
    line("mi-pair-on-apply", 2, "mi-pair-selector-r", 0),
    line("mi-pair-on-apply", 1, "mi-pair-selector-l", 0),
    line("mi-pair-on-apply", 0, "mi-route-up", 0),
    line("mi-route-down", 0, "mi-route-line", 0),
    line("mi-route-up", 0, "mi-route-line", 0),
    line("mi-adc", 0, "mi-mono-selector", 1),
    line("mi-adc", 1, "mi-mono-selector", 2),
    line("mi-adc", 2, "mi-mono-selector", 3),
    line("mi-adc", 3, "mi-mono-selector", 4),
    line("mi-adc", 4, "mi-mono-selector", 5),
    line("mi-adc", 5, "mi-mono-selector", 6),
    line("mi-adc", 6, "mi-mono-selector", 7),
    line("mi-adc", 7, "mi-mono-selector", 8),
    line("mi-adc", 0, "mi-pair-selector-l", 1),
    line("mi-adc", 2, "mi-pair-selector-l", 2),
    line("mi-adc", 4, "mi-pair-selector-l", 3),
    line("mi-adc", 6, "mi-pair-selector-l", 4),
    line("mi-adc", 1, "mi-pair-selector-r", 1),
    line("mi-adc", 3, "mi-pair-selector-r", 2),
    line("mi-adc", 5, "mi-pair-selector-r", 3),
    line("mi-adc", 7, "mi-pair-selector-r", 4),
    line("mi-mono-selector", 0, "mi-sum-l", 0),
    line("mi-mono-selector", 0, "mi-sum-r", 0),
    line("mi-pair-selector-l", 0, "mi-sum-l", 1),
    line("mi-pair-selector-r", 0, "mi-sum-r", 1),
    line("mi-sum-l", 0, "mi-gate-l", 0),
    line("mi-sum-r", 0, "mi-gate-r", 0),
    line("mi-route-control", 0, "mi-gate-l", 1),
    line("mi-route-control", 0, "mi-gate-r", 1),
    line("mi-gate-l", 0, "mi-out-l", 0),
    line("mi-gate-r", 0, "mi-out-r", 0),
  ];
  const audioSources = new Set([
    "mi-adc", "mi-mono-selector", "mi-pair-selector-l", "mi-pair-selector-r",
    "mi-sum-l", "mi-sum-r", "mi-gate-l", "mi-gate-r",
  ]);
  const stateSources = new Set(["mi-enable", "mi-enable-msg", "mi-enable-line", "mi-route-control"]);
  for (const entry of innerLines) {
    const source = entry.patchline.source[0];
    entry.patchline.color = audioSources.has(source)
      ? audioColor
      : stateSources.has(source)
        ? stateColor
        : controlColor;
  }

  const boxes = [
    makeBox("m-bg", "fpic", 0, 0, 420, 280, {
      autofit: 1,
      background: 1,
      forceaspect: 1,
      ignoreclick: 1,
      pic: "mic_panel_v1.png",
      numinlets: 1,
      numoutlets: 1,
      outlettype: ["jit_matrix"],
    }),
    toggle("m-enable", 43, 96, { varname: "mic_enable" }),
    number("m-channel", 138, 113, 58, { minimum: 1, maximum: 8, varname: "mic_mono_channel" }),
    makeBox("m-pair", "radiogroup", 237, 98, 20, 82, { size: 5, varname: "mic_stereo_pair" }),
    liveGain("m-gain", "Mic Input", 650, 350, 145, 0),
    makeBox("m-ext-enable", "inlet", 20, 320, 30, 30, { comment: "Enable 0/1" }),
    subpatch("p Mic_control", controlBoxes, controlLines, 150, 350, 110, 22, [80, 80, 900, 520]),
    subpatch("p Mic_input", innerBoxes, innerLines, 370, 350, 110, 22, [80, 80, 980, 940]),
    makeBox("m-out-l", "outlet", 650, 560, 30, 30, { comment: "Mic audio L" }),
    makeBox("m-out-r", "outlet", 710, 560, 30, 30, { comment: "Mic audio R" }),
  ];
  boxes.find((entry) => entry.box.id === "m-gain").box.varname = "mic_output_gain";
  applyPresentation(boxes, {
    "m-bg": presentationRect(0, 0, 420, 280),
    "m-enable": presentationRect(38, 109, 28, 28),
    "m-channel": presentationRect(115.42857658863068, 132.50000592321157, 75.28571765124798, 22),
    "m-pair": presentationRect(231, 123, 20, 82),
    "m-gain": presentationRect(351, 112, 36, 98),
  });

  const lines = [
    coloredLine("m-ext-enable", 0, "p-Mic-control", 0, stateColor),
    coloredLine("m-enable", 0, "p-Mic-control", 1, stateColor),
    coloredLine("m-channel", 0, "p-Mic-control", 2, controlColor),
    coloredLine("m-pair", 0, "p-Mic-control", 3, controlColor),
    coloredLine("p-Mic-control", 0, "p-Mic-input", 0, stateColor),
    coloredLine("p-Mic-control", 1, "p-Mic-input", 1, controlColor),
    coloredLine("p-Mic-control", 2, "p-Mic-input", 2, controlColor),
    coloredLine("p-Mic-control", 3, "m-enable", 0, stateColor),
    coloredLine("p-Mic-control", 4, "m-pair", 0, controlColor),
    coloredLine("p-Mic-control", 5, "m-channel", 0, controlColor),
    coloredLine("p-Mic-control", 6, "m-channel", 0, controlColor),
    coloredLine("p-Mic-control", 7, "m-gain", 0, controlColor),
    coloredLine("p-Mic-input", 0, "m-gain", 0, audioColor),
    coloredLine("p-Mic-input", 1, "m-gain", 1, audioColor),
    coloredLine("m-gain", 0, "m-out-l", 0, audioColor),
    coloredLine("m-gain", 1, "m-out-r", 0, audioColor),
  ];

  const doc = patcher(boxes, lines, [80, 80, 420, 280], 1);
  doc.dependency_cache = [{
    name: "mic_panel_v1.png",
    bootpath: ".",
    patcherrelativepath: ".",
    type: "PNG",
    implicit: 1,
  }];
  doc.parameters = {
    "m-gain": ["live.gain~", "Mic Input", 0],
    parameterbanks: {
      0: { index: 0, name: "", parameters: ["-", "-", "-", "-", "-", "-", "-", "-"] },
    },
    inherited_shortname: 1,
  };
  doc.autosave = 0;
  fs.writeFileSync(path.join(root, "mt_input_mic_ui.maxpat"), JSON.stringify({ patcher: doc }, null, 2), "utf8");
}

function buildFileInput() {
  const innerBoxes = [
    comment("fi-title", "File_input internals: path -> #0 buffer -> groove~ -> 20ms enable ramp -> L/R", 35, 25, 820),
    inlet("fi-enable", 35, 90),
    inlet("fi-path", 185, 90),
    inlet("fi-play", 405, 90),
    inlet("fi-seek", 615, 90),
    comment("fi-labels", "inlets: enable / file path / play-stop / seek 0-1000", 35, 65, 420),
    msg("fi-enable-msg", "$1 20", 35, 140, 55),
    newObj("fi-enable-line", "line~", 35, 180, 50),
    newObj("fi-replace", "prepend replace", 185, 140, 120),
    newObj("fi-buffer", "buffer~ #0_file_buffer 30000", 185, 185, 215),
    newObj("fi-info", "info~ #0_file_buffer", 420, 185, 160),
    newObj("fi-duration", "f 30000.", 600, 185, 80),
    newObj("fi-duration-sec", "/ 1000.", 700, 185, 70),
    newObj("fi-play-clip", "clip 0 1", 405, 140, 70),
    newObj("fi-play-sig", "sig~", 405, 185, 50),
    newObj("fi-seek-safe", "expr min(max(0.\\, $f1)\\, max(0.\\, $f2 - 1.))", 615, 185, 245),
    newObj("fi-groove", "groove~ #0_file_buffer 2 @loop 1", 185, 300, 230),
    newObj("fi-progress-snap", "snapshot~ 33", 460, 330, 95),
    newObj("fi-progress-clip", "clip 0. 1.", 460, 375, 80),
    newObj("fi-progress-scale", "scale 0. 1. 0 1000", 460, 420, 145),
    newObj("fi-progress-set", "prepend set", 620, 420, 90),
    newObj("fi-elapsed-ms", "* 1.", 760, 375, 55),
    newObj("fi-elapsed-sec", "/ 1000.", 760, 420, 70),
    newObj("fi-gate-l", "*~ 0.", 185, 405, 55),
    newObj("fi-gate-r", "*~ 0.", 270, 405, 55),
    outlet("fi-out-l", 185, 505),
    outlet("fi-out-r", 270, 505),
    outlet("fi-out-progress", 620, 505),
    outlet("fi-out-status", 720, 505),
    outlet("fi-out-elapsed", 820, 505),
    outlet("fi-out-duration-ms", 900, 505),
  ];
  const innerLines = [
    line("fi-enable", 0, "fi-enable-msg", 0),
    line("fi-enable-msg", 0, "fi-enable-line", 0),
    line("fi-path", 0, "fi-replace", 0),
    line("fi-replace", 0, "fi-buffer", 0),
    line("fi-buffer", 1, "fi-info", 0),
    line("fi-info", 6, "fi-duration", 0),
    line("fi-duration", 0, "fi-seek-safe", 1),
    line("fi-duration", 0, "fi-duration-sec", 0),
    line("fi-duration", 0, "fi-elapsed-ms", 1),
    line("fi-duration", 0, "fi-out-duration-ms", 0),
    line("fi-duration-sec", 0, "fi-out-status", 0),
    line("fi-play", 0, "fi-play-clip", 0),
    line("fi-play-clip", 0, "fi-play-sig", 0),
    line("fi-play-sig", 0, "fi-groove", 0),
    line("fi-seek", 0, "fi-seek-safe", 0),
    line("fi-seek-safe", 0, "fi-groove", 0),
    line("fi-groove", 0, "fi-gate-l", 0),
    line("fi-groove", 1, "fi-gate-r", 0),
    line("fi-groove", 2, "fi-progress-snap", 0),
    line("fi-progress-snap", 0, "fi-progress-clip", 0),
    line("fi-progress-clip", 0, "fi-progress-scale", 0),
    line("fi-progress-clip", 0, "fi-elapsed-ms", 0),
    line("fi-progress-scale", 0, "fi-progress-set", 0),
    line("fi-progress-set", 0, "fi-out-progress", 0),
    line("fi-elapsed-ms", 0, "fi-elapsed-sec", 0),
    line("fi-elapsed-sec", 0, "fi-out-elapsed", 0),
    line("fi-enable-line", 0, "fi-gate-l", 1),
    line("fi-enable-line", 0, "fi-gate-r", 1),
    line("fi-gate-l", 0, "fi-out-l", 0),
    line("fi-gate-r", 0, "fi-out-r", 0),
  ];
  const boxes = [
    comment("f-title", "MT Input File - portfolio source box", 24, 20, 330, 24),
    comment("f-note", "Drop or load audio. External inlets control enable and play/stop. #0 buffer keeps each bpatcher instance separate.", 24, 48, 650),
    inlet("f-ext-enable", 24, 95),
    comment("f-enable-ext-label", "in 1 enable", 60, 100, 90),
    inlet("f-ext-play", 145, 95),
    comment("f-play-ext-label", "in 2 play/stop", 180, 100, 110),
    toggle("f-enable", 24, 145),
    comment("f-enable-label", "Enable", 55, 148, 70),
    toggle("f-play", 145, 145),
    comment("f-play-label", "Play", 176, 148, 60),
    makeBox("f-drop", "live.drop", 260, 128, 190, 52),
    comment("f-drop-label", "Drop Audio", 260, 104, 95),
    makeBox("f-load-button", "button", 475, 142, 24, 24),
    comment("f-load-label", "Load", 505, 144, 60),
    newObj("f-open", "opendialog", 475, 182, 90),
    makeBox("f-waveform", "waveform~", 24, 225, 520, 120, {
      buffername: "#0_file_buffer",
      setmode: 1,
      outmode: 4,
      setunit: 0,
    }),
    newObj("f-wave-set", "loadmess set #0_file_buffer", 24, 360, 185),
    comment("f-waveform-label", "Waveform / drag to seek", 24, 202, 190),
    subpatch("p File_input", innerBoxes, innerLines, 24, 405, 135, 22, [80, 80, 920, 620]),
    liveGain("f-gain", "File Input", 210, 390, 145, -12),
    flonum("f-elapsed", 575, 245, 72),
    comment("f-elapsed-label", "elapsed s", 575, 222, 80),
    flonum("f-status", 575, 305, 72),
    comment("f-status-label", "duration s", 575, 282, 85),
    outlet("f-out-l", 665, 415),
    outlet("f-out-r", 715, 415),
    comment("f-out-label", "out 1/2: audio L/R", 640, 455, 160),
    msg("f-enable-set", "set $1", 24, 180, 60),
    newObj("f-enable-state-send", "s mt_file_enable_state", 24, 210, 155),
  ];
  applyPresentation(boxes, {
    "f-title": presentationRect(12, 8, 300, 22),
    "f-note": presentationRect(12, 30, 390, 36),
    "f-enable": presentationRect(12, 78, 24, 24),
    "f-enable-label": presentationRect(44, 80, 62, 22),
    "f-play": presentationRect(112, 78, 24, 24),
    "f-play-label": presentationRect(144, 80, 50, 22),
    "f-drop-label": presentationRect(214, 74, 85, 22),
    "f-drop": presentationRect(214, 98, 150, 44),
    "f-load-button": presentationRect(376, 108, 24, 24),
    "f-load-label": presentationRect(404, 110, 45, 22),
    "f-waveform-label": presentationRect(12, 158, 190, 22),
    "f-waveform": presentationRect(12, 182, 402, 112),
    "f-elapsed-label": presentationRect(12, 312, 72, 22),
    "f-elapsed": presentationRect(84, 312, 62, 22),
    "f-status-label": presentationRect(160, 312, 76, 22),
    "f-status": presentationRect(236, 312, 62, 22),
    "f-gain": presentationRect(330, 306, 54, 122),
  });
  const lines = [
    line("f-ext-enable", 0, "f-enable-set", 0),
    line("f-enable-set", 0, "f-enable", 0),
    line("f-ext-enable", 0, "p-File-input", 0),
    line("f-ext-play", 0, "f-play", 0),
    line("f-enable", 0, "p-File-input", 0),
    line("f-enable", 0, "f-enable-state-send", 0),
    line("f-drop", 0, "p-File-input", 1),
    line("f-load-button", 0, "f-open", 0),
    line("f-open", 0, "p-File-input", 1),
    line("f-play", 0, "p-File-input", 2),
    line("f-wave-set", 0, "f-waveform", 0),
    line("f-waveform", 2, "p-File-input", 3),
    line("p-File-input", 0, "f-gain", 0),
    line("p-File-input", 1, "f-gain", 1),
    line("p-File-input", 3, "f-status", 0),
    line("p-File-input", 5, "f-waveform", 1),
    line("p-File-input", 4, "f-elapsed", 0),
    line("f-gain", 0, "f-out-l", 0),
    line("f-gain", 1, "f-out-r", 0),
  ];
  writeMaxpat("mt_input_file.maxpat", boxes, lines, [80, 80, 780, 560]);
}

function buildFileInputUI() {
  const stateColor = [0.44, 0.72, 1, 1];
  const controlColor = [1, 0.62, 0.24, 1];
  const audioColor = [0.68, 0.95, 0.34, 1];

  const controlBoxes = [
    comment("fc-title", "File control: external state / local UI / file change / time display", 30, 25, 620),
    inlet("fc-ext-enable", 35, 80),
    inlet("fc-ui-enable", 135, 80),
    inlet("fc-ext-play", 235, 80),
    inlet("fc-ui-play", 335, 80),
    inlet("fc-ui-loop", 435, 80),
    inlet("fc-path", 535, 80),
    inlet("fc-elapsed", 685, 80),
    inlet("fc-duration", 805, 80),

    newObj("fc-ext-enable-clip", "clip 0 1", 35, 135, 70),
    newObj("fc-enable-send", "s mt_file_enable_state", 135, 135, 150),
    newObj("fc-enable-receive", "r mt_file_enable_state", 35, 190, 150),
    newObj("fc-enable-trigger", "t i i", 35, 245, 50),
    msg("fc-enable-set", "set $1", 105, 245, 58),

    newObj("fc-ext-play-clip", "clip 0 1", 235, 135, 70),
    newObj("fc-ui-play-clip", "clip 0 1", 335, 135, 70),
    newObj("fc-play-trigger", "t i i", 285, 245, 50),
    msg("fc-play-set", "set $1", 355, 245, 58),
    newObj("fc-loop-clip", "clip 0 1", 435, 135, 70),
    newObj("fc-loop-trigger", "t i i", 435, 245, 50),
    msg("fc-loop-set", "set $1", 505, 245, 58),

    newObj("fc-path-order", "t l b b", 535, 135, 60),
    msg("fc-file-stop", "0", 615, 190, 32),
    msg("fc-seek-reset", "0", 655, 190, 32),
    newObj("fc-path-fanout", "t l l", 535, 245, 50),
    newObj("fc-strip-path", "strippath", 610, 300, 70),
    newObj("fc-name-set", "prepend set", 610, 350, 90),

    newObj("fc-elapsed-int", "i", 685, 135, 35),
    newObj("fc-elapsed-parts", "t i i", 685, 190, 50),
    newObj("fc-elapsed-min", "/ 60", 670, 245, 45),
    newObj("fc-elapsed-sec", "% 60", 730, 245, 45),
    newObj("fc-elapsed-pack", "pak i i", 685, 300, 60),
    newObj("fc-elapsed-format", "sprintf %02ld:%02ld", 685, 350, 125),
    newObj("fc-elapsed-set", "prepend set", 685, 400, 90),

    newObj("fc-duration-int", "i", 835, 135, 35),
    newObj("fc-duration-parts", "t i i", 835, 190, 50),
    newObj("fc-duration-min", "/ 60", 820, 245, 45),
    newObj("fc-duration-sec", "% 60", 880, 245, 45),
    newObj("fc-duration-pack", "pak i i", 835, 300, 60),
    newObj("fc-duration-format", "sprintf %02ld:%02ld", 835, 350, 125),
    newObj("fc-duration-set", "prepend set", 835, 400, 90),

    newObj("fc-loadbang", "loadbang", 35, 350, 65),
    newObj("fc-init-trigger", "t b b b b b b", 35, 400, 100),
    msg("fc-init-enable", "0", 35, 450, 32),
    msg("fc-init-play", "0", 80, 450, 32),
    msg("fc-init-loop", "0", 125, 450, 32),
    msg("fc-init-gain", "0", 170, 450, 32),
    msg("fc-init-current", "set 00:00", 215, 450, 72),
    msg("fc-init-total", "set 00:00", 300, 450, 72),

    outlet("fc-enable-out", 35, 550),
    outlet("fc-play-out", 115, 550),
    outlet("fc-loop-out", 195, 550),
    outlet("fc-path-out", 275, 550),
    outlet("fc-seek-reset-out", 355, 550),
    outlet("fc-enable-ui-out", 455, 550),
    outlet("fc-play-ui-out", 555, 550),
    outlet("fc-loop-ui-out", 655, 550),
    outlet("fc-name-ui-out", 755, 550),
    outlet("fc-current-ui-out", 855, 550),
    outlet("fc-total-ui-out", 955, 550),
    outlet("fc-gain-ui-out", 1055, 550),
  ];
  const controlLines = [
    coloredLine("fc-ext-enable", 0, "fc-ext-enable-clip", 0, stateColor),
    coloredLine("fc-ext-enable-clip", 0, "fc-enable-trigger", 0, stateColor),
    coloredLine("fc-ui-enable", 0, "fc-enable-send", 0, stateColor),
    coloredLine("fc-enable-receive", 0, "fc-enable-trigger", 0, stateColor),
    coloredLine("fc-enable-trigger", 1, "fc-enable-out", 0, stateColor),
    coloredLine("fc-enable-trigger", 0, "fc-enable-set", 0, stateColor),
    coloredLine("fc-enable-set", 0, "fc-enable-ui-out", 0, stateColor),

    coloredLine("fc-ext-play", 0, "fc-ext-play-clip", 0, stateColor),
    coloredLine("fc-ext-play-clip", 0, "fc-play-trigger", 0, stateColor),
    coloredLine("fc-ui-play", 0, "fc-ui-play-clip", 0, stateColor),
    coloredLine("fc-ui-play-clip", 0, "fc-play-trigger", 0, stateColor),
    coloredLine("fc-play-trigger", 1, "fc-play-out", 0, stateColor),
    coloredLine("fc-play-trigger", 0, "fc-play-set", 0, stateColor),
    coloredLine("fc-play-set", 0, "fc-play-ui-out", 0, stateColor),
    coloredLine("fc-ui-loop", 0, "fc-loop-clip", 0, stateColor),
    coloredLine("fc-loop-clip", 0, "fc-loop-trigger", 0, stateColor),
    coloredLine("fc-loop-trigger", 1, "fc-loop-out", 0, stateColor),
    coloredLine("fc-loop-trigger", 0, "fc-loop-set", 0, stateColor),
    coloredLine("fc-loop-set", 0, "fc-loop-ui-out", 0, stateColor),

    coloredLine("fc-path", 0, "fc-path-order", 0, controlColor),
    coloredLine("fc-path-order", 2, "fc-file-stop", 0, controlColor),
    coloredLine("fc-path-order", 1, "fc-seek-reset", 0, controlColor),
    coloredLine("fc-path-order", 0, "fc-path-fanout", 0, controlColor),
    coloredLine("fc-file-stop", 0, "fc-play-trigger", 0, stateColor),
    coloredLine("fc-seek-reset", 0, "fc-seek-reset-out", 0, controlColor),
    coloredLine("fc-path-fanout", 1, "fc-strip-path", 0, controlColor),
    coloredLine("fc-path-fanout", 0, "fc-path-out", 0, controlColor),
    coloredLine("fc-strip-path", 0, "fc-name-set", 0, controlColor),
    coloredLine("fc-name-set", 0, "fc-name-ui-out", 0, controlColor),

    coloredLine("fc-elapsed", 0, "fc-elapsed-int", 0, controlColor),
    coloredLine("fc-elapsed-int", 0, "fc-elapsed-parts", 0, controlColor),
    coloredLine("fc-elapsed-parts", 1, "fc-elapsed-sec", 0, controlColor),
    coloredLine("fc-elapsed-parts", 0, "fc-elapsed-min", 0, controlColor),
    coloredLine("fc-elapsed-sec", 0, "fc-elapsed-pack", 1, controlColor),
    coloredLine("fc-elapsed-min", 0, "fc-elapsed-pack", 0, controlColor),
    coloredLine("fc-elapsed-pack", 0, "fc-elapsed-format", 0, controlColor),
    coloredLine("fc-elapsed-format", 0, "fc-elapsed-set", 0, controlColor),
    coloredLine("fc-elapsed-set", 0, "fc-current-ui-out", 0, controlColor),

    coloredLine("fc-duration", 0, "fc-duration-int", 0, controlColor),
    coloredLine("fc-duration-int", 0, "fc-duration-parts", 0, controlColor),
    coloredLine("fc-duration-parts", 1, "fc-duration-sec", 0, controlColor),
    coloredLine("fc-duration-parts", 0, "fc-duration-min", 0, controlColor),
    coloredLine("fc-duration-sec", 0, "fc-duration-pack", 1, controlColor),
    coloredLine("fc-duration-min", 0, "fc-duration-pack", 0, controlColor),
    coloredLine("fc-duration-pack", 0, "fc-duration-format", 0, controlColor),
    coloredLine("fc-duration-format", 0, "fc-duration-set", 0, controlColor),
    coloredLine("fc-duration-set", 0, "fc-total-ui-out", 0, controlColor),

    coloredLine("fc-loadbang", 0, "fc-init-trigger", 0, controlColor),
    coloredLine("fc-init-trigger", 5, "fc-init-enable", 0, controlColor),
    coloredLine("fc-init-trigger", 4, "fc-init-play", 0, controlColor),
    coloredLine("fc-init-trigger", 3, "fc-init-loop", 0, controlColor),
    coloredLine("fc-init-trigger", 2, "fc-init-gain", 0, controlColor),
    coloredLine("fc-init-trigger", 1, "fc-init-current", 0, controlColor),
    coloredLine("fc-init-trigger", 0, "fc-init-total", 0, controlColor),
    coloredLine("fc-init-enable", 0, "fc-enable-send", 0, stateColor),
    coloredLine("fc-init-play", 0, "fc-play-trigger", 0, stateColor),
    coloredLine("fc-init-loop", 0, "fc-loop-trigger", 0, stateColor),
    coloredLine("fc-init-gain", 0, "fc-gain-ui-out", 0, controlColor),
    coloredLine("fc-init-current", 0, "fc-current-ui-out", 0, controlColor),
    coloredLine("fc-init-total", 0, "fc-total-ui-out", 0, controlColor),
  ];

  const coreBoxes = [
    comment("fi-title", "File DSP: #0 buffer -> groove transport -> waveform feedback -> 20 ms enable ramp -> L/R", 30, 25, 760),
    inlet("fi-enable", 35, 80),
    inlet("fi-path", 185, 80),
    inlet("fi-play", 345, 80),
    inlet("fi-loop", 465, 80),
    inlet("fi-seek", 585, 80),
    msg("fi-enable-msg", "$1 20", 35, 140, 55),
    newObj("fi-enable-line", "line~", 35, 190, 50),
    newObj("fi-replace", "prepend replace", 185, 140, 120),
    newObj("fi-buffer", "buffer~ #0_file_buffer 30000 2", 185, 190, 225),
    newObj("fi-info", "info~ #0_file_buffer", 185, 245, 160),
    newObj("fi-duration", "f 30000.", 375, 245, 80),
    newObj("fi-duration-sec", "/ 1000.", 475, 245, 70),
    newObj("fi-play-clip", "clip 0 1", 345, 140, 70),
    newObj("fi-play-sig", "sig~", 345, 190, 50),
    newObj("fi-loop-clip", "clip 0 1", 465, 140, 70),
    newObj("fi-loop-msg", "prepend loop", 465, 190, 90),
    newObj("fi-seek-safe", "expr min(max(0.\\, $f1)\\, max(0.\\, $f2 - 1.))", 585, 190, 245),
    newObj("fi-groove", "groove~ #0_file_buffer 2", 185, 340, 190),
    newObj("fi-progress-snap", "snapshot~ 33", 405, 340, 95),
    newObj("fi-progress-clip", "clip 0. 1.", 405, 390, 80),
    newObj("fi-progress-line", "prepend line", 570, 440, 90),
    newObj("fi-elapsed-ms", "* 1.", 690, 390, 55),
    newObj("fi-elapsed-sec", "/ 1000.", 690, 440, 70),
    newObj("fi-gate-l", "*~ 0.", 185, 440, 55),
    newObj("fi-gate-r", "*~ 0.", 270, 440, 55),
    outlet("fi-out-l", 185, 540),
    outlet("fi-out-r", 270, 540),
    outlet("fi-out-playhead", 570, 540),
    outlet("fi-out-elapsed", 690, 540),
    outlet("fi-out-duration", 790, 540),
  ];
  const coreLines = [
    coloredLine("fi-enable", 0, "fi-enable-msg", 0, stateColor),
    coloredLine("fi-enable-msg", 0, "fi-enable-line", 0, stateColor),
    coloredLine("fi-path", 0, "fi-replace", 0, controlColor),
    coloredLine("fi-replace", 0, "fi-buffer", 0, controlColor),
    coloredLine("fi-buffer", 1, "fi-info", 0, controlColor),
    coloredLine("fi-info", 6, "fi-duration", 0, controlColor),
    coloredLine("fi-duration", 0, "fi-seek-safe", 1, controlColor),
    coloredLine("fi-duration", 0, "fi-duration-sec", 0, controlColor),
    coloredLine("fi-duration", 0, "fi-elapsed-ms", 1, controlColor),
    coloredLine("fi-duration-sec", 0, "fi-out-duration", 0, controlColor),
    coloredLine("fi-play", 0, "fi-play-clip", 0, stateColor),
    coloredLine("fi-play-clip", 0, "fi-play-sig", 0, stateColor),
    coloredLine("fi-play-sig", 0, "fi-groove", 0, audioColor),
    coloredLine("fi-loop", 0, "fi-loop-clip", 0, stateColor),
    coloredLine("fi-loop-clip", 0, "fi-loop-msg", 0, stateColor),
    coloredLine("fi-loop-msg", 0, "fi-groove", 0, stateColor),
    coloredLine("fi-seek", 0, "fi-seek-safe", 0, controlColor),
    coloredLine("fi-seek-safe", 0, "fi-groove", 0, controlColor),
    coloredLine("fi-groove", 0, "fi-gate-l", 0, audioColor),
    coloredLine("fi-groove", 1, "fi-gate-r", 0, audioColor),
    coloredLine("fi-groove", 2, "fi-progress-snap", 0, audioColor),
    coloredLine("fi-progress-snap", 0, "fi-progress-clip", 0, controlColor),
    coloredLine("fi-progress-clip", 0, "fi-elapsed-ms", 0, controlColor),
    coloredLine("fi-elapsed-ms", 0, "fi-progress-line", 0, controlColor),
    coloredLine("fi-progress-line", 0, "fi-out-playhead", 0, controlColor),
    coloredLine("fi-elapsed-ms", 0, "fi-elapsed-sec", 0, controlColor),
    coloredLine("fi-elapsed-sec", 0, "fi-out-elapsed", 0, controlColor),
    coloredLine("fi-enable-line", 0, "fi-gate-l", 1, stateColor),
    coloredLine("fi-enable-line", 0, "fi-gate-r", 1, stateColor),
    coloredLine("fi-gate-l", 0, "fi-out-l", 0, audioColor),
    coloredLine("fi-gate-r", 0, "fi-out-r", 0, audioColor),
  ];

  const boxes = [
    makeBox("f-bg", "fpic", 0, 0, 520, 340, {
      autofit: 1,
      background: 1,
      forceaspect: 1,
      ignoreclick: 1,
      pic: "file_panel_v1.png",
      numinlets: 1,
      numoutlets: 1,
      outlettype: ["jit_matrix"],
    }),
    toggle("f-enable", 30, 82, { varname: "file_enable" }),
    toggle("f-play", 74, 82, { varname: "file_play" }),
    toggle("f-loop", 118, 82, { varname: "file_loop" }),
    makeBox("f-drop", "live.drop", 170, 76, 164, 36, { varname: "file_drop" }),
    makeBox("f-load-button", "button", 359, 82, 24, 24, { varname: "file_load" }),
    newObj("f-open", "opendialog", 760, 390, 90),
    makeBox("f-waveform", "waveform~", 18, 136, 424, 124, {
      buffername: "#0_file_buffer",
      setmode: 1,
      outmode: 4,
      setunit: 0,
      varname: "file_waveform",
    }),
    makeBox("f-name", "message", 28, 285, 245, 22, { text: "No file loaded", ignoreclick: 1 }),
    makeBox("f-time-current", "message", 298, 285, 52, 22, { text: "00:00", ignoreclick: 1 }),
    comment("f-time-separator", "/", 354, 285, 10, 22),
    makeBox("f-time-total", "message", 368, 285, 52, 22, { text: "00:00", ignoreclick: 1 }),
    liveGain("f-gain", "File Input", 900, 600, 190, 0),
    makeBox("f-ext-enable", "inlet", 30, 390, 30, 30, { comment: "Enable 0/1" }),
    makeBox("f-ext-play", "inlet", 95, 390, 30, 30, { comment: "Play 0/1" }),
    subpatch("p File_control", controlBoxes, controlLines, 230, 500, 115, 22, [80, 80, 1160, 650]),
    subpatch("p File_input", coreBoxes, coreLines, 500, 500, 115, 22, [80, 80, 930, 650]),
    makeBox("f-out-l", "outlet", 900, 840, 30, 30, { comment: "File audio L" }),
    makeBox("f-out-r", "outlet", 970, 840, 30, 30, { comment: "File audio R" }),
  ];
  boxes.find((entry) => entry.box.id === "f-gain").box.varname = "file_output_gain";
  applyPresentation(boxes, {
    "f-bg": presentationRect(0, 0, 520, 340),
    "f-enable": presentationRect(26, 72, 24, 24),
    "f-play": presentationRect(70, 72, 24, 24),
    "f-loop": presentationRect(114, 72, 24, 24),
    "f-drop": presentationRect(170, 84, 164, 28),
    "f-load-button": presentationRect(348, 86, 24, 24),
    "f-waveform": presentationRect(24, 152, 412, 100),
    "f-name": presentationRect(28, 292, 242, 22),
    "f-time-current": presentationRect(298, 292, 52, 22),
    "f-time-separator": presentationRect(354, 293, 18, 20),
    "f-time-total": presentationRect(368, 292, 52, 22),
    "f-gain": presentationRect(465.5, 105.5, 28, 171),
  });

  const lines = [
    coloredLine("f-ext-enable", 0, "p-File-control", 0, stateColor),
    coloredLine("f-enable", 0, "p-File-control", 1, stateColor),
    coloredLine("f-ext-play", 0, "p-File-control", 2, stateColor),
    coloredLine("f-play", 0, "p-File-control", 3, stateColor),
    coloredLine("f-loop", 0, "p-File-control", 4, stateColor),
    coloredLine("f-drop", 0, "p-File-control", 5, controlColor),
    coloredLine("f-load-button", 0, "f-open", 0, controlColor),
    coloredLine("f-open", 0, "p-File-control", 5, controlColor),
    coloredLine("p-File-control", 0, "p-File-input", 0, stateColor),
    coloredLine("p-File-control", 1, "p-File-input", 2, stateColor),
    coloredLine("p-File-control", 2, "p-File-input", 3, stateColor),
    coloredLine("p-File-control", 3, "p-File-input", 1, controlColor),
    coloredLine("p-File-control", 4, "p-File-input", 4, controlColor),
    coloredLine("f-waveform", 2, "p-File-input", 4, controlColor),
    coloredLine("p-File-control", 5, "f-enable", 0, stateColor),
    coloredLine("p-File-control", 6, "f-play", 0, stateColor),
    coloredLine("p-File-control", 7, "f-loop", 0, stateColor),
    coloredLine("p-File-control", 8, "f-name", 0, controlColor),
    coloredLine("p-File-control", 9, "f-time-current", 0, controlColor),
    coloredLine("p-File-control", 10, "f-time-total", 0, controlColor),
    coloredLine("p-File-control", 11, "f-gain", 0, controlColor),
    coloredLine("p-File-input", 2, "f-waveform", 0, controlColor),
    coloredLine("p-File-input", 3, "p-File-control", 6, controlColor),
    coloredLine("p-File-input", 4, "p-File-control", 7, controlColor),
    coloredLine("p-File-input", 0, "f-gain", 0, audioColor),
    coloredLine("p-File-input", 1, "f-gain", 1, audioColor),
    coloredLine("f-gain", 0, "f-out-l", 0, audioColor),
    coloredLine("f-gain", 1, "f-out-r", 0, audioColor),
  ];

  const doc = patcher(boxes, lines, [80, 80, 520, 400], 1);
  doc.dependency_cache = [{
    name: "file_panel_v1.png",
    bootpath: ".",
    patcherrelativepath: ".",
    type: "PNG",
    implicit: 1,
  }];
  doc.parameters = {
    "f-gain": ["live.gain~", "File Input", 0],
    parameterbanks: {
      0: { index: 0, name: "", parameters: ["-", "-", "-", "-", "-", "-", "-", "-"] },
    },
    inherited_shortname: 1,
  };
  doc.autosave = 0;
  fs.writeFileSync(path.join(root, "mt_input_file_ui.maxpat"), JSON.stringify({ patcher: doc }, null, 2), "utf8");
}

function buildGranularInput() {
  const innerBoxes = [
    comment("gi-title", "Granular_input internals: mic/sample material -> mt_granular_synth -> enable ramp -> L/R", 35, 25, 920),
    inlet("gi-enable", 35, 90),
    inlet("gi-source", 135, 90),
    inlet("gi-record-in", 235, 90),
    inlet("gi-play", 335, 90),
    inlet("gi-preset", 435, 90),
    inlet("gi-sample", 570, 90),
    inlet("gi-position", 735, 90),
    msg("gi-enable-msg", "$1 20", 35, 140, 55),
    newObj("gi-enable-line", "line~", 35, 180, 50),
    newObj("gi-adc", "adc~ 1", 135, 140, 65),
    newObj("gi-file-silent", "sig~ 0.", 225, 140, 60),
    newObj("gi-selector", "selector~ 2", 135, 200, 95),
    newObj("gi-record-send", "s mt_granular_record", 235, 140, 150),
    newObj("gi-play-send", "s mt_granular_play", 335, 180, 130),
    newObj("gi-replace", "prepend replace", 570, 140, 120),
    newObj("gi-load-trigger", "t b l", 570, 185, 50),
    newObj("gi-load-send", "s mt_granular_load_sample", 570, 225, 175),
    newObj("gi-info-delay", "del 100", 760, 185, 60),
    newObj("gi-info", "info~ mt_granular_buffer", 570, 270, 180),
    newObj("gi-duration-limit", "clip 1. 600000.", 570, 315, 115),
    newObj("gi-total-send", "s mt_granular_total_ms", 700, 315, 175),
    newObj("gi-position-safe", "expr min(max(0.\\, $f1)\\, max(0.\\, $f2 - 1.))", 735, 140, 245),
    newObj("gi-position-send", "s mt_granular_position", 735, 185, 165),
    newObj("gi-preset-route", "route safe frozen", 435, 140, 120),
    msg("gi-preset-safe", ";\nmt_granular_wet 0.9;\nmt_granular_density 28;\nmt_granular_grain_size_pct 58;\nmt_granular_position 200;\nmt_granular_pitch 0;\nmt_granular_spray_pct 24;\nmt_granular_amp_db -3;\nmt_granular_output_db 6", 435, 200, 185),
    msg("gi-preset-frozen", ";\nmt_granular_wet 0.95;\nmt_granular_density 56;\nmt_granular_grain_size_pct 82;\nmt_granular_position 200;\nmt_granular_pitch 0;\nmt_granular_spray_pct 8;\nmt_granular_amp_db -6;\nmt_granular_output_db 8", 655, 335, 210),
    newObj("gi-synth", "mt_granular_synth", 135, 310, 135),
    newObj("gi-gate-l", "*~ 0.", 135, 405, 55),
    newObj("gi-gate-r", "*~ 0.", 220, 405, 55),
    outlet("gi-out-l", 135, 500),
    outlet("gi-out-r", 220, 500),
    outlet("gi-out-status", 570, 335),
  ];
  const innerLines = [
    line("gi-enable", 0, "gi-enable-msg", 0),
    line("gi-enable-msg", 0, "gi-enable-line", 0),
    line("gi-source", 0, "gi-selector", 0),
    line("gi-adc", 0, "gi-selector", 1),
    line("gi-file-silent", 0, "gi-selector", 2),
    line("gi-selector", 0, "gi-synth", 0),
    line("gi-record-in", 0, "gi-record-send", 0),
    line("gi-play", 0, "gi-play-send", 0),
    line("gi-sample", 0, "gi-replace", 0),
    line("gi-replace", 0, "gi-load-trigger", 0),
    line("gi-load-trigger", 1, "gi-load-send", 0),
    line("gi-load-trigger", 0, "gi-info-delay", 0),
    line("gi-info-delay", 0, "gi-info", 0),
    line("gi-info", 6, "gi-duration-limit", 0),
    line("gi-duration-limit", 0, "gi-out-status", 0),
    line("gi-duration-limit", 0, "gi-total-send", 0),
    line("gi-duration-limit", 0, "gi-position-safe", 1),
    line("gi-position", 0, "gi-position-safe", 0),
    line("gi-position-safe", 0, "gi-position-send", 0),
    line("gi-preset", 0, "gi-preset-route", 0),
    line("gi-preset-route", 0, "gi-preset-safe", 0),
    line("gi-preset-route", 1, "gi-preset-frozen", 0),
    line("gi-synth", 0, "gi-gate-l", 0),
    line("gi-synth", 1, "gi-gate-r", 0),
    line("gi-enable-line", 0, "gi-gate-l", 1),
    line("gi-enable-line", 0, "gi-gate-r", 1),
    line("gi-gate-l", 0, "gi-out-l", 0),
    line("gi-gate-r", 0, "gi-out-r", 0),
  ];

  const paramBoxes = [
    comment("gp-title", "Granular params: defaults/presets update the outer number boxes; numbers then send to synth params.", 35, 25, 760),
    inlet("gp-wet-in", 35, 90),
    inlet("gp-density-in", 135, 90),
    inlet("gp-size-in", 235, 90),
    inlet("gp-pitch-in", 335, 90),
    inlet("gp-spray-in", 435, 90),
    inlet("gp-amp-in", 535, 90),
    inlet("gp-outdb-in", 635, 90),
    inlet("gp-preset-in", 760, 90),
    newObj("gp-wet-send", "s mt_granular_wet", 35, 135, 140),
    newObj("gp-density-send", "s mt_granular_density", 135, 135, 150),
    newObj("gp-size-send", "s mt_granular_grain_size_pct", 235, 135, 200),
    newObj("gp-pitch-send", "s mt_granular_pitch", 335, 135, 150),
    newObj("gp-spray-send", "s mt_granular_spray_pct", 435, 135, 170),
    newObj("gp-amp-send", "s mt_granular_amp_db", 535, 135, 160),
    newObj("gp-outdb-send", "s mt_granular_output_db", 635, 135, 175),
    newObj("gp-load-defaults", "loadmess 0.9 28 58 0 24 -3 6", 35, 215, 210),
    newObj("gp-preset-route", "route safe frozen", 760, 135, 120),
    msg("gp-safe-values", "0.9 28 58 0 24 -3 6", 760, 180, 160),
    msg("gp-frozen-values", "0.95 56 82 0 8 -6 8", 930, 180, 165),
    newObj("gp-unpack", "unpack f f f f f f f", 35, 260, 170),
    outlet("gp-wet-out", 35, 330),
    outlet("gp-density-out", 85, 330),
    outlet("gp-size-out", 135, 330),
    outlet("gp-pitch-out", 185, 330),
    outlet("gp-spray-out", 235, 330),
    outlet("gp-amp-out", 285, 330),
    outlet("gp-outdb-out", 335, 330),
  ];
  const paramLines = [
    line("gp-wet-in", 0, "gp-wet-send", 0),
    line("gp-density-in", 0, "gp-density-send", 0),
    line("gp-size-in", 0, "gp-size-send", 0),
    line("gp-pitch-in", 0, "gp-pitch-send", 0),
    line("gp-spray-in", 0, "gp-spray-send", 0),
    line("gp-amp-in", 0, "gp-amp-send", 0),
    line("gp-outdb-in", 0, "gp-outdb-send", 0),
    line("gp-load-defaults", 0, "gp-unpack", 0),
    line("gp-preset-in", 0, "gp-preset-route", 0),
    line("gp-preset-route", 0, "gp-safe-values", 0),
    line("gp-preset-route", 1, "gp-frozen-values", 0),
    line("gp-safe-values", 0, "gp-unpack", 0),
    line("gp-frozen-values", 0, "gp-unpack", 0),
    line("gp-unpack", 0, "gp-wet-out", 0),
    line("gp-unpack", 1, "gp-density-out", 0),
    line("gp-unpack", 2, "gp-size-out", 0),
    line("gp-unpack", 3, "gp-pitch-out", 0),
    line("gp-unpack", 4, "gp-spray-out", 0),
    line("gp-unpack", 5, "gp-amp-out", 0),
    line("gp-unpack", 6, "gp-outdb-out", 0),
  ];

  const boxes = [
    comment("g-title", "MT Input Granular - portfolio source box", 24, 20, 360, 24),
    comment("g-note", "Record mic or load sample into mt_granular_synth. Controls expose density, size, pitch, spray, amp, wet, and output.", 24, 48, 820),
    inlet("g-ext-enable", 24, 95),
    comment("g-ext-enable-label", "in: enable", 60, 100, 80),
    toggle("g-enable", 24, 145),
    comment("g-enable-label", "Enable", 55, 148, 70),
    msg("g-source-mic", "1", 120, 145, 35),
    comment("g-source-mic-label", "Mic Source", 160, 148, 90),
    msg("g-source-file", "2", 255, 145, 35),
    comment("g-source-file-label", "File", 295, 148, 55),
    toggle("g-record", 120, 210),
    comment("g-record-label", "Record Material", 150, 213, 120),
    toggle("g-play", 320, 210),
    comment("g-play-label", "Play Texture", 350, 213, 100),
    makeBox("g-drop", "dropfile", 520, 140, 155, 34),
    comment("g-drop-label", "Drop Sample", 520, 116, 100),
    makeBox("g-load-button", "button", 690, 144, 24, 24),
    comment("g-load-label", "Load", 720, 146, 55),
    newObj("g-open", "opendialog", 690, 180, 90),
    msg("g-safe", "safe", 520, 230, 55),
    comment("g-safe-label", "Safe Cloud", 580, 233, 90),
    msg("g-frozen", "frozen", 690, 230, 70),
    comment("g-frozen-label", "Frozen Pad", 765, 233, 90),
    makeBox("g-waveform", "waveform~", 520, 300, 360, 105, {
      buffername: "mt_granular_buffer",
      setmode: 1,
      outmode: 4,
      setunit: 0,
    }),
    comment("g-wave-label", "Buffer view / drag position", 520, 275, 220),
    comment("g-ctrl-label", "Performance controls", 24, 285, 160),
    flonum("g-wet", 24, 325, 62, { minimum: 0., maximum: 1. }),
    comment("g-wet-label", "wet 0-1", 24, 302, 80),
    flonum("g-density", 175, 325, 62, { minimum: 1., maximum: 80. }),
    comment("g-density-label", "density", 175, 302, 85),
    flonum("g-size", 326, 325, 62, { minimum: 0., maximum: 100. }),
    comment("g-size-label", "grain size %", 326, 302, 105),
    flonum("g-pitch", 24, 455, 62, { minimum: -24., maximum: 24. }),
    comment("g-pitch-label", "pitch st", 24, 432, 80),
    flonum("g-spray", 175, 455, 62, { minimum: 0., maximum: 100. }),
    comment("g-spray-label", "spray %", 175, 432, 80),
    flonum("g-amp", 326, 455, 62, { minimum: -60., maximum: -3. }),
    comment("g-amp-label", "grain amp dB", 326, 432, 110),
    flonum("g-outdb", 477, 455, 62, { minimum: -60., maximum: 12. }),
    comment("g-outdb-label", "makeup dB", 477, 432, 90),
    subpatch("p Granular_params", paramBoxes, paramLines, 220, 590, 160, 22, [80, 80, 1120, 420]),
    subpatch("p Granular_input", innerBoxes, innerLines, 24, 590, 160, 22, [80, 80, 980, 620]),
    liveGain("g-gain", "Granular Input", 705, 455, 150, 0),
    flonum("g-status", 900, 455, 90),
    comment("g-status-label", "duration ms", 900, 432, 90),
    makeBox("g-dac", "ezdac~", 835, 555, 45, 45),
    outlet("g-out-l", 920, 555),
    outlet("g-out-r", 970, 555),
    comment("g-out-label", "out 1/2: audio L/R", 900, 595, 170),
    msg("g-enable-set", "set $1", 24, 180, 60),
    newObj("g-enable-state-send", "s mt_granular_enable_state", 24, 210, 185),
  ];
  applyPresentation(boxes, {
    "g-title": presentationRect(12, 8, 320, 22),
    "g-note": presentationRect(12, 30, 520, 36),
    "g-enable": presentationRect(12, 78, 24, 24),
    "g-enable-label": presentationRect(44, 80, 62, 22),
    "g-source-mic": presentationRect(112, 78, 35, 22),
    "g-source-mic-label": presentationRect(152, 80, 86, 22),
    "g-source-file": presentationRect(245, 78, 35, 22),
    "g-source-file-label": presentationRect(286, 80, 46, 22),
    "g-record": presentationRect(12, 122, 24, 24),
    "g-record-label": presentationRect(44, 124, 112, 22),
    "g-play": presentationRect(172, 122, 24, 24),
    "g-play-label": presentationRect(204, 124, 94, 22),
    "g-drop-label": presentationRect(356, 74, 95, 22),
    "g-drop": presentationRect(356, 98, 150, 34),
    "g-load-button": presentationRect(514, 103, 24, 24),
    "g-load-label": presentationRect(542, 105, 45, 22),
    "g-safe": presentationRect(356, 148, 55, 22),
    "g-safe-label": presentationRect(416, 150, 88, 22),
    "g-frozen": presentationRect(492, 148, 62, 22),
    "g-frozen-label": presentationRect(558, 150, 78, 22),
    "g-wave-label": presentationRect(356, 188, 180, 22),
    "g-waveform": presentationRect(356, 212, 260, 92),
    "g-ctrl-label": presentationRect(12, 172, 150, 22),
    "g-wet-label": presentationRect(12, 202, 70, 22),
    "g-wet": presentationRect(12, 226, 58, 22),
    "g-density-label": presentationRect(94, 202, 75, 22),
    "g-density": presentationRect(94, 226, 58, 22),
    "g-size-label": presentationRect(176, 202, 95, 22),
    "g-size": presentationRect(176, 226, 58, 22),
    "g-pitch-label": presentationRect(12, 270, 70, 22),
    "g-pitch": presentationRect(12, 294, 58, 22),
    "g-spray-label": presentationRect(94, 270, 70, 22),
    "g-spray": presentationRect(94, 294, 58, 22),
    "g-amp-label": presentationRect(176, 270, 100, 22),
    "g-amp": presentationRect(176, 294, 58, 22),
    "g-outdb-label": presentationRect(258, 270, 86, 22),
    "g-outdb": presentationRect(258, 294, 58, 22),
    "g-gain": presentationRect(440, 326, 54, 122),
    "g-status-label": presentationRect(12, 342, 82, 22),
    "g-status": presentationRect(94, 342, 70, 22),
  });
  const lines = [
    line("g-ext-enable", 0, "g-enable-set", 0),
    line("g-enable-set", 0, "g-enable", 0),
    line("g-ext-enable", 0, "p-Granular-input", 0),
    line("g-enable", 0, "p-Granular-input", 0),
    line("g-enable", 0, "g-enable-state-send", 0),
    line("g-source-mic", 0, "p-Granular-input", 1),
    line("g-source-file", 0, "p-Granular-input", 1),
    line("g-record", 0, "p-Granular-input", 2),
    line("g-play", 0, "p-Granular-input", 3),
    line("g-safe", 0, "p-Granular-params", 7),
    line("g-frozen", 0, "p-Granular-params", 7),
    line("g-drop", 0, "p-Granular-input", 5),
    line("g-load-button", 0, "g-open", 0),
    line("g-open", 0, "p-Granular-input", 5),
    line("g-waveform", 2, "p-Granular-input", 6),
    line("p-Granular-input", 0, "g-gain", 0),
    line("p-Granular-input", 1, "g-gain", 1),
    line("p-Granular-input", 2, "g-status", 0),
    line("p-Granular-input", 2, "g-waveform", 1),
    line("g-wet", 0, "p-Granular-params", 0),
    line("g-density", 0, "p-Granular-params", 1),
    line("g-size", 0, "p-Granular-params", 2),
    line("g-pitch", 0, "p-Granular-params", 3),
    line("g-spray", 0, "p-Granular-params", 4),
    line("g-amp", 0, "p-Granular-params", 5),
    line("g-outdb", 0, "p-Granular-params", 6),
    line("p-Granular-params", 0, "g-wet", 0),
    line("p-Granular-params", 1, "g-density", 0),
    line("p-Granular-params", 2, "g-size", 0),
    line("p-Granular-params", 3, "g-pitch", 0),
    line("p-Granular-params", 4, "g-spray", 0),
    line("p-Granular-params", 5, "g-amp", 0),
    line("p-Granular-params", 6, "g-outdb", 0),
    line("g-gain", 0, "g-out-l", 0),
    line("g-gain", 1, "g-out-r", 0),
    line("g-gain", 0, "g-dac", 0),
    line("g-gain", 1, "g-dac", 1),
  ];
  writeMaxpat("mt_input_granular.maxpat", boxes, lines, [80, 80, 1080, 740]);
}

function buildGranularInputUI(outputName = "mt_input_granular_ui.maxpat") {
  const stateColor = [0.44, 0.72, 1, 1];
  const controlColor = [1, 0.62, 0.24, 1];
  const audioColor = [0.68, 0.95, 0.34, 1];

  const controlBoxes = [
    comment("gc-title", "Granular control: linked enable / material state / presets / status formatting", 30, 25, 760),
    inlet("gc-ext-enable", 30, 80),
    inlet("gc-ui-enable", 120, 80),
    inlet("gc-record", 210, 80),
    inlet("gc-play", 300, 80),
    inlet("gc-path", 390, 80),
    inlet("gc-preset", 500, 80),
    inlet("gc-duration", 610, 80),

    newObj("gc-ext-enable-clip", "clip 0 1", 30, 130, 70),
    newObj("gc-enable-send", "s mt_granular_enable_state", 120, 130, 180),
    newObj("gc-enable-receive", "r mt_granular_enable_state", 30, 180, 180),
    newObj("gc-enable-trigger", "t i i", 30, 230, 50),
    msg("gc-enable-set", "set $1", 100, 230, 58),

    newObj("gc-record-clip", "clip 0 1", 210, 130, 70),
    newObj("gc-record-trigger", "t i i", 210, 180, 50),
    msg("gc-record-set", "set $1", 280, 180, 58),
    newObj("gc-record-status", "sel 0 1", 210, 230, 60),
    msg("gc-status-idle", "set Idle", 210, 280, 62),
    msg("gc-status-recording", "set Recording", 285, 280, 92),

    newObj("gc-play-clip", "clip 0 1", 390, 130, 70),
    newObj("gc-play-trigger", "t i i", 390, 180, 50),
    msg("gc-play-set", "set $1", 460, 180, 58),

    newObj("gc-path-order", "t l b b", 500, 130, 58),
    msg("gc-path-stop-record", "0", 570, 180, 32),
    msg("gc-path-stop-play", "0", 615, 180, 32),
    newObj("gc-path-fanout", "t l l b", 500, 230, 55),
    newObj("gc-strip-path", "strippath", 575, 280, 70),
    newObj("gc-file-set", "prepend set", 575, 330, 90),
    msg("gc-status-loaded", "set Loaded", 675, 280, 78),

    newObj("gc-preset-select", "sel 0 1", 760, 130, 60),
    msg("gc-safe-values", "90 28 129.370483 0 57.6 -32 0", 760, 180, 225),
    msg("gc-frozen-values", "95 56 280.117862 0 6.4 -32 0", 990, 180, 230),
    newObj("gc-param-unpack", "unpack f f f f f f f", 760, 230, 170),

    newObj("gc-duration-sec", "/ 1000.", 610, 390, 70),
    newObj("gc-duration-int", "i", 610, 430, 35),
    newObj("gc-duration-parts", "t i i", 610, 470, 50),
    newObj("gc-duration-min", "/ 60", 595, 510, 45),
    newObj("gc-duration-rem", "% 60", 655, 510, 45),
    newObj("gc-duration-pack", "pak i i", 610, 550, 60),
    newObj("gc-duration-format", "sprintf %02ld:%02ld", 610, 590, 125),
    newObj("gc-duration-set", "prepend set", 610, 630, 90),

    newObj("gc-loadbang", "loadbang", 30, 390, 65),
    newObj("gc-init-trigger", "t b b b b b b b b", 30, 430, 135),
    msg("gc-init-enable", "0", 30, 480, 32),
    msg("gc-init-record", "0", 75, 480, 32),
    msg("gc-init-play", "0", 120, 480, 32),
    msg("gc-init-file", "set No material", 165, 480, 100),
    msg("gc-init-status", "set Idle", 280, 480, 62),
    msg("gc-init-duration", "set 00:00", 355, 480, 76),
    msg("gc-init-gain", "0", 445, 480, 32),
    msg("gc-init-params", "90 28 129.370483 0 57.6 -32 0", 490, 480, 225),

    outlet("gc-enable-out", 30, 700),
    outlet("gc-record-out", 85, 700),
    outlet("gc-play-out", 140, 700),
    outlet("gc-path-out", 195, 700),
    outlet("gc-enable-ui", 250, 700),
    outlet("gc-record-ui", 305, 700),
    outlet("gc-play-ui", 360, 700),
    outlet("gc-file-ui", 415, 700),
    outlet("gc-status-ui", 470, 700),
    outlet("gc-duration-ui", 525, 700),
    outlet("gc-gain-ui", 580, 700),
    outlet("gc-wet-ui", 635, 700),
    outlet("gc-density-ui", 690, 700),
    outlet("gc-size-ui", 745, 700),
    outlet("gc-pitch-ui", 800, 700),
    outlet("gc-spray-ui", 855, 700),
    outlet("gc-amp-ui", 910, 700),
    outlet("gc-makeup-ui", 965, 700),
  ];
  const controlLines = [
    coloredLine("gc-ext-enable", 0, "gc-ext-enable-clip", 0, stateColor),
    coloredLine("gc-ext-enable-clip", 0, "gc-enable-trigger", 0, stateColor),
    coloredLine("gc-ui-enable", 0, "gc-enable-send", 0, stateColor),
    coloredLine("gc-enable-receive", 0, "gc-enable-trigger", 0, stateColor),
    coloredLine("gc-enable-trigger", 1, "gc-enable-out", 0, stateColor),
    coloredLine("gc-enable-trigger", 0, "gc-enable-set", 0, stateColor),
    coloredLine("gc-enable-set", 0, "gc-enable-ui", 0, stateColor),

    coloredLine("gc-record", 0, "gc-record-clip", 0, stateColor),
    coloredLine("gc-record-clip", 0, "gc-record-trigger", 0, stateColor),
    coloredLine("gc-record-trigger", 1, "gc-record-out", 0, stateColor),
    coloredLine("gc-record-trigger", 1, "gc-record-status", 0, stateColor),
    coloredLine("gc-record-trigger", 0, "gc-record-set", 0, stateColor),
    coloredLine("gc-record-set", 0, "gc-record-ui", 0, stateColor),
    coloredLine("gc-record-status", 0, "gc-status-idle", 0, stateColor),
    coloredLine("gc-record-status", 1, "gc-status-recording", 0, stateColor),
    coloredLine("gc-status-idle", 0, "gc-status-ui", 0, stateColor),
    coloredLine("gc-status-recording", 0, "gc-status-ui", 0, stateColor),

    coloredLine("gc-play", 0, "gc-play-clip", 0, stateColor),
    coloredLine("gc-play-clip", 0, "gc-play-trigger", 0, stateColor),
    coloredLine("gc-play-trigger", 1, "gc-play-out", 0, stateColor),
    coloredLine("gc-play-trigger", 0, "gc-play-set", 0, stateColor),
    coloredLine("gc-play-set", 0, "gc-play-ui", 0, stateColor),

    coloredLine("gc-path", 0, "gc-path-order", 0, controlColor),
    coloredLine("gc-path-order", 2, "gc-path-stop-record", 0, stateColor),
    coloredLine("gc-path-order", 1, "gc-path-stop-play", 0, stateColor),
    coloredLine("gc-path-order", 0, "gc-path-fanout", 0, controlColor),
    coloredLine("gc-path-stop-record", 0, "gc-record-trigger", 0, stateColor),
    coloredLine("gc-path-stop-play", 0, "gc-play-trigger", 0, stateColor),
    coloredLine("gc-path-fanout", 2, "gc-status-loaded", 0, controlColor),
    coloredLine("gc-path-fanout", 1, "gc-strip-path", 0, controlColor),
    coloredLine("gc-path-fanout", 0, "gc-path-out", 0, controlColor),
    coloredLine("gc-strip-path", 0, "gc-file-set", 0, controlColor),
    coloredLine("gc-file-set", 0, "gc-file-ui", 0, controlColor),
    coloredLine("gc-status-loaded", 0, "gc-status-ui", 0, controlColor),

    coloredLine("gc-preset", 0, "gc-preset-select", 0, controlColor),
    coloredLine("gc-preset-select", 0, "gc-safe-values", 0, controlColor),
    coloredLine("gc-preset-select", 1, "gc-frozen-values", 0, controlColor),
    coloredLine("gc-safe-values", 0, "gc-param-unpack", 0, controlColor),
    coloredLine("gc-frozen-values", 0, "gc-param-unpack", 0, controlColor),

    coloredLine("gc-duration", 0, "gc-duration-sec", 0, controlColor),
    coloredLine("gc-duration-sec", 0, "gc-duration-int", 0, controlColor),
    coloredLine("gc-duration-int", 0, "gc-duration-parts", 0, controlColor),
    coloredLine("gc-duration-parts", 1, "gc-duration-rem", 0, controlColor),
    coloredLine("gc-duration-parts", 0, "gc-duration-min", 0, controlColor),
    coloredLine("gc-duration-rem", 0, "gc-duration-pack", 1, controlColor),
    coloredLine("gc-duration-min", 0, "gc-duration-pack", 0, controlColor),
    coloredLine("gc-duration-pack", 0, "gc-duration-format", 0, controlColor),
    coloredLine("gc-duration-format", 0, "gc-duration-set", 0, controlColor),
    coloredLine("gc-duration-set", 0, "gc-duration-ui", 0, controlColor),

    coloredLine("gc-loadbang", 0, "gc-init-trigger", 0, controlColor),
    coloredLine("gc-init-trigger", 7, "gc-init-enable", 0, controlColor),
    coloredLine("gc-init-trigger", 6, "gc-init-record", 0, controlColor),
    coloredLine("gc-init-trigger", 5, "gc-init-play", 0, controlColor),
    coloredLine("gc-init-trigger", 4, "gc-init-file", 0, controlColor),
    coloredLine("gc-init-trigger", 3, "gc-init-status", 0, controlColor),
    coloredLine("gc-init-trigger", 2, "gc-init-duration", 0, controlColor),
    coloredLine("gc-init-trigger", 1, "gc-init-gain", 0, controlColor),
    coloredLine("gc-init-trigger", 0, "gc-init-params", 0, controlColor),
    coloredLine("gc-init-enable", 0, "gc-enable-send", 0, stateColor),
    coloredLine("gc-init-record", 0, "gc-record-trigger", 0, stateColor),
    coloredLine("gc-init-play", 0, "gc-play-trigger", 0, stateColor),
    coloredLine("gc-init-file", 0, "gc-file-ui", 0, controlColor),
    coloredLine("gc-init-status", 0, "gc-status-ui", 0, controlColor),
    coloredLine("gc-init-duration", 0, "gc-duration-ui", 0, controlColor),
    coloredLine("gc-init-gain", 0, "gc-gain-ui", 0, controlColor),
    coloredLine("gc-init-params", 0, "gc-param-unpack", 0, controlColor),
  ];
  for (let i = 0; i < 7; i += 1) {
    controlLines.push(coloredLine("gc-param-unpack", i, ["gc-wet-ui", "gc-density-ui", "gc-size-ui", "gc-pitch-ui", "gc-spray-ui", "gc-amp-ui", "gc-makeup-ui"][i], 0, controlColor));
  }

  const coreBoxes = [
    comment("gi-title", "Granular DSP: mic record / sample replace -> synth -> position -> 20 ms enable ramp -> L/R", 30, 25, 820),
    inlet("gi-enable", 30, 80),
    inlet("gi-record", 140, 80),
    inlet("gi-play", 250, 80),
    inlet("gi-path", 360, 80),
    inlet("gi-position", 500, 80),
    msg("gi-enable-msg", "$1 20", 30, 135, 55),
    newObj("gi-enable-line", "line~", 30, 180, 50),
    newObj("gi-adc", "adc~ 1", 140, 135, 65),
    newObj("gi-record-send", "s mt_granular_record", 140, 180, 150),
    newObj("gi-play-send", "s mt_granular_play", 250, 180, 140),
    newObj("gi-replace", "prepend replace", 360, 135, 120),
    newObj("gi-load-trigger", "t b l", 360, 180, 50),
    newObj("gi-load-send", "s mt_granular_load_sample", 430, 225, 175),
    newObj("gi-info-delay", "del 100", 360, 225, 60),
    newObj("gi-info", "info~ mt_granular_buffer", 360, 275, 180),
    newObj("gi-duration", "clip 1. 600000.", 360, 325, 115),
    newObj("gi-duration-store", "f 30000.", 500, 325, 80),
    newObj("gi-total-send", "s mt_granular_total_ms", 600, 325, 175),
    newObj("gi-position-safe", "expr min(max(0.\\, $f1)\\, max(0.\\, $f2 - 1.))", 500, 180, 245),
    newObj("gi-position-send", "s mt_granular_position", 500, 230, 165),
    newObj("gi-position-receive", "r mt_granular_position", 680, 180, 165),
    newObj("gi-position-line", "prepend line", 680, 230, 90),
    newObj("gi-synth", "mt_granular_synth", 140, 325, 135),
    newObj("gi-gate-l", "*~ 0.", 140, 410, 55),
    newObj("gi-gate-r", "*~ 0.", 225, 410, 55),
    outlet("gi-out-l", 140, 510),
    outlet("gi-out-r", 225, 510),
    outlet("gi-duration-out", 360, 510),
    outlet("gi-position-out", 500, 510),
  ];
  const coreLines = [
    coloredLine("gi-enable", 0, "gi-enable-msg", 0, stateColor),
    coloredLine("gi-enable-msg", 0, "gi-enable-line", 0, stateColor),
    coloredLine("gi-adc", 0, "gi-synth", 0, audioColor),
    coloredLine("gi-record", 0, "gi-record-send", 0, stateColor),
    coloredLine("gi-play", 0, "gi-play-send", 0, stateColor),
    coloredLine("gi-path", 0, "gi-replace", 0, controlColor),
    coloredLine("gi-replace", 0, "gi-load-trigger", 0, controlColor),
    coloredLine("gi-load-trigger", 1, "gi-load-send", 0, controlColor),
    coloredLine("gi-load-trigger", 0, "gi-info-delay", 0, controlColor),
    coloredLine("gi-info-delay", 0, "gi-info", 0, controlColor),
    coloredLine("gi-info", 6, "gi-duration", 0, controlColor),
    coloredLine("gi-duration", 0, "gi-duration-store", 0, controlColor),
    coloredLine("gi-duration", 0, "gi-total-send", 0, controlColor),
    coloredLine("gi-duration", 0, "gi-duration-out", 0, controlColor),
    coloredLine("gi-position", 0, "gi-position-safe", 0, controlColor),
    coloredLine("gi-duration-store", 0, "gi-position-safe", 1, controlColor),
    coloredLine("gi-position-safe", 0, "gi-position-send", 0, controlColor),
    coloredLine("gi-position-receive", 0, "gi-position-line", 0, controlColor),
    coloredLine("gi-position-line", 0, "gi-position-out", 0, controlColor),
    coloredLine("gi-synth", 0, "gi-gate-l", 0, audioColor),
    coloredLine("gi-synth", 1, "gi-gate-r", 0, audioColor),
    coloredLine("gi-enable-line", 0, "gi-gate-l", 1, stateColor),
    coloredLine("gi-enable-line", 0, "gi-gate-r", 1, stateColor),
    coloredLine("gi-gate-l", 0, "gi-out-l", 0, audioColor),
    coloredLine("gi-gate-r", 0, "gi-out-r", 0, audioColor),
  ];

  const paramBoxes = [
    comment("gp-title", "Granular parameters: visible values publish directly to the synthesis engine", 30, 25, 620),
  ];
  const paramLines = [];
  const paramDefs = [
    ["wet", "s mt_granular_wet", "expr $f1 / 100."],
    ["density", "s mt_granular_density"],
    ["size", "s mt_granular_grain_size_pct", "expr 100. * log($f1 / 20.) / log(25.)"],
    ["pitch", "s mt_granular_pitch"],
    ["spray", "s mt_granular_spray_pct", "expr 100. * sqrt($f1 / 1000.)"],
    ["amp", "s mt_granular_amp_db"],
    ["makeup", "s mt_granular_output_db"],
  ];
  const paramXs = [30, 230, 400, 660, 820, 1060, 1240];
  paramDefs.forEach(([name, sendText, convertText], index) => {
    const x = paramXs[index];
    paramBoxes.push(inlet(`gp-${name}-in`, x, 80));
    if (convertText) {
      const conversionWidth = name === "size" ? 230 : name === "spray" ? 210 : 150;
      paramBoxes.push(newObj(`gp-${name}-convert`, convertText, x, 135, conversionWidth));
      paramBoxes.push(newObj(`gp-${name}-send`, sendText, x, 180, 110));
      paramLines.push(coloredLine(`gp-${name}-in`, 0, `gp-${name}-convert`, 0, controlColor));
      paramLines.push(coloredLine(`gp-${name}-convert`, 0, `gp-${name}-send`, 0, controlColor));
    } else {
      paramBoxes.push(newObj(`gp-${name}-send`, sendText, x, 135, 110));
      paramLines.push(coloredLine(`gp-${name}-in`, 0, `gp-${name}-send`, 0, controlColor));
    }
  });

  const dialDefs = [
    ["wet", "Wet (%)", 0, 100, 36], ["density", "Density (gr/s)", 1, 80, 125],
    ["size", "Size (ms)", 20, 500, 214], ["pitch", "Pitch (st)", -24, 24, 303],
    ["spray", "Spray (ms)", 0, 1000, 392], ["amp", "Grain Amp (dB)", -60, -3, 481],
    ["makeup", "Texture Gain (dB)", -60, 12, 570],
  ];
  const knobMapBoxes = [
    comment("gkm-title", "Granular knob map: pictctrl range 255 outputs 0-254; set paths do not output", 25, 20, 820),
  ];
  const knobMapLines = [];
  dialDefs.forEach(([name, , minimum, maximum], index) => {
    const rawX = 25 + index * 135;
    const valueX = 1000 + index * 135;
    knobMapBoxes.push(inlet(`gkm-${name}-raw-in`, rawX, 70));
    knobMapBoxes.push(inlet(`gkm-${name}-value-in`, valueX, 250));
    knobMapBoxes.push(newObj(`gkm-${name}-raw-clip`, "clip 0 254", rawX, 115, 80));
    const toValue = name === "size"
      ? "expr 20. * pow(25.\\, $f1 / 254.)"
      : name === "spray"
        ? "expr pow($f1 / 254.\\, 2.) * 1000."
        : `scale 0 254 ${minimum}. ${maximum}.`;
    const toRaw = name === "size"
      ? "expr 254. * log($f1 / 20.) / log(25.)"
      : name === "spray"
        ? "expr 254. * sqrt($f1 / 1000.)"
        : `scale ${minimum}. ${maximum}. 0 254`;
    knobMapBoxes.push(newObj(`gkm-${name}-to-value`, toValue, rawX, 160, name === "size" ? 215 : 170));
    knobMapBoxes.push(newObj(`gkm-${name}-value-clip`, `clip ${minimum}. ${maximum}.`, valueX, 295, 100));
    knobMapBoxes.push(newObj(`gkm-${name}-to-raw`, toRaw, valueX, 340, name === "size" ? 240 : 180));
    knobMapBoxes.push(newObj(`gkm-${name}-raw-int`, "i", valueX, 385, 35));
    knobMapBoxes.push(newObj(`gkm-${name}-set`, "prepend set", valueX, 430, 90));
    knobMapBoxes.push(outlet(`gkm-${name}-value-out`, rawX, 500));
    knobMapBoxes.push(outlet(`gkm-${name}-set-out`, valueX, 500));
    knobMapLines.push(coloredLine(`gkm-${name}-raw-in`, 0, `gkm-${name}-raw-clip`, 0, controlColor));
    knobMapLines.push(coloredLine(`gkm-${name}-raw-clip`, 0, `gkm-${name}-to-value`, 0, controlColor));
    knobMapLines.push(coloredLine(`gkm-${name}-to-value`, 0, `gkm-${name}-value-out`, 0, controlColor));
    knobMapLines.push(coloredLine(`gkm-${name}-value-in`, 0, `gkm-${name}-value-clip`, 0, controlColor));
    knobMapLines.push(coloredLine(`gkm-${name}-value-clip`, 0, `gkm-${name}-to-raw`, 0, controlColor));
    knobMapLines.push(coloredLine(`gkm-${name}-to-raw`, 0, `gkm-${name}-raw-int`, 0, controlColor));
    knobMapLines.push(coloredLine(`gkm-${name}-raw-int`, 0, `gkm-${name}-set`, 0, controlColor));
    knobMapLines.push(coloredLine(`gkm-${name}-set`, 0, `gkm-${name}-set-out`, 0, controlColor));
  });

  const boxes = [
    makeBox("g-bg", "fpic", 0, 0, 720, 440, {
      autofit: 1, background: 1, forceaspect: 1, ignoreclick: 1, pic: "granular_panel_v1.png",
      numinlets: 1, numoutlets: 1, outlettype: ["jit_matrix"],
    }),
    toggle("g-enable", 30, 78, { varname: "granular_enable" }),
    toggle("g-record", 104, 78, { varname: "granular_record" }),
    toggle("g-play", 190, 78, { varname: "granular_play" }),
    makeBox("g-drop", "live.drop", 274, 72, 128, 36, { varname: "granular_drop" }),
    makeBox("g-load", "button", 425, 78, 24, 24, { varname: "granular_load" }),
    newObj("g-open", "opendialog", 950, 120, 90),
    makeBox("g-preset", "umenu", 484, 79, 130, 22, { items: ["Safe Cloud", ",", "Frozen Pad"], varname: "granular_preset" }),
    makeBox("g-waveform", "waveform~", 18, 132, 620, 160, {
      buffername: "mt_granular_buffer", setmode: 1, outmode: 4, setunit: 0, varname: "granular_waveform",
    }),
    makeBox("g-file", "message", 24, 310, 225, 22, { text: "No material", ignoreclick: 1 }),
    makeBox("g-status", "message", 268, 310, 140, 22, { text: "Idle", ignoreclick: 1 }),
    makeBox("g-duration", "message", 450, 310, 74, 22, { text: "00:00", ignoreclick: 1 }),
    liveGain("g-gain", "Granular Input", 1050, 120, 210, 0),
    makeBox("g-ext-enable", "inlet", 30, 540, 30, 30, { comment: "Enable 0/1" }),
    subpatch("p Granular_control", controlBoxes, controlLines, 180, 620, 140, 22, [80, 80, 1120, 800]),
    subpatch("p Granular_input", coreBoxes, coreLines, 420, 620, 130, 22, [80, 80, 860, 610]),
    subpatch("p Granular_params", paramBoxes, paramLines, 650, 620, 135, 22, [80, 80, 1420, 300]),
    subpatch("p Granular_knob_map", knobMapBoxes, knobMapLines, 850, 620, 165, 22, [80, 80, 1950, 590]),
    makeBox("g-out-l", "outlet", 1050, 850, 30, 30, { comment: "Granular audio L" }),
    makeBox("g-out-r", "outlet", 1120, 850, 30, 30, { comment: "Granular audio R" }),
  ];
  boxes.find((entry) => entry.box.id === "g-gain").box.varname = "granular_output_gain";

  dialDefs.forEach(([name, , minimum, maximum, x]) => {
    const dialId = `g-${name}-dial`;
    const valueId = `g-${name}-value`;
    boxes.push(makeBox(dialId, "pictctrl", x, 360, 44, 44, {
      frames: 64, mode: 2, multiplier: 1,
      name: name === "amp" || name === "makeup" ? "granular_knob_gain_v1.png" : "granular_knob_v1.png",
      range: 255,
      trackhorizontal: 1, trackvertical: 1, tracking: 1, parameter_enable: 0,
      numinlets: 1, numoutlets: 1, outlettype: ["int"],
      varname: `granular_${name === "size" ? "grain_size" : name === "amp" ? "grain_amp" : name}`,
    }));
    boxes.push(flonum(valueId, x - 6, 407, 56, {
      minimum,
      maximum,
      numdecimalplaces: name === "wet" ? 0 : 1,
    }));
  });

  const presentation = {
    "g-bg": presentationRect(0, 0, 720, 440), "g-enable": presentationRect(41, 70, 24, 24),
    "g-record": presentationRect(123, 70, 24, 24), "g-play": presentationRect(225, 70, 24, 24),
    "g-drop": presentationRect(296, 70, 132, 34), "g-load": presentationRect(449, 75, 24, 24),
    "g-preset": presentationRect(506, 79, 114, 22), "g-waveform": presentationRect(24, 145, 606, 138),
    "g-file": presentationRect(24, 312, 230, 22), "g-status": presentationRect(264, 312, 170, 22),
    "g-duration": presentationRect(444, 312, 186, 22),
    "g-gain": presentationRect(660.8888938128948, 112, 34, 230),
  };
  dialDefs.forEach(([name, , , , x]) => {
    presentation[`g-${name}-dial`] = presentationRect(x, 365, 44, 44);
    presentation[`g-${name}-value`] = presentationRect(x - 6, 406, 56, 22);
  });
  applyPresentation(boxes, presentation);

  const lines = [
    coloredLine("g-ext-enable", 0, "p-Granular-control", 0, stateColor),
    coloredLine("g-enable", 0, "p-Granular-control", 1, stateColor),
    coloredLine("g-record", 0, "p-Granular-control", 2, stateColor),
    coloredLine("g-play", 0, "p-Granular-control", 3, stateColor),
    coloredLine("g-drop", 0, "p-Granular-control", 4, controlColor),
    coloredLine("g-load", 0, "g-open", 0, controlColor),
    coloredLine("g-open", 0, "p-Granular-control", 4, controlColor),
    coloredLine("g-preset", 0, "p-Granular-control", 5, controlColor),
    coloredLine("p-Granular-control", 0, "p-Granular-input", 0, stateColor),
    coloredLine("p-Granular-control", 1, "p-Granular-input", 1, stateColor),
    coloredLine("p-Granular-control", 2, "p-Granular-input", 2, stateColor),
    coloredLine("p-Granular-control", 3, "p-Granular-input", 3, controlColor),
    coloredLine("p-Granular-control", 4, "g-enable", 0, stateColor),
    coloredLine("p-Granular-control", 5, "g-record", 0, stateColor),
    coloredLine("p-Granular-control", 6, "g-play", 0, stateColor),
    coloredLine("p-Granular-control", 7, "g-file", 0, controlColor),
    coloredLine("p-Granular-control", 8, "g-status", 0, controlColor),
    coloredLine("p-Granular-control", 9, "g-duration", 0, controlColor),
    coloredLine("p-Granular-control", 10, "g-gain", 0, controlColor),
    coloredLine("g-waveform", 2, "p-Granular-input", 4, controlColor),
    coloredLine("p-Granular-input", 2, "p-Granular-control", 6, controlColor),
    coloredLine("p-Granular-input", 3, "g-waveform", 0, controlColor),
    coloredLine("p-Granular-input", 0, "g-gain", 0, audioColor),
    coloredLine("p-Granular-input", 1, "g-gain", 1, audioColor),
    coloredLine("g-gain", 0, "g-out-l", 0, audioColor),
    coloredLine("g-gain", 1, "g-out-r", 0, audioColor),
  ];
  dialDefs.forEach(([name], index) => {
    lines.push(coloredLine(`g-${name}-dial`, 0, "p-Granular-knob-map", index, controlColor));
    lines.push(coloredLine("p-Granular-knob-map", index, `g-${name}-value`, 0, controlColor));
    lines.push(coloredLine(`g-${name}-value`, 0, "p-Granular-params", index, controlColor));
    lines.push(coloredLine(`g-${name}-value`, 0, "p-Granular-knob-map", 7 + index, controlColor));
    lines.push(coloredLine("p-Granular-knob-map", 7 + index, `g-${name}-dial`, 0, controlColor));
    lines.push(coloredLine("p-Granular-control", 11 + index, `g-${name}-value`, 0, controlColor));
  });

  const doc = patcher(boxes, lines, [80, 80, 1200, 920], 1);
  doc.dependency_cache = [
    { name: "granular_panel_v1.png", bootpath: ".", patcherrelativepath: ".", type: "PNG", implicit: 1 },
    { name: "granular_knob_v1.png", bootpath: ".", patcherrelativepath: ".", type: "PNG", implicit: 1 },
    { name: "granular_knob_gain_v1.png", bootpath: ".", patcherrelativepath: ".", type: "PNG", implicit: 1 },
  ];
  doc.parameters = {
    "g-gain": ["live.gain~", "Granular Input", 0],
    parameterbanks: { 0: { index: 0, name: "", parameters: ["-", "-", "-", "-", "-", "-", "-", "-"] } },
    inherited_shortname: 1,
  };
  doc.autosave = 0;
  fs.writeFileSync(path.join(root, outputName), JSON.stringify({ patcher: doc }, null, 2), "utf8");
}

function buildKnobPreview() {
  const stateColor = [0.44, 0.72, 1, 1];
  const controlColor = [1, 0.62, 0.24, 1];

  const mapBoxes = [
    comment("km-title", "Knob map: normalized external values set the image silently; mouse gestures output normalized values", 25, 20, 700),
    inlet("km-set-in", 30, 75),
    inlet("km-ui-in", 250, 75),
    newObj("km-set-clip", "clip 0. 1.", 30, 125, 80),
    newObj("km-set-trigger", "t f f", 30, 170, 50),
    newObj("km-set-scale", "scale 0. 1. 0 255", 30, 215, 130),
    newObj("km-set-int", "i", 30, 260, 35),
    newObj("km-knob-set", "prepend set", 30, 305, 90),
    newObj("km-value-set", "prepend set", 145, 215, 90),
    newObj("km-ui-clip", "clip 0 255", 250, 125, 80),
    newObj("km-ui-scale", "scale 0 255 0. 1.", 250, 170, 140),
    newObj("km-loadbang", "loadbang", 430, 75, 65),
    msg("km-default", "0.5", 430, 125, 38),
    outlet("km-knob-set-out", 30, 380),
    outlet("km-ui-value-out", 250, 380),
    outlet("km-display-set-out", 145, 380),
  ];
  const mapLines = [
    coloredLine("km-set-in", 0, "km-set-clip", 0, controlColor),
    coloredLine("km-set-clip", 0, "km-set-trigger", 0, controlColor),
    coloredLine("km-set-trigger", 1, "km-value-set", 0, controlColor),
    coloredLine("km-set-trigger", 0, "km-set-scale", 0, controlColor),
    coloredLine("km-set-scale", 0, "km-set-int", 0, controlColor),
    coloredLine("km-set-int", 0, "km-knob-set", 0, controlColor),
    coloredLine("km-knob-set", 0, "km-knob-set-out", 0, controlColor),
    coloredLine("km-value-set", 0, "km-display-set-out", 0, controlColor),
    coloredLine("km-ui-in", 0, "km-ui-clip", 0, stateColor),
    coloredLine("km-ui-clip", 0, "km-ui-scale", 0, stateColor),
    coloredLine("km-ui-scale", 0, "km-ui-value-out", 0, stateColor),
    coloredLine("km-loadbang", 0, "km-default", 0, controlColor),
    coloredLine("km-default", 0, "km-set-clip", 0, controlColor),
  ];

  const boxes = [
    makeBox("kp-panel", "panel", 0, 0, 300, 190, {
      bgcolor: [0.047, 0.073, 0.082, 1], border: 1, bordercolor: [0.18, 0.42, 0.45, 1], rounded: 0,
      background: 1, ignoreclick: 1,
    }),
    comment("kp-title", "PICTCTRL KNOB", 20, 14, 180, 22),
    comment("kp-note", "64-frame transparent circular control", 20, 36, 250, 18),
    makeBox("kp-knob", "pictctrl", 42, 75, 44, 44, {
      frames: 64, mode: 2, multiplier: 1, name: "granular_knob_v1.png", range: 255,
      trackhorizontal: 1, trackvertical: 1, tracking: 1, parameter_enable: 0,
      numinlets: 1, numoutlets: 1, outlettype: ["int"], varname: "granular_knob_preview",
    }),
    comment("kp-knob-label", "Drag", 48, 121, 38, 18),
    flonum("kp-value", 112, 85, 70, { minimum: 0, maximum: 1 }),
    comment("kp-value-label", "Normalized", 112, 64, 76, 18),
    msg("kp-zero", "0.", 20, 151, 34),
    msg("kp-half", "0.5", 64, 151, 38),
    msg("kp-one", "1.", 112, 151, 34),
    makeBox("kp-set-in", "inlet", 360, 100, 30, 30, { comment: "Set normalized value 0-1" }),
    subpatch("p Knob_map", mapBoxes, mapLines, 450, 100, 110, 22, [80, 80, 760, 470]),
    makeBox("kp-value-out", "outlet", 620, 100, 30, 30, { comment: "Normalized knob value 0-1" }),
  ];
  applyPresentation(boxes, {
    "kp-panel": presentationRect(0, 0, 300, 190),
    "kp-title": presentationRect(20, 14, 180, 22),
    "kp-note": presentationRect(20, 36, 250, 18),
    "kp-knob": presentationRect(42, 75, 44, 44),
    "kp-knob-label": presentationRect(48, 121, 38, 18),
    "kp-value": presentationRect(112, 85, 70, 22),
    "kp-value-label": presentationRect(112, 64, 76, 18),
    "kp-zero": presentationRect(20, 151, 34, 22),
    "kp-half": presentationRect(64, 151, 38, 22),
    "kp-one": presentationRect(112, 151, 34, 22),
  });
  const lines = [
    coloredLine("kp-set-in", 0, "p-Knob-map", 0, controlColor),
    coloredLine("kp-zero", 0, "p-Knob-map", 0, controlColor),
    coloredLine("kp-half", 0, "p-Knob-map", 0, controlColor),
    coloredLine("kp-one", 0, "p-Knob-map", 0, controlColor),
    coloredLine("kp-knob", 0, "p-Knob-map", 1, stateColor),
    coloredLine("p-Knob-map", 0, "kp-knob", 0, controlColor),
    coloredLine("p-Knob-map", 1, "kp-value", 0, stateColor),
    coloredLine("p-Knob-map", 2, "kp-value", 0, controlColor),
    coloredLine("kp-value", 0, "p-Knob-map", 0, controlColor),
    coloredLine("kp-value", 0, "kp-value-out", 0, stateColor),
  ];
  const doc = patcher(boxes, lines, [80, 80, 700, 260], 1);
  doc.dependency_cache = [{ name: "granular_knob_v1.png", bootpath: ".", patcherrelativepath: ".", type: "PNG", implicit: 1 }];
  doc.autosave = 0;
  fs.writeFileSync(path.join(root, "mt_ui_knob_preview.maxpat"), JSON.stringify({ patcher: doc }, null, 2), "utf8");
}

function buildInputMixer() {
  const boxes = [
    comment("mix-title", "MT Input Mixer - 3 source portfolio input layer", 24, 20, 420, 24),
    comment("mix-note", "Connect Mic/File/Granular stereo sources. Each source has enable ramp, gain, meter, then master gain.", 24, 48, 680),
    inlet("mix-mic-l", 24, 110),
    inlet("mix-mic-r", 70, 110),
    comment("mix-mic-label", "Mic L/R", 24, 88, 80),
    inlet("mix-file-l", 210, 110),
    inlet("mix-file-r", 256, 110),
    comment("mix-file-label", "File L/R", 210, 88, 80),
    inlet("mix-grain-l", 396, 110),
    inlet("mix-grain-r", 442, 110),
    comment("mix-grain-label", "Granular L/R", 396, 88, 110),
    inlet("mix-mic-enable-in", 560, 110),
    inlet("mix-file-enable-in", 606, 110),
    inlet("mix-grain-enable-in", 652, 110),
    comment("mix-ext-enable-label", "external enables", 560, 88, 140),
    comment("mix-explain", "Source enable buttons are linked with the source boxes and main switches. Use these gains to balance the dry input before FX returns.", 24, 515, 700, 36),
    toggle("mix-mic-enable", 24, 175),
    comment("mix-mic-enable-label", "Mic", 55, 178, 45),
    toggle("mix-file-enable", 210, 175),
    comment("mix-file-enable-label", "File", 241, 178, 45),
    toggle("mix-grain-enable", 396, 175),
    comment("mix-grain-enable-label", "Granular", 427, 178, 75),
    msg("mix-mic-msg", "$1 20", 24, 215, 55),
    msg("mix-file-msg", "$1 20", 210, 215, 55),
    msg("mix-grain-msg", "$1 20", 396, 215, 55),
    msg("mix-mic-enable-set", "set $1", 560, 145, 60),
    msg("mix-file-enable-set", "set $1", 620, 145, 60),
    msg("mix-grain-enable-set", "set $1", 680, 145, 60),
    newObj("mix-mic-enable-route", "t i i", 560, 180, 45),
    newObj("mix-file-enable-route", "t i i", 620, 180, 45),
    newObj("mix-grain-enable-route", "t i i", 680, 180, 45),
    newObj("mix-mic-state-send", "s mt_mic_enable_state", 560, 215, 155),
    newObj("mix-file-state-send", "s mt_file_enable_state", 560, 245, 155),
    newObj("mix-grain-state-send", "s mt_granular_enable_state", 560, 275, 185),
    newObj("mix-mic-line", "line~", 24, 255, 50),
    newObj("mix-file-line", "line~", 210, 255, 50),
    newObj("mix-grain-line", "line~", 396, 255, 50),
    newObj("mix-mic-gate-l", "*~ 0.", 24, 305, 55),
    newObj("mix-mic-gate-r", "*~ 0.", 70, 305, 55),
    newObj("mix-file-gate-l", "*~ 0.", 210, 305, 55),
    newObj("mix-file-gate-r", "*~ 0.", 256, 305, 55),
    newObj("mix-grain-gate-l", "*~ 0.", 396, 305, 55),
    newObj("mix-grain-gate-r", "*~ 0.", 442, 305, 55),
    liveGain("mix-mic-gain", "Mic Mix", 105, 345, 120, -12),
    liveGain("mix-file-gain", "File Mix", 291, 345, 120, -12),
    liveGain("mix-grain-gain", "Granular Mix", 477, 345, 120, -12),
    makeBox("mix-mic-meter", "meter~", 105, 485, 90, 12),
    makeBox("mix-file-meter", "meter~", 291, 485, 90, 12),
    makeBox("mix-grain-meter", "meter~", 477, 485, 90, 12),
    newObj("mix-sum-l-1", "+~", 670, 355, 35),
    newObj("mix-sum-r-1", "+~", 720, 355, 35),
    newObj("mix-sum-l-2", "+~", 670, 425, 35),
    newObj("mix-sum-r-2", "+~", 720, 425, 35),
    liveGain("mix-master", "Input Master", 790, 340, 145, -8),
    outlet("mix-out-l", 925, 395),
    outlet("mix-out-r", 975, 395),
    comment("mix-out-label", "out: mixed L/R", 910, 435, 140),
    makeBox("mix-mute-button", "button", 690, 170, 24, 24),
    comment("mix-mute-label", "Mute all", 720, 172, 80),
    msg("mix-mute-zero", "0", 690, 205, 35),
    newObj("mix-mute-route", "t i i i", 690, 240, 70),
  ];
  applyPresentation(boxes, {
    "mix-mic-enable": presentationRect(28, 18, 24, 24),
    "mix-file-enable": presentationRect(188, 18, 24, 24),
    "mix-grain-enable": presentationRect(348, 18, 24, 24),
    "mix-mic-gain": presentationRect(12, 58, 54, 132),
    "mix-file-gain": presentationRect(172, 58, 54, 132),
    "mix-grain-gain": presentationRect(332, 58, 54, 132),
    "mix-master": presentationRect(536, 44, 54, 146),
    "mix-explain": presentationRect(12, 210, 610, 36),
  });
  const lines = [
    line("mix-mic-enable-in", 0, "mix-mic-enable-route", 0),
    line("mix-mic-enable-route", 0, "mix-mic-enable-set", 0),
    line("mix-mic-enable-route", 1, "mix-mic-msg", 0),
    line("mix-mic-enable-set", 0, "mix-mic-enable", 0),
    line("mix-file-enable-in", 0, "mix-file-enable-route", 0),
    line("mix-file-enable-route", 0, "mix-file-enable-set", 0),
    line("mix-file-enable-route", 1, "mix-file-msg", 0),
    line("mix-file-enable-set", 0, "mix-file-enable", 0),
    line("mix-grain-enable-in", 0, "mix-grain-enable-route", 0),
    line("mix-grain-enable-route", 0, "mix-grain-enable-set", 0),
    line("mix-grain-enable-route", 1, "mix-grain-msg", 0),
    line("mix-grain-enable-set", 0, "mix-grain-enable", 0),
    line("mix-mic-enable", 0, "mix-mic-msg", 0),
    line("mix-mic-enable", 0, "mix-mic-state-send", 0),
    line("mix-file-enable", 0, "mix-file-msg", 0),
    line("mix-file-enable", 0, "mix-file-state-send", 0),
    line("mix-grain-enable", 0, "mix-grain-msg", 0),
    line("mix-grain-enable", 0, "mix-grain-state-send", 0),
    line("mix-mic-msg", 0, "mix-mic-line", 0),
    line("mix-file-msg", 0, "mix-file-line", 0),
    line("mix-grain-msg", 0, "mix-grain-line", 0),
    line("mix-mic-l", 0, "mix-mic-gate-l", 0),
    line("mix-mic-r", 0, "mix-mic-gate-r", 0),
    line("mix-file-l", 0, "mix-file-gate-l", 0),
    line("mix-file-r", 0, "mix-file-gate-r", 0),
    line("mix-grain-l", 0, "mix-grain-gate-l", 0),
    line("mix-grain-r", 0, "mix-grain-gate-r", 0),
    line("mix-mic-line", 0, "mix-mic-gate-l", 1),
    line("mix-mic-line", 0, "mix-mic-gate-r", 1),
    line("mix-file-line", 0, "mix-file-gate-l", 1),
    line("mix-file-line", 0, "mix-file-gate-r", 1),
    line("mix-grain-line", 0, "mix-grain-gate-l", 1),
    line("mix-grain-line", 0, "mix-grain-gate-r", 1),
    line("mix-mic-gate-l", 0, "mix-mic-gain", 0),
    line("mix-mic-gate-r", 0, "mix-mic-gain", 1),
    line("mix-file-gate-l", 0, "mix-file-gain", 0),
    line("mix-file-gate-r", 0, "mix-file-gain", 1),
    line("mix-grain-gate-l", 0, "mix-grain-gain", 0),
    line("mix-grain-gate-r", 0, "mix-grain-gain", 1),
    line("mix-mic-gain", 0, "mix-mic-meter", 0),
    line("mix-file-gain", 0, "mix-file-meter", 0),
    line("mix-grain-gain", 0, "mix-grain-meter", 0),
    line("mix-mic-gain", 0, "mix-sum-l-1", 0),
    line("mix-file-gain", 0, "mix-sum-l-1", 1),
    line("mix-mic-gain", 1, "mix-sum-r-1", 0),
    line("mix-file-gain", 1, "mix-sum-r-1", 1),
    line("mix-sum-l-1", 0, "mix-sum-l-2", 0),
    line("mix-grain-gain", 0, "mix-sum-l-2", 1),
    line("mix-sum-r-1", 0, "mix-sum-r-2", 0),
    line("mix-grain-gain", 1, "mix-sum-r-2", 1),
    line("mix-sum-l-2", 0, "mix-master", 0),
    line("mix-sum-r-2", 0, "mix-master", 1),
    line("mix-master", 0, "mix-out-l", 0),
    line("mix-master", 1, "mix-out-r", 0),
    line("mix-mute-button", 0, "mix-mute-zero", 0),
    line("mix-mute-zero", 0, "mix-mute-route", 0),
    line("mix-mute-route", 0, "mix-mic-enable", 0),
    line("mix-mute-route", 1, "mix-file-enable", 0),
    line("mix-mute-route", 2, "mix-grain-enable", 0),
  ];
  writeMaxpat("mt_input_mixer.maxpat", boxes, lines, [80, 80, 1040, 540]);
}

function buildInputMixerUI() {
  const stateColor = [0.44, 0.72, 1, 1];
  const controlColor = [1, 0.62, 0.24, 1];
  const audioColor = [0.68, 0.95, 0.34, 1];
  const sourcePath = path.join(root, "mt_input_mixer.maxpat");
  if (!fs.existsSync(sourcePath)) {
    throw new Error("mt_input_mixer.maxpat is required as the verified DSP reference");
  }

  const source = JSON.parse(fs.readFileSync(sourcePath, "utf8")).patcher;
  const rename = (id) => {
    if (id === "mix-master") return "mx-master-gain";
    return id.replace(/^mix-/, "mx-");
  };
  const boxes = source.boxes.map((entry) => {
    const cloned = JSON.parse(JSON.stringify(entry));
    cloned.box.id = rename(cloned.box.id);
    delete cloned.box.presentation;
    delete cloned.box.presentation_rect;
    return cloned;
  });
  const byId = new Map(boxes.map((entry) => [entry.box.id, entry.box]));

  const inletComments = {
    "mx-mic-l": "Mic audio L",
    "mx-mic-r": "Mic audio R",
    "mx-file-l": "File audio L",
    "mx-file-r": "File audio R",
    "mx-grain-l": "Granular audio L",
    "mx-grain-r": "Granular audio R",
    "mx-mic-enable-in": "Mic Enable 0/1",
    "mx-file-enable-in": "File Enable 0/1",
    "mx-grain-enable-in": "Granular Enable 0/1",
  };
  for (const [id, boxComment] of Object.entries(inletComments)) {
    byId.get(id).comment = boxComment;
  }
  byId.get("mx-out-l").comment = "Mixed audio L";
  byId.get("mx-out-r").comment = "Mixed audio R";

  Object.assign(byId.get("mx-mic-enable"), { varname: "mixer_mic_enable" });
  Object.assign(byId.get("mx-file-enable"), { varname: "mixer_file_enable" });
  Object.assign(byId.get("mx-grain-enable"), { varname: "mixer_granular_enable" });
  Object.assign(byId.get("mx-mic-gain"), { varname: "mixer_mic_gain" });
  Object.assign(byId.get("mx-file-gain"), { varname: "mixer_file_gain" });
  Object.assign(byId.get("mx-grain-gain"), { varname: "mixer_granular_gain" });
  Object.assign(byId.get("mx-master-gain"), { varname: "mixer_master_gain" });

  const mute = byId.get("mx-mute-button");
  mute.maxclass = "ubutton";
  mute.numinlets = 1;
  mute.numoutlets = 4;
  mute.outlettype = ["bang", "", "", "int"];
  mute.varname = "mixer_mute_all";

  const bg = makeBox("mx-bg", "fpic", 1100, 20, 760, 320, {
    pic: "input_mixer_panel_v1.png",
    autofit: 1,
    forceaspect: 1,
    background: 1,
    ignoreclick: 1,
    presentation: 1,
    presentation_rect: [0, 0, 760, 320],
  });
  boxes.unshift(bg);

  const masterReadout = makeBox("mx-master-readout", "flonum", 875, 340, 68, 24, {
    varname: "mixer_master_db",
    minimum: -70,
    maximum: 6,
    numdecimalplaces: 1,
    ignoreclick: 1,
    bgcolor: [0.968, 0.973, 0.957, 1],
    textcolor: [0.19, 0.26, 0.23, 1],
    bordercolor: [0.82, 0.76, 0.52, 1],
    presentation: 1,
    presentation_rect: [575, 121, 68, 24],
  });
  boxes.push(masterReadout);

  applyPresentation(boxes, {
    "mx-mic-enable": presentationRect(145, 58, 24, 24),
    "mx-file-enable": presentationRect(327, 58, 24, 24),
    "mx-grain-enable": presentationRect(509, 58, 24, 24),
    "mx-mic-gain": presentationRect(84, 103, 54, 152),
    "mx-file-gain": presentationRect(266, 103, 54, 152),
    "mx-grain-gain": presentationRect(448, 103, 54, 152),
    "mx-master-gain": presentationRect(674, 100, 54, 158),
    "mx-mute-button": presentationRect(565, 172, 88, 34),
  });

  const audioIds = new Set([
    "mx-mic-l", "mx-mic-r", "mx-file-l", "mx-file-r", "mx-grain-l", "mx-grain-r",
    "mx-mic-gate-l", "mx-mic-gate-r", "mx-file-gate-l", "mx-file-gate-r", "mx-grain-gate-l", "mx-grain-gate-r",
    "mx-mic-gain", "mx-file-gain", "mx-grain-gain", "mx-mic-meter", "mx-file-meter", "mx-grain-meter",
    "mx-sum-l-1", "mx-sum-r-1", "mx-sum-l-2", "mx-sum-r-2", "mx-master-gain", "mx-out-l", "mx-out-r",
  ]);
  const stateIds = new Set([
    "mx-mic-enable-in", "mx-file-enable-in", "mx-grain-enable-in",
    "mx-mic-enable-route", "mx-file-enable-route", "mx-grain-enable-route",
    "mx-mic-enable-set", "mx-file-enable-set", "mx-grain-enable-set",
    "mx-mic-state-send", "mx-file-state-send", "mx-grain-state-send",
  ]);
  const lines = source.lines.map((entry) => {
    const cloned = JSON.parse(JSON.stringify(entry));
    cloned.patchline.source[0] = rename(cloned.patchline.source[0]);
    cloned.patchline.destination[0] = rename(cloned.patchline.destination[0]);
    const sourceId = cloned.patchline.source[0];
    const destinationId = cloned.patchline.destination[0];
    cloned.patchline.color = audioIds.has(sourceId) || audioIds.has(destinationId)
      ? audioColor
      : stateIds.has(sourceId) || stateIds.has(destinationId)
        ? stateColor
        : controlColor;
    return cloned;
  });
  lines.push(coloredLine("mx-master-gain", 2, "mx-master-readout", 0, stateColor));

  const doc = patcher(boxes, lines, [80, 80, 760, 380], 1);
  doc.dependency_cache = [{
    name: "input_mixer_panel_v1.png",
    bootpath: ".",
    patcherrelativepath: ".",
    type: "PNG",
    implicit: 1,
  }];
  doc.autosave = 0;
  fs.writeFileSync(path.join(root, "mt_input_mixer_ui.maxpat"), JSON.stringify({ patcher: doc }, null, 2), "utf8");
}

function buildTremoloMod() {
  const coreBoxes = [
    comment("tc-title", "Tremolo_core: stereo multi-shape LFO -> depth-scaled safe gain + bipolar/unipolar mod outs", 35, 25, 900),
    inlet("tc-in-l", 35, 90),
    inlet("tc-in-r", 120, 90),
    inlet("tc-enable", 220, 90),
    inlet("tc-test", 300, 90),
    inlet("tc-shape", 380, 90),
    inlet("tc-polarity", 460, 90),
    inlet("tc-rate", 540, 90),
    inlet("tc-depth", 640, 90),
    inlet("tc-stereo", 760, 90),
    inlet("tc-smooth", 875, 90),
    newObj("tc-test-clip", "clip 0. 1.", 300, 135, 80),
    msg("tc-test-msg", "$1 20", 300, 170, 55),
    newObj("tc-test-line", "line~", 300, 205, 50),
    newObj("tc-test-l", "cycle~ 220", 235, 250, 80),
    newObj("tc-test-r", "cycle~ 330", 335, 250, 80),
    newObj("tc-test-gate-l", "*~ 0.", 235, 300, 55),
    newObj("tc-test-gate-r", "*~ 0.", 335, 300, 55),
    newObj("tc-dry-l", "+~", 35, 360, 35),
    newObj("tc-dry-r", "+~", 120, 360, 35),
    newObj("tc-enable-clip", "clip 0. 1.", 220, 135, 80),
    msg("tc-enable-msg", "$1 20", 220, 170, 55),
    newObj("tc-enable-line", "line~", 220, 205, 50),
    newObj("tc-shape-clip", "clip 0 5", 380, 135, 70),
    newObj("tc-shape-int", "i", 380, 170, 35),
    newObj("tc-shape-plus", "+ 1", 380, 205, 45),
    newObj("tc-shape-route", "t i i", 380, 240, 45),
    newObj("tc-polarity-clip", "clip 0 1", 460, 135, 70),
    newObj("tc-polarity-int", "i", 460, 170, 35),
    newObj("tc-polarity-plus", "+ 1", 460, 205, 45),
    newObj("tc-polarity-route", "t i i", 460, 240, 45),
    newObj("tc-rate-clip", "clip 0. 1.", 540, 135, 80),
    newObj("tc-rate-map", "scale 0. 1. 0.05 20.", 540, 170, 150),
    msg("tc-rate-msg", "$1 20", 540, 205, 55),
    newObj("tc-rate-line", "line~", 540, 240, 50),
    newObj("tc-phasor", "phasor~ 0.5", 540, 285, 85),
    newObj("tc-depth-clip", "clip 0. 1.", 640, 135, 80),
    msg("tc-depth-msg", "$1 20", 640, 170, 55),
    newObj("tc-depth-line", "line~", 640, 205, 50),
    newObj("tc-one-depth", "sig~ 1.", 640, 255, 60),
    newObj("tc-depth-inv", "-~", 640, 300, 35),
    newObj("tc-stereo-clip", "clip 0. 1.", 760, 135, 80),
    newObj("tc-stereo-map", "* 0.5", 760, 170, 55),
    msg("tc-stereo-msg", "$1 20", 760, 205, 55),
    newObj("tc-stereo-line", "line~", 760, 240, 50),
    newObj("tc-right-phase", "+~", 760, 285, 35),
    newObj("tc-right-wrap", "%~ 1.", 760, 330, 55),
    newObj("tc-smooth-clip", "clip 0. 250.", 875, 135, 90),
    newObj("tc-smooth-samps", "mstosamps~", 875, 170, 85),
    newObj("tc-mod-l", "*~", 35, 500, 35),
    newObj("tc-mod-r", "*~", 120, 500, 35),
    newObj("tc-one-enable", "sig~ 1.", 805, 255, 60),
    newObj("tc-enable-inv", "-~", 805, 300, 35),
    newObj("tc-dry-mix-l", "*~", 35, 585, 35),
    newObj("tc-wet-mix-l", "*~", 95, 585, 35),
    newObj("tc-outmix-l", "+~", 65, 635, 35),
    newObj("tc-dry-mix-r", "*~", 175, 585, 35),
    newObj("tc-wet-mix-r", "*~", 235, 585, 35),
    newObj("tc-outmix-r", "+~", 205, 635, 35),
    outlet("tc-out-l", 65, 700),
    outlet("tc-out-r", 205, 700),
    outlet("tc-mod-out-l", 390, 700),
    outlet("tc-mod-out-r", 530, 700),
  ];

  function addLfoChannel(prefix, x, phaseId, shapeOutlet, polarityOutlet, yOffset = 0) {
    const id = (name) => `tc-${prefix}-${name}`;
    const add = (name, text, dx, y, w = 70) => coreBoxes.push(newObj(id(name), text, x + dx, y + yOffset, w));

    add("radians", "*~ 6.283185", 0, 365, 95);
    add("sine", "cos~", 0, 405, 45);

    add("up-scale", "*~ 2.", 115, 365, 55);
    add("up-offset", "-~ 1.", 115, 405, 55);

    add("down-invert", "!-~ 1.", 215, 365, 60);
    add("down-scale", "*~ 2.", 215, 405, 55);
    add("down-offset", "-~ 1.", 215, 445, 55);

    add("tri-scale", "*~ 2.", 315, 365, 55);
    add("tri-offset", "-~ 1.", 315, 405, 55);
    add("tri-abs", "abs~", 315, 445, 50);
    add("tri-invert", "!-~ 1.", 315, 485, 60);
    add("tri-b-scale", "*~ 2.", 315, 525, 55);
    add("tri-b-offset", "-~ 1.", 315, 565, 55);

    add("square-test", ">=~ 0.5", 430, 365, 70);
    add("square-scale", "*~ 2.", 430, 405, 55);
    add("square-offset", "-~ 1.", 430, 445, 55);

    add("noise", "noise~", 545, 365, 60);
    add("sah", "sah~ 0.5", 545, 405, 75);

    add("shape-selector", "selector~ 6 @ramptime 20", 0, 625, 170);
    add("uni-half", "*~ 0.5", 190, 625, 60);
    add("uni-offset", "+~ 0.5", 190, 665, 60);
    add("uni-slide", "slide~", 190, 705, 55);
    add("polarity-selector", "selector~ 2 @ramptime 20", 310, 625, 170);
    add("polarity-slide", "slide~", 310, 705, 55);
    add("gain-depth-mul", "*~", 500, 625, 35);
    add("gain-sum", "+~", 500, 665, 35);
    add("mod-depth-mul", "*~", 405, 745, 35);

    coreLines.push(
      line(phaseId, 0, id("radians"), 0),
      line(id("radians"), 0, id("sine"), 0),

      line(phaseId, 0, id("up-scale"), 0),
      line(id("up-scale"), 0, id("up-offset"), 0),

      line(phaseId, 0, id("down-invert"), 0),
      line(id("down-invert"), 0, id("down-scale"), 0),
      line(id("down-scale"), 0, id("down-offset"), 0),

      line(phaseId, 0, id("tri-scale"), 0),
      line(id("tri-scale"), 0, id("tri-offset"), 0),
      line(id("tri-offset"), 0, id("tri-abs"), 0),
      line(id("tri-abs"), 0, id("tri-invert"), 0),
      line(id("tri-invert"), 0, id("tri-b-scale"), 0),
      line(id("tri-b-scale"), 0, id("tri-b-offset"), 0),

      line(phaseId, 0, id("square-test"), 0),
      line(id("square-test"), 0, id("square-scale"), 0),
      line(id("square-scale"), 0, id("square-offset"), 0),

      line(id("noise"), 0, id("sah"), 0),
      line(phaseId, 0, id("sah"), 1),

      line("tc-shape-route", shapeOutlet, id("shape-selector"), 0),
      line(id("sine"), 0, id("shape-selector"), 1),
      line(id("up-offset"), 0, id("shape-selector"), 2),
      line(id("down-offset"), 0, id("shape-selector"), 3),
      line(id("tri-b-offset"), 0, id("shape-selector"), 4),
      line(id("square-offset"), 0, id("shape-selector"), 5),
      line(id("sah"), 0, id("shape-selector"), 6),

      line(id("shape-selector"), 0, id("uni-half"), 0),
      line(id("uni-half"), 0, id("uni-offset"), 0),
      line(id("uni-offset"), 0, id("uni-slide"), 0),
      line("tc-smooth-samps", 0, id("uni-slide"), 1),
      line("tc-smooth-samps", 0, id("uni-slide"), 2),

      line("tc-polarity-route", polarityOutlet, id("polarity-selector"), 0),
      line(id("shape-selector"), 0, id("polarity-selector"), 1),
      line(id("uni-offset"), 0, id("polarity-selector"), 2),
      line(id("polarity-selector"), 0, id("polarity-slide"), 0),
      line("tc-smooth-samps", 0, id("polarity-slide"), 1),
      line("tc-smooth-samps", 0, id("polarity-slide"), 2),

      line(id("uni-slide"), 0, id("gain-depth-mul"), 0),
      line("tc-depth-line", 0, id("gain-depth-mul"), 1),
      line("tc-depth-inv", 0, id("gain-sum"), 0),
      line(id("gain-depth-mul"), 0, id("gain-sum"), 1),

      line(id("polarity-slide"), 0, id("mod-depth-mul"), 0),
      line("tc-depth-line", 0, id("mod-depth-mul"), 1),
    );

    return {
      gain: id("gain-sum"),
      mod: id("mod-depth-mul"),
    };
  }

  const coreLines = [
    line("tc-test", 0, "tc-test-clip", 0),
    line("tc-test-clip", 0, "tc-test-msg", 0),
    line("tc-test-msg", 0, "tc-test-line", 0),
    line("tc-test-l", 0, "tc-test-gate-l", 0),
    line("tc-test-r", 0, "tc-test-gate-r", 0),
    line("tc-test-line", 0, "tc-test-gate-l", 1),
    line("tc-test-line", 0, "tc-test-gate-r", 1),
    line("tc-in-l", 0, "tc-dry-l", 0),
    line("tc-in-r", 0, "tc-dry-r", 0),
    line("tc-test-gate-l", 0, "tc-dry-l", 1),
    line("tc-test-gate-r", 0, "tc-dry-r", 1),
    line("tc-enable", 0, "tc-enable-clip", 0),
    line("tc-enable-clip", 0, "tc-enable-msg", 0),
    line("tc-enable-msg", 0, "tc-enable-line", 0),
    line("tc-shape", 0, "tc-shape-clip", 0),
    line("tc-shape-clip", 0, "tc-shape-int", 0),
    line("tc-shape-int", 0, "tc-shape-plus", 0),
    line("tc-shape-plus", 0, "tc-shape-route", 0),
    line("tc-polarity", 0, "tc-polarity-clip", 0),
    line("tc-polarity-clip", 0, "tc-polarity-int", 0),
    line("tc-polarity-int", 0, "tc-polarity-plus", 0),
    line("tc-polarity-plus", 0, "tc-polarity-route", 0),
    line("tc-rate", 0, "tc-rate-clip", 0),
    line("tc-rate-clip", 0, "tc-rate-map", 0),
    line("tc-rate-map", 0, "tc-rate-msg", 0),
    line("tc-rate-msg", 0, "tc-rate-line", 0),
    line("tc-rate-line", 0, "tc-phasor", 0),
    line("tc-depth", 0, "tc-depth-clip", 0),
    line("tc-depth-clip", 0, "tc-depth-msg", 0),
    line("tc-depth-msg", 0, "tc-depth-line", 0),
    line("tc-one-depth", 0, "tc-depth-inv", 0),
    line("tc-depth-line", 0, "tc-depth-inv", 1),
    line("tc-stereo", 0, "tc-stereo-clip", 0),
    line("tc-stereo-clip", 0, "tc-stereo-map", 0),
    line("tc-stereo-map", 0, "tc-stereo-msg", 0),
    line("tc-stereo-msg", 0, "tc-stereo-line", 0),
    line("tc-phasor", 0, "tc-right-phase", 0),
    line("tc-stereo-line", 0, "tc-right-phase", 1),
    line("tc-right-phase", 0, "tc-right-wrap", 0),
    line("tc-smooth", 0, "tc-smooth-clip", 0),
    line("tc-smooth-clip", 0, "tc-smooth-samps", 0),
    line("tc-dry-l", 0, "tc-mod-l", 0),
    line("tc-dry-r", 0, "tc-mod-r", 0),
    line("tc-one-enable", 0, "tc-enable-inv", 0),
    line("tc-enable-line", 0, "tc-enable-inv", 1),
    line("tc-dry-l", 0, "tc-dry-mix-l", 0),
    line("tc-enable-inv", 0, "tc-dry-mix-l", 1),
    line("tc-mod-l", 0, "tc-wet-mix-l", 0),
    line("tc-enable-line", 0, "tc-wet-mix-l", 1),
    line("tc-dry-mix-l", 0, "tc-outmix-l", 0),
    line("tc-wet-mix-l", 0, "tc-outmix-l", 1),
    line("tc-dry-r", 0, "tc-dry-mix-r", 0),
    line("tc-enable-inv", 0, "tc-dry-mix-r", 1),
    line("tc-mod-r", 0, "tc-wet-mix-r", 0),
    line("tc-enable-line", 0, "tc-wet-mix-r", 1),
    line("tc-dry-mix-r", 0, "tc-outmix-r", 0),
    line("tc-wet-mix-r", 0, "tc-outmix-r", 1),
    line("tc-outmix-l", 0, "tc-out-l", 0),
    line("tc-outmix-r", 0, "tc-out-r", 0),
  ];
  const leftLfo = addLfoChannel("left", 390, "tc-phasor", 0, 0);
  const rightLfo = addLfoChannel("right", 390, "tc-right-wrap", 1, 1, 250);
  coreLines.push(
    line(leftLfo.gain, 0, "tc-mod-l", 1),
    line(rightLfo.gain, 0, "tc-mod-r", 1),
    line(leftLfo.mod, 0, "tc-mod-out-l", 0),
    line(rightLfo.mod, 0, "tc-mod-out-r", 0),
  );

  const boxes = [
    comment("tm-title", "MT Mod Tremolo - stereo mod effect", 24, 20, 420, 24),
    comment("tm-note", "Inspired by 16_pan_tremolo: multi-shape stereo LFO, polarity-selectable mod outs, safe depth-scaled tremolo, direct monitor.", 24, 48, 900),
    inlet("tm-in-l", 24, 100),
    inlet("tm-in-r", 84, 100),
    inlet("tm-ext-enable", 170, 95),
    inlet("tm-ext-shape", 235, 95),
    inlet("tm-ext-polarity", 300, 95),
    inlet("tm-ext-rate", 365, 95),
    inlet("tm-ext-depth", 430, 95),
    inlet("tm-ext-stereo", 495, 95),
    inlet("tm-ext-smooth", 560, 95),
    toggle("tm-enable", 24, 155),
    comment("tm-enable-label", "Enable", 56, 157, 70),
    toggle("tm-test", 24, 205),
    comment("tm-test-label", "Test Input", 56, 207, 85),
    liveMenu("tm-shape", "Shape", ["sine", "up", "down", "triangle", "square", "s&h"], 170, 155, 112),
    comment("tm-shape-label", "Shape", 170, 132, 90),
    liveText("tm-polarity", "bipolar", "unipolar", "Polarity", 305, 155, 78),
    comment("tm-polarity-label", "Mod Polarity", 305, 132, 105),
    flonum("tm-rate", 420, 155, 62, { minimum: 0., maximum: 1. }),
    comment("tm-rate-label", "Rate 0-1", 420, 132, 90),
    flonum("tm-depth", 510, 155, 62, { minimum: 0., maximum: 1. }),
    comment("tm-depth-label", "Depth 0-1", 510, 132, 90),
    flonum("tm-stereo", 600, 155, 62, { minimum: 0., maximum: 1. }),
    comment("tm-stereo-label", "Stereo 0-1", 600, 132, 95),
    flonum("tm-smooth", 690, 155, 62, { minimum: 0., maximum: 250. }),
    comment("tm-smooth-label", "Smooth ms", 690, 132, 95),
    subpatch("p Tremolo_core", coreBoxes, coreLines, 24, 280, 145, 22, [80, 80, 1160, 1110]),
    liveGain("tm-gain", "Tremolo Out", 820, 150, 150, 0),
    makeBox("tm-dac", "ezdac~", 910, 330, 45, 45),
    outlet("tm-out-l", 970, 295),
    outlet("tm-out-r", 1020, 295),
    outlet("tm-mod-out-l", 1070, 350),
    outlet("tm-mod-out-r", 1120, 350),
    comment("tm-out-label", "out 1/2 audio L/R, out 3/4 mod L/R", 960, 395, 260),
    newObj("tm-rate-default", "loadmess 0.35", 420, 205, 95),
    newObj("tm-depth-default", "loadmess 0.75", 510, 205, 95),
    newObj("tm-stereo-default", "loadmess 0.5", 600, 205, 95),
    newObj("tm-smooth-default", "loadmess 20.", 690, 205, 95),
    msg("tm-enable-set", "set $1", 170, 130, 60),
    newObj("tm-enable-state-send", "s mt_tremolo_enable_state", 170, 205, 180),
  ];
  applyPresentation(boxes, {
    "tm-title": presentationRect(12, 8, 350, 22),
    "tm-enable": presentationRect(12, 44, 24, 24),
    "tm-enable-label": presentationRect(44, 46, 62, 22),
    "tm-test": presentationRect(12, 86, 24, 24),
    "tm-test-label": presentationRect(44, 88, 78, 22),
    "tm-shape-label": presentationRect(136, 42, 62, 22),
    "tm-shape": presentationRect(136, 66, 112, 15),
    "tm-polarity-label": presentationRect(136, 96, 104, 22),
    "tm-polarity": presentationRect(136, 120, 78, 15),
    "tm-rate-label": presentationRect(270, 42, 72, 22),
    "tm-rate": presentationRect(270, 66, 58, 22),
    "tm-depth-label": presentationRect(354, 42, 78, 22),
    "tm-depth": presentationRect(354, 66, 58, 22),
    "tm-stereo-label": presentationRect(438, 42, 82, 22),
    "tm-stereo": presentationRect(438, 66, 58, 22),
    "tm-smooth-label": presentationRect(522, 42, 82, 22),
    "tm-smooth": presentationRect(522, 66, 58, 22),
    "tm-gain": presentationRect(620, 36, 54, 132),
  });
  const lines = [
    line("tm-ext-enable", 0, "tm-enable-set", 0),
    line("tm-enable-set", 0, "tm-enable", 0),
    line("tm-ext-enable", 0, "p-Tremolo-core", 2),
    line("tm-ext-shape", 0, "tm-shape", 0),
    line("tm-ext-polarity", 0, "tm-polarity", 0),
    line("tm-ext-rate", 0, "tm-rate", 0),
    line("tm-ext-depth", 0, "tm-depth", 0),
    line("tm-ext-stereo", 0, "tm-stereo", 0),
    line("tm-ext-smooth", 0, "tm-smooth", 0),
    line("tm-rate-default", 0, "tm-rate", 0),
    line("tm-depth-default", 0, "tm-depth", 0),
    line("tm-stereo-default", 0, "tm-stereo", 0),
    line("tm-smooth-default", 0, "tm-smooth", 0),
    line("tm-in-l", 0, "p-Tremolo-core", 0),
    line("tm-in-r", 0, "p-Tremolo-core", 1),
    line("tm-enable", 0, "p-Tremolo-core", 2),
    line("tm-enable", 0, "tm-enable-state-send", 0),
    line("tm-test", 0, "p-Tremolo-core", 3),
    line("tm-shape", 0, "p-Tremolo-core", 4),
    line("tm-polarity", 0, "p-Tremolo-core", 5),
    line("tm-rate", 0, "p-Tremolo-core", 6),
    line("tm-depth", 0, "p-Tremolo-core", 7),
    line("tm-stereo", 0, "p-Tremolo-core", 8),
    line("tm-smooth", 0, "p-Tremolo-core", 9),
    line("p-Tremolo-core", 0, "tm-gain", 0),
    line("p-Tremolo-core", 1, "tm-gain", 1),
    line("tm-gain", 0, "tm-out-l", 0),
    line("tm-gain", 1, "tm-out-r", 0),
    line("p-Tremolo-core", 2, "tm-mod-out-l", 0),
    line("p-Tremolo-core", 3, "tm-mod-out-r", 0),
    line("tm-gain", 0, "tm-dac", 0),
    line("tm-gain", 1, "tm-dac", 1),
  ];
  writeMaxpat("mt_mod_tremolo.maxpat", boxes, lines, [80, 80, 1160, 480]);
}

function buildVocoderPfft() {
  const boxes = [
    comment("vp-title", "mt_vocoder_pfft: spectral envelope transfer. Modulator amplitude shapes internal carrier phase.", 35, 25, 720),
    newObj("vp-mod-in", "fftin~ 1", 55, 90, 70),
    newObj("vp-carrier-in", "fftin~ 2", 265, 90, 70),
    newObj("vp-mod-pol", "cartopol~", 55, 155, 75),
    newObj("vp-carrier-pol", "cartopol~", 265, 155, 75),
    newObj("vp-smooth-r", "r #1", 445, 90, 55),
    newObj("vp-smooth-default", "loadmess slide 12 12", 515, 90, 145),
    newObj("vp-amp-smooth", "vectral~ 512", 55, 235, 95),
    newObj("vp-amp-makeup", "*~ 2.5", 55, 300, 55),
    newObj("vp-amp-limit", "clip~ 0. 6.", 55, 350, 80),
    newObj("vp-poltocar", "poltocar~", 265, 350, 75),
    newObj("vp-fftout", "fftout~ 1", 265, 420, 75),
  ];
  const lines = [
    line("vp-mod-in", 0, "vp-mod-pol", 0),
    line("vp-mod-in", 1, "vp-mod-pol", 1),
    line("vp-carrier-in", 0, "vp-carrier-pol", 0),
    line("vp-carrier-in", 1, "vp-carrier-pol", 1),
    line("vp-mod-in", 2, "vp-amp-smooth", 0),
    line("vp-mod-in", 2, "vp-amp-smooth", 1),
    line("vp-mod-pol", 0, "vp-amp-smooth", 2),
    line("vp-smooth-r", 0, "vp-amp-smooth", 0),
    line("vp-smooth-default", 0, "vp-amp-smooth", 0),
    line("vp-amp-smooth", 0, "vp-amp-makeup", 0),
    line("vp-amp-makeup", 0, "vp-amp-limit", 0),
    line("vp-amp-limit", 0, "vp-poltocar", 0),
    line("vp-carrier-pol", 1, "vp-poltocar", 1),
    line("vp-poltocar", 0, "vp-fftout", 0),
    line("vp-poltocar", 1, "vp-fftout", 1),
  ];
  writeMaxpat("mt_vocoder_pfft.maxpat", boxes, lines, [80, 80, 760, 520], 0);
}

function buildVocoderMod() {
  const coreBoxes = [
    comment("vc-title", "Vocoder_core: L/R input -> mono modulator, internal hybrid carrier -> pfft spectral transfer -> smoothed dry/wet bypass", 35, 25, 980),
    inlet("vc-in-l", 35, 90),
    inlet("vc-in-r", 115, 90),
    inlet("vc-enable", 210, 90),
    inlet("vc-test", 300, 90),
    inlet("vc-wet", 390, 90),
    inlet("vc-tone", 485, 90),
    inlet("vc-noise", 580, 90),
    inlet("vc-smooth", 675, 90),
    inlet("vc-bright", 790, 90),

    newObj("vc-enable-clip", "clip 0. 1.", 210, 135, 80),
    msg("vc-enable-msg", "$1 20", 210, 170, 55),
    newObj("vc-enable-line", "line~", 210, 205, 50),
    newObj("vc-test-clip", "clip 0. 1.", 300, 135, 80),
    msg("vc-test-msg", "$1 20", 300, 170, 55),
    newObj("vc-test-line", "line~", 300, 205, 50),
    newObj("vc-wet-clip", "clip 0. 1.", 390, 135, 80),
    msg("vc-wet-msg", "$1 20", 390, 170, 55),
    newObj("vc-wet-line", "line~", 390, 205, 50),
    newObj("vc-tone-clip", "clip 0. 1.", 485, 135, 80),
    newObj("vc-tone-map", "scale 0. 1. 70. 360.", 485, 170, 150),
    msg("vc-tone-msg", "$1 20", 485, 205, 55),
    newObj("vc-tone-line", "line~", 485, 240, 50),
    newObj("vc-noise-clip", "clip 0. 1.", 580, 135, 80),
    msg("vc-noise-msg", "$1 20", 580, 170, 55),
    newObj("vc-noise-line", "line~", 580, 205, 50),
    newObj("vc-smooth-clip", "clip 0. 1.", 675, 135, 80),
    newObj("vc-smooth-map", "scale 0. 1. 1. 80.", 675, 170, 145),
    newObj("vc-smooth-int", "i", 675, 205, 35),
    msg("vc-smooth-msg", "slide $1 $1", 675, 240, 90),
    newObj("vc-smooth-send", "s #0_vocoder_smooth", 675, 275, 150),
    newObj("vc-bright-clip", "clip 0. 1.", 790, 135, 80),
    newObj("vc-bright-map", "scale 0. 1. 500. 9500.", 790, 170, 160),
    msg("vc-bright-msg", "$1 20", 790, 205, 55),
    newObj("vc-bright-line", "line~", 790, 240, 50),

    newObj("vc-input-sum", "+~", 35, 165, 35),
    newObj("vc-input-mono", "*~ 0.5", 35, 210, 60),
    newObj("vc-test-lfo", "cycle~ 2.", 180, 285, 70),
    newObj("vc-test-env-offset", "+~ 1.", 180, 330, 55),
    newObj("vc-test-env-scale", "*~ 0.5", 180, 375, 55),
    newObj("vc-test-tone", "cycle~ 170", 300, 285, 80),
    newObj("vc-test-tone-env", "*~", 300, 330, 35),
    newObj("vc-test-tone-level", "*~ 0.35", 300, 375, 65),
    newObj("vc-test-noise", "noise~", 410, 285, 60),
    newObj("vc-test-noise-level", "*~ 0.08", 410, 330, 65),
    newObj("vc-test-src", "+~", 355, 420, 35),
    newObj("vc-test-gate", "*~ 0.", 355, 470, 55),
    newObj("vc-mod-sum", "+~", 35, 515, 35),
    newObj("vc-dry-l-sum", "+~", 115, 515, 35),
    newObj("vc-dry-r-sum", "+~", 195, 515, 35),

    newObj("vc-tone-mid", "*~ 1.5", 485, 300, 60),
    newObj("vc-tone-high", "*~ 2.01", 565, 300, 65),
    newObj("vc-car-base", "phasor~", 485, 345, 65),
    newObj("vc-car-mid", "phasor~", 565, 345, 65),
    newObj("vc-car-high", "phasor~", 645, 345, 65),
    newObj("vc-base-scale", "*~ 2.", 485, 390, 55),
    newObj("vc-base-offset", "-~ 1.", 485, 435, 55),
    newObj("vc-mid-scale", "*~ 2.", 565, 390, 55),
    newObj("vc-mid-offset", "-~ 1.", 565, 435, 55),
    newObj("vc-high-scale", "*~ 2.", 645, 390, 55),
    newObj("vc-high-offset", "-~ 1.", 645, 435, 55),
    newObj("vc-car-sum-a", "+~", 525, 485, 35),
    newObj("vc-car-sum-b", "+~", 565, 535, 35),
    newObj("vc-car-tonal-level", "*~ 0.18", 565, 585, 65),
    newObj("vc-car-noise", "noise~", 735, 345, 60),
    newObj("vc-car-noise-level", "*~ 0.25", 735, 390, 65),
    newObj("vc-one-noise", "sig~ 1.", 645, 585, 60),
    newObj("vc-noise-inv", "-~", 645, 635, 35),
    newObj("vc-tonal-mix", "*~", 565, 690, 35),
    newObj("vc-noise-mix", "*~", 735, 690, 35),
    newObj("vc-car-mix", "+~", 650, 745, 35),
    newObj("vc-car-filter", "lores~ 5000 0.35", 650, 795, 125),
    newObj("vc-pfft", "pfft~ mt_vocoder_pfft 1024 4 args #0_vocoder_smooth", 35, 610, 325),
    newObj("vc-pfft-makeup", "*~ 3.", 35, 670, 55),
    newObj("vc-pfft-safe", "clip~ -1. 1.", 35, 720, 85),

    newObj("vc-effective-wet", "*~", 390, 265, 35),
    newObj("vc-one-wet", "sig~ 1.", 450, 265, 60),
    newObj("vc-dry-amount", "-~", 450, 310, 35),
    newObj("vc-dry-gain-l", "*~", 115, 795, 35),
    newObj("vc-wet-gain-l", "*~", 175, 795, 35),
    newObj("vc-outmix-l", "+~", 145, 850, 35),
    newObj("vc-dry-gain-r", "*~", 245, 795, 35),
    newObj("vc-wet-gain-r", "*~", 305, 795, 35),
    newObj("vc-outmix-r", "+~", 275, 850, 35),
    outlet("vc-out-l", 145, 920),
    outlet("vc-out-r", 275, 920),
  ];

  const coreLines = [
    line("vc-enable", 0, "vc-enable-clip", 0),
    line("vc-enable-clip", 0, "vc-enable-msg", 0),
    line("vc-enable-msg", 0, "vc-enable-line", 0),
    line("vc-test", 0, "vc-test-clip", 0),
    line("vc-test-clip", 0, "vc-test-msg", 0),
    line("vc-test-msg", 0, "vc-test-line", 0),
    line("vc-wet", 0, "vc-wet-clip", 0),
    line("vc-wet-clip", 0, "vc-wet-msg", 0),
    line("vc-wet-msg", 0, "vc-wet-line", 0),
    line("vc-tone", 0, "vc-tone-clip", 0),
    line("vc-tone-clip", 0, "vc-tone-map", 0),
    line("vc-tone-map", 0, "vc-tone-msg", 0),
    line("vc-tone-msg", 0, "vc-tone-line", 0),
    line("vc-noise", 0, "vc-noise-clip", 0),
    line("vc-noise-clip", 0, "vc-noise-msg", 0),
    line("vc-noise-msg", 0, "vc-noise-line", 0),
    line("vc-smooth", 0, "vc-smooth-clip", 0),
    line("vc-smooth-clip", 0, "vc-smooth-map", 0),
    line("vc-smooth-map", 0, "vc-smooth-int", 0),
    line("vc-smooth-int", 0, "vc-smooth-msg", 0),
    line("vc-smooth-msg", 0, "vc-smooth-send", 0),
    line("vc-bright", 0, "vc-bright-clip", 0),
    line("vc-bright-clip", 0, "vc-bright-map", 0),
    line("vc-bright-map", 0, "vc-bright-msg", 0),
    line("vc-bright-msg", 0, "vc-bright-line", 0),

    line("vc-in-l", 0, "vc-input-sum", 0),
    line("vc-in-r", 0, "vc-input-sum", 1),
    line("vc-input-sum", 0, "vc-input-mono", 0),
    line("vc-test-lfo", 0, "vc-test-env-offset", 0),
    line("vc-test-env-offset", 0, "vc-test-env-scale", 0),
    line("vc-test-tone", 0, "vc-test-tone-env", 0),
    line("vc-test-env-scale", 0, "vc-test-tone-env", 1),
    line("vc-test-tone-env", 0, "vc-test-tone-level", 0),
    line("vc-test-noise", 0, "vc-test-noise-level", 0),
    line("vc-test-tone-level", 0, "vc-test-src", 0),
    line("vc-test-noise-level", 0, "vc-test-src", 1),
    line("vc-test-src", 0, "vc-test-gate", 0),
    line("vc-test-line", 0, "vc-test-gate", 1),
    line("vc-input-mono", 0, "vc-mod-sum", 0),
    line("vc-test-gate", 0, "vc-mod-sum", 1),
    line("vc-in-l", 0, "vc-dry-l-sum", 0),
    line("vc-test-gate", 0, "vc-dry-l-sum", 1),
    line("vc-in-r", 0, "vc-dry-r-sum", 0),
    line("vc-test-gate", 0, "vc-dry-r-sum", 1),

    line("vc-tone-line", 0, "vc-car-base", 0),
    line("vc-tone-line", 0, "vc-tone-mid", 0),
    line("vc-tone-line", 0, "vc-tone-high", 0),
    line("vc-tone-mid", 0, "vc-car-mid", 0),
    line("vc-tone-high", 0, "vc-car-high", 0),
    line("vc-car-base", 0, "vc-base-scale", 0),
    line("vc-base-scale", 0, "vc-base-offset", 0),
    line("vc-car-mid", 0, "vc-mid-scale", 0),
    line("vc-mid-scale", 0, "vc-mid-offset", 0),
    line("vc-car-high", 0, "vc-high-scale", 0),
    line("vc-high-scale", 0, "vc-high-offset", 0),
    line("vc-base-offset", 0, "vc-car-sum-a", 0),
    line("vc-mid-offset", 0, "vc-car-sum-a", 1),
    line("vc-car-sum-a", 0, "vc-car-sum-b", 0),
    line("vc-high-offset", 0, "vc-car-sum-b", 1),
    line("vc-car-sum-b", 0, "vc-car-tonal-level", 0),
    line("vc-car-noise", 0, "vc-car-noise-level", 0),
    line("vc-one-noise", 0, "vc-noise-inv", 0),
    line("vc-noise-line", 0, "vc-noise-inv", 1),
    line("vc-car-tonal-level", 0, "vc-tonal-mix", 0),
    line("vc-noise-inv", 0, "vc-tonal-mix", 1),
    line("vc-car-noise-level", 0, "vc-noise-mix", 0),
    line("vc-noise-line", 0, "vc-noise-mix", 1),
    line("vc-tonal-mix", 0, "vc-car-mix", 0),
    line("vc-noise-mix", 0, "vc-car-mix", 1),
    line("vc-car-mix", 0, "vc-car-filter", 0),
    line("vc-bright-line", 0, "vc-car-filter", 1),
    line("vc-mod-sum", 0, "vc-pfft", 0),
    line("vc-car-filter", 0, "vc-pfft", 1),
    line("vc-pfft", 0, "vc-pfft-makeup", 0),
    line("vc-pfft-makeup", 0, "vc-pfft-safe", 0),

    line("vc-wet-line", 0, "vc-effective-wet", 0),
    line("vc-enable-line", 0, "vc-effective-wet", 1),
    line("vc-one-wet", 0, "vc-dry-amount", 0),
    line("vc-effective-wet", 0, "vc-dry-amount", 1),
    line("vc-dry-l-sum", 0, "vc-dry-gain-l", 0),
    line("vc-dry-amount", 0, "vc-dry-gain-l", 1),
    line("vc-pfft-safe", 0, "vc-wet-gain-l", 0),
    line("vc-effective-wet", 0, "vc-wet-gain-l", 1),
    line("vc-dry-gain-l", 0, "vc-outmix-l", 0),
    line("vc-wet-gain-l", 0, "vc-outmix-l", 1),
    line("vc-dry-r-sum", 0, "vc-dry-gain-r", 0),
    line("vc-dry-amount", 0, "vc-dry-gain-r", 1),
    line("vc-pfft-safe", 0, "vc-wet-gain-r", 0),
    line("vc-effective-wet", 0, "vc-wet-gain-r", 1),
    line("vc-dry-gain-r", 0, "vc-outmix-r", 0),
    line("vc-wet-gain-r", 0, "vc-outmix-r", 1),
    line("vc-outmix-l", 0, "vc-out-l", 0),
    line("vc-outmix-r", 0, "vc-out-r", 0),
  ];

  const boxes = [
    comment("vm-title", "MT Mod Vocoder - pfft spectral voice", 24, 20, 420, 24),
    comment("vm-note", "pfft~ spectral envelope transfer. Input Mixer audio modulates an internal saw/noise hybrid carrier. No pitch following.", 24, 48, 780),
    inlet("vm-in-l", 24, 100),
    inlet("vm-in-r", 84, 100),
    inlet("vm-ext-enable", 170, 95),
    inlet("vm-ext-wet", 235, 95),
    inlet("vm-ext-tone", 300, 95),
    inlet("vm-ext-noise", 365, 95),
    inlet("vm-ext-smooth", 430, 95),
    inlet("vm-ext-bright", 495, 95),
    toggle("vm-enable", 24, 155),
    comment("vm-enable-label", "Enable", 56, 157, 70),
    toggle("vm-test", 24, 205),
    comment("vm-test-label", "Test Input", 56, 207, 85),
    flonum("vm-wet", 155, 155, 62, { minimum: 0., maximum: 1. }),
    comment("vm-wet-label", "Dry/Wet", 155, 132, 80),
    flonum("vm-tone", 245, 155, 62, { minimum: 0., maximum: 1. }),
    comment("vm-tone-label", "Carrier Tone", 245, 132, 100),
    flonum("vm-noise", 355, 155, 62, { minimum: 0., maximum: 1. }),
    comment("vm-noise-label", "Noise Mix", 355, 132, 95),
    flonum("vm-smooth", 455, 155, 62, { minimum: 0., maximum: 1. }),
    comment("vm-smooth-label", "Spectral Smooth", 455, 132, 120),
    flonum("vm-bright", 580, 155, 62, { minimum: 0., maximum: 1. }),
    comment("vm-bright-label", "Brightness", 580, 132, 95),
    subpatch("p Vocoder_core", coreBoxes, coreLines, 24, 285, 155, 22, [80, 80, 1040, 1010]),
    liveGain("vm-gain", "Vocoder Out", 690, 145, 150, 0),
    makeBox("vm-dac", "ezdac~", 805, 330, 45, 45),
    outlet("vm-out-l", 875, 295),
    outlet("vm-out-r", 925, 295),
    comment("vm-out-label", "out 1/2: audio L/R", 855, 335, 170),
    newObj("vm-wet-default", "loadmess 0.7", 155, 205, 95),
    newObj("vm-tone-default", "loadmess 0.35", 245, 205, 95),
    newObj("vm-noise-default", "loadmess 0.25", 355, 205, 95),
    newObj("vm-smooth-default", "loadmess 0.35", 455, 205, 95),
    newObj("vm-bright-default", "loadmess 0.65", 580, 205, 95),
    msg("vm-enable-set", "set $1", 170, 130, 60),
    newObj("vm-enable-state-send", "s mt_vocoder_enable_state", 170, 235, 180),
  ];
  applyPresentation(boxes, {
    "vm-title": presentationRect(12, 8, 360, 22),
    "vm-note": presentationRect(12, 30, 520, 36),
    "vm-enable": presentationRect(12, 78, 24, 24),
    "vm-enable-label": presentationRect(44, 80, 62, 22),
    "vm-test": presentationRect(12, 122, 24, 24),
    "vm-test-label": presentationRect(44, 124, 78, 22),
    "vm-wet-label": presentationRect(136, 76, 70, 22),
    "vm-wet": presentationRect(136, 100, 58, 22),
    "vm-tone-label": presentationRect(220, 76, 96, 22),
    "vm-tone": presentationRect(220, 100, 58, 22),
    "vm-noise-label": presentationRect(324, 76, 85, 22),
    "vm-noise": presentationRect(324, 100, 58, 22),
    "vm-smooth-label": presentationRect(420, 76, 118, 22),
    "vm-smooth": presentationRect(420, 100, 58, 22),
    "vm-bright-label": presentationRect(548, 76, 86, 22),
    "vm-bright": presentationRect(548, 100, 58, 22),
    "vm-gain": presentationRect(646, 64, 54, 132),
  });

  const lines = [
    line("vm-ext-enable", 0, "vm-enable-set", 0),
    line("vm-enable-set", 0, "vm-enable", 0),
    line("vm-ext-enable", 0, "p-Vocoder-core", 2),
    line("vm-ext-wet", 0, "vm-wet", 0),
    line("vm-ext-tone", 0, "vm-tone", 0),
    line("vm-ext-noise", 0, "vm-noise", 0),
    line("vm-ext-smooth", 0, "vm-smooth", 0),
    line("vm-ext-bright", 0, "vm-bright", 0),
    line("vm-wet-default", 0, "vm-wet", 0),
    line("vm-tone-default", 0, "vm-tone", 0),
    line("vm-noise-default", 0, "vm-noise", 0),
    line("vm-smooth-default", 0, "vm-smooth", 0),
    line("vm-bright-default", 0, "vm-bright", 0),
    line("vm-in-l", 0, "p-Vocoder-core", 0),
    line("vm-in-r", 0, "p-Vocoder-core", 1),
    line("vm-enable", 0, "p-Vocoder-core", 2),
    line("vm-enable", 0, "vm-enable-state-send", 0),
    line("vm-test", 0, "p-Vocoder-core", 3),
    line("vm-wet", 0, "p-Vocoder-core", 4),
    line("vm-tone", 0, "p-Vocoder-core", 5),
    line("vm-noise", 0, "p-Vocoder-core", 6),
    line("vm-smooth", 0, "p-Vocoder-core", 7),
    line("vm-bright", 0, "p-Vocoder-core", 8),
    line("p-Vocoder-core", 0, "vm-gain", 0),
    line("p-Vocoder-core", 1, "vm-gain", 1),
    line("vm-gain", 0, "vm-out-l", 0),
    line("vm-gain", 1, "vm-out-r", 0),
    line("vm-gain", 0, "vm-dac", 0),
    line("vm-gain", 1, "vm-dac", 1),
  ];
  writeMaxpat("mt_mod_vocoder.maxpat", boxes, lines, [80, 80, 1020, 440]);
}

function buildTalkboxMod() {
  const coreBoxes = [
    comment("tb-title", "Talkbox_core: mono drive -> four formant resonators -> smoothed dry/wet stereo blend with subtle width", 35, 25, 960),
    inlet("tb-in-l", 35, 90),
    inlet("tb-in-r", 115, 90),
    inlet("tb-enable", 205, 90),
    inlet("tb-test", 285, 90),
    inlet("tb-wet", 365, 90),
    inlet("tb-vowel", 445, 90),
    inlet("tb-mouth", 535, 90),
    inlet("tb-drive-in", 625, 90),
    inlet("tb-bright", 715, 90),
    newObj("tb-enable-clip", "clip 0. 1.", 205, 135, 80),
    msg("tb-enable-msg", "$1 20", 205, 170, 55),
    newObj("tb-enable-line", "line~", 205, 205, 50),
    newObj("tb-test-clip", "clip 0. 1.", 285, 135, 80),
    msg("tb-test-msg", "$1 20", 285, 170, 55),
    newObj("tb-test-line", "line~", 285, 205, 50),
    newObj("tb-wet-clip", "clip 0. 1.", 365, 135, 80),
    msg("tb-wet-msg", "$1 20", 365, 170, 55),
    newObj("tb-wet-line", "line~", 365, 205, 50),
    newObj("tb-vowel-clip", "clip 0. 1.", 445, 135, 80),
    newObj("tb-f1-map", "scale 0. 1. 330. 760.", 445, 180, 150),
    newObj("tb-f2-map", "scale 0. 1. 760. 2300.", 605, 180, 155),
    newObj("tb-f3-map", "scale 0. 1. 2100. 3300.", 770, 180, 165),
    newObj("tb-f4-map", "scale 0. 1. 3100. 4600.", 945, 180, 165),
    msg("tb-f1-msg", "$1 25", 445, 225, 55),
    msg("tb-f2-msg", "$1 25", 605, 225, 55),
    msg("tb-f3-msg", "$1 25", 770, 225, 55),
    msg("tb-f4-msg", "$1 25", 945, 225, 55),
    newObj("tb-f1-line", "line~", 445, 270, 50),
    newObj("tb-f2-line", "line~", 605, 270, 50),
    newObj("tb-f3-line", "line~", 770, 270, 50),
    newObj("tb-f4-line", "line~", 945, 270, 50),
    newObj("tb-mouth-clip", "clip 0. 1.", 535, 135, 80),
    newObj("tb-mouth-map", "scale 0. 1. 3. 28.", 535, 315, 140),
    msg("tb-mouth-msg", "$1 25", 535, 360, 55),
    newObj("tb-mouth-line", "line~", 535, 405, 50),
    newObj("tb-drive-clip", "clip 0. 1.", 625, 135, 80),
    newObj("tb-drive-map", "scale 0. 1. 1. 8.", 625, 315, 135),
    msg("tb-drive-msg", "$1 20", 625, 360, 55),
    newObj("tb-drive-line", "line~", 625, 405, 50),
    newObj("tb-bright-clip", "clip 0. 1.", 715, 135, 80),
    newObj("tb-bright-route", "t f f f", 715, 180, 70),
    newObj("tb-bright-main", "scale 0. 1. 0.24 0.62", 715, 315, 155),
    msg("tb-bright-main-msg", "$1 25", 715, 360, 55),
    newObj("tb-bright-main-line", "line~", 715, 405, 50),
    newObj("tb-bright-hi", "scale 0. 1. 0.08 0.38", 880, 315, 155),
    msg("tb-bright-hi-msg", "$1 25", 880, 360, 55),
    newObj("tb-bright-hi-line", "line~", 880, 405, 50),
    msg("tb-width-msg", "$1 25", 1045, 360, 55),
    newObj("tb-width-line", "line~", 1045, 405, 50),
    newObj("tb-in-sum", "+~", 35, 155, 35),
    newObj("tb-in-mono", "*~ 0.5", 35, 200, 60),
    newObj("tb-test-osc", "cycle~ 140", 285, 260, 75),
    newObj("tb-test-lfo", "cycle~ 2.2", 375, 260, 75),
    newObj("tb-test-env-plus", "+~ 1.", 375, 305, 55),
    newObj("tb-test-env-half", "*~ 0.5", 375, 350, 55),
    newObj("tb-test-env", "*~", 285, 350, 35),
    newObj("tb-test-level", "*~ 0.35", 285, 400, 65),
    newObj("tb-test-gate", "*~ 0.", 285, 450, 55),
    newObj("tb-source", "+~", 35, 505, 35),
    newObj("tb-dry-l", "+~", 105, 505, 35),
    newObj("tb-dry-r", "+~", 175, 505, 35),
    newObj("tb-drive", "overdrive~ 1.", 35, 570, 95),
    newObj("tb-formant-1", "reson~ 0.45 500. 8.", 35, 640, 135),
    newObj("tb-formant-2", "reson~ 0.45 1200. 8.", 205, 640, 145),
    newObj("tb-formant-3", "reson~ 0.22 2600. 8.", 385, 640, 145),
    newObj("tb-formant-4", "reson~ 0.16 3800. 8.", 565, 640, 145),
    newObj("tb-band-12", "+~", 135, 730, 35),
    newObj("tb-band-34", "+~", 475, 730, 35),
    newObj("tb-band-main", "*~", 135, 790, 35),
    newObj("tb-band-hi", "*~", 475, 790, 35),
    newObj("tb-formant-sum", "+~", 305, 850, 35),
    newObj("tb-safe", "clip~ -1. 1.", 305, 900, 85),
    newObj("tb-width-tapin", "tapin~ 60.", 405, 900, 90),
    newObj("tb-width-tapout", "tapout~ 13.", 405, 945, 95),
    newObj("tb-one-width", "sig~ 1.", 500, 900, 60),
    newObj("tb-width-direct-amount", "-~", 500, 945, 35),
    newObj("tb-wet-r-direct", "*~", 405, 1000, 35),
    newObj("tb-wet-r-delay", "*~", 475, 1000, 35),
    newObj("tb-wet-r-spread", "+~", 440, 1050, 35),
    newObj("tb-eff-wet", "*~", 365, 270, 35),
    newObj("tb-one-wet", "sig~ 1.", 425, 315, 60),
    newObj("tb-dry-amount", "-~", 425, 360, 35),
    newObj("tb-dry-mix-l", "*~", 105, 955, 35),
    newObj("tb-wet-mix-l", "*~", 175, 955, 35),
    newObj("tb-outmix-l", "+~", 140, 1010, 35),
    newObj("tb-dry-mix-r", "*~", 245, 955, 35),
    newObj("tb-wet-mix-r", "*~", 315, 955, 35),
    newObj("tb-outmix-r", "+~", 280, 1010, 35),
    outlet("tb-out-l", 140, 1080),
    outlet("tb-out-r", 280, 1080),
  ];
  const coreLines = [
    line("tb-enable", 0, "tb-enable-clip", 0),
    line("tb-enable-clip", 0, "tb-enable-msg", 0),
    line("tb-enable-msg", 0, "tb-enable-line", 0),
    line("tb-test", 0, "tb-test-clip", 0),
    line("tb-test-clip", 0, "tb-test-msg", 0),
    line("tb-test-msg", 0, "tb-test-line", 0),
    line("tb-wet", 0, "tb-wet-clip", 0),
    line("tb-wet-clip", 0, "tb-wet-msg", 0),
    line("tb-wet-msg", 0, "tb-wet-line", 0),
    line("tb-vowel", 0, "tb-vowel-clip", 0),
    line("tb-vowel-clip", 0, "tb-f1-map", 0),
    line("tb-vowel-clip", 0, "tb-f2-map", 0),
    line("tb-vowel-clip", 0, "tb-f3-map", 0),
    line("tb-vowel-clip", 0, "tb-f4-map", 0),
    line("tb-f1-map", 0, "tb-f1-msg", 0),
    line("tb-f2-map", 0, "tb-f2-msg", 0),
    line("tb-f3-map", 0, "tb-f3-msg", 0),
    line("tb-f4-map", 0, "tb-f4-msg", 0),
    line("tb-f1-msg", 0, "tb-f1-line", 0),
    line("tb-f2-msg", 0, "tb-f2-line", 0),
    line("tb-f3-msg", 0, "tb-f3-line", 0),
    line("tb-f4-msg", 0, "tb-f4-line", 0),
    line("tb-mouth", 0, "tb-mouth-clip", 0),
    line("tb-mouth-clip", 0, "tb-mouth-map", 0),
    line("tb-mouth-map", 0, "tb-mouth-msg", 0),
    line("tb-mouth-msg", 0, "tb-mouth-line", 0),
    line("tb-drive-in", 0, "tb-drive-clip", 0),
    line("tb-drive-clip", 0, "tb-drive-map", 0),
    line("tb-drive-map", 0, "tb-drive-msg", 0),
    line("tb-drive-msg", 0, "tb-drive-line", 0),
    line("tb-bright", 0, "tb-bright-clip", 0),
    line("tb-bright-clip", 0, "tb-bright-route", 0),
    line("tb-bright-route", 0, "tb-bright-main", 0),
    line("tb-bright-main", 0, "tb-bright-main-msg", 0),
    line("tb-bright-main-msg", 0, "tb-bright-main-line", 0),
    line("tb-bright-route", 1, "tb-bright-hi", 0),
    line("tb-bright-hi", 0, "tb-bright-hi-msg", 0),
    line("tb-bright-hi-msg", 0, "tb-bright-hi-line", 0),
    line("tb-bright-route", 2, "tb-width-msg", 0),
    line("tb-width-msg", 0, "tb-width-line", 0),
    line("tb-in-l", 0, "tb-in-sum", 0),
    line("tb-in-r", 0, "tb-in-sum", 1),
    line("tb-in-sum", 0, "tb-in-mono", 0),
    line("tb-test-osc", 0, "tb-test-env", 0),
    line("tb-test-lfo", 0, "tb-test-env-plus", 0),
    line("tb-test-env-plus", 0, "tb-test-env-half", 0),
    line("tb-test-env-half", 0, "tb-test-env", 1),
    line("tb-test-env", 0, "tb-test-level", 0),
    line("tb-test-level", 0, "tb-test-gate", 0),
    line("tb-test-line", 0, "tb-test-gate", 1),
    line("tb-in-mono", 0, "tb-source", 0),
    line("tb-test-gate", 0, "tb-source", 1),
    line("tb-in-l", 0, "tb-dry-l", 0),
    line("tb-test-gate", 0, "tb-dry-l", 1),
    line("tb-in-r", 0, "tb-dry-r", 0),
    line("tb-test-gate", 0, "tb-dry-r", 1),
    line("tb-source", 0, "tb-drive", 0),
    line("tb-drive-line", 0, "tb-drive", 1),
    line("tb-drive", 0, "tb-formant-1", 0),
    line("tb-drive", 0, "tb-formant-2", 0),
    line("tb-drive", 0, "tb-formant-3", 0),
    line("tb-drive", 0, "tb-formant-4", 0),
    line("tb-f1-line", 0, "tb-formant-1", 2),
    line("tb-f2-line", 0, "tb-formant-2", 2),
    line("tb-f3-line", 0, "tb-formant-3", 2),
    line("tb-f4-line", 0, "tb-formant-4", 2),
    line("tb-mouth-line", 0, "tb-formant-1", 3),
    line("tb-mouth-line", 0, "tb-formant-2", 3),
    line("tb-mouth-line", 0, "tb-formant-3", 3),
    line("tb-mouth-line", 0, "tb-formant-4", 3),
    line("tb-formant-1", 0, "tb-band-12", 0),
    line("tb-formant-2", 0, "tb-band-12", 1),
    line("tb-formant-3", 0, "tb-band-34", 0),
    line("tb-formant-4", 0, "tb-band-34", 1),
    line("tb-band-12", 0, "tb-band-main", 0),
    line("tb-bright-main-line", 0, "tb-band-main", 1),
    line("tb-band-34", 0, "tb-band-hi", 0),
    line("tb-bright-hi-line", 0, "tb-band-hi", 1),
    line("tb-band-main", 0, "tb-formant-sum", 0),
    line("tb-band-hi", 0, "tb-formant-sum", 1),
    line("tb-formant-sum", 0, "tb-safe", 0),
    line("tb-safe", 0, "tb-width-tapin", 0),
    line("tb-width-tapin", 0, "tb-width-tapout", 0),
    line("tb-one-width", 0, "tb-width-direct-amount", 0),
    line("tb-width-line", 0, "tb-width-direct-amount", 1),
    line("tb-safe", 0, "tb-wet-r-direct", 0),
    line("tb-width-direct-amount", 0, "tb-wet-r-direct", 1),
    line("tb-width-tapout", 0, "tb-wet-r-delay", 0),
    line("tb-width-line", 0, "tb-wet-r-delay", 1),
    line("tb-wet-r-direct", 0, "tb-wet-r-spread", 0),
    line("tb-wet-r-delay", 0, "tb-wet-r-spread", 1),
    line("tb-wet-line", 0, "tb-eff-wet", 0),
    line("tb-enable-line", 0, "tb-eff-wet", 1),
    line("tb-one-wet", 0, "tb-dry-amount", 0),
    line("tb-eff-wet", 0, "tb-dry-amount", 1),
    line("tb-dry-l", 0, "tb-dry-mix-l", 0),
    line("tb-dry-amount", 0, "tb-dry-mix-l", 1),
    line("tb-safe", 0, "tb-wet-mix-l", 0),
    line("tb-eff-wet", 0, "tb-wet-mix-l", 1),
    line("tb-dry-mix-l", 0, "tb-outmix-l", 0),
    line("tb-wet-mix-l", 0, "tb-outmix-l", 1),
    line("tb-dry-r", 0, "tb-dry-mix-r", 0),
    line("tb-dry-amount", 0, "tb-dry-mix-r", 1),
    line("tb-wet-r-spread", 0, "tb-wet-mix-r", 0),
    line("tb-eff-wet", 0, "tb-wet-mix-r", 1),
    line("tb-dry-mix-r", 0, "tb-outmix-r", 0),
    line("tb-wet-mix-r", 0, "tb-outmix-r", 1),
    line("tb-outmix-l", 0, "tb-out-l", 0),
    line("tb-outmix-r", 0, "tb-out-r", 0),
  ];
  const boxes = [
    comment("tbm-title", "MT Mod Talkbox - formant voice character", 24, 20, 430, 24),
    comment("tbm-note", "Talkbox-inspired formant processor: drive plus four resonant vowel bands. Standalone test input included.", 24, 48, 760),
    inlet("tbm-in-l", 24, 100),
    inlet("tbm-in-r", 84, 100),
    inlet("tbm-ext-enable", 170, 95),
    inlet("tbm-ext-wet", 235, 95),
    inlet("tbm-ext-vowel", 300, 95),
    inlet("tbm-ext-mouth", 365, 95),
    inlet("tbm-ext-drive", 430, 95),
    inlet("tbm-ext-bright", 495, 95),
    toggle("tbm-enable", 24, 155),
    comment("tbm-enable-label", "Enable", 56, 157, 70),
    toggle("tbm-test", 24, 205),
    comment("tbm-test-label", "Test Input", 56, 207, 85),
    flonum("tbm-wet", 155, 155, 62, { minimum: 0., maximum: 1. }),
    comment("tbm-wet-label", "Dry/Wet", 155, 132, 80),
    flonum("tbm-vowel", 245, 155, 62, { minimum: 0., maximum: 1. }),
    comment("tbm-vowel-label", "Vowel", 245, 132, 70),
    flonum("tbm-mouth", 335, 155, 62, { minimum: 0., maximum: 1. }),
    comment("tbm-mouth-label", "Mouth", 335, 132, 70),
    flonum("tbm-drive", 425, 155, 62, { minimum: 0., maximum: 1. }),
    comment("tbm-drive-label", "Drive", 425, 132, 70),
    flonum("tbm-bright", 515, 155, 62, { minimum: 0., maximum: 1. }),
    comment("tbm-bright-label", "Brightness", 515, 132, 95),
    subpatch("p Talkbox_core", coreBoxes, coreLines, 24, 285, 155, 22, [80, 80, 1120, 1180]),
    liveGain("tbm-gain", "Talkbox Out", 645, 145, 150, 0),
    makeBox("tbm-dac", "ezdac~", 760, 330, 45, 45),
    outlet("tbm-out-l", 830, 295),
    outlet("tbm-out-r", 880, 295),
    comment("tbm-out-label", "out 1/2: audio L/R", 810, 335, 170),
    newObj("tbm-wet-default", "loadmess 0.65", 155, 205, 95),
    newObj("tbm-vowel-default", "loadmess 0.45", 245, 205, 95),
    newObj("tbm-mouth-default", "loadmess 0.55", 335, 205, 95),
    newObj("tbm-drive-default", "loadmess 0.35", 425, 205, 95),
    newObj("tbm-bright-default", "loadmess 0.6", 515, 205, 95),
  ];
  applyPresentation(boxes, {
    "tbm-title": presentationRect(12, 8, 360, 22),
    "tbm-note": presentationRect(12, 30, 500, 36),
    "tbm-enable": presentationRect(12, 78, 24, 24),
    "tbm-enable-label": presentationRect(44, 80, 62, 22),
    "tbm-test": presentationRect(12, 122, 24, 24),
    "tbm-test-label": presentationRect(44, 124, 78, 22),
    "tbm-wet-label": presentationRect(136, 76, 70, 22),
    "tbm-wet": presentationRect(136, 100, 58, 22),
    "tbm-vowel-label": presentationRect(220, 76, 70, 22),
    "tbm-vowel": presentationRect(220, 100, 58, 22),
    "tbm-mouth-label": presentationRect(304, 76, 70, 22),
    "tbm-mouth": presentationRect(304, 100, 58, 22),
    "tbm-drive-label": presentationRect(388, 76, 70, 22),
    "tbm-drive": presentationRect(388, 100, 58, 22),
    "tbm-bright-label": presentationRect(472, 76, 90, 22),
    "tbm-bright": presentationRect(472, 100, 58, 22),
    "tbm-gain": presentationRect(580, 64, 54, 132),
  });
  const lines = [
    line("tbm-ext-enable", 0, "tbm-enable", 0),
    line("tbm-ext-wet", 0, "tbm-wet", 0),
    line("tbm-ext-vowel", 0, "tbm-vowel", 0),
    line("tbm-ext-mouth", 0, "tbm-mouth", 0),
    line("tbm-ext-drive", 0, "tbm-drive", 0),
    line("tbm-ext-bright", 0, "tbm-bright", 0),
    line("tbm-wet-default", 0, "tbm-wet", 0),
    line("tbm-vowel-default", 0, "tbm-vowel", 0),
    line("tbm-mouth-default", 0, "tbm-mouth", 0),
    line("tbm-drive-default", 0, "tbm-drive", 0),
    line("tbm-bright-default", 0, "tbm-bright", 0),
    line("tbm-in-l", 0, "p-Talkbox-core", 0),
    line("tbm-in-r", 0, "p-Talkbox-core", 1),
    line("tbm-enable", 0, "p-Talkbox-core", 2),
    line("tbm-test", 0, "p-Talkbox-core", 3),
    line("tbm-wet", 0, "p-Talkbox-core", 4),
    line("tbm-vowel", 0, "p-Talkbox-core", 5),
    line("tbm-mouth", 0, "p-Talkbox-core", 6),
    line("tbm-drive", 0, "p-Talkbox-core", 7),
    line("tbm-bright", 0, "p-Talkbox-core", 8),
    line("p-Talkbox-core", 0, "tbm-gain", 0),
    line("p-Talkbox-core", 1, "tbm-gain", 1),
    line("tbm-gain", 0, "tbm-out-l", 0),
    line("tbm-gain", 1, "tbm-out-r", 0),
    line("tbm-gain", 0, "tbm-dac", 0),
    line("tbm-gain", 1, "tbm-dac", 1),
  ];
  writeMaxpat("mt_mod_talkbox.maxpat", boxes, lines, [80, 80, 980, 440]);
}

function buildVocalChopMod() {
  const coreBoxes = [
    comment("ch-title", "Live_chop_core: live input is chopped first; Freeze crossfades to the recent buffer as an optional hold layer", 35, 25, 1040),
    inlet("ch-in-l", 35, 90),
    inlet("ch-in-r", 115, 90),
    inlet("ch-enable", 205, 90),
    inlet("ch-test", 285, 90),
    inlet("ch-freeze", 365, 90),
    inlet("ch-freeze-ext", 455, 90),
    inlet("ch-rate", 535, 90),
    inlet("ch-gate", 625, 90),
    inlet("ch-pitch", 715, 90),
    inlet("ch-wet", 805, 90),
    inlet("ch-reverse", 895, 90),
    inlet("ch-texture", 985, 90),
    newObj("ch-buffer", "buffer~ #0_chop_buffer 4000 2", 35, 135, 210),
    newObj("ch-enable-clip", "clip 0. 1.", 205, 135, 80),
    msg("ch-enable-msg", "$1 20", 205, 170, 55),
    newObj("ch-enable-line", "line~", 205, 205, 50),
    newObj("ch-test-clip", "clip 0. 1.", 285, 135, 80),
    msg("ch-test-msg", "$1 20", 285, 170, 55),
    newObj("ch-test-line", "line~", 285, 205, 50),
    newObj("ch-freeze-clip", "clip 0 1", 365, 135, 80),
    newObj("ch-freeze-ext-clip", "clip 0 1", 455, 135, 80),
    newObj("ch-freeze-sum", "+", 365, 170, 35),
    newObj("ch-freeze-limit", "clip 0 1", 365, 205, 75),
    newObj("ch-record-permit", "expr 1 - $f1", 365, 240, 90),
    newObj("ch-record-state", "* 1", 365, 275, 55),
    msg("ch-freeze-msg", "$1 20", 365, 310, 55),
    newObj("ch-freeze-line", "line~", 365, 345, 50),
    newObj("ch-rate-clip", "clip 0. 1.", 535, 135, 80),
    newObj("ch-rate-map", "scale 0. 1. 1. 24.", 535, 170, 145),
    msg("ch-rate-msg", "$1 20", 535, 205, 55),
    newObj("ch-rate-line", "line~", 535, 240, 50),
    newObj("ch-gate-clip", "clip 0. 1.", 625, 135, 80),
    newObj("ch-gate-map", "scale 0. 1. 0.92 0.08", 625, 170, 160),
    msg("ch-gate-msg", "$1 20", 625, 205, 55),
    newObj("ch-gate-line", "line~", 625, 240, 50),
    newObj("ch-pitch-clip", "clip 0. 1.", 715, 135, 80),
    newObj("ch-pitch-tone", "scale 0. 1. 60. 1800.", 715, 170, 170),
    msg("ch-pitch-msg", "$1 20", 715, 205, 55),
    newObj("ch-pitch-line", "line~", 715, 240, 50),
    newObj("ch-wet-clip", "clip 0. 1.", 805, 135, 80),
    msg("ch-wet-msg", "$1 20", 805, 170, 55),
    newObj("ch-wet-line", "line~", 805, 205, 50),
    newObj("ch-reverse-clip", "clip 0 1", 895, 135, 80),
    msg("ch-reverse-msg", "$1 20", 895, 205, 55),
    newObj("ch-reverse-line", "line~", 895, 240, 50),
    newObj("ch-texture-clip", "clip 0. 1.", 985, 135, 80),
    msg("ch-texture-msg", "$1 20", 985, 205, 55),
    newObj("ch-texture-line", "line~", 985, 240, 50),
    newObj("ch-test-l", "cycle~ 210", 285, 285, 80),
    newObj("ch-test-r", "cycle~ 315", 385, 285, 80),
    newObj("ch-test-l-gate", "*~ 0.", 285, 335, 55),
    newObj("ch-test-r-gate", "*~ 0.", 385, 335, 55),
    newObj("ch-source-l", "+~", 35, 395, 35),
    newObj("ch-source-r", "+~", 115, 395, 35),
    newObj("ch-recorder", "record~ #0_chop_buffer 2", 35, 465, 185),
    newObj("ch-rec-loop", "loadmess loop 1", 245, 465, 110),
    newObj("ch-hold-speed", "sig~ 1.", 245, 555, 65),
    newObj("ch-groove", "groove~ #0_chop_buffer 2 @loop 1", 35, 555, 235),
    newObj("ch-one-freeze", "sig~ 1.", 365, 395, 65),
    newObj("ch-live-amount", "-~", 365, 435, 35),
    newObj("ch-live-src-l", "*~", 35, 620, 35),
    newObj("ch-hold-src-l", "*~", 95, 620, 35),
    newObj("ch-proc-src-l", "+~", 65, 670, 35),
    newObj("ch-live-src-r", "*~", 155, 620, 35),
    newObj("ch-hold-src-r", "*~", 215, 620, 35),
    newObj("ch-proc-src-r", "+~", 185, 670, 35),
    newObj("ch-phasor", "phasor~ 2.", 535, 330, 80),
    newObj("ch-gate-compare", ">=~ 0.5", 535, 385, 70),
    newObj("ch-gate-smooth", "slide~ 16 64", 535, 435, 95),
    newObj("ch-one-flip", "sig~ 1.", 535, 485, 65),
    newObj("ch-flip-inv", "-~", 535, 530, 35),
    newObj("ch-one-gate", "sig~ 1.", 625, 485, 65),
    newObj("ch-gate-inv", "-~", 625, 530, 35),
    newObj("ch-gate-normal", "*~", 535, 580, 35),
    newObj("ch-gate-flipped", "*~", 625, 580, 35),
    newObj("ch-gate-flip", "+~", 580, 630, 35),
    newObj("ch-chop-l", "*~", 65, 730, 35),
    newObj("ch-chop-r", "*~", 185, 730, 35),
    newObj("ch-tone-osc", "cycle~ 440", 715, 295, 85),
    newObj("ch-tone-half", "*~ 0.5", 715, 340, 65),
    newObj("ch-tone-uni", "+~ 0.5", 715, 385, 65),
    newObj("ch-one-texture", "sig~ 1.", 985, 285, 65),
    newObj("ch-clean-amount", "-~", 985, 330, 35),
    newObj("ch-clean-l", "*~", 35, 795, 35),
    newObj("ch-chip-pre-l", "*~", 95, 795, 35),
    newObj("ch-chip-l", "degrade~ 1. 12", 95, 845, 110),
    newObj("ch-chip-level-l", "*~", 95, 895, 35),
    newObj("ch-wet-sum-l", "+~", 65, 945, 35),
    newObj("ch-clean-r", "*~", 215, 795, 35),
    newObj("ch-chip-pre-r", "*~", 275, 795, 35),
    newObj("ch-chip-r", "degrade~ 1. 12", 275, 845, 110),
    newObj("ch-chip-level-r", "*~", 275, 895, 35),
    newObj("ch-wet-sum-r", "+~", 245, 945, 35),
    newObj("ch-eff-wet", "*~", 805, 250, 35),
    newObj("ch-one-wet", "sig~ 1.", 865, 295, 60),
    newObj("ch-dry-amount", "-~", 865, 340, 35),
    newObj("ch-dry-mix-l", "*~", 35, 1010, 35),
    newObj("ch-wet-mix-l", "*~", 95, 1010, 35),
    newObj("ch-outmix-l", "+~", 65, 1065, 35),
    newObj("ch-dry-mix-r", "*~", 175, 1010, 35),
    newObj("ch-wet-mix-r", "*~", 235, 1010, 35),
    newObj("ch-outmix-r", "+~", 205, 1065, 35),
    outlet("ch-out-l", 65, 1130),
    outlet("ch-out-r", 205, 1130),
  ];
  const coreLines = [
    line("ch-enable", 0, "ch-enable-clip", 0),
    line("ch-enable-clip", 0, "ch-enable-msg", 0),
    line("ch-enable-msg", 0, "ch-enable-line", 0),
    line("ch-test", 0, "ch-test-clip", 0),
    line("ch-test-clip", 0, "ch-test-msg", 0),
    line("ch-test-msg", 0, "ch-test-line", 0),
    line("ch-freeze", 0, "ch-freeze-clip", 0),
    line("ch-freeze-ext", 0, "ch-freeze-ext-clip", 0),
    line("ch-freeze-clip", 0, "ch-freeze-sum", 0),
    line("ch-freeze-ext-clip", 0, "ch-freeze-sum", 1),
    line("ch-freeze-sum", 0, "ch-freeze-limit", 0),
    line("ch-freeze-limit", 0, "ch-record-permit", 0),
    line("ch-enable-clip", 0, "ch-record-state", 0),
    line("ch-record-permit", 0, "ch-record-state", 1),
    line("ch-freeze-limit", 0, "ch-freeze-msg", 0),
    line("ch-freeze-msg", 0, "ch-freeze-line", 0),
    line("ch-rate", 0, "ch-rate-clip", 0),
    line("ch-rate-clip", 0, "ch-rate-map", 0),
    line("ch-rate-map", 0, "ch-rate-msg", 0),
    line("ch-rate-msg", 0, "ch-rate-line", 0),
    line("ch-rate-line", 0, "ch-phasor", 0),
    line("ch-gate", 0, "ch-gate-clip", 0),
    line("ch-gate-clip", 0, "ch-gate-map", 0),
    line("ch-gate-map", 0, "ch-gate-msg", 0),
    line("ch-gate-msg", 0, "ch-gate-line", 0),
    line("ch-pitch", 0, "ch-pitch-clip", 0),
    line("ch-pitch-clip", 0, "ch-pitch-tone", 0),
    line("ch-pitch-tone", 0, "ch-pitch-msg", 0),
    line("ch-pitch-msg", 0, "ch-pitch-line", 0),
    line("ch-wet", 0, "ch-wet-clip", 0),
    line("ch-wet-clip", 0, "ch-wet-msg", 0),
    line("ch-wet-msg", 0, "ch-wet-line", 0),
    line("ch-reverse", 0, "ch-reverse-clip", 0),
    line("ch-reverse-clip", 0, "ch-reverse-msg", 0),
    line("ch-reverse-msg", 0, "ch-reverse-line", 0),
    line("ch-texture", 0, "ch-texture-clip", 0),
    line("ch-texture-clip", 0, "ch-texture-msg", 0),
    line("ch-texture-msg", 0, "ch-texture-line", 0),
    line("ch-test-l", 0, "ch-test-l-gate", 0),
    line("ch-test-r", 0, "ch-test-r-gate", 0),
    line("ch-test-line", 0, "ch-test-l-gate", 1),
    line("ch-test-line", 0, "ch-test-r-gate", 1),
    line("ch-in-l", 0, "ch-source-l", 0),
    line("ch-test-l-gate", 0, "ch-source-l", 1),
    line("ch-in-r", 0, "ch-source-r", 0),
    line("ch-test-r-gate", 0, "ch-source-r", 1),
    line("ch-source-l", 0, "ch-recorder", 0),
    line("ch-source-r", 0, "ch-recorder", 1),
    line("ch-record-state", 0, "ch-recorder", 0),
    line("ch-rec-loop", 0, "ch-recorder", 0),
    line("ch-hold-speed", 0, "ch-groove", 0),
    line("ch-one-freeze", 0, "ch-live-amount", 0),
    line("ch-freeze-line", 0, "ch-live-amount", 1),
    line("ch-source-l", 0, "ch-live-src-l", 0),
    line("ch-live-amount", 0, "ch-live-src-l", 1),
    line("ch-groove", 0, "ch-hold-src-l", 0),
    line("ch-freeze-line", 0, "ch-hold-src-l", 1),
    line("ch-live-src-l", 0, "ch-proc-src-l", 0),
    line("ch-hold-src-l", 0, "ch-proc-src-l", 1),
    line("ch-source-r", 0, "ch-live-src-r", 0),
    line("ch-live-amount", 0, "ch-live-src-r", 1),
    line("ch-groove", 1, "ch-hold-src-r", 0),
    line("ch-freeze-line", 0, "ch-hold-src-r", 1),
    line("ch-live-src-r", 0, "ch-proc-src-r", 0),
    line("ch-hold-src-r", 0, "ch-proc-src-r", 1),
    line("ch-phasor", 0, "ch-gate-compare", 0),
    line("ch-gate-line", 0, "ch-gate-compare", 1),
    line("ch-gate-compare", 0, "ch-gate-smooth", 0),
    line("ch-one-flip", 0, "ch-flip-inv", 0),
    line("ch-reverse-line", 0, "ch-flip-inv", 1),
    line("ch-gate-smooth", 0, "ch-gate-normal", 0),
    line("ch-flip-inv", 0, "ch-gate-normal", 1),
    line("ch-one-gate", 0, "ch-gate-inv", 0),
    line("ch-gate-smooth", 0, "ch-gate-inv", 1),
    line("ch-gate-inv", 0, "ch-gate-flipped", 0),
    line("ch-reverse-line", 0, "ch-gate-flipped", 1),
    line("ch-gate-normal", 0, "ch-gate-flip", 0),
    line("ch-gate-flipped", 0, "ch-gate-flip", 1),
    line("ch-proc-src-l", 0, "ch-chop-l", 0),
    line("ch-gate-flip", 0, "ch-chop-l", 1),
    line("ch-proc-src-r", 0, "ch-chop-r", 0),
    line("ch-gate-flip", 0, "ch-chop-r", 1),
    line("ch-pitch-line", 0, "ch-tone-osc", 0),
    line("ch-tone-osc", 0, "ch-tone-half", 0),
    line("ch-tone-half", 0, "ch-tone-uni", 0),
    line("ch-one-texture", 0, "ch-clean-amount", 0),
    line("ch-texture-line", 0, "ch-clean-amount", 1),
    line("ch-chop-l", 0, "ch-clean-l", 0),
    line("ch-clean-amount", 0, "ch-clean-l", 1),
    line("ch-chop-l", 0, "ch-chip-pre-l", 0),
    line("ch-tone-uni", 0, "ch-chip-pre-l", 1),
    line("ch-chip-pre-l", 0, "ch-chip-l", 0),
    line("ch-chip-l", 0, "ch-chip-level-l", 0),
    line("ch-texture-line", 0, "ch-chip-level-l", 1),
    line("ch-clean-l", 0, "ch-wet-sum-l", 0),
    line("ch-chip-level-l", 0, "ch-wet-sum-l", 1),
    line("ch-chop-r", 0, "ch-clean-r", 0),
    line("ch-clean-amount", 0, "ch-clean-r", 1),
    line("ch-chop-r", 0, "ch-chip-pre-r", 0),
    line("ch-tone-uni", 0, "ch-chip-pre-r", 1),
    line("ch-chip-pre-r", 0, "ch-chip-r", 0),
    line("ch-chip-r", 0, "ch-chip-level-r", 0),
    line("ch-texture-line", 0, "ch-chip-level-r", 1),
    line("ch-clean-r", 0, "ch-wet-sum-r", 0),
    line("ch-chip-level-r", 0, "ch-wet-sum-r", 1),
    line("ch-wet-line", 0, "ch-eff-wet", 0),
    line("ch-enable-line", 0, "ch-eff-wet", 1),
    line("ch-one-wet", 0, "ch-dry-amount", 0),
    line("ch-eff-wet", 0, "ch-dry-amount", 1),
    line("ch-source-l", 0, "ch-dry-mix-l", 0),
    line("ch-dry-amount", 0, "ch-dry-mix-l", 1),
    line("ch-wet-sum-l", 0, "ch-wet-mix-l", 0),
    line("ch-eff-wet", 0, "ch-wet-mix-l", 1),
    line("ch-dry-mix-l", 0, "ch-outmix-l", 0),
    line("ch-wet-mix-l", 0, "ch-outmix-l", 1),
    line("ch-source-r", 0, "ch-dry-mix-r", 0),
    line("ch-dry-amount", 0, "ch-dry-mix-r", 1),
    line("ch-wet-sum-r", 0, "ch-wet-mix-r", 0),
    line("ch-eff-wet", 0, "ch-wet-mix-r", 1),
    line("ch-dry-mix-r", 0, "ch-outmix-r", 0),
    line("ch-wet-mix-r", 0, "ch-outmix-r", 1),
    line("ch-outmix-l", 0, "ch-out-l", 0),
    line("ch-outmix-r", 0, "ch-out-r", 0),
  ];
  const boxes = [
    comment("chm-title", "MT Mod Vocal Chop - live slicer FX", 24, 20, 430, 24),
    comment("chm-note", "Live input is chopped immediately. Freeze only switches to a recent-buffer hold layer; Rate/Gate/Tone/Flip/Texture shape the slice.", 24, 48, 900),
    inlet("chm-in-l", 24, 100),
    inlet("chm-in-r", 84, 100),
    inlet("chm-ext-enable", 170, 95),
    inlet("chm-ext-capture", 235, 95),
    inlet("chm-ext-play", 300, 95),
    inlet("chm-ext-rate", 365, 95),
    inlet("chm-ext-gate", 430, 95),
    inlet("chm-ext-pitch", 495, 95),
    inlet("chm-ext-wet", 560, 95),
    inlet("chm-ext-reverse", 625, 95),
    inlet("chm-ext-texture", 690, 95),
    toggle("chm-enable", 24, 155),
    comment("chm-enable-label", "Enable", 56, 157, 70),
    toggle("chm-test", 24, 205),
    comment("chm-test-label", "Test Input", 56, 207, 85),
    toggle("chm-freeze", 135, 155),
    comment("chm-freeze-label", "Freeze", 167, 157, 80),
    flonum("chm-rate", 245, 155, 62, { minimum: 0., maximum: 1. }),
    comment("chm-rate-label", "Rate", 245, 132, 65),
    flonum("chm-gate", 335, 155, 62, { minimum: 0., maximum: 1. }),
    comment("chm-gate-label", "Gate", 335, 132, 65),
    flonum("chm-pitch", 425, 155, 62, { minimum: 0., maximum: 1. }),
    comment("chm-pitch-label", "Tone", 425, 132, 65),
    flonum("chm-wet", 515, 155, 62, { minimum: 0., maximum: 1. }),
    comment("chm-wet-label", "Dry/Wet", 515, 132, 80),
    toggle("chm-reverse", 605, 155),
    comment("chm-reverse-label", "Flip", 595, 132, 75),
    flonum("chm-texture", 685, 155, 62, { minimum: 0., maximum: 1. }),
    comment("chm-texture-label", "Texture", 685, 132, 75),
    makeBox("chm-wave", "waveform~", 765, 120, 230, 78, {
      buffername: "#0_chop_buffer",
      setmode: 1,
      outmode: 0,
      setunit: 0,
    }),
    newObj("chm-wave-set", "loadmess set #0_chop_buffer", 765, 210, 190),
    subpatch("p Vocal_chop_core", coreBoxes, coreLines, 24, 285, 170, 22, [80, 80, 1160, 1240]),
    liveGain("chm-gain", "Vocal Chop Out", 1020, 120, 150, 0),
    makeBox("chm-dac", "ezdac~", 1115, 330, 45, 45),
    outlet("chm-out-l", 1180, 295),
    outlet("chm-out-r", 1230, 295),
    comment("chm-out-label", "out 1/2: audio L/R", 1160, 335, 170),
    newObj("chm-rate-default", "loadmess 0.45", 245, 205, 95),
    newObj("chm-gate-default", "loadmess 0.45", 335, 205, 95),
    newObj("chm-pitch-default", "loadmess 0.5", 425, 205, 95),
    newObj("chm-wet-default", "loadmess 1.", 515, 205, 95),
    newObj("chm-texture-default", "loadmess 0.55", 685, 205, 95),
    msg("chm-enable-set", "set $1", 170, 130, 60),
    newObj("chm-enable-state-send", "s mt_chop_enable_state", 170, 235, 165),
  ];
  applyPresentation(boxes, {
    "chm-title": presentationRect(12, 8, 360, 22),
    "chm-note": presentationRect(12, 30, 520, 36),
    "chm-enable": presentationRect(12, 78, 24, 24),
    "chm-enable-label": presentationRect(44, 80, 62, 22),
    "chm-test": presentationRect(12, 122, 24, 24),
    "chm-test-label": presentationRect(44, 124, 78, 22),
    "chm-freeze": presentationRect(120, 78, 24, 24),
    "chm-freeze-label": presentationRect(152, 80, 72, 22),
    "chm-rate-label": presentationRect(230, 76, 62, 22),
    "chm-rate": presentationRect(230, 100, 58, 22),
    "chm-gate-label": presentationRect(310, 76, 62, 22),
    "chm-gate": presentationRect(310, 100, 58, 22),
    "chm-pitch-label": presentationRect(390, 76, 62, 22),
    "chm-pitch": presentationRect(390, 100, 58, 22),
    "chm-wet-label": presentationRect(470, 76, 72, 22),
    "chm-wet": presentationRect(470, 100, 58, 22),
    "chm-reverse-label": presentationRect(550, 76, 72, 22),
    "chm-reverse": presentationRect(560, 100, 24, 24),
    "chm-texture-label": presentationRect(622, 76, 72, 22),
    "chm-texture": presentationRect(622, 100, 58, 22),
    "chm-wave": presentationRect(700, 76, 200, 70),
    "chm-gain": presentationRect(930, 64, 54, 132),
  });
  const lines = [
    line("chm-ext-enable", 0, "chm-enable-set", 0),
    line("chm-enable-set", 0, "chm-enable", 0),
    line("chm-ext-enable", 0, "p-Vocal-chop-core", 2),
    line("chm-ext-capture", 0, "chm-freeze", 0),
    line("chm-ext-rate", 0, "chm-rate", 0),
    line("chm-ext-gate", 0, "chm-gate", 0),
    line("chm-ext-pitch", 0, "chm-pitch", 0),
    line("chm-ext-wet", 0, "chm-wet", 0),
    line("chm-ext-reverse", 0, "chm-reverse", 0),
    line("chm-ext-texture", 0, "chm-texture", 0),
    line("chm-rate-default", 0, "chm-rate", 0),
    line("chm-gate-default", 0, "chm-gate", 0),
    line("chm-pitch-default", 0, "chm-pitch", 0),
    line("chm-wet-default", 0, "chm-wet", 0),
    line("chm-texture-default", 0, "chm-texture", 0),
    line("chm-wave-set", 0, "chm-wave", 0),
    line("chm-in-l", 0, "p-Vocal-chop-core", 0),
    line("chm-in-r", 0, "p-Vocal-chop-core", 1),
    line("chm-enable", 0, "p-Vocal-chop-core", 2),
    line("chm-enable", 0, "chm-enable-state-send", 0),
    line("chm-test", 0, "p-Vocal-chop-core", 3),
    line("chm-freeze", 0, "p-Vocal-chop-core", 4),
    line("chm-ext-play", 0, "p-Vocal-chop-core", 5),
    line("chm-rate", 0, "p-Vocal-chop-core", 6),
    line("chm-gate", 0, "p-Vocal-chop-core", 7),
    line("chm-pitch", 0, "p-Vocal-chop-core", 8),
    line("chm-wet", 0, "p-Vocal-chop-core", 9),
    line("chm-reverse", 0, "p-Vocal-chop-core", 10),
    line("chm-texture", 0, "p-Vocal-chop-core", 11),
    line("p-Vocal-chop-core", 0, "chm-gain", 0),
    line("p-Vocal-chop-core", 1, "chm-gain", 1),
    line("chm-gain", 0, "chm-out-l", 0),
    line("chm-gain", 1, "chm-out-r", 0),
    line("chm-gain", 0, "chm-dac", 0),
    line("chm-gain", 1, "chm-dac", 1),
  ];
  writeMaxpat("mt_mod_vocal_chop.maxpat", boxes, lines, [80, 80, 1300, 450]);
}

function buildVoiceTransformerMod() {
  const boxes = [
    comment("vt-title", "MT Voice Transformer - vocoder / talkbox / vocal chop engine", 24, 20, 560, 24),
    comment("vt-note", "A portfolio wrapper: three independent voice engines are hidden inside, exposed as one playable transformation module. Chop uses live buffering with freeze/hold controls.", 24, 48, 900),
    inlet("vt-in-l", 24, 100),
    inlet("vt-in-r", 84, 100),
    inlet("vt-ext-enable", 170, 95),
    inlet("vt-ext-mode", 235, 95),
    inlet("vt-ext-character", 300, 95),
    inlet("vt-ext-intensity", 365, 95),
    inlet("vt-ext-motion", 430, 95),
    inlet("vt-ext-wet", 495, 95),
    inlet("vt-ext-capture", 560, 95),
    inlet("vt-ext-play", 625, 95),

    toggle("vt-enable", 24, 155),
    comment("vt-enable-label", "Enable", 56, 157, 70),
    toggle("vt-capture", 24, 205),
    comment("vt-capture-label", "Freeze", 56, 207, 70),
    toggle("vt-play", 24, 255),
    comment("vt-play-label", "Chop Hold", 56, 257, 90),
    liveMenu("vt-mode", "Voice Mode", ["vocoder", "talkbox", "chop", "hybrid"], 155, 155, 120),
    comment("vt-mode-label", "Mode", 155, 132, 80),
    flonum("vt-character", 305, 155, 62, { minimum: 0., maximum: 1. }),
    comment("vt-character-label", "Character", 305, 132, 90),
    flonum("vt-intensity", 405, 155, 62, { minimum: 0., maximum: 1. }),
    comment("vt-intensity-label", "Intensity", 405, 132, 90),
    flonum("vt-motion", 505, 155, 62, { minimum: 0., maximum: 1. }),
    comment("vt-motion-label", "Motion", 505, 132, 80),
    flonum("vt-wet", 605, 155, 62, { minimum: 0., maximum: 1. }),
    comment("vt-wet-label", "Dry/Wet", 605, 132, 80),

    comment("vt-engine-label", "hidden engines as abstractions", 24, 315, 210),
    newObj("vt-vocoder", "mt_mod_vocoder", 24, 340, 135, 22, {
      numinlets: 8,
      numoutlets: 2,
      outlettype: ["signal", "signal"],
    }),
    newObj("vt-talkbox", "mt_mod_talkbox", 24, 390, 135, 22, {
      numinlets: 8,
      numoutlets: 2,
      outlettype: ["signal", "signal"],
    }),
    newObj("vt-chop", "mt_mod_vocal_chop", 24, 440, 150, 22, {
      numinlets: 11,
      numoutlets: 2,
      outlettype: ["signal", "signal"],
    }),

    newObj("vt-mode-plus", "+ 1", 155, 205, 45),
    newObj("vt-character-route", "t f f f f", 305, 205, 80),
    newObj("vt-intensity-route", "t f f f f f f f", 405, 205, 125),
    newObj("vt-motion-route", "t f f", 505, 205, 60),
    msg("vt-wet-msg", "$1 20", 605, 205, 55),
    newObj("vt-wet-line", "line~", 605, 240, 50),
    msg("vt-enable-msg", "$1 20", 170, 205, 55),
    newObj("vt-enable-line", "line~", 170, 240, 50),
    newObj("vt-eff-wet", "*~", 605, 285, 35),
    newObj("vt-one-wet", "sig~ 1.", 665, 285, 60),
    newObj("vt-dry-amount", "-~", 665, 330, 35),

    newObj("vt-voc-talk-l", "+~", 310, 390, 35),
    newObj("vt-voc-talk-r", "+~", 360, 390, 35),
    newObj("vt-hybrid-l", "+~", 310, 455, 35),
    newObj("vt-hybrid-r", "+~", 360, 455, 35),
    newObj("vt-hybrid-level-l", "*~ 0.333", 310, 520, 75),
    newObj("vt-hybrid-level-r", "*~ 0.333", 360, 520, 75),
    newObj("vt-selector-l", "selector~ 4", 525, 390, 95),
    newObj("vt-selector-r", "selector~ 4", 525, 445, 95),
    newObj("vt-dry-mix-l", "*~", 680, 390, 35),
    newObj("vt-wet-mix-l", "*~", 740, 390, 35),
    newObj("vt-outmix-l", "+~", 710, 445, 35),
    newObj("vt-dry-mix-r", "*~", 830, 390, 35),
    newObj("vt-wet-mix-r", "*~", 890, 390, 35),
    newObj("vt-outmix-r", "+~", 860, 445, 35),
    liveGain("vt-gain", "Voice Transformer", 1010, 360, 150, 0),
    makeBox("vt-dac", "ezdac~", 1125, 500, 45, 45),
    outlet("vt-out-l", 1190, 465),
    outlet("vt-out-r", 1240, 465),
    comment("vt-out-label", "out 1/2: audio L/R", 1170, 505, 170),

    newObj("vt-character-default", "loadmess 0.45", 305, 255, 95),
    newObj("vt-intensity-default", "loadmess 0.7", 405, 255, 95),
    newObj("vt-motion-default", "loadmess 0.45", 505, 255, 95),
    newObj("vt-wet-default", "loadmess 0.85", 605, 255, 95),
  ];
  applyPresentation(boxes, {
    "vt-title": presentationRect(12, 8, 480, 22),
    "vt-note": presentationRect(12, 30, 560, 36),
    "vt-enable": presentationRect(12, 78, 24, 24),
    "vt-enable-label": presentationRect(44, 80, 62, 22),
    "vt-capture": presentationRect(12, 118, 24, 24),
    "vt-capture-label": presentationRect(44, 120, 70, 22),
    "vt-play": presentationRect(12, 158, 24, 24),
    "vt-play-label": presentationRect(44, 160, 85, 22),
    "vt-mode-label": presentationRect(140, 76, 70, 22),
    "vt-mode": presentationRect(140, 100, 120, 15),
    "vt-character-label": presentationRect(286, 76, 82, 22),
    "vt-character": presentationRect(286, 100, 58, 22),
    "vt-intensity-label": presentationRect(378, 76, 82, 22),
    "vt-intensity": presentationRect(378, 100, 58, 22),
    "vt-motion-label": presentationRect(470, 76, 72, 22),
    "vt-motion": presentationRect(470, 100, 58, 22),
    "vt-wet-label": presentationRect(562, 76, 72, 22),
    "vt-wet": presentationRect(562, 100, 58, 22),
    "vt-gain": presentationRect(654, 68, 54, 132),
  });
  const lines = [
    line("vt-ext-enable", 0, "vt-enable", 0),
    line("vt-ext-mode", 0, "vt-mode", 0),
    line("vt-ext-character", 0, "vt-character", 0),
    line("vt-ext-intensity", 0, "vt-intensity", 0),
    line("vt-ext-motion", 0, "vt-motion", 0),
    line("vt-ext-wet", 0, "vt-wet", 0),
    line("vt-ext-capture", 0, "vt-capture", 0),
    line("vt-ext-play", 0, "vt-play", 0),
    line("vt-character-default", 0, "vt-character", 0),
    line("vt-intensity-default", 0, "vt-intensity", 0),
    line("vt-motion-default", 0, "vt-motion", 0),
    line("vt-wet-default", 0, "vt-wet", 0),
    line("vt-in-l", 0, "vt-vocoder", 0),
    line("vt-in-r", 0, "vt-vocoder", 1),
    line("vt-in-l", 0, "vt-talkbox", 0),
    line("vt-in-r", 0, "vt-talkbox", 1),
    line("vt-in-l", 0, "vt-chop", 0),
    line("vt-in-r", 0, "vt-chop", 1),
    line("vt-enable", 0, "vt-enable-msg", 0),
    line("vt-enable-msg", 0, "vt-enable-line", 0),
    line("vt-enable", 0, "vt-vocoder", 2),
    line("vt-enable", 0, "vt-talkbox", 2),
    line("vt-enable", 0, "vt-chop", 2),
    line("vt-capture", 0, "vt-chop", 3),
    line("vt-play", 0, "vt-chop", 4),
    line("vt-mode", 0, "vt-mode-plus", 0),
    line("vt-mode-plus", 0, "vt-selector-l", 0),
    line("vt-mode-plus", 0, "vt-selector-r", 0),
    line("vt-character", 0, "vt-character-route", 0),
    line("vt-character-route", 0, "vt-vocoder", 4),
    line("vt-character-route", 1, "vt-vocoder", 7),
    line("vt-character-route", 2, "vt-talkbox", 4),
    line("vt-character-route", 3, "vt-chop", 7),
    line("vt-intensity", 0, "vt-intensity-route", 0),
    line("vt-intensity-route", 0, "vt-vocoder", 3),
    line("vt-intensity-route", 1, "vt-vocoder", 5),
    line("vt-intensity-route", 2, "vt-talkbox", 3),
    line("vt-intensity-route", 3, "vt-talkbox", 6),
    line("vt-intensity-route", 4, "vt-chop", 6),
    line("vt-intensity-route", 5, "vt-chop", 8),
    line("vt-intensity-route", 6, "vt-chop", 10),
    line("vt-motion", 0, "vt-motion-route", 0),
    line("vt-motion-route", 0, "vt-vocoder", 6),
    line("vt-motion-route", 1, "vt-talkbox", 5),
    line("vt-motion-route", 2, "vt-chop", 5),
    line("vt-wet", 0, "vt-wet-msg", 0),
    line("vt-wet-msg", 0, "vt-wet-line", 0),
    line("vt-wet-line", 0, "vt-eff-wet", 0),
    line("vt-enable-line", 0, "vt-eff-wet", 1),
    line("vt-one-wet", 0, "vt-dry-amount", 0),
    line("vt-eff-wet", 0, "vt-dry-amount", 1),
    line("vt-vocoder", 0, "vt-voc-talk-l", 0),
    line("vt-talkbox", 0, "vt-voc-talk-l", 1),
    line("vt-vocoder", 1, "vt-voc-talk-r", 0),
    line("vt-talkbox", 1, "vt-voc-talk-r", 1),
    line("vt-voc-talk-l", 0, "vt-hybrid-l", 0),
    line("vt-chop", 0, "vt-hybrid-l", 1),
    line("vt-voc-talk-r", 0, "vt-hybrid-r", 0),
    line("vt-chop", 1, "vt-hybrid-r", 1),
    line("vt-hybrid-l", 0, "vt-hybrid-level-l", 0),
    line("vt-hybrid-r", 0, "vt-hybrid-level-r", 0),
    line("vt-vocoder", 0, "vt-selector-l", 1),
    line("vt-talkbox", 0, "vt-selector-l", 2),
    line("vt-chop", 0, "vt-selector-l", 3),
    line("vt-hybrid-level-l", 0, "vt-selector-l", 4),
    line("vt-vocoder", 1, "vt-selector-r", 1),
    line("vt-talkbox", 1, "vt-selector-r", 2),
    line("vt-chop", 1, "vt-selector-r", 3),
    line("vt-hybrid-level-r", 0, "vt-selector-r", 4),
    line("vt-in-l", 0, "vt-dry-mix-l", 0),
    line("vt-dry-amount", 0, "vt-dry-mix-l", 1),
    line("vt-selector-l", 0, "vt-wet-mix-l", 0),
    line("vt-eff-wet", 0, "vt-wet-mix-l", 1),
    line("vt-dry-mix-l", 0, "vt-outmix-l", 0),
    line("vt-wet-mix-l", 0, "vt-outmix-l", 1),
    line("vt-in-r", 0, "vt-dry-mix-r", 0),
    line("vt-dry-amount", 0, "vt-dry-mix-r", 1),
    line("vt-selector-r", 0, "vt-wet-mix-r", 0),
    line("vt-eff-wet", 0, "vt-wet-mix-r", 1),
    line("vt-dry-mix-r", 0, "vt-outmix-r", 0),
    line("vt-wet-mix-r", 0, "vt-outmix-r", 1),
    line("vt-outmix-l", 0, "vt-gain", 0),
    line("vt-outmix-r", 0, "vt-gain", 1),
    line("vt-gain", 0, "vt-out-l", 0),
    line("vt-gain", 1, "vt-out-r", 0),
    line("vt-gain", 0, "vt-dac", 0),
    line("vt-gain", 1, "vt-dac", 1),
  ];
  writeMaxpat("mt_mod_voice_transformer.maxpat", boxes, lines, [80, 80, 1320, 620]);
}

function buildHandStub() {
  const boxes = [
    comment("h-title", "MT Control Hand Stub - parked control layer", 24, 20, 360, 24),
    comment("h-note", "Temporary 0-1 slot source for mapping tests before final face/hand/body tracker integration.", 24, 48, 620),
    makeBox("h-slot1", "slider", 24, 110, 170, 24, { size: 1000, orientation: 1 }),
    makeBox("h-slot2", "slider", 24, 165, 170, 24, { size: 1000, orientation: 1 }),
    makeBox("h-slot3", "slider", 24, 220, 170, 24, { size: 1000, orientation: 1 }),
    makeBox("h-slot4", "slider", 24, 275, 170, 24, { size: 1000, orientation: 1 }),
    comment("h-slot1-label", "slot1 hand_x", 210, 112, 100),
    comment("h-slot2-label", "slot2 hand_y", 210, 167, 100),
    comment("h-slot3-label", "slot3 pinch", 210, 222, 100),
    comment("h-slot4-label", "slot4 palm", 210, 277, 100),
    newObj("h-scale1", "scale 0 1000 0. 1.", 340, 110, 140),
    newObj("h-scale2", "scale 0 1000 0. 1.", 340, 165, 140),
    newObj("h-scale3", "scale 0 1000 0. 1.", 340, 220, 140),
    newObj("h-scale4", "scale 0 1000 0. 1.", 340, 275, 140),
    newObj("h-send1", "s gesture_slot1", 505, 110, 100),
    newObj("h-send2", "s gesture_slot2", 505, 165, 100),
    newObj("h-send3", "s gesture_slot3", 505, 220, 100),
    newObj("h-send4", "s gesture_slot4", 505, 275, 100),
    outlet("h-out1", 650, 110),
    outlet("h-out2", 700, 110),
    outlet("h-out3", 750, 110),
    outlet("h-out4", 800, 110),
  ];
  applyPresentation(boxes, {
    "h-title": presentationRect(12, 8, 320, 22),
    "h-note": presentationRect(12, 30, 380, 36),
    "h-slot1": presentationRect(12, 86, 180, 24),
    "h-slot1-label": presentationRect(210, 88, 110, 22),
    "h-slot2": presentationRect(12, 132, 180, 24),
    "h-slot2-label": presentationRect(210, 134, 110, 22),
    "h-slot3": presentationRect(12, 178, 180, 24),
    "h-slot3-label": presentationRect(210, 180, 110, 22),
    "h-slot4": presentationRect(12, 224, 180, 24),
    "h-slot4-label": presentationRect(210, 226, 110, 22),
  });
  const lines = [
    line("h-slot1", 0, "h-scale1", 0),
    line("h-slot2", 0, "h-scale2", 0),
    line("h-slot3", 0, "h-scale3", 0),
    line("h-slot4", 0, "h-scale4", 0),
    line("h-scale1", 0, "h-send1", 0),
    line("h-scale2", 0, "h-send2", 0),
    line("h-scale3", 0, "h-send3", 0),
    line("h-scale4", 0, "h-send4", 0),
    line("h-scale1", 0, "h-out1", 0),
    line("h-scale2", 0, "h-out2", 0),
    line("h-scale3", 0, "h-out3", 0),
    line("h-scale4", 0, "h-out4", 0),
  ];
  writeMaxpat("mt_control_hand_stub.maxpat", boxes, lines, [80, 80, 860, 360]);
}

function bpatcher(id, name, x, y, w, h, inlets, outlets, outlettype = null) {
  return makeBox(id, "bpatcher", x, y, w, h, {
    name,
    numinlets: inlets,
    numoutlets: outlets,
    outlettype: outlettype || Array(outlets).fill("signal"),
  });
}

function buildDemo() {
  const boxes = [
    comment("d-title", "MT Gesture Input System Demo - portfolio overview", 24, 20, 440, 24),
    comment("d-note", "Bpatcher source boxes feed a dedicated Input Mixer. Jweb hand control is available as the current camera control layer.", 24, 48, 860),
    msg("d-dsp-on", "startwindow", 24, 82, 90),
    msg("d-dsp-off", "stop", 124, 82, 55),
    toggle("d-mic-enable", 520, 82),
    comment("d-mic-enable-label", "Mic ext enable", 550, 84, 110),
    toggle("d-file-enable", 690, 82),
    comment("d-file-enable-label", "File ext enable", 720, 84, 110),
    toggle("d-file-play", 860, 82),
    comment("d-file-play-label", "File play", 890, 84, 80),
    toggle("d-grain-enable", 1000, 82),
    comment("d-grain-enable-label", "Granular ext enable", 1030, 84, 140),
    bpatcher("d-mic", "mt_input_mic.maxpat", 24, 130, 330, 245, 1, 2),
    bpatcher("d-file", "mt_input_file.maxpat", 380, 130, 430, 445, 2, 2),
    bpatcher("d-grain", "mt_input_granular.maxpat", 835, 130, 635, 470, 1, 2),
    bpatcher("d-mixer", "mt_input_mixer_ui.maxpat", 24, 650, 760, 320, 9, 2),
    bpatcher("d-hand", "mt_control_hand_jweb.maxpat", 835, 650, 620, 450, 0, 4, ["", "", "", ""]),
    comment("d-hand-note", "Jweb hand control outputs slot1 hand_x, slot2 hand_y, slot3 pinch, slot4 palm.", 835, 1115, 520, 40),
    makeBox("d-master-meter", "meter~", 1300, 750, 120, 12),
    liveGain("d-master", "Demo Master", 1280, 650, 130, -10),
    makeBox("d-dac", "ezdac~", 1430, 745, 45, 45),
    newObj("d-mic-enable-send", "s mt_mic_enable_state", 520, 112, 155),
    newObj("d-file-enable-send", "s mt_file_enable_state", 690, 112, 155),
    newObj("d-grain-enable-send", "s mt_granular_enable_state", 1000, 112, 185),
    newObj("d-mic-enable-recv", "r mt_mic_enable_state", 520, 145, 155),
    newObj("d-file-enable-recv", "r mt_file_enable_state", 690, 145, 155),
    newObj("d-grain-enable-recv", "r mt_granular_enable_state", 1000, 145, 185),
    newObj("d-mic-enable-sync", "t i i i", 520, 178, 60),
    newObj("d-file-enable-sync", "t i i i", 690, 178, 60),
    newObj("d-grain-enable-sync", "t i i i", 1000, 178, 60),
    msg("d-mic-enable-set", "set $1", 520, 211, 60),
    msg("d-file-enable-set", "set $1", 690, 211, 60),
    msg("d-grain-enable-set", "set $1", 1000, 211, 60),
  ];
  applyPresentation(boxes, {
    "d-title": presentationRect(24, 20, 440, 24),
    "d-note": presentationRect(24, 48, 760, 24),
    "d-dsp-on": presentationRect(24, 82, 90, 22),
    "d-dsp-off": presentationRect(124, 82, 55, 22),
    "d-mic-enable": presentationRect(520, 82, 24, 24),
    "d-mic-enable-label": presentationRect(550, 84, 110, 22),
    "d-file-enable": presentationRect(690, 82, 24, 24),
    "d-file-enable-label": presentationRect(720, 84, 110, 22),
    "d-file-play": presentationRect(860, 82, 24, 24),
    "d-file-play-label": presentationRect(890, 84, 80, 22),
    "d-grain-enable": presentationRect(1000, 82, 24, 24),
    "d-grain-enable-label": presentationRect(1030, 84, 140, 22),
    "d-mic": presentationRect(24, 130, 330, 245),
    "d-file": presentationRect(380, 130, 430, 445),
    "d-grain": presentationRect(835, 130, 635, 470),
    "d-mixer": presentationRect(24, 650, 760, 320),
    "d-hand": presentationRect(835, 650, 620, 450),
    "d-hand-note": presentationRect(835, 1115, 520, 40),
    "d-master": presentationRect(1280, 650, 54, 130),
    "d-master-meter": presentationRect(1300, 798, 120, 12),
    "d-dac": presentationRect(1430, 745, 45, 45),
  });
  const lines = [
    line("d-dsp-on", 0, "d-dac", 0),
    line("d-dsp-off", 0, "d-dac", 0),
    line("d-mic-enable", 0, "d-mic-enable-send", 0),
    line("d-mic-enable-recv", 0, "d-mic-enable-sync", 0),
    line("d-mic-enable-sync", 0, "d-mic-enable-set", 0),
    line("d-mic-enable-set", 0, "d-mic-enable", 0),
    line("d-mic-enable-sync", 1, "d-mic", 0),
    line("d-mic-enable-sync", 2, "d-mixer", 6),
    line("d-file-enable", 0, "d-file-enable-send", 0),
    line("d-file-enable-recv", 0, "d-file-enable-sync", 0),
    line("d-file-enable-sync", 0, "d-file-enable-set", 0),
    line("d-file-enable-set", 0, "d-file-enable", 0),
    line("d-file-enable-sync", 1, "d-file", 0),
    line("d-file-enable-sync", 2, "d-mixer", 7),
    line("d-file-play", 0, "d-file", 1),
    line("d-grain-enable", 0, "d-grain-enable-send", 0),
    line("d-grain-enable-recv", 0, "d-grain-enable-sync", 0),
    line("d-grain-enable-sync", 0, "d-grain-enable-set", 0),
    line("d-grain-enable-set", 0, "d-grain-enable", 0),
    line("d-grain-enable-sync", 1, "d-grain", 0),
    line("d-grain-enable-sync", 2, "d-mixer", 8),
    line("d-mic", 0, "d-mixer", 0),
    line("d-mic", 1, "d-mixer", 1),
    line("d-file", 0, "d-mixer", 2),
    line("d-file", 1, "d-mixer", 3),
    line("d-grain", 0, "d-mixer", 4),
    line("d-grain", 1, "d-mixer", 5),
    line("d-mixer", 0, "d-master", 0),
    line("d-mixer", 1, "d-master", 1),
    line("d-master", 0, "d-master-meter", 0),
    line("d-master", 0, "d-dac", 0),
    line("d-master", 1, "d-dac", 1),
  ];
  writeMaxpat("mt_input_system_demo.maxpat", boxes, lines, [80, 80, 1510, 1180]);
}

function buildFxReturnMixer() {
  const laneDefs = [
    { key: "dry", label: "Original", inL: "fx-dry-l", inR: "fx-dry-r", enableIn: "fx-dry-enable-in", pX: 0, defaultEnable: 1, gainInitial: 0 },
    { key: "voc", label: "Vocoder FX", inL: "fx-voc-l", inR: "fx-voc-r", enableIn: "fx-voc-enable-in", controlOut: "fx-voc-enable-out", stateName: "mt_vocoder_enable_state", pX: 145, defaultEnable: 0, gainInitial: -10 },
    { key: "chop", label: "Chop FX", inL: "fx-chop-l", inR: "fx-chop-r", enableIn: "fx-chop-enable-in", controlOut: "fx-chop-enable-out", stateName: "mt_chop_enable_state", pX: 290, defaultEnable: 0, gainInitial: 0 },
    { key: "trem", label: "Tremolo FX", inL: "fx-trem-l", inR: "fx-trem-r", enableIn: "fx-trem-enable-in", controlOut: "fx-trem-enable-out", stateName: "mt_tremolo_enable_state", pX: 435, defaultEnable: 0, gainInitial: -10 },
  ];
  const controlColor = [0.95, 0.55, 0.16, 1.0];
  const stateColor = [0.35, 0.65, 0.95, 1.0];

  const boxes = [
    makeBox("fx-bg", "fpic", 1000, 20, 380, 150, {
      pic: "fx_return_mixer_panel_v1.png",
      autofit: 1,
      forceaspect: 1,
      background: 1,
      ignoreclick: 1,
      presentation: 1,
      presentation_rect: [0, 0, 760, 300],
    }),
    comment("fx-shell-note", "FX RETURN SHELL: 12 inputs -> Return_lanes -> four gains -> Return_sum -> master -> 5 outputs", 24, 20, 720, 22),

    inlet("fx-dry-l", 24, 70),
    inlet("fx-dry-r", 64, 70),
    inlet("fx-voc-l", 104, 70),
    inlet("fx-voc-r", 144, 70),
    inlet("fx-chop-l", 184, 70),
    inlet("fx-chop-r", 224, 70),
    inlet("fx-trem-l", 264, 70),
    inlet("fx-trem-r", 304, 70),
    inlet("fx-dry-enable-in", 384, 70),
    inlet("fx-voc-enable-in", 424, 70),
    inlet("fx-chop-enable-in", 464, 70),
    inlet("fx-trem-enable-in", 504, 70),
  ];

  const laneCoreBoxes = [
    comment("fxc-title", "RETURN_LANES: audio + external/local enable -> 20 ms ramp -> gated stereo", 24, 20, 760, 22),
  ];
  const laneCoreLines = [];

  laneDefs.forEach((lane, index) => {
    laneCoreBoxes.push(
      inlet(`fxc-${lane.key}-l`, 30 + (index * 140), 70),
      inlet(`fxc-${lane.key}-r`, 70 + (index * 140), 70),
    );
  });
  laneDefs.forEach((lane, index) => {
    laneCoreBoxes.push(inlet(`fxc-${lane.key}-ext`, 600 + (index * 70), 70));
  });
  laneDefs.forEach((lane, index) => {
    laneCoreBoxes.push(inlet(`fxc-${lane.key}-local`, 900 + (index * 70), 70));
  });

  laneDefs.forEach((lane, index) => {
    const x = 30 + (index * 280);
    laneCoreBoxes.push(
      comment(`fxc-${lane.key}-label`, lane.label, x, 125, 120, 22),
      newObj(`fxc-${lane.key}-ext-route`, "t i i", x + 120, 165, 45),
      msg(`fxc-${lane.key}-ui-set`, "set $1", x + 120, 205, 60),
      ...(lane.controlOut ? [newObj(`fxc-${lane.key}-local-route`, "t i i i", x, 165, 60)] : []),
      ...(lane.stateName ? [newObj(`fxc-${lane.key}-state-send`, `s ${lane.stateName}`, x + 185, 245, 180)] : []),
      msg(`fxc-${lane.key}-msg`, "$1 20", x + 30, 245, 55),
      newObj(`fxc-${lane.key}-line`, "line~", x + 30, 285, 50),
      newObj(`fxc-${lane.key}-gate-l`, "*~ 0.", x, 335, 55),
      newObj(`fxc-${lane.key}-gate-r`, "*~ 0.", x + 70, 335, 55),
      ...(lane.defaultEnable ? [newObj(`fxc-${lane.key}-default`, `loadmess ${lane.defaultEnable}`, x + 185, 165, 90)] : []),
    );

    laneCoreLines.push(
      coloredLine(`fxc-${lane.key}-ext`, 0, `fxc-${lane.key}-ext-route`, 0, controlColor),
      coloredLine(`fxc-${lane.key}-ext-route`, 0, `fxc-${lane.key}-ui-set`, 0, stateColor),
      coloredLine(`fxc-${lane.key}-ext-route`, 1, `fxc-${lane.key}-msg`, 0, controlColor),
      coloredLine(`fxc-${lane.key}-ui-set`, 0, `fxc-${lane.key}-ui-out`, 0, stateColor),
      line(`fxc-${lane.key}-msg`, 0, `fxc-${lane.key}-line`, 0),
      line(`fxc-${lane.key}-l`, 0, `fxc-${lane.key}-gate-l`, 0),
      line(`fxc-${lane.key}-r`, 0, `fxc-${lane.key}-gate-r`, 0),
      line(`fxc-${lane.key}-line`, 0, `fxc-${lane.key}-gate-l`, 1),
      line(`fxc-${lane.key}-line`, 0, `fxc-${lane.key}-gate-r`, 1),
      line(`fxc-${lane.key}-gate-l`, 0, `fxc-${lane.key}-out-l`, 0),
      line(`fxc-${lane.key}-gate-r`, 0, `fxc-${lane.key}-out-r`, 0),
    );

    if (lane.defaultEnable) {
      laneCoreLines.push(coloredLine(`fxc-${lane.key}-default`, 0, `fxc-${lane.key}-ext-route`, 0, controlColor));
    }

    if (lane.controlOut) {
      laneCoreLines.push(
        coloredLine(`fxc-${lane.key}-local`, 0, `fxc-${lane.key}-local-route`, 0, controlColor),
        coloredLine(`fxc-${lane.key}-local-route`, 0, `fxc-${lane.key}-msg`, 0, controlColor),
        coloredLine(`fxc-${lane.key}-local-route`, 1, `fxc-${lane.key}-state-out`, 0, stateColor),
        coloredLine(`fxc-${lane.key}-local-route`, 2, `fxc-${lane.key}-state-send`, 0, stateColor),
      );
    } else {
      laneCoreLines.push(coloredLine(`fxc-${lane.key}-local`, 0, `fxc-${lane.key}-msg`, 0, controlColor));
    }
  });

  laneDefs.forEach((lane, index) => {
    laneCoreBoxes.push(
      outlet(`fxc-${lane.key}-out-l`, 30 + (index * 120), 430),
      outlet(`fxc-${lane.key}-out-r`, 70 + (index * 120), 430),
    );
  });
  laneDefs.forEach((lane, index) => {
    laneCoreBoxes.push(outlet(`fxc-${lane.key}-ui-out`, 560 + (index * 70), 430));
  });
  laneDefs.filter((lane) => lane.controlOut).forEach((lane, index) => {
    laneCoreBoxes.push(outlet(`fxc-${lane.key}-state-out`, 900 + (index * 70), 430));
  });

  const sumBoxes = [
    comment("fxs-title", "RETURN_SUM: four stereo lanes -> balanced L/R sum", 24, 20, 520, 22),
  ];
  laneDefs.forEach((lane, index) => {
    sumBoxes.push(
      inlet(`fxs-${lane.key}-l`, 30 + (index * 140), 70),
      inlet(`fxs-${lane.key}-r`, 70 + (index * 140), 70),
    );
  });
  sumBoxes.push(
    newObj("fxs-sum-l-1", "+~", 90, 150, 35),
    newObj("fxs-sum-r-1", "+~", 150, 150, 35),
    newObj("fxs-sum-l-2", "+~", 230, 220, 35),
    newObj("fxs-sum-r-2", "+~", 290, 220, 35),
    newObj("fxs-sum-l-3", "+~", 370, 290, 35),
    newObj("fxs-sum-r-3", "+~", 430, 290, 35),
    outlet("fxs-out-l", 370, 360),
    outlet("fxs-out-r", 430, 360),
  );
  const sumLines = [
    line("fxs-dry-l", 0, "fxs-sum-l-1", 0),
    line("fxs-voc-l", 0, "fxs-sum-l-1", 1),
    line("fxs-dry-r", 0, "fxs-sum-r-1", 0),
    line("fxs-voc-r", 0, "fxs-sum-r-1", 1),
    line("fxs-sum-l-1", 0, "fxs-sum-l-2", 0),
    line("fxs-chop-l", 0, "fxs-sum-l-2", 1),
    line("fxs-sum-r-1", 0, "fxs-sum-r-2", 0),
    line("fxs-chop-r", 0, "fxs-sum-r-2", 1),
    line("fxs-sum-l-2", 0, "fxs-sum-l-3", 0),
    line("fxs-trem-l", 0, "fxs-sum-l-3", 1),
    line("fxs-sum-r-2", 0, "fxs-sum-r-3", 0),
    line("fxs-trem-r", 0, "fxs-sum-r-3", 1),
    line("fxs-sum-l-3", 0, "fxs-out-l", 0),
    line("fxs-sum-r-3", 0, "fxs-out-r", 0),
  ];

  boxes.push(
    toggle("fx-dry-enable", 574, 70),
    toggle("fx-voc-enable", 614, 70),
    toggle("fx-chop-enable", 654, 70),
    toggle("fx-trem-enable", 694, 70),
    subpatch("p Return_lanes", laneCoreBoxes, laneCoreLines, 24, 155, 710, 22, [80, 80, 1190, 520]),
    liveGain("fx-dry-gain", "Original", 70, 235, 130, 0),
    liveGain("fx-voc-gain", "Vocoder FX", 240, 235, 130, -10),
    liveGain("fx-chop-gain", "Chop FX", 410, 235, 130, 0),
    liveGain("fx-trem-gain", "Tremolo FX", 580, 235, 130, -10),
    subpatch("p Return_sum", sumBoxes, sumLines, 24, 420, 710, 22, [80, 80, 640, 450]),
    liveGain("fx-master", "FX Master", 340, 490, 150, -10),
    makeBox("fx-meter-l", "meter~", 420, 525, 120, 12),
    makeBox("fx-meter-r", "meter~", 420, 565, 120, 12),
    outlet("fx-out-l", 340, 690),
    outlet("fx-out-r", 390, 690),
    outlet("fx-voc-enable-out", 560, 690),
    outlet("fx-chop-enable-out", 610, 690),
    outlet("fx-trem-enable-out", 660, 690),
  );

  const lines = [];

  laneDefs.forEach((lane, index) => {
    lines.push(
      line(lane.inL, 0, "p-Return-lanes", index * 2),
      line(lane.inR, 0, "p-Return-lanes", (index * 2) + 1),
      coloredLine(lane.enableIn, 0, "p-Return-lanes", 8 + index, controlColor),
      coloredLine(`fx-${lane.key}-enable`, 0, "p-Return-lanes", 12 + index, controlColor),
      coloredLine("p-Return-lanes", 8 + index, `fx-${lane.key}-enable`, 0, stateColor),
      line("p-Return-lanes", index * 2, `fx-${lane.key}-gain`, 0),
      line("p-Return-lanes", (index * 2) + 1, `fx-${lane.key}-gain`, 1),
      line(`fx-${lane.key}-gain`, 0, "p-Return-sum", index * 2),
      line(`fx-${lane.key}-gain`, 1, "p-Return-sum", (index * 2) + 1),
    );
  });

  lines.push(
    coloredLine("p-Return-lanes", 12, "fx-voc-enable-out", 0, stateColor),
    coloredLine("p-Return-lanes", 13, "fx-chop-enable-out", 0, stateColor),
    coloredLine("p-Return-lanes", 14, "fx-trem-enable-out", 0, stateColor),
    line("p-Return-sum", 0, "fx-master", 0),
    line("p-Return-sum", 1, "fx-master", 1),
    line("fx-master", 0, "fx-meter-l", 0),
    line("fx-master", 1, "fx-meter-r", 0),
    line("fx-master", 0, "fx-out-l", 0),
    line("fx-master", 1, "fx-out-r", 0),
  );

  const byId = new Map(boxes.map((entry) => [entry.box.id, entry.box]));
  const inletComments = {
    "fx-dry-l": "Dry audio L",
    "fx-dry-r": "Dry audio R",
    "fx-voc-l": "Vocoder return L",
    "fx-voc-r": "Vocoder return R",
    "fx-chop-l": "Chop return L",
    "fx-chop-r": "Chop return R",
    "fx-trem-l": "Tremolo return L",
    "fx-trem-r": "Tremolo return R",
    "fx-dry-enable-in": "Dry Enable 0/1",
    "fx-voc-enable-in": "Vocoder Enable 0/1",
    "fx-chop-enable-in": "Chop Enable 0/1",
    "fx-trem-enable-in": "Tremolo Enable 0/1",
  };
  for (const [id, boxComment] of Object.entries(inletComments)) {
    byId.get(id).comment = boxComment;
  }
  byId.get("fx-out-l").comment = "Mixed audio L";
  byId.get("fx-out-r").comment = "Mixed audio R";
  byId.get("fx-voc-enable-out").comment = "Vocoder Enable state";
  byId.get("fx-chop-enable-out").comment = "Chop Enable state";
  byId.get("fx-trem-enable-out").comment = "Tremolo Enable state";

  for (const lane of laneDefs) {
    const uiName = lane.key === "voc" ? "vocoder" : lane.key === "trem" ? "tremolo" : lane.key;
    byId.get(`fx-${lane.key}-enable`).varname = `fx_return_${uiName}_enable`;
    byId.get(`fx-${lane.key}-gain`).varname = `fx_return_${uiName}_gain`;
  }
  byId.get("fx-master").varname = "fx_return_master_gain";

  const layout = {
    "fx-master": presentationRect(596, 91, 54, 156),
    "fx-meter-l": presentationRect(670, 96, 12, 150),
    "fx-meter-r": presentationRect(690, 96, 12, 150),
  };

  for (const lane of laneDefs) {
    layout[`fx-${lane.key}-enable`] = presentationRect(lane.pX + 111, 57, 24, 24);
    layout[`fx-${lane.key}-gain`] = presentationRect(lane.pX + 75, 96, 54, 150);
  }

  applyPresentation(boxes, layout);
  const doc = patcher(boxes, lines, [80, 80, 760, 360], 1);
  doc.dependency_cache = [{
    name: "fx_return_mixer_panel_v1.png",
    bootpath: ".",
    patcherrelativepath: ".",
    type: "PNG",
    implicit: 1,
  }];
  doc.autosave = 0;
  fs.writeFileSync(path.join(root, "mt_fx_return_mixer.maxpat"), JSON.stringify({ patcher: doc }, null, 2), "utf8");
}

function buildMainPageRouter() {
  const groups = {
    source: ["ui_source_mic", "ui_source_file", "ui_source_grain", "ui_source_mixer"],
    fx: ["ui_fx_vocoder", "ui_fx_chop", "ui_fx_tremolo"],
    gesture: [
      "ui_gesture_hand", "ui_gesture_map_title",
      "ui_gesture_slot1", "ui_gesture_slot1_label",
      "ui_gesture_slot2", "ui_gesture_slot2_label",
      "ui_gesture_slot3", "ui_gesture_slot3_label",
      "ui_gesture_slot4", "ui_gesture_slot4_label",
    ],
    master: ["ui_master_returns"],
  };
  const all = Object.values(groups).flat();
  const pageMessages = Object.values(groups).map((shown) => [
    ...all.map((name) => `script hide ${name}`),
    ...shown.map((name) => `script show ${name}`),
  ].join(", "));

  const boxes = [
    inlet("page-in", 24, 24),
    newObj("page-clip", "clip 0 3", 24, 72, 62),
    newObj("page-select", "sel 0 1 2 3", 24, 112, 88),
    ...pageMessages.map((text, index) => msg(`page-msg-${index}`, text, 24, 160 + index * 52, 760, 42)),
    outlet("page-out", 24, 390),
  ];
  const lines = [
    line("page-in", 0, "page-clip", 0),
    line("page-clip", 0, "page-select", 0),
    ...pageMessages.map((_, index) => line("page-select", index, `page-msg-${index}`, 0)),
    ...pageMessages.map((_, index) => line(`page-msg-${index}`, 0, "page-out", 0)),
  ];
  return patcher(boxes, lines, [120, 120, 840, 470], 0);
}

function buildPortfolioMain() {
  const sourceStateBoxes = [
    comment("pms-title", "SOURCE STATE ROUTER: shared module state -> Input Mixer enable inputs", 24, 20, 560, 22),
    newObj("pms-mic-recv", "r mt_mic_enable_state", 24, 70, 155),
    newObj("pms-file-recv", "r mt_file_enable_state", 210, 70, 155),
    newObj("pms-grain-recv", "r mt_granular_enable_state", 396, 70, 190),
    outlet("pms-mic-out", 80, 140),
    outlet("pms-file-out", 266, 140),
    outlet("pms-grain-out", 452, 140),
  ];
  const sourceStateLines = [
    line("pms-mic-recv", 0, "pms-mic-out", 0),
    line("pms-file-recv", 0, "pms-file-out", 0),
    line("pms-grain-recv", 0, "pms-grain-out", 0),
  ];

  const fxStateBoxes = [
    comment("pmf-title", "FX STATE ROUTER: shared enable -> module/return; parallel FX wet defaults", 24, 20, 620, 22),
    newObj("pmf-voc-recv", "r mt_vocoder_enable_state", 24, 70, 180),
    newObj("pmf-voc-sync", "t i i", 24, 110, 45),
    newObj("pmf-chop-recv", "r mt_chop_enable_state", 230, 70, 165),
    newObj("pmf-chop-sync", "t i i", 230, 110, 45),
    newObj("pmf-trem-recv", "r mt_tremolo_enable_state", 420, 70, 180),
    newObj("pmf-trem-sync", "t i i", 420, 110, 45),
    newObj("pmf-voc-wet", "loadmess 1.", 630, 70, 95),
    newObj("pmf-chop-wet", "loadmess 1.", 750, 70, 95),
    outlet("pmf-voc-module", 24, 190),
    outlet("pmf-voc-return", 84, 190),
    outlet("pmf-chop-module", 144, 190),
    outlet("pmf-chop-return", 204, 190),
    outlet("pmf-trem-module", 264, 190),
    outlet("pmf-trem-return", 324, 190),
    outlet("pmf-voc-wet-out", 384, 190),
    outlet("pmf-chop-wet-out", 444, 190),
  ];
  const fxStateLines = [
    line("pmf-voc-recv", 0, "pmf-voc-sync", 0),
    line("pmf-voc-sync", 0, "pmf-voc-module", 0),
    line("pmf-voc-sync", 1, "pmf-voc-return", 0),
    line("pmf-chop-recv", 0, "pmf-chop-sync", 0),
    line("pmf-chop-sync", 0, "pmf-chop-module", 0),
    line("pmf-chop-sync", 1, "pmf-chop-return", 0),
    line("pmf-trem-recv", 0, "pmf-trem-sync", 0),
    line("pmf-trem-sync", 0, "pmf-trem-module", 0),
    line("pmf-trem-sync", 1, "pmf-trem-return", 0),
    line("pmf-voc-wet", 0, "pmf-voc-wet-out", 0),
    line("pmf-chop-wet", 0, "pmf-chop-wet-out", 0),
  ];

  const boxes = [
    comment("pm-title", "MT Portfolio Main - original + parallel FX layers", 24, 20, 620, 24),
    comment("pm-note", "Mic / File / Granular feed the Input Mixer. The FX Mixer below blends Original with independent Vocoder, Chop, and Tremolo layers.", 24, 48, 1240, 40),
    newObj("pm-page-load", "loadmess 0", 1900, 20, 78),
    makeBox("pm-page-tab", "tab", 1900, 58, 700, 40, {
      numinlets: 1,
      numoutlets: 3,
      outlettype: ["int", "symbol", ""],
      tabs: ["SOURCE", "FX", "GESTURE", "MASTER"],
      parameter_enable: 0,
      rounded: 8,
      gradient: 0,
      mode: 0,
      multiline: 0,
      fontsize: 14,
      bgcolor: [0.862745, 0.909804, 0.87451, 1],
      tabcolor: [0.862745, 0.909804, 0.87451, 1],
      htabcolor: [0.941176, 0.788235, 0.301961, 1],
      textcolor: [0.192157, 0.278431, 0.239216, 1],
    }),
    newObj("pm-page-router", "p Main_page_router", 1900, 115, 132, 22, {
      numinlets: 1,
      numoutlets: 1,
      outlettype: [""],
      patcher: buildMainPageRouter(),
    }),
    newObj("pm-thispatcher", "thispatcher", 1900, 155, 78, 22, {
      numinlets: 1,
      numoutlets: 2,
      outlettype: ["", ""],
    }),
    msg("pm-dsp-on", "startwindow", 24, 102, 90),
    msg("pm-dsp-off", "stop", 124, 102, 55),
    comment("pm-dsp-label", "DSP", 190, 104, 55),
    subpatch("p Source_state_router", sourceStateBoxes, sourceStateLines, 24, 155, 180, 22, [80, 80, 650, 230]),
    subpatch("p FX_state_router", fxStateBoxes, fxStateLines, 1620, 700, 180, 22, [80, 80, 900, 290]),

    bpatcher("pm-mic", "mt_input_mic_ui.maxpat", 24, 200, 420, 280, 1, 2),
    bpatcher("pm-file", "mt_input_file_ui.maxpat", 470, 200, 520, 340, 2, 2),
    bpatcher("pm-grain", "mt_input_granular_ui.maxpat", 1015, 200, 720, 440, 1, 2),

    bpatcher("pm-mixer", "mt_input_mixer_ui.maxpat", 24, 725, 760, 320, 9, 2),
    bpatcher("pm-vocoder", "mt_mod_vocoder.maxpat", 835, 725, 760, 225, 8, 2),
    bpatcher("pm-chop", "mt_mod_vocal_chop.maxpat", 835, 985, 1040, 245, 11, 2),
    bpatcher("pm-tremolo", "mt_mod_tremolo.maxpat", 835, 1270, 770, 190, 9, 4, ["signal", "signal", "signal", "signal"]),
    bpatcher("pm-fx-return", "mt_fx_return_mixer.maxpat", 24, 1090, 760, 300, 12, 5, ["signal", "signal", "", "", ""]),
    bpatcher("pm-hand", "mt_control_hand_jweb.maxpat", 24, 1435, 620, 450, 0, 4, ["", "", "", ""]),

    comment("pm-hand-map-title", "Jweb hand mapping", 665, 1435, 250, 22),
    flonum("pm-slot1-monitor", 665, 1470, 70),
    comment("pm-slot1-label", "hand_x -> trem rate", 745, 1472, 160),
    flonum("pm-slot2-monitor", 665, 1510, 70),
    comment("pm-slot2-label", "hand_y -> trem depth", 745, 1512, 170),
    flonum("pm-slot3-monitor", 665, 1550, 70),
    comment("pm-slot3-label", "pinch -> trem stereo", 745, 1552, 170),
    flonum("pm-slot4-monitor", 665, 1590, 70),
    comment("pm-slot4-label", "palm spare", 745, 1592, 120),

    makeBox("pm-meter-l", "meter~", 1085, 1180, 120, 12),
    makeBox("pm-meter-r", "meter~", 1085, 1210, 120, 12),
    makeBox("pm-dac", "ezdac~", 1230, 1185, 45, 45),
    comment("pm-output-label", "Main out", 1220, 1245, 100),
  ];

  const pageVarnames = {
    "pm-mic": "ui_source_mic",
    "pm-file": "ui_source_file",
    "pm-grain": "ui_source_grain",
    "pm-mixer": "ui_source_mixer",
    "pm-vocoder": "ui_fx_vocoder",
    "pm-chop": "ui_fx_chop",
    "pm-tremolo": "ui_fx_tremolo",
    "pm-hand": "ui_gesture_hand",
    "pm-hand-map-title": "ui_gesture_map_title",
    "pm-slot1-monitor": "ui_gesture_slot1",
    "pm-slot1-label": "ui_gesture_slot1_label",
    "pm-slot2-monitor": "ui_gesture_slot2",
    "pm-slot2-label": "ui_gesture_slot2_label",
    "pm-slot3-monitor": "ui_gesture_slot3",
    "pm-slot3-label": "ui_gesture_slot3_label",
    "pm-slot4-monitor": "ui_gesture_slot4",
    "pm-slot4-label": "ui_gesture_slot4_label",
    "pm-fx-return": "ui_master_returns",
  };
  const mainBoxesById = new Map(boxes.map((entry) => [entry.box.id, entry.box]));
  for (const [id, varname] of Object.entries(pageVarnames)) {
    mainBoxesById.get(id).varname = varname;
  }

  applyPresentation(boxes, {
    "pm-title": presentationRect(24, 18, 520, 24),
    "pm-note": presentationRect(24, 47, 760, 24),
    "pm-page-tab": presentationRect(820, 28, 700, 42),
    "pm-dsp-on": presentationRect(24, 900, 90, 22),
    "pm-dsp-off": presentationRect(124, 900, 55, 22),
    "pm-dsp-label": presentationRect(190, 902, 55, 22),
    "pm-mic": presentationRect(24, 160, 420, 280),
    "pm-file": presentationRect(468, 160, 520, 340),
    "pm-grain": presentationRect(1012, 160, 720, 440),
    "pm-mixer": presentationRect(24, 520, 760, 320),
    "pm-vocoder": presentationRect(24, 160, 760, 225),
    "pm-tremolo": presentationRect(808, 160, 770, 190),
    "pm-chop": presentationRect(24, 409, 1040, 245),
    "pm-hand": presentationRect(24, 160, 620, 450),
    "pm-hand-map-title": presentationRect(680, 190, 250, 22),
    "pm-slot1-monitor": presentationRect(680, 230, 70, 22),
    "pm-slot1-label": presentationRect(760, 232, 190, 22),
    "pm-slot2-monitor": presentationRect(680, 270, 70, 22),
    "pm-slot2-label": presentationRect(760, 272, 190, 22),
    "pm-slot3-monitor": presentationRect(680, 310, 70, 22),
    "pm-slot3-label": presentationRect(760, 312, 190, 22),
    "pm-slot4-monitor": presentationRect(680, 350, 70, 22),
    "pm-slot4-label": presentationRect(760, 352, 150, 22),
    "pm-fx-return": presentationRect(24, 160, 760, 300),
    "pm-meter-l": presentationRect(1390, 902, 120, 12),
    "pm-meter-r": presentationRect(1390, 928, 120, 12),
    "pm-dac": presentationRect(1530, 895, 45, 45),
    "pm-output-label": presentationRect(1590, 907, 100, 22),
  });

  const lines = [
    line("pm-page-load", 0, "pm-page-tab", 0),
    line("pm-page-tab", 0, "pm-page-router", 0),
    line("pm-page-router", 0, "pm-thispatcher", 0),
    line("pm-dsp-on", 0, "pm-dac", 0),
    line("pm-dsp-off", 0, "pm-dac", 0),
    line("p-Source-state-router", 0, "pm-mixer", 6),
    line("p-Source-state-router", 1, "pm-mixer", 7),
    line("p-Source-state-router", 2, "pm-mixer", 8),

    line("pm-mic", 0, "pm-mixer", 0),
    line("pm-mic", 1, "pm-mixer", 1),
    line("pm-file", 0, "pm-mixer", 2),
    line("pm-file", 1, "pm-mixer", 3),
    line("pm-grain", 0, "pm-mixer", 4),
    line("pm-grain", 1, "pm-mixer", 5),

    line("pm-mixer", 0, "pm-fx-return", 0),
    line("pm-mixer", 1, "pm-fx-return", 1),
    line("pm-mixer", 0, "pm-vocoder", 0),
    line("pm-mixer", 1, "pm-vocoder", 1),
    line("pm-mixer", 0, "pm-chop", 0),
    line("pm-mixer", 1, "pm-chop", 1),
    line("pm-mixer", 0, "pm-tremolo", 0),
    line("pm-mixer", 1, "pm-tremolo", 1),

    line("p-FX-state-router", 6, "pm-vocoder", 3),
    line("p-FX-state-router", 7, "pm-chop", 8),

    line("pm-vocoder", 0, "pm-fx-return", 2),
    line("pm-vocoder", 1, "pm-fx-return", 3),
    line("pm-chop", 0, "pm-fx-return", 4),
    line("pm-chop", 1, "pm-fx-return", 5),
    line("pm-tremolo", 0, "pm-fx-return", 6),
    line("pm-tremolo", 1, "pm-fx-return", 7),
    line("p-FX-state-router", 0, "pm-vocoder", 2),
    line("p-FX-state-router", 1, "pm-fx-return", 9),
    line("p-FX-state-router", 2, "pm-chop", 2),
    line("p-FX-state-router", 3, "pm-fx-return", 10),
    line("p-FX-state-router", 4, "pm-tremolo", 2),
    line("p-FX-state-router", 5, "pm-fx-return", 11),

    line("pm-hand", 0, "pm-slot1-monitor", 0),
    line("pm-hand", 1, "pm-slot2-monitor", 0),
    line("pm-hand", 2, "pm-slot3-monitor", 0),
    line("pm-hand", 3, "pm-slot4-monitor", 0),
    line("pm-hand", 0, "pm-tremolo", 5),
    line("pm-hand", 1, "pm-tremolo", 6),
    line("pm-hand", 2, "pm-tremolo", 7),

    line("pm-fx-return", 0, "pm-meter-l", 0),
    line("pm-fx-return", 1, "pm-meter-r", 0),
    line("pm-fx-return", 0, "pm-dac", 0),
    line("pm-fx-return", 1, "pm-dac", 1),
  ];

  writeMaxpat("mt_portfolio_main.maxpat", boxes, lines, [60, 60, 1760, 960]);
}

function writeReadme() {
  const readme = `# Gesture Input System

Portfolio-ready Max/MSP prototype for a gesture-controlled music plugin.

## Files

- \`mt_input_mic.maxpat\` - Mic source bpatcher with mono/stereo-pair selection and 20ms enable ramp.
- \`mt_input_file.maxpat\` - File source bpatcher with live drop/load, clickable waveform seek, elapsed/duration readout, #0-isolated buffer, and 20ms enable ramp.
- \`mt_input_granular.maxpat\` - Standalone-capable granular source bpatcher with mic recording, sample loading, waveform position, Safe/Frozen presets, patching-view ezdac~ monitor, and performance controls for wet, density, grain size, pitch, spray, amp, and output.
- \`mt_input_granular_ui.maxpat\` - Standalone 720 x 440 PNG-backed Granular Input UI with linked presets, waveform position feedback, commercial display units (percent, grains/second, milliseconds, semitones, and dB), seven visible performance dials, and stereo output gain. It is now the Granular source used by Main.
- \`mt_granular_synth.maxpat\` / \`mt_grain_voice.maxpat\` - Granular synthesis core and poly~ voice used by the original and PNG-backed Granular modules.
- \`mt_input_mixer.maxpat\` - Three-source stereo input mixer. It defaults muted, exposes source/mix gains, and uses shared enable-state buses so the main switches, source-box toggles, and mixer toggles stay visually and sonically linked.
- \`mt_mod_vocoder.maxpat\` - Portfolio pfft spectral vocoder. It uses the mixed input as a modulator, generates an internal saw/noise hybrid carrier, exposes manual dry/wet, tone, noise, spectral smooth, and brightness controls, and bypasses to dry when disabled.
- \`mt_vocoder_pfft.maxpat\` - pfft~ subpatch used by \`mt_mod_vocoder.maxpat\`; performs FFT amplitude-envelope transfer with \`fftin~\`, \`cartopol~\`, \`vectral~\`, \`poltocar~\`, and \`fftout~\`.
- \`mt_mod_talkbox.maxpat\` - Optional archived Talkbox-inspired formant processor with drive, vowel, mouth/Q, brightness-linked stereo width, dry/wet, and standalone test input. It is kept for reference but is not loaded by the main patch right now.
- \`mt_mod_vocal_chop.maxpat\` - Live vocal slicer/stutter module. The default wet path chops the incoming live signal immediately with a rhythmic gate, tone modulation, flip phase, and texture layer; Freeze crossfades to a recent-buffer hold layer only when needed.
- \`mt_fx_return_mixer.maxpat\` - Herbal Editorial parallel return mixer. It keeps Dry fixed, exposes Vocoder/Chop/Tremolo as Return Bank A, and provides per-layer enable/gain plus a fixed stereo Master. The shell keeps only ports and visible UI; \`p Return_lanes\` contains enable ramps/gates and \`p Return_sum\` contains the stereo sum. Shared enable-state buses keep FX module toggles and return toggles linked.
- \`mt_mod_voice_transformer.maxpat\` - Optional product-facing wrapper that combines pfft Vocoder, Talkbox, and Vocal Chop into one playable macro module. It is kept as a demo wrapper, not the required main-chain route.
- \`mt_mod_tremolo.maxpat\` - Portfolio stereo tremolo/mod box with six LFO shapes, bipolar/unipolar mod outputs, smoothed bypass enable, rate, depth, stereo phase, smoothing time, temporary test input, and patching-view ezdac~ monitor.
- \`mt_portfolio_main.maxpat\` - Main portfolio prototype: Mic/File/Granular -> Input Mixer -> Original + parallel FX layers -> Master, with jweb hand slots still mapped to tremolo rate/depth/stereo. Voice Transformer gesture mapping is intentionally left manual for the next design pass.
- \`mt_input_system_demo.maxpat\` - Main demo patch wiring the three source boxes into the mixer.
- \`mt_control_hand_jweb.maxpat\` - Camera hand-control module adapted from your teacher check patch; outputs slot1 hand_x, slot2 hand_y, slot3 pinch, slot4 palm.
- \`mt_control_hand_stub.maxpat\` - Manual 0-1 fallback source if camera tracking is not available.
- \`jweb/\` - MediaPipe/jweb hand landmarker and gesture recognizer resources used by the camera control layer.

## Intended Patch Flow

\`\`\`
Mic / File / Granular -> MT Input Mixer -> Original ---------------------> MT FX Mixer -> ezdac~
                                      -> MT pfft Vocoder FX -------------^
                                      -> MT Live Chop FX ----------------^
                                      -> MT Tremolo FX ------------------^
Jweb hand slots -> Tremolo rate/depth/stereo for now
\`\`\`

## Notes

- Teacher source files are not modified.
- Buffers use \`#0\` names so copied bpatcher instances do not collide.
- Source modules expose L/R outlets for reuse in the demo mixer.
- Opening \`mt_portfolio_main.maxpat\` should be silent until at least one source module or Input Mixer source switch is enabled.
- \`mt_input_granular.maxpat\` exposes L/R outlets and keeps a direct ezdac~ in patching view for quick standalone testing.
- Internal module ezdac~ objects are hidden from presentation so the main prototype has one visible output target: Main out.
- In the main patch, Original is only the Input Mixer output. FX modules are treated as independent layers, and their layer toggles live in \`mt_fx_return_mixer.maxpat\`.
- The main patch forces Vocoder / Vocal Chop internal wet to 1.0 when loaded, so total dry/wet balance is controlled by the FX Mixer instead of nested module dry/wet knobs.
- Talkbox is currently removed from \`mt_portfolio_main.maxpat\` because the effect was not distinctive enough in testing. The standalone file is kept so it can be redesigned or restored later.
- Vocal Chop is now a real-time FX layer: the main sound is live input chopped by a gate/tone/texture processor. Its buffer is used for the waveform monitor and optional Freeze hold, not as the default sound source.
- Voice Transformer defaults to bypassed dry passthrough until its Enable switch is turned on, and is now optional rather than part of \`mt_portfolio_main.maxpat\`.
- Voice Transformer is modular inside: pfft Vocoder, Talkbox, and Vocal Chop can still be opened and tested individually.
- Vocoder does not use pitch following; its carrier is internal and fixed by manual Tone / Noise / Brightness controls.
- Tremolo uses the Enable toggle inside \`mt_mod_tremolo.maxpat\`; there is no duplicate outer Tremolo on switch in the main patch.
- \`mt_portfolio_main.maxpat\` is the first full-work prototype patch to open for integrated testing.
- \`mt_input_system_demo.maxpat\` is kept as an earlier input-only overview.
- \`mt_mod_tremolo.maxpat\` can still be opened standalone for effect testing.
- The first full patch uses \`mt_control_hand_jweb.maxpat\`; \`mt_control_hand_stub.maxpat\` remains as a manual fallback.
- If the camera view does not appear, close and reopen \`mt_portfolio_main.maxpat\`, click \`Reload Webcam\`, then \`List Cameras\`; macOS/Max may ask for camera permission on first load.
- Put test samples in \`media/\` and load them from the File or Granular modules.
`;
  fs.writeFileSync(path.join(root, "README.md"), readme, "utf8");
}

function main() {
  ensureDir(root);
  ensureDir(path.join(root, "media"));
  if (process.argv[2] === "mic-ui") {
    buildMicInputUI();
    return;
  }
  if (process.argv[2] === "file-ui") {
    buildFileInputUI();
    return;
  }
  if (process.argv[2] === "granular-ui") {
    buildGranularInputUI();
    return;
  }
  if (process.argv[2] === "granular-ui-template") {
    buildGranularInputUI("mt_input_granular_ui.generated.maxpat");
    return;
  }
  if (process.argv[2] === "knob-preview") {
    buildKnobPreview();
    return;
  }
  if (process.argv[2] === "input-mixer-ui") {
    buildInputMixerUI();
    return;
  }
  if (process.argv[2] === "fx-return-ui") {
    buildFxReturnMixer();
    return;
  }
  if (process.argv[2] === "portfolio-main") {
    buildPortfolioMain();
    return;
  }
  buildMicInput();
  buildFileInput();
  buildGranularInput();
  buildInputMixer();
  buildVocoderPfft();
  buildVocoderMod();
  buildTalkboxMod();
  buildVocalChopMod();
  buildVoiceTransformerMod();
  buildTremoloMod();
  buildHandStub();
  buildDemo();
  buildFxReturnMixer();
  buildPortfolioMain();
  writeReadme();
  fs.writeFileSync(path.join(root, "media", ".gitkeep"), "", "utf8");
}

main();
