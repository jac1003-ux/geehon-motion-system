const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const sourcePath = path.join(root, "patchers", "effects", "mt_mod_multiband_filter.maxpat");
const targetPath = path.join(root, "patchers", "effects", "mt_mod_multiband_filter_v2.maxpat");
const source = JSON.parse(fs.readFileSync(sourcePath, "utf8"));

function box(id, maxclass, rect, extra = {}) {
  return { box: Object.assign({ id, maxclass, patching_rect: rect }, extra) };
}

function object(id, text, rect, extra = {}) {
  return box(id, "newobj", rect, Object.assign({ text }, extra));
}

function message(id, text, rect) {
  return box(id, "message", rect, { text });
}

function line(source, outlet, destination, inlet, color) {
  const patchline = { source: [source, outlet], destination: [destination, inlet] };
  if (color) patchline.color = color;
  return { patchline };
}

function dial(id, rect, presentationRect, name, shortName, minimum, maximum, initial, unitstyle, color) {
  return box(id, "live.dial", rect, {
    numinlets: 1,
    numoutlets: 2,
    outlettype: ["", "float"],
    parameter_enable: 1,
    activebgcolor: color,
    activeneedlecolor: [0.15, 0.28, 0.23, 1],
    presentation: 1,
    presentation_rect: presentationRect,
    saved_attribute_attributes: {
      valueof: {
        parameter_initial: [initial],
        parameter_initial_enable: 1,
        parameter_longname: name,
        parameter_mmax: maximum,
        parameter_mmin: minimum,
        parameter_modmode: 3,
        parameter_shortname: shortName,
        parameter_type: unitstyle === 5 ? 1 : 0,
        parameter_unitstyle: unitstyle
      }
    },
    varname: id.replace(/-/g, "_")
  });
}

function add(target, entry) {
  target.boxes.push(entry);
  return entry.box.id;
}

function addBand(core, prefix, x, leftSource, rightSource, controls) {
  const signal = [0.93, 0.98, 0.45, 1];
  add(core, object(`${prefix}-gain-dbtoa`, "dbtoa", [x, 165, 58, 22]));
  add(core, message(`${prefix}-gain-msg`, "$1 20", [x, 195, 52, 22]));
  add(core, object(`${prefix}-gain-line`, "line~", [x, 225, 48, 22]));
  core.lines.push(
    line(controls.gain, 0, `${prefix}-gain-dbtoa`, 0),
    line(`${prefix}-gain-dbtoa`, 0, `${prefix}-gain-msg`, 0),
    line(`${prefix}-gain-msg`, 0, `${prefix}-gain-line`, 0)
  );

  add(core, object(`${prefix}-drive-clip`, "clip 0. 18.", [x + 70, 165, 72, 22]));
  add(core, object(`${prefix}-drive-dbtoa`, "dbtoa", [x + 70, 195, 58, 22]));
  add(core, message(`${prefix}-drive-pre-msg`, "$1 20", [x + 70, 255, 52, 22]));
  add(core, object(`${prefix}-drive-pre-line`, "line~", [x + 70, 285, 48, 22]));
  add(core, object(`${prefix}-drive-mix-div`, "/ 18.", [x + 210, 195, 52, 22]));
  add(core, message(`${prefix}-drive-mix-msg`, "$1 20", [x + 210, 225, 52, 22]));
  add(core, object(`${prefix}-drive-mix-line`, "line~", [x + 210, 255, 48, 22]));
  add(core, object(`${prefix}-one`, "sig~ 1.", [x + 270, 225, 55, 22]));
  add(core, object(`${prefix}-mix-inverse`, "-~", [x + 270, 255, 38, 22]));
  core.lines.push(
    line(controls.drive, 0, `${prefix}-drive-clip`, 0),
    line(`${prefix}-drive-clip`, 0, `${prefix}-drive-dbtoa`, 0),
    line(`${prefix}-drive-dbtoa`, 0, `${prefix}-drive-pre-msg`, 0),
    line(`${prefix}-drive-pre-msg`, 0, `${prefix}-drive-pre-line`, 0),
    line(`${prefix}-drive-clip`, 0, `${prefix}-drive-mix-div`, 0),
    line(`${prefix}-drive-mix-div`, 0, `${prefix}-drive-mix-msg`, 0),
    line(`${prefix}-drive-mix-msg`, 0, `${prefix}-drive-mix-line`, 0),
    line(`${prefix}-one`, 0, `${prefix}-mix-inverse`, 0),
    line(`${prefix}-drive-mix-line`, 0, `${prefix}-mix-inverse`, 1)
  );

  add(core, object(`${prefix}-width-clip`, "clip 0. 2.", [x + 335, 165, 70, 22]));
  add(core, message(`${prefix}-width-msg`, "$1 20", [x + 335, 195, 52, 22]));
  add(core, object(`${prefix}-width-line`, "line~", [x + 335, 225, 48, 22]));
  core.lines.push(
    line(controls.width, 0, `${prefix}-width-clip`, 0),
    line(`${prefix}-width-clip`, 0, `${prefix}-width-msg`, 0),
    line(`${prefix}-width-msg`, 0, `${prefix}-width-line`, 0)
  );

  ["l", "r"].forEach((channel, channelIndex) => {
    const source = channelIndex ? rightSource : leftSource;
    const cx = x + channelIndex * 150;
    add(core, object(`${prefix}-${channel}-dry`, "*~", [cx, 345, 38, 22]));
    add(core, object(`${prefix}-${channel}-pre`, "*~", [cx + 45, 345, 38, 22]));
    add(core, object(`${prefix}-${channel}-sat`, "tanh~", [cx + 45, 375, 52, 22]));
    add(core, object(`${prefix}-${channel}-wet`, "*~", [cx + 45, 405, 38, 22]));
    add(core, object(`${prefix}-${channel}-blend`, "+~", [cx, 435, 38, 22]));
    add(core, object(`${prefix}-${channel}-gain`, "*~", [cx, 465, 38, 22]));
    core.lines.push(
      line(source.id, source.outlet, `${prefix}-${channel}-dry`, 0, signal),
      line(`${prefix}-mix-inverse`, 0, `${prefix}-${channel}-dry`, 1, signal),
      line(source.id, source.outlet, `${prefix}-${channel}-pre`, 0, signal),
      line(`${prefix}-drive-pre-line`, 0, `${prefix}-${channel}-pre`, 1, signal),
      line(`${prefix}-${channel}-pre`, 0, `${prefix}-${channel}-sat`, 0, signal),
      line(`${prefix}-${channel}-sat`, 0, `${prefix}-${channel}-wet`, 0, signal),
      line(`${prefix}-drive-mix-line`, 0, `${prefix}-${channel}-wet`, 1, signal),
      line(`${prefix}-${channel}-dry`, 0, `${prefix}-${channel}-blend`, 0, signal),
      line(`${prefix}-${channel}-wet`, 0, `${prefix}-${channel}-blend`, 1, signal),
      line(`${prefix}-${channel}-blend`, 0, `${prefix}-${channel}-gain`, 0, signal),
      line(`${prefix}-gain-line`, 0, `${prefix}-${channel}-gain`, 1, signal)
    );
  });

  add(core, object(`${prefix}-sum`, "+~", [x + 70, 505, 38, 22]));
  add(core, object(`${prefix}-sum-half`, "*~ 0.5", [x + 70, 535, 58, 22]));
  add(core, object(`${prefix}-diff`, "-~", [x + 155, 505, 38, 22]));
  add(core, object(`${prefix}-diff-half`, "*~ 0.5", [x + 155, 535, 58, 22]));
  add(core, object(`${prefix}-side-width`, "*~", [x + 155, 565, 38, 22]));
  add(core, object(`${prefix}-out-l`, "+~", [x + 70, 595, 38, 22]));
  add(core, object(`${prefix}-out-r`, "-~", [x + 155, 595, 38, 22]));
  add(core, object(`${prefix}-abs-l`, "abs~", [x + 240, 505, 45, 22]));
  add(core, object(`${prefix}-abs-r`, "abs~", [x + 290, 505, 45, 22]));
  add(core, object(`${prefix}-energy-sum`, "+~", [x + 265, 535, 38, 22]));
  add(core, object(`${prefix}-energy`, "*~ 0.5", [x + 265, 565, 58, 22]));
  core.lines.push(
    line(`${prefix}-l-gain`, 0, `${prefix}-sum`, 0, signal),
    line(`${prefix}-r-gain`, 0, `${prefix}-sum`, 1, signal),
    line(`${prefix}-sum`, 0, `${prefix}-sum-half`, 0, signal),
    line(`${prefix}-l-gain`, 0, `${prefix}-diff`, 0, signal),
    line(`${prefix}-r-gain`, 0, `${prefix}-diff`, 1, signal),
    line(`${prefix}-diff`, 0, `${prefix}-diff-half`, 0, signal),
    line(`${prefix}-diff-half`, 0, `${prefix}-side-width`, 0, signal),
    line(`${prefix}-width-line`, 0, `${prefix}-side-width`, 1, signal),
    line(`${prefix}-sum-half`, 0, `${prefix}-out-l`, 0, signal),
    line(`${prefix}-side-width`, 0, `${prefix}-out-l`, 1, signal),
    line(`${prefix}-sum-half`, 0, `${prefix}-out-r`, 0, signal),
    line(`${prefix}-side-width`, 0, `${prefix}-out-r`, 1, signal),
    line(`${prefix}-out-l`, 0, `${prefix}-abs-l`, 0, signal),
    line(`${prefix}-out-r`, 0, `${prefix}-abs-r`, 0, signal),
    line(`${prefix}-abs-l`, 0, `${prefix}-energy-sum`, 0, signal),
    line(`${prefix}-abs-r`, 0, `${prefix}-energy-sum`, 1, signal),
    line(`${prefix}-energy-sum`, 0, `${prefix}-energy`, 0, signal)
  );
  return {
    left: { id: `${prefix}-out-l`, outlet: 0 },
    right: { id: `${prefix}-out-r`, outlet: 0 },
    energy: { id: `${prefix}-energy`, outlet: 0 }
  };
}

const p = Object.assign({}, source.patcher, {
  rect: [80, 80, 1120, 460],
  openrect: [80, 80, 1120, 460],
  default_fontsize: 12,
  boxes: [],
  lines: []
});

add(p, box("mb2-header", "panel", [0, 0, 1100, 58], {
  background: 1, border: 0, bgcolor: [0.13, 0.25, 0.21, 1],
  presentation: 1, presentation_rect: [0, 0, 1100, 58]
}));
add(p, box("mb2-body", "panel", [0, 58, 1100, 342], {
  background: 1, border: 1, bgcolor: [0.96, 0.97, 0.95, 1],
  bordercolor: [0.66, 0.74, 0.69, 1],
  presentation: 1, presentation_rect: [0, 58, 1100, 342]
}));
add(p, box("mb2-title", "comment", [24, 14, 430, 24], {
  text: "MULTIBAND FILTER", fontsize: 18, fontface: 1,
  textcolor: [0.94, 0.96, 0.94, 1], presentation: 1,
  presentation_rect: [24, 14, 430, 24]
}));
add(p, box("mb2-note", "comment", [24, 36, 780, 18], {
  text: "3-BAND SPECTRAL MOTION / FOCUS / DRIVE / WIDTH / PURE WET RETURN",
  fontsize: 9, textcolor: [0.72, 0.80, 0.75, 1], presentation: 1,
  presentation_rect: [24, 36, 780, 18]
}));

[
  ["mb2-in-l", 1, 20, "Audio L"],
  ["mb2-in-r", 2, 60, "Audio R"],
  ["mb2-in-enable", 3, 100, "Enable 0/1"],
  ["mb2-in-focus", 4, 140, "Focus 0-1"],
  ["mb2-in-contrast", 5, 180, "Contrast 0-1"],
  ["mb2-in-spread", 6, 220, "Spread 0-1"]
].forEach(([id, index, x, comment]) => add(p, box(id, "inlet", [x, 430, 30, 30], { index, comment })));
add(p, box("mb2-enable-set", "message", [100, 466, 50, 22], { text: "set $1" }));

add(p, box("mb2-enable", "toggle", [510, 82, 24, 24], {
  parameter_enable: 0, presentation: 1, presentation_rect: [510, 76, 24, 24],
  varname: "multiband_filter_enable"
}));
add(p, box("mb2-enable-label", "comment", [540, 84, 60, 20], {
  text: "ENABLE", fontface: 1, presentation: 1, presentation_rect: [540, 78, 60, 20]
}));
add(p, box("mb2-band-menu", "umenu", [630, 82, 120, 22], {
  numinlets: 1, numoutlets: 3, outlettype: ["int", "", ""],
  items: ["LOW", ",", "MID", ",", "HIGH"], parameter_enable: 0,
  presentation: 1, presentation_rect: [630, 76, 120, 22],
  varname: "multiband_selected_band"
}));
add(p, box("mb2-mute", "toggle", [770, 82, 24, 24], {
  presentation: 1, presentation_rect: [770, 76, 24, 24],
  varname: "multiband_band_mute"
}));
add(p, box("mb2-mute-label", "comment", [800, 84, 45, 20], {
  text: "MUTE", presentation: 1, presentation_rect: [800, 78, 45, 20]
}));
add(p, box("mb2-solo", "toggle", [850, 82, 24, 24], {
  presentation: 1, presentation_rect: [850, 76, 24, 24],
  varname: "multiband_band_solo"
}));
add(p, box("mb2-solo-label", "comment", [880, 84, 45, 20], {
  text: "SOLO", presentation: 1, presentation_rect: [880, 78, 45, 20]
}));

add(p, dial("mb2-gain", [510, 145, 70, 62], [510, 138, 70, 62], "Selected Band Gain", "GAIN dB", -24, 12, 0, 4, [0.84, 0.67, 0.19, 1]));
add(p, dial("mb2-drive", [600, 145, 70, 62], [600, 138, 70, 62], "Selected Band Drive", "DRIVE dB", 0, 18, 0, 4, [0.84, 0.67, 0.19, 1]));
add(p, dial("mb2-width", [690, 145, 70, 62], [690, 138, 70, 62], "Selected Band Width", "WIDTH", 0, 200, 100, 5, [0.49, 0.69, 0.60, 1]));
add(p, dial("mb2-low-x", [790, 145, 70, 62], [790, 138, 70, 62], "Low Crossover", "LOW X Hz", 80, 1200, 250, 1, [0.49, 0.69, 0.60, 1]));
add(p, dial("mb2-high-x", [880, 145, 70, 62], [880, 138, 70, 62], "High Crossover", "HIGH X Hz", 1200, 12000, 3500, 1, [0.49, 0.69, 0.60, 1]));

add(p, dial("mb2-focus", [540, 255, 70, 62], [540, 250, 70, 62], "Spectral Focus", "FOCUS", 0, 100, 50, 5, [0.84, 0.67, 0.19, 1]));
add(p, dial("mb2-contrast", [650, 255, 70, 62], [650, 250, 70, 62], "Spectral Contrast", "CONTRAST", 0, 100, 0, 5, [0.84, 0.67, 0.19, 1]));
add(p, dial("mb2-spread", [760, 255, 70, 62], [760, 250, 70, 62], "Spectral Spread", "SPREAD", 0, 100, 0, 5, [0.31, 0.60, 0.62, 1]));
add(p, box("mb2-macro-label", "comment", [520, 225, 350, 20], {
  text: "PERFORMANCE MACROS", fontface: 1, textcolor: [0.20, 0.31, 0.27, 1],
  presentation: 1, presentation_rect: [520, 220, 350, 20]
}));

add(p, box("mb2-visual", "jsui", [24, 82, 460, 260], {
  filename: "mt_multiband_filter_visual.js",
  numinlets: 4, numoutlets: 0, border: 0, parameter_enable: 0,
  presentation: 1, presentation_rect: [24, 76, 460, 292],
  varname: "multiband_filter_response"
}));
add(p, object("mb2-controller", "js mt_multiband_filter_controller.js", [300, 470, 350, 22], {
  numinlets: 11, numoutlets: 17,
  outlettype: ["", "", "", "", "", "float", "float", "float", "float", "float", "float", "float", "float", "float", "", "float", "float"]
}));
add(p, object("mb2-init", "loadmess bang", [300, 500, 95, 22]));
add(p, object("mb2-state", "s mt_multiband_filter_enable_state", [20, 500, 220, 22]));
add(p, object("mb2-focus-percent", "* 100.", [100, 470, 55, 22]));
add(p, object("mb2-contrast-percent", "* 100.", [160, 470, 55, 22]));
add(p, object("mb2-spread-percent", "* 100.", [220, 470, 55, 22]));

const baseCore = source.patcher.boxes.find((entry) => entry.box.id === "mb-core").box.patcher;
const core = Object.assign({}, baseCore, {
  rect: [120, 120, 1520, 820],
  boxes: [],
  lines: []
});
[
  ["mb2c-l", 1, 30], ["mb2c-r", 2, 80], ["mb2c-enable", 3, 150],
  ["mb2c-low-x", 4, 230], ["mb2c-high-x", 5, 300],
  ["mb2c-low-gain", 6, 390], ["mb2c-mid-gain", 7, 460], ["mb2c-high-gain", 8, 530],
  ["mb2c-low-drive", 9, 620], ["mb2c-mid-drive", 10, 690], ["mb2c-high-drive", 11, 760],
  ["mb2c-low-width", 12, 850], ["mb2c-mid-width", 13, 920], ["mb2c-high-width", 14, 990]
].forEach(([id, index, x]) => add(core, box(id, "inlet", [x, 30, 30, 30], { index })));

add(core, object("mb2c-cross-low-l", "cross~ 250.", [30, 245, 90, 22], { numinlets: 2, numoutlets: 2, outlettype: ["signal", "signal"] }));
add(core, object("mb2c-cross-high-l", "cross~ 3500.", [135, 275, 95, 22], { numinlets: 2, numoutlets: 2, outlettype: ["signal", "signal"] }));
add(core, object("mb2c-cross-low-r", "cross~ 250.", [260, 245, 90, 22], { numinlets: 2, numoutlets: 2, outlettype: ["signal", "signal"] }));
add(core, object("mb2c-cross-high-r", "cross~ 3500.", [365, 275, 95, 22], { numinlets: 2, numoutlets: 2, outlettype: ["signal", "signal"] }));
core.lines.push(
  line("mb2c-l", 0, "mb2c-cross-low-l", 0),
  line("mb2c-r", 0, "mb2c-cross-low-r", 0),
  line("mb2c-low-x", 0, "mb2c-cross-low-l", 1),
  line("mb2c-low-x", 0, "mb2c-cross-low-r", 1),
  line("mb2c-cross-low-l", 1, "mb2c-cross-high-l", 0),
  line("mb2c-cross-low-r", 1, "mb2c-cross-high-r", 0),
  line("mb2c-high-x", 0, "mb2c-cross-high-l", 1),
  line("mb2c-high-x", 0, "mb2c-cross-high-r", 1)
);

const low = addBand(core, "mb2c-low", 500,
  { id: "mb2c-cross-low-l", outlet: 0 },
  { id: "mb2c-cross-low-r", outlet: 0 },
  { gain: "mb2c-low-gain", drive: "mb2c-low-drive", width: "mb2c-low-width" });
const mid = addBand(core, "mb2c-mid", 850,
  { id: "mb2c-cross-high-l", outlet: 0 },
  { id: "mb2c-cross-high-r", outlet: 0 },
  { gain: "mb2c-mid-gain", drive: "mb2c-mid-drive", width: "mb2c-mid-width" });
const high = addBand(core, "mb2c-high", 1200,
  { id: "mb2c-cross-high-l", outlet: 1 },
  { id: "mb2c-cross-high-r", outlet: 1 },
  { gain: "mb2c-high-gain", drive: "mb2c-high-drive", width: "mb2c-high-width" });

add(core, object("mb2c-sum-l-a", "+~", [640, 680, 38, 22]));
add(core, object("mb2c-sum-l-b", "+~", [700, 710, 38, 22]));
add(core, object("mb2c-sum-r-a", "+~", [820, 680, 38, 22]));
add(core, object("mb2c-sum-r-b", "+~", [880, 710, 38, 22]));
add(core, object("mb2c-limit-l", "clip~ -0.98 0.98", [700, 740, 105, 22]));
add(core, object("mb2c-limit-r", "clip~ -0.98 0.98", [880, 740, 105, 22]));
add(core, object("mb2c-enable-clip", "clip 0 1", [150, 680, 65, 22]));
add(core, message("mb2c-enable-msg", "$1 20", [150, 710, 52, 22]));
add(core, object("mb2c-enable-line", "line~", [150, 740, 48, 22]));
add(core, object("mb2c-gate-l", "*~", [700, 775, 38, 22]));
add(core, object("mb2c-gate-r", "*~", [880, 775, 38, 22]));
core.lines.push(
  line(low.left.id, 0, "mb2c-sum-l-a", 0),
  line(mid.left.id, 0, "mb2c-sum-l-a", 1),
  line("mb2c-sum-l-a", 0, "mb2c-sum-l-b", 0),
  line(high.left.id, 0, "mb2c-sum-l-b", 1),
  line(low.right.id, 0, "mb2c-sum-r-a", 0),
  line(mid.right.id, 0, "mb2c-sum-r-a", 1),
  line("mb2c-sum-r-a", 0, "mb2c-sum-r-b", 0),
  line(high.right.id, 0, "mb2c-sum-r-b", 1),
  line("mb2c-sum-l-b", 0, "mb2c-limit-l", 0),
  line("mb2c-sum-r-b", 0, "mb2c-limit-r", 0),
  line("mb2c-enable", 0, "mb2c-enable-clip", 0),
  line("mb2c-enable-clip", 0, "mb2c-enable-msg", 0),
  line("mb2c-enable-msg", 0, "mb2c-enable-line", 0),
  line("mb2c-limit-l", 0, "mb2c-gate-l", 0),
  line("mb2c-limit-r", 0, "mb2c-gate-r", 0),
  line("mb2c-enable-line", 0, "mb2c-gate-l", 1),
  line("mb2c-enable-line", 0, "mb2c-gate-r", 1)
);

[
  ["mb2c-out-l", 1, 700, "signal"],
  ["mb2c-out-r", 2, 880, "signal"],
  ["mb2c-out-low-energy", 3, 1080, "signal"],
  ["mb2c-out-mid-energy", 4, 1150, "signal"],
  ["mb2c-out-high-energy", 5, 1220, "signal"]
].forEach(([id, index, x, outlettype]) => add(core, box(id, "outlet", [x, 810, 30, 30], { index, outlettype: [outlettype] })));
core.lines.push(
  line("mb2c-gate-l", 0, "mb2c-out-l", 0),
  line("mb2c-gate-r", 0, "mb2c-out-r", 0),
  line(low.energy.id, 0, "mb2c-out-low-energy", 0),
  line(mid.energy.id, 0, "mb2c-out-mid-energy", 0),
  line(high.energy.id, 0, "mb2c-out-high-energy", 0)
);

add(p, object("mb2-core", "p Multiband_filter_v2_core", [20, 550, 220, 22], {
  numinlets: 14, numoutlets: 5,
  outlettype: ["signal", "signal", "signal", "signal", "signal"],
  patcher: core
}));
add(p, object("mb2-snapshot-low", "snapshot~ 33", [300, 550, 82, 22]));
add(p, object("mb2-snapshot-mid", "snapshot~ 33", [390, 550, 82, 22]));
add(p, object("mb2-snapshot-high", "snapshot~ 33", [480, 550, 82, 22]));
add(p, box("mb2-output-gain", "live.gain~", [980, 138, 58, 160], {
  numinlets: 2, numoutlets: 5, channels: 2, parameter_enable: 1, showname: 0,
  presentation: 1, presentation_rect: [980, 130, 58, 170],
  varname: "multiband_filter_output_gain",
  saved_attribute_attributes: { valueof: {
    parameter_initial: [0], parameter_initial_enable: 1,
    parameter_mmax: 6, parameter_mmin: -70,
    parameter_modmode: 0, parameter_shortname: "OUTPUT",
    parameter_type: 0, parameter_unitstyle: 4
  }}
}));
add(p, box("mb2-output-label", "comment", [976, 310, 70, 18], {
  text: "OUTPUT", fontface: 1, presentation: 1, presentation_rect: [976, 310, 70, 18]
}));
add(p, box("mb2-out-l", "outlet", [980, 430, 30, 30], { index: 1, comment: "Processed L" }));
add(p, box("mb2-out-r", "outlet", [1020, 430, 30, 30], { index: 2, comment: "Processed R" }));

const control = [1, 0.5, 0, 1];
const state = [0.3, 0.65, 0.86, 1];
p.lines.push(
  line("mb2-in-l", 0, "mb2-core", 0),
  line("mb2-in-r", 0, "mb2-core", 1),
  line("mb2-in-enable", 0, "mb2-enable-set", 0, state),
  line("mb2-enable-set", 0, "mb2-enable", 0, state),
  line("mb2-in-enable", 0, "mb2-core", 2, state),
  line("mb2-enable", 0, "mb2-core", 2, state),
  line("mb2-enable", 0, "mb2-state", 0, state),
  line("mb2-in-focus", 0, "mb2-focus-percent", 0, state),
  line("mb2-focus-percent", 0, "mb2-focus", 0, state),
  line("mb2-in-contrast", 0, "mb2-contrast-percent", 0, state),
  line("mb2-contrast-percent", 0, "mb2-contrast", 0, state),
  line("mb2-in-spread", 0, "mb2-spread-percent", 0, state),
  line("mb2-spread-percent", 0, "mb2-spread", 0, state),
  line("mb2-band-menu", 0, "mb2-controller", 0, control),
  line("mb2-gain", 0, "mb2-controller", 1, control),
  line("mb2-drive", 0, "mb2-controller", 2, control),
  line("mb2-width", 0, "mb2-controller", 3, control),
  line("mb2-mute", 0, "mb2-controller", 4, control),
  line("mb2-solo", 0, "mb2-controller", 5, control),
  line("mb2-focus", 0, "mb2-controller", 6, control),
  line("mb2-contrast", 0, "mb2-controller", 7, control),
  line("mb2-spread", 0, "mb2-controller", 8, control),
  line("mb2-low-x", 0, "mb2-controller", 9, control),
  line("mb2-high-x", 0, "mb2-controller", 10, control),
  line("mb2-controller", 0, "mb2-gain", 0, control),
  line("mb2-controller", 1, "mb2-drive", 0, control),
  line("mb2-controller", 2, "mb2-width", 0, control),
  line("mb2-controller", 3, "mb2-mute", 0, control),
  line("mb2-controller", 4, "mb2-solo", 0, control),
  line("mb2-controller", 5, "mb2-core", 5, control),
  line("mb2-controller", 6, "mb2-core", 6, control),
  line("mb2-controller", 7, "mb2-core", 7, control),
  line("mb2-controller", 8, "mb2-core", 8, control),
  line("mb2-controller", 9, "mb2-core", 9, control),
  line("mb2-controller", 10, "mb2-core", 10, control),
  line("mb2-controller", 11, "mb2-core", 11, control),
  line("mb2-controller", 12, "mb2-core", 12, control),
  line("mb2-controller", 13, "mb2-core", 13, control),
  line("mb2-controller", 14, "mb2-visual", 0, control),
  line("mb2-controller", 15, "mb2-core", 3, control),
  line("mb2-controller", 16, "mb2-core", 4, control),
  line("mb2-init", 0, "mb2-controller", 0, control),
  line("mb2-core", 2, "mb2-snapshot-low", 0),
  line("mb2-core", 3, "mb2-snapshot-mid", 0),
  line("mb2-core", 4, "mb2-snapshot-high", 0),
  line("mb2-snapshot-low", 0, "mb2-visual", 1, control),
  line("mb2-snapshot-mid", 0, "mb2-visual", 2, control),
  line("mb2-snapshot-high", 0, "mb2-visual", 3, control),
  line("mb2-core", 0, "mb2-output-gain", 0),
  line("mb2-core", 1, "mb2-output-gain", 1),
  line("mb2-output-gain", 0, "mb2-out-l", 0),
  line("mb2-output-gain", 1, "mb2-out-r", 0)
);

fs.writeFileSync(targetPath, `${JSON.stringify({ patcher: p }, null, 2)}\n`);
console.log(`Wrote ${targetPath}`);
