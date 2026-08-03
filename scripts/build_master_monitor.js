const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const target = path.join(root, "patchers", "mixers", "mt_master_monitor.maxpat");
const assetDir = path.join(root, "assets", "ui");
const asset = "master_monitor_panel_v1";
const boxes = [];
const lines = [];
const add = (box) => boxes.push({ box });
const connect = (source, outlet, destination, inlet) => lines.push({
  patchline: { source: [source, outlet], destination: [destination, inlet] },
});
const box = (id, maxclass, patching_rect, extra = {}) => ({ id, maxclass, patching_rect, ...extra });
const object = (id, text, patching_rect, extra = {}) => box(id, "newobj", patching_rect, { text, ...extra });

add(box("mm-bg", "fpic", [0, 0, 574, 578], {
  autofit: 1, background: 1, forceaspect: 1, ignoreclick: 1,
  pic: `${asset}.png`, presentation: 1, presentation_rect: [0, 0, 574, 578],
}));

add(box("mm-in-l", "inlet", [30, 650, 30, 30], { index: 1, outlettype: ["signal"], comment: "Audition L" }));
add(box("mm-in-r", "inlet", [80, 650, 30, 30], { index: 2, outlettype: ["signal"], comment: "Audition R" }));
add(box("mm-gain", "live.gain~", [150, 650, 62, 220], {
  channels: 2, metering: 1, numinlets: 2, numoutlets: 5, parameter_enable: 1, showname: 0,
  saved_attribute_attributes: { valueof: {
    parameter_initial: [0], parameter_initial_enable: 1,
    parameter_mmax: 6, parameter_mmin: -70, parameter_modmode: 0,
    parameter_shortname: "Monitor Level", parameter_type: 0, parameter_unitstyle: 4,
  } },
  varname: "master_monitor_gain", presentation: 1, presentation_rect: [42, 134, 62, 318],
}));

add(box("mm-mute", "textbutton", [250, 650, 140, 34], {
  bgcolor: [0.91, 0.94, 0.92, 1], bgoncolor: [0.95, 0.79, 0.30, 1],
  fontface: 1, fontsize: 13, mode: 1, rounded: 8, text: "MUTE MONITOR",
  textcolor: [0.12, 0.25, 0.21, 1], texton: "MONITOR MUTED",
  textoncolor: [0.12, 0.25, 0.21, 1], varname: "master_monitor_mute",
  presentation: 1, presentation_rect: [316, 292, 226, 74],
}));
add(object("mm-mute-load", "loadmess 0", [250, 700, 72, 22]));
add(object("mm-mute-invert", "== 0", [334, 700, 42, 22]));
add(box("mm-mute-message", "message", [388, 700, 54, 22], { text: "$1 20" }));
add(object("mm-mute-ramp", "line~", [454, 700, 42, 22], { numinlets: 2, numoutlets: 1, outlettype: ["signal"] }));
add(object("mm-mute-l", "*~", [230, 770, 36, 22], { numinlets: 2, numoutlets: 1, outlettype: ["signal"] }));
add(object("mm-mute-r", "*~", [310, 770, 36, 22], { numinlets: 2, numoutlets: 1, outlettype: ["signal"] }));

add(box("mm-meter-l", "meter~", [158, 134, 32, 318], {
  presentation: 1, presentation_rect: [158, 134, 32, 318],
}));
add(box("mm-meter-r", "meter~", [220, 134, 32, 318], {
  presentation: 1, presentation_rect: [220, 134, 32, 318],
}));
add(object("mm-peak-l", "peakamp~ 100", [400, 770, 88, 22]));
add(object("mm-peak-r", "peakamp~ 100", [500, 770, 88, 22]));
add(object("mm-atodb-l", "atodb", [400, 804, 44, 22]));
add(object("mm-atodb-r", "atodb", [500, 804, 44, 22]));
add(object("mm-peak-pak", "pak 0. 0.", [400, 838, 70, 22]));
add(object("mm-peak-max", "maximum", [400, 872, 58, 22]));
add(object("mm-peak-clip", "clip -70. 6.", [400, 906, 76, 22]));
add(object("mm-peak-set", "prepend set", [400, 940, 78, 22]));
add(box("mm-peak-display", "flonum", [500, 940, 80, 24], {
  bgcolor: [1, 0.98, 0.91, 1], fontface: 1, fontsize: 24, ignoreclick: 1,
  numdecimalplaces: 1, parameter_enable: 0, textcolor: [0.12, 0.25, 0.21, 1],
  presentation: 1, presentation_rect: [340, 180, 178, 44], varname: "master_monitor_peak",
}));

add(box("mm-out-l", "outlet", [230, 1010, 30, 30], { index: 1, comment: "Monitored L" }));
add(box("mm-out-r", "outlet", [310, 1010, 30, 30], { index: 2, comment: "Monitored R" }));

connect("mm-in-l", 0, "mm-gain", 0);
connect("mm-in-r", 0, "mm-gain", 1);
connect("mm-gain", 0, "mm-mute-l", 0);
connect("mm-gain", 1, "mm-mute-r", 0);
connect("mm-mute-load", 0, "mm-mute", 0);
connect("mm-mute", 0, "mm-mute-invert", 0);
connect("mm-mute-invert", 0, "mm-mute-message", 0);
connect("mm-mute-message", 0, "mm-mute-ramp", 0);
connect("mm-mute-ramp", 0, "mm-mute-l", 1);
connect("mm-mute-ramp", 0, "mm-mute-r", 1);

for (const [channel, mute] of [["l", "mm-mute-l"], ["r", "mm-mute-r"]]) {
  connect(mute, 0, `mm-out-${channel}`, 0);
  connect(mute, 0, `mm-meter-${channel}`, 0);
  connect(mute, 0, `mm-peak-${channel}`, 0);
  connect(`mm-peak-${channel}`, 0, `mm-atodb-${channel}`, 0);
}
connect("mm-atodb-l", 0, "mm-peak-pak", 0);
connect("mm-atodb-r", 0, "mm-peak-pak", 1);
connect("mm-peak-pak", 0, "mm-peak-max", 0);
connect("mm-peak-max", 0, "mm-peak-clip", 0);
connect("mm-peak-clip", 0, "mm-peak-set", 0);
connect("mm-peak-set", 0, "mm-peak-display", 0);

const patcher = {
  fileversion: 1,
  appversion: { major: 9, minor: 1, revision: 4, architecture: "x64", modernui: 1 },
  classnamespace: "box", rect: [100, 100, 574, 578], openrect: [100, 100, 574, 578],
  openinpresentation: 1, default_fontname: "Arial", default_fontsize: 12,
  default_fontface: 0, default_fontcolor: [0, 0, 0, 1], gridonopen: 1,
  gridsize: [15, 15], gridsnaponopen: 1, objectsnaponopen: 1,
  boxes, lines,
  dependency_cache: [{
    name: `${asset}.png`, bootpath: "~/Documents/maxmsp插件制作/geehon-motion-system/assets/ui",
    patcherrelativepath: "../../assets/ui", type: "PNG", implicit: 1,
  }],
  autosave: 0,
};

const svg = `<svg xmlns="http://www.w3.org/2000/svg" width="574" height="578" viewBox="0 0 574 578">
  <rect width="574" height="578" fill="#f3f7f3"/>
  <rect width="574" height="76" fill="#21483b"/>
  <text x="24" y="36" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="20" font-weight="700" fill="#f5f8f5">MASTER MONITOR</text>
  <text x="24" y="57" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="9" letter-spacing=".8" fill="#b8ccbf">POST-EDITOR LISTENING / PRE-DAC CONTROL</text>
  <rect x="20" y="96" width="268" height="382" rx="12" fill="#fafbf8" stroke="#bfd0c6"/>
  <text x="36" y="120" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" font-weight="700" fill="#355b4e">MONITOR LEVEL</text>
  <text x="166" y="120" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" font-weight="700" fill="#355b4e">L</text>
  <text x="228" y="120" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" font-weight="700" fill="#355b4e">R</text>
  <rect x="304" y="96" width="250" height="162" rx="12" fill="#fff9e9" stroke="#ecc557"/>
  <text x="320" y="122" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" font-weight="700" fill="#7b681f">OUTPUT PEAK</text>
  <text x="466" y="236" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" fill="#8d7b3c">dBFS</text>
  <rect x="304" y="276" width="250" height="106" rx="12" fill="#fafbf8" stroke="#bfd0c6"/>
  <text x="320" y="396" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" font-weight="700" fill="#355b4e">DSP OUTPUT</text>
  <rect x="304" y="406" width="250" height="72" rx="12" fill="#fafbf8" stroke="#bfd0c6"/>
  <text x="320" y="504" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" letter-spacing=".8" fill="#7b9087">RECORD TAP: POST-FX / PRE-MONITOR</text>
  <line x1="20" y1="526" x2="554" y2="526" stroke="#d2ded7"/>
  <text x="20" y="550" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" fill="#7b9087">Monitor Level and Mute never change the exported recording.</text>
</svg>`;

fs.writeFileSync(path.join(assetDir, `${asset}.svg`), svg);
fs.writeFileSync(target, `${JSON.stringify({ patcher }, null, 2)}\n`);
console.log(path.relative(root, target));
