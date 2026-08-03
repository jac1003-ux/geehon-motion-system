const assert = require("assert");
const crypto = require("crypto");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const activeFiles = [
  ["patchers/control/mt_control_hand_jweb.maxpat", "e82c5132c8a778c3d7377c3dffd59f3e1873f40191b2e076847d968a05164937"],
  ["patchers/dsp/mt_grain_voice.maxpat", "a11f0fb966ec7f8204a2470af2f558859e1caa5475e63c2baff8d0d6d2896a87"],
  ["patchers/dsp/mt_granular_synth.maxpat", "13caf292539fc76eb51aa8062d2faf926c0baefe7b2b863a4dd0f65cc3a9bbdc"],
  ["patchers/dsp/mt_vocoder_pfft.maxpat", "299f3908d5afd05dcfdea76cdc0b39ae08645316c06d57cdf10a139deb3e6be0"],
  ["patchers/dsp/mt_serial_bypass.maxpat", "279f8d9e6a7cd26c10390a518678df158e2e16a672236fb1ca94463a3b8c3579"],
  ["patchers/effects/mt_mod_bitcrusher.maxpat", "a50d30693416ea6db833de90d4fb66e1e90269e4ee514866bcd6b8acc4ecc254"],
  ["patchers/effects/mt_mod_feedback_delay.maxpat", "d9fe619cc8b0bc29d312f5c64bb5ed809512b11479fd08e425b6c7f20c580b85"],
  ["patchers/effects/mt_mod_multiband_filter_v2.maxpat", "1e652ba9e0eca7c38ee8c5a5ea7bb412284df1c7d8d948d105415d1f78ffea5f"],
  ["patchers/effects/mt_mod_vocoder.maxpat", "27f4fa009907d1a39b16a2abe95dbafbc1c9091548261b9a130211a2a5f4d5f3"],
  ["patchers/inputs/mt_input_file_ui.maxpat", "7747892f740e1ecd48f235aa8cfb340c72b8841cc7cf753b3dacdd0501f1f006"],
  ["patchers/inputs/mt_input_granular_ui.maxpat", "026854280a5a3c82d641712f01c017ce794ce91ef9b126a7287ef1eaae68cc9b"],
  ["patchers/inputs/mt_input_mic_ui.maxpat", "55941b62ff14d4d8406406b5a0e6a937e616718b896f59404c6ce5644c7f1a3f"],
  ["patchers/mixers/mt_input_mixer_ui.maxpat", "9d55b35360376725f07a6ad8eec95d1f0d2b55953cdb317770740aeb8610005f"],
  ["patchers/mixers/mt_fx_output_trim_panel.maxpat", "2fe1e8e2ce659c285bc75bc73317187b9638eb1ce20628d772a517c107082f81"],
  ["patchers/mixers/mt_master_monitor.maxpat", "5a8c2442be6b33a55bf6a064d77caacb9bdd52b4c8b6348e30872f08349fb7d4"],
  ["patchers/mt_record_export_editor.maxpat", "8eb28c07d8f3ea817cdb39a6c797cb22da32670d7701ff23630791076c0e80f0"],
];

function removeLayout(patcher) {
  for (const { box } of patcher.boxes || []) {
    delete box.patching_rect;
    if (box.patcher) removeLayout(box.patcher);
  }
  for (const { patchline } of patcher.lines || []) delete patchline.midpoints;
}

function portX(box, port, count) {
  const [x, , width] = box.patching_rect;
  if (box.maxclass === "inlet" || box.maxclass === "outlet") return x + width / 2;
  const ports = Number.isFinite(count) && count > 0 ? count : 1;
  return ports <= 1 ? x + 9.5 : x + 9.5 + (port * (width - 19)) / (ports - 1);
}

function assertLayout(patcher, label) {
  const boxes = (patcher.boxes || []).map(({ box }) => box).filter((box) => box.patching_rect);
  const byId = new Map(boxes.map((box) => [box.id, box]));
  for (let left = 0; left < boxes.length; left += 1) {
    const a = boxes[left].patching_rect;
    for (let right = left + 1; right < boxes.length; right += 1) {
      const b = boxes[right].patching_rect;
      const overlapX = Math.min(a[0] + a[2], b[0] + b[2]) - Math.max(a[0], b[0]);
      const overlapY = Math.min(a[1] + a[3], b[1] + b[3]) - Math.max(a[1], b[1]);
      assert(overlapX <= 0 || overlapY <= 0, `${label}: ${boxes[left].id} overlaps ${boxes[right].id}`);
    }
  }

  const protectedMic = /mt_input_mic_ui\.maxpat\/p-Mic-/.test(label);
  if (!protectedMic) {
    for (const { patchline } of patcher.lines || []) {
      const source = byId.get(patchline.source[0]);
      const destination = byId.get(patchline.destination[0]);
      const points = [[portX(source, patchline.source[1], source.numoutlets), source.patching_rect[1] + source.patching_rect[3]]];
      for (let index = 0; index < (patchline.midpoints || []).length; index += 2) {
        points.push([patchline.midpoints[index], patchline.midpoints[index + 1]]);
      }
      points.push([portX(destination, patchline.destination[1], destination.numinlets), destination.patching_rect[1]]);
      for (let index = 1; index < points.length; index += 1) {
        assert(
          Math.abs(points[index - 1][0] - points[index][0]) <= 6 || Math.abs(points[index - 1][1] - points[index][1]) < 0.01,
          `${label}: ${patchline.source[0]} -> ${patchline.destination[0]} is diagonal`
        );
      }
    }
  }
  for (const box of boxes) if (box.patcher) assertLayout(box.patcher, `${label}/${box.id}`);
}

for (const [file, expectedDigest] of activeFiles) {
  const document = JSON.parse(fs.readFileSync(path.join(root, file), "utf8"));
  const structuralCopy = JSON.parse(JSON.stringify(document));
  removeLayout(structuralCopy.patcher);
  const digest = crypto.createHash("sha256").update(JSON.stringify(structuralCopy)).digest("hex");
  assert.strictEqual(digest, expectedDigest, `${file}: cleanup may only change layout`);
  assertLayout(document.patcher, file);
}

console.log("Active subpatch layout contract: PASS");
