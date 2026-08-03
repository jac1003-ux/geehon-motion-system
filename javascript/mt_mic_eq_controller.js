var FILTER_TYPES = [
  { label: "LOW CUT", mode: 2, gainEnabled: 0 },
  { label: "LOW SHELF", mode: 6, gainEnabled: 1 },
  { label: "BELL", mode: 5, gainEnabled: 1 },
  { label: "NOTCH", mode: 4, gainEnabled: 0 },
  { label: "HIGH SHELF", mode: 7, gainEnabled: 1 },
  { label: "HIGH CUT", mode: 1, gainEnabled: 0 },
];

var PRESETS = [
  { name: "FLAT", stages: [[6, 80, 0, 0.7], [5, 160, 0, 1], [5, 400, 0, 1], [5, 1000, 0, 1], [5, 3000, 0, 1], [5, 8000, 0, 1], [7, 12000, 0, 0.7]] },
  { name: "RADIO", stages: [[2, 280, 0, 0.707], [2, 350, 0, 0.707], [5, 800, 2.5, 1], [5, 1500, 6, 1.4], [5, 2400, 3, 1.2], [1, 4000, 0, 0.707], [1, 3500, 0, 0.707]] },
  { name: "TELEPHONE", stages: [[2, 420, 0, 0.707], [2, 520, 0, 0.707], [5, 900, 3, 1.1], [5, 1400, 7, 1.5], [5, 2200, 4, 1.2], [1, 3400, 0, 0.707], [1, 3000, 0, 0.707]] },
  { name: "WARM VOCAL", stages: [[2, 70, 0, 0.707], [6, 140, 2, 0.7], [5, 280, -3, 1.2], [5, 1200, 1, 1], [5, 3000, 2.5, 1], [5, 6000, 1.5, 1], [7, 12000, 2, 0.7]] },
  { name: "AIR / PRESENCE", stages: [[2, 80, 0, 0.707], [6, 140, -1, 0.7], [5, 250, -2, 1.1], [5, 1200, 1.5, 1], [5, 4200, 3.5, 1.1], [5, 8000, 2, 1], [7, 12000, 4, 0.7]] },
  { name: "MEGAPHONE", stages: [[2, 350, 0, 0.707], [2, 450, 0, 0.707], [5, 900, 4, 1.2], [5, 1600, 7, 1.7], [5, 2800, 4, 1.3], [1, 4500, 0, 0.707], [1, 4000, 0, 0.707]] },
];

function dbToAmplitude(db) {
  return Math.pow(10, db / 20);
}

function typeIndexForMode(mode) {
  for (var index = 0; index < FILTER_TYPES.length; index += 1) {
    if (FILTER_TYPES[index].mode === mode) return index;
  }
  return 2;
}

function gainEnabledForMode(mode) {
  return mode === 5 || mode === 6 || mode === 7 ? 1 : 0;
}

function MicEqController(emitGraph, emitTypeMenu) {
  this.emitGraph = emitGraph;
  this.emitTypeMenu = emitTypeMenu;
  this.selectedFilter = 0;
  this.types = PRESETS[0].stages.map(function (stage) { return stage[0]; });
}

MicEqController.prototype.setSelected = function (index) {
  index = Math.max(0, Math.min(6, Math.round(Number(index))));
  this.selectedFilter = index;
  this.emitTypeMenu(["set", typeIndexForMode(this.types[index])]);
};

MicEqController.prototype.setType = function (menuIndex) {
  var type = FILTER_TYPES[Math.round(Number(menuIndex))];
  if (!type) return;
  this.types[this.selectedFilter] = type.mode;
  this.emitGraph(["setoptions", this.selectedFilter, type.mode, type.gainEnabled, 0, 0]);
  this.emitGraph(["bang"]);
  this.emitTypeMenu(["set", typeIndexForMode(type.mode)]);
};

MicEqController.prototype.applyPreset = function (presetIndex) {
  var preset = PRESETS[Math.round(Number(presetIndex))];
  if (!preset) return;
  for (var index = 0; index < preset.stages.length; index += 1) {
    var stage = preset.stages[index];
    this.emitGraph(["setoptions", index, stage[0], gainEnabledForMode(stage[0]), 0, 0]);
    this.emitGraph(["setparams", index, stage[1], dbToAmplitude(stage[2]), stage[3]]);
    this.types[index] = stage[0];
  }
  this.selectedFilter = 0;
  this.emitGraph(["edit_filter", 0]);
  this.emitGraph(["selectfilt", 0]);
  this.emitGraph(["bang"]);
  this.emitTypeMenu(["set", typeIndexForMode(this.types[0])]);
};

var maxController = new MicEqController(
  function (message) { outlet(0, message); },
  function (message) { outlet(1, message); }
);

function msg_int(value) {
  if (inlet === 0) maxController.setType(value);
  else if (inlet === 1) maxController.applyPreset(value);
  else if (inlet === 2) maxController.setSelected(value);
}

function msg_float(value) {
  msg_int(value);
}

function loadbang() {
  maxController.setSelected(0);
}

if (typeof outlet === "function") {
  autowatch = 1;
  inlets = 3;
  outlets = 2;
}

if (typeof module !== "undefined" && module.exports) {
  module.exports = { FILTER_TYPES: FILTER_TYPES, PRESETS: PRESETS, MicEqController: MicEqController };
}
