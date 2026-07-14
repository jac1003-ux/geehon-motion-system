const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");

function exists(relativePath) {
  return fs.existsSync(path.join(root, relativePath));
}

function rootFiles(extension) {
  return fs
    .readdirSync(root, { withFileTypes: true })
    .filter((entry) => entry.isFile() && entry.name.endsWith(extension))
    .map((entry) => entry.name)
    .sort();
}

const requiredPaths = [
  "geehon-motion-system.maxproj",
  "README.md",
  "README_ZH.md",
  "CHANGELOG.md",
  "docs/architecture.md",
  "docs/dependencies.md",
  "patchers/mt_portfolio_main.maxpat",
  "patchers/inputs/mt_input_mic_ui.maxpat",
  "patchers/inputs/mt_input_file_ui.maxpat",
  "patchers/inputs/mt_input_granular_ui.maxpat",
  "patchers/mixers/mt_input_mixer_ui.maxpat",
  "patchers/mixers/mt_fx_return_mixer.maxpat",
  "patchers/effects/mt_mod_vocoder.maxpat",
  "patchers/effects/mt_mod_vocal_chop.maxpat",
  "patchers/effects/mt_mod_tremolo.maxpat",
  "patchers/control/mt_control_hand_jweb.maxpat",
  "patchers/dsp/mt_granular_synth.maxpat",
  "patchers/dsp/mt_grain_voice.maxpat",
  "patchers/dsp/mt_vocoder_pfft.maxpat",
  "web/hand-landmarker/jweb-hands-landmarker.html",
  "assets/ui/mic_panel_v1.png",
];

const missing = requiredPaths.filter((relativePath) => !exists(relativePath));
assert.deepStrictEqual(missing, [], `Missing Stage Two paths:\n${missing.join("\n")}`);

assert.deepStrictEqual(
  rootFiles(".maxpat"),
  [],
  "Runtime or legacy .maxpat files remain at repository root"
);

assert.deepStrictEqual(
  rootFiles(".png"),
  [],
  "Duplicate UI PNG files remain at repository root"
);

assert.strictEqual(
  exists("SUBMISSION_README_ZH.md") || exists("交作业说明.md"),
  false,
  "Legacy submission notes should live under archive/submissions"
);

console.log("PASS: repository structure matches the Stage Two contract");
