const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const target = path.join(root, "patchers", "mixers", "mt_fx_output_trim_panel.maxpat");
const assetDir = path.join(root, "assets", "ui");
const backgroundName = "fx_output_mixer_panel_v1";

const appversion = { major: 9, minor: 1, revision: 4, architecture: "x64", modernui: 1 };
const boxes = [];
const lines = [];
const add = (box) => boxes.push({ box });
const connect = (source, outlet, destination, inlet) => lines.push({
  patchline: { source: [source, outlet], destination: [destination, inlet] },
});
const box = (id, maxclass, patchingRect, extra = {}) => ({
  id, maxclass, patching_rect: patchingRect, ...extra,
});
const object = (id, text, patchingRect, extra = {}) => box(id, "newobj", patchingRect, { text, ...extra });

add(box("fxm-bg", "fpic", [0, 0, 560, 450], {
  autofit: 1, background: 1, forceaspect: 1, ignoreclick: 1,
  pic: `${backgroundName}.png`,
  presentation: 1, presentation_rect: [0, 0, 560, 450],
}));

const channels = [
  { key: "vocoder", number: "01", label: "VOCODER", x: 36, shortname: "Vocoder Trim" },
  { key: "bitcrusher", number: "02", label: "BITCRUSHER", x: 166, shortname: "Bitcrusher Trim" },
  { key: "multiband", number: "03", label: "MULTIBAND", x: 296, shortname: "Multiband Trim" },
  { key: "delay", number: "04", label: "DELAY", x: 426, shortname: "Delay Trim" },
];

for (const [index, channel] of channels.entries()) {
  const { key, number, label, x, shortname } = channel;
  const attrs = {
    parameter_initial: [0], parameter_initial_enable: 1,
    parameter_mmax: 6, parameter_mmin: -70, parameter_modmode: 0,
    parameter_shortname: shortname, parameter_type: 0, parameter_unitstyle: 4,
  };

  add(box(`fxm-${key}-current`, "textbutton", [x + 14, 120, 92, 20], {
    bgcolor: [0.90, 0.92, 0.90, 1], bgoncolor: [0.95, 0.70, 0.15, 1],
    fontsize: 9, fontface: 1, ignoreclick: 1, mode: 1, rounded: 8,
    text: "", textcolor: [0.48, 0.53, 0.50, 1], texton: "CURRENT",
    textoncolor: [0.12, 0.25, 0.21, 1], presentation: 1,
    presentation_rect: [x + 14, 120, 92, 20],
  }));
  add(box(`fxm-${key}-gain`, "live.gain~", [x + 32, 158, 54, 210], {
    channels: 2, metering: 0, numinlets: 2, numoutlets: 5, parameter_enable: 1, showname: 0,
    saved_attribute_attributes: { valueof: attrs },
    varname: `fx_output_${key}_gain`, presentation: 1,
    presentation_rect: [x + 32, 150, 54, 214],
  }));
  add(box(`fxm-${key}-readout`, "live.numbox", [x + 18, 378, 82, 24], {
    ignoreclick: 1, numinlets: 1, numoutlets: 2, outlettype: ["", "float"],
    parameter_enable: 0, saved_attribute_attributes: { valueof: attrs },
    varname: `fx_output_${key}_readout`, presentation: 1,
    presentation_rect: [x + 18, 378, 82, 24],
  }));
  add(box(`fxm-${key}-in`, "inlet", [40 + index * 100, 500, 30, 30], {
    index: index + 1, comment: `${label === "DELAY" ? "Feedback Delay" : label[0] + label.slice(1).toLowerCase()} Output Gain feedback dB`,
  }));
  add(object(`fxm-${key}-feedback`, "t f f", [40 + index * 100, 544, 42, 22], {
    numinlets: 1, numoutlets: 2, outlettype: ["float", "float"],
  }));
  add(object(`fxm-${key}-feedback-set`, "prepend set", [40 + index * 100, 578, 76, 22]));
  add(object(`fxm-${key}-write`, "t f f", [40 + index * 100, 620, 42, 22], {
    numinlets: 1, numoutlets: 2, outlettype: ["float", "float"],
  }));
  add(object(`fxm-${key}-readout-set`, "prepend set", [40 + index * 100, 654, 76, 22]));
  add(box(`fxm-${key}-out`, "outlet", [40 + index * 100, 698, 30, 30], {
    index: index + 1, comment: `${label === "DELAY" ? "Feedback Delay" : label[0] + label.slice(1).toLowerCase()} Output Gain control dB`,
  }));

  connect(`fxm-${key}-in`, 0, `fxm-${key}-feedback`, 0);
  connect(`fxm-${key}-feedback`, 1, `fxm-${key}-feedback-set`, 0);
  connect(`fxm-${key}-feedback-set`, 0, `fxm-${key}-gain`, 0);
  connect(`fxm-${key}-feedback`, 0, `fxm-${key}-readout-set`, 0);
  connect(`fxm-${key}-gain`, 2, `fxm-${key}-write`, 0);
  connect(`fxm-${key}-write`, 1, `fxm-${key}-out`, 0);
  connect(`fxm-${key}-write`, 0, `fxm-${key}-readout-set`, 0);
  connect(`fxm-${key}-readout-set`, 0, `fxm-${key}-readout`, 0);
}

add(box("fxm-target-in", "inlet", [500, 500, 30, 30], {
  index: 5, comment: "Current target index 0-3",
}));
add(object("fxm-target-clip", "clip 0 3", [500, 544, 58, 22]));
add(object("fxm-target-trigger", "t i i i i", [500, 578, 72, 22], {
  numinlets: 1, numoutlets: 4, outlettype: ["int", "int", "int", "int"],
}));
add(object("fxm-target-load", "loadmess 0", [600, 500, 72, 22]));

for (const [index, { key }] of channels.entries()) {
  add(object(`fxm-${key}-is-current`, `== ${index}`, [500 + index * 72, 622, 48, 22]));
  add(object(`fxm-${key}-current-set`, "prepend set", [500 + index * 72, 656, 76, 22]));
  connect("fxm-target-trigger", 3 - index, `fxm-${key}-is-current`, 0);
  connect(`fxm-${key}-is-current`, 0, `fxm-${key}-current-set`, 0);
  connect(`fxm-${key}-current-set`, 0, `fxm-${key}-current`, 0);
}
connect("fxm-target-in", 0, "fxm-target-clip", 0);
connect("fxm-target-load", 0, "fxm-target-clip", 0);
connect("fxm-target-clip", 0, "fxm-target-trigger", 0);

for (const [index, { key, label }] of channels.entries()) {
  const monitorLabel = label === "DELAY" ? "Feedback Delay" : label[0] + label.slice(1).toLowerCase();
  add(box(`fxm-${key}-monitor-l`, "inlet", [600 + index * 100, 760, 30, 30], {
    index: 6 + index * 2, comment: `${monitorLabel} stage monitor L`,
  }));
  add(box(`fxm-${key}-monitor-r`, "inlet", [642 + index * 100, 760, 30, 30], {
    index: 7 + index * 2, comment: `${monitorLabel} stage monitor R`,
  }));
  connect(`fxm-${key}-monitor-l`, 0, `fxm-${key}-gain`, 0);
  connect(`fxm-${key}-monitor-r`, 0, `fxm-${key}-gain`, 1);
}

const patcher = {
  fileversion: 1,
  appversion,
  classnamespace: "box",
  rect: [100, 100, 560, 450],
  openrect: [100, 100, 560, 450],
  openinpresentation: 1,
  default_fontname: "Arial",
  default_fontsize: 12,
  default_fontface: 0,
  default_fontcolor: [0, 0, 0, 1],
  gridonopen: 1,
  gridsize: [15, 15],
  gridsnaponopen: 1,
  objectsnaponopen: 1,
  statusbarvisible: 2,
  toolbarvisible: 1,
  lefttoolbarpinned: 0,
  toptoolbarpinned: 0,
  righttoolbarpinned: 0,
  bottomtoolbarpinned: 0,
  boxes,
  lines,
  dependency_cache: [{
    name: `${backgroundName}.png`, bootpath: ".", patcherrelativepath: ".", type: "PNG", implicit: 1,
  }],
  autosave: 0,
};

const labels = channels.map(({ number, label, x }) => `
  <text x="${x}" y="109" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" font-weight="700" fill="#d69e1f">${number}</text>
  <text x="${x + 24}" y="109" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="10" font-weight="700" fill="#1f4035">${label}</text>
  <text x="${x + 102}" y="394" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="9" fill="#6b8077">dB</text>`).join("");
const backgroundSvg = `<svg xmlns="http://www.w3.org/2000/svg" width="560" height="450" viewBox="0 0 560 450">
  <rect width="560" height="450" fill="#f0f5f0"/>
  <rect width="560" height="70" fill="#1f4035"/>
  <rect x="18" y="84" width="524" height="344" rx="12" fill="#fafbf8" stroke="#b8c7bd"/>
  <text x="24" y="34" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="18" font-weight="700" fill="#f5f8f5">FX OUTPUT MIXER</text>
  <text x="24" y="54" font-family="Avenir Next,Helvetica Neue,sans-serif" font-size="9" letter-spacing="0.7" fill="#b8ccbf">SERIAL EFFECT OUTPUT LEVELS / CONTROL SURFACE</text>
  ${labels}
</svg>`;
fs.writeFileSync(path.join(assetDir, `${backgroundName}.svg`), backgroundSvg);
fs.writeFileSync(target, `${JSON.stringify({ patcher }, null, 2)}\n`);
console.log(path.relative(root, target));
