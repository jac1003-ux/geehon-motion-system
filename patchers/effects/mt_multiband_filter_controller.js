autowatch = 1;
// Kept beside the patch so the standalone module resolves it without a project search path.
inlets = 11;
outlets = 22;

var selected = 0;
var gains = [0, 0, 0];
var drives = [0, 0, 0];
var widths = [1, 1, 1];
var mutes = [0, 0, 0];
var solo = -1;
var focus = 0.5;
var contrast = 0;
var spread = 0;
var lowX = 250;
var highX = 3500;
var presets = [
  [[2, 0, -2], [3, 1, 0], [0.85, 1, 1.1], 0.3, 0.25, 0.2, 220, 3200],
  [[-2, 2.5, 1], [0, 2, 1], [0.75, 1, 1.2], 0.55, 0.35, 0.3, 180, 4200],
  [[0, 1, 1.5], [1, 3, 2], [0.7, 1.25, 1.65], 0.7, 0.45, 0.75, 300, 5000]
];

function clamp(value, minimum, maximum) {
  return Math.max(minimum, Math.min(maximum, Number(value)));
}

function setUi(outletIndex, value) {
  outlet(outletIndex, ["set", value]);
}

function focusWeight(position) {
  var distance = position - focus;
  return Math.exp(-(distance * distance) / 0.03125);
}

function effectiveGain(index) {
  var unavailable = mutes[index] || (solo >= 0 && solo !== index);
  if (unavailable) return -70;
  return clamp(gains[index] + contrast * (18 * focusWeight(index * 0.5) - 12), -70, 12);
}

function effectiveWidth(index) {
  var multiplier = [1 - spread * 0.5, 1 + spread * 0.25, 1 + spread][index];
  return clamp(widths[index] * multiplier, 0, 2);
}

function outputUi() {
  setUi(0, gains[selected]);
  setUi(1, drives[selected]);
  setUi(2, widths[selected] * 100);
  setUi(3, mutes[selected]);
  setUi(4, solo === selected ? 1 : 0);
  setUi(17, focus * 100);
  setUi(18, contrast * 100);
  setUi(19, spread * 100);
  setUi(20, lowX);
  setUi(21, highX);
}

function outputState() {
  var effectiveGains = [
    effectiveGain(0),
    effectiveGain(1),
    effectiveGain(2)
  ];
  var effectiveWidths = [
    effectiveWidth(0),
    effectiveWidth(1),
    effectiveWidth(2)
  ];

  outlet(5, effectiveGains[0]);
  outlet(6, effectiveGains[1]);
  outlet(7, effectiveGains[2]);
  outlet(8, drives[0]);
  outlet(9, drives[1]);
  outlet(10, drives[2]);
  outlet(11, effectiveWidths[0]);
  outlet(12, effectiveWidths[1]);
  outlet(13, effectiveWidths[2]);
  outlet(14, [
    lowX,
    highX,
    effectiveGains[0],
    effectiveGains[1],
    effectiveGains[2],
    drives[0],
    drives[1],
    drives[2],
    effectiveWidths[0],
    effectiveWidths[1],
    effectiveWidths[2],
    selected,
    mutes[0],
    mutes[1],
    mutes[2],
    solo,
    focus,
    contrast,
    spread
  ]);
  outlet(15, lowX);
  outlet(16, highX);
}

function update(value) {
  if (inlet === 0) {
    selected = Math.round(clamp(value, 0, 2));
    outputUi();
  } else if (inlet === 1) {
    gains[selected] = clamp(value, -24, 12);
  } else if (inlet === 2) {
    drives[selected] = clamp(value, 0, 18);
  } else if (inlet === 3) {
    widths[selected] = clamp(value / 100, 0, 2);
  } else if (inlet === 4) {
    mutes[selected] = value ? 1 : 0;
    outputUi();
  } else if (inlet === 5) {
    solo = value ? selected : (solo === selected ? -1 : solo);
    outputUi();
  } else if (inlet === 6) {
    focus = clamp(value / 100, 0, 1);
  } else if (inlet === 7) {
    contrast = clamp(value / 100, 0, 1);
  } else if (inlet === 8) {
    spread = clamp(value / 100, 0, 1);
  } else if (inlet === 9) {
    lowX = clamp(value, 80, Math.min(1200, highX - 100));
  } else if (inlet === 10) {
    highX = clamp(value, Math.max(1200, lowX + 100), 12000);
  }
  outputState();
}

function msg_int(value) {
  update(value);
}

function msg_float(value) {
  update(value);
}

function bang() {
  outputUi();
  outputState();
}

function preset(index) {
  var values = presets[Math.round(clamp(index, 0, presets.length - 1))];
  gains = values[0].slice();
  drives = values[1].slice();
  widths = values[2].slice();
  focus = values[3];
  contrast = values[4];
  spread = values[5];
  lowX = values[6];
  highX = values[7];
  mutes = [0, 0, 0];
  solo = -1;
  outputUi();
  outputState();
}

function loadbang() {
  bang();
}
