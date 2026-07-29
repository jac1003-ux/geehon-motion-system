autowatch = 1;
inlets = 1;
outlets = 1;

var moduleName = jsarguments[1] || "";
var presets = {
  vocoder: [
    [1, 0.35, 0.08, 0.22, 0.7],
    [1, 0.55, 0.18, 0.65, 0.55],
    [1, 0.2, 0.65, 0.35, 0.8]
  ],
  bitcrusher: [
    [12, 16000, 0.18],
    [8, 8000, 0.35],
    [5, 3500, 0.65]
  ],
  delay: [
    [110, 0.18, 10000, 12],
    [375, 0.45, 4500, 22],
    [680, 0.72, 2200, 48]
  ]
};

function msg_int(index) {
  var modulePresets = presets[moduleName];
  if (modulePresets && modulePresets[index]) outlet(0, modulePresets[index]);
}
