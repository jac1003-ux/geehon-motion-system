const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const read = (file) => JSON.parse(fs.readFileSync(path.join(root, file), "utf8")).patcher;

function boxMap(patcher) {
  return new Map(patcher.boxes.map(({ box }) => [box.id, box]));
}

function assertNoObjectOverlap(patcher, label) {
  const boxes = patcher.boxes.map(({ box }) => box).filter((box) => box.patching_rect);
  for (let left = 0; left < boxes.length; left += 1) {
    for (let right = left + 1; right < boxes.length; right += 1) {
      const a = boxes[left].patching_rect;
      const b = boxes[right].patching_rect;
      const overlapX = Math.min(a[0] + a[2], b[0] + b[2]) - Math.max(a[0], b[0]);
      const overlapY = Math.min(a[1] + a[3], b[1] + b[3]) - Math.max(a[1], b[1]);
      assert(
        overlapX <= 0 || overlapY <= 0,
        `${label}: ${boxes[left].id} overlaps ${boxes[right].id}`
      );
    }
  }
}

for (const [file, coreId, expectedIds] of [
  ["patchers/effects/mt_mod_bitcrusher.maxpat", "bc-core", ["bci-l", "bci-r", "bci-enable", "bci-bits", "bci-rate", "bci-drive"]],
  ["patchers/effects/mt_mod_feedback_delay.maxpat", "fd-core", ["fdi-l", "fdi-r", "fdi-enable", "fdi-time", "fdi-feedback", "fdi-damping", "fdi-stereo"]],
  ["patchers/effects/mt_mod_vocoder.maxpat", "p-Vocoder-core", ["vc-in-l", "vc-in-r", "vc-enable", "vc-wet", "vc-tone", "vc-noise", "vc-smooth", "vc-bright"]],
  ["patchers/effects/mt_mod_multiband_filter_v2.maxpat", "mb2-core", ["mb2c-l", "mb2c-r", "mb2c-enable", "mb2c-low-x", "mb2c-high-x", "mb2c-low-gain", "mb2c-mid-gain", "mb2c-high-gain", "mb2c-low-drive", "mb2c-mid-drive", "mb2c-high-drive", "mb2c-low-width", "mb2c-mid-width", "mb2c-high-width"]]
]) {
  const patcher = read(file);
  const core = boxMap(patcher).get(coreId);
  const inlets = core.patcher.boxes
    .map(({ box }) => box)
    .filter((box) => box.maxclass === "inlet")
    .sort((left, right) => left.index - right.index);
  assert.strictEqual(core.numinlets, expectedIds.length, `${coreId} inlet count`);
  assert.deepStrictEqual(inlets.map((box) => box.id), expectedIds, `${coreId} inlet order`);
}

const record = read("patchers/mt_record_export_editor.maxpat");
const orderedRecordInlets = record.boxes
  .map(({ box }) => box)
  .filter((box) => box.maxclass === "inlet")
  .sort((left, right) => left.patching_rect[0] - right.patching_rect[0]);
const orderedRecordOutlets = record.boxes
  .map(({ box }) => box)
  .filter((box) => box.maxclass === "outlet")
  .sort((left, right) => left.patching_rect[0] - right.patching_rect[0]);
assert.deepStrictEqual(orderedRecordInlets.map((box) => box.id), ["re-in-l", "re-in-r", "re-command-in"]);
assert.deepStrictEqual(orderedRecordInlets.map((box) => box.index), [1, 2, 3]);
assert.deepStrictEqual(orderedRecordOutlets.map((box) => box.id), ["re-preview-l", "re-preview-r", "re-status-out", "re-elapsed-out", "re-preview-active-out", "re-elapsed-text-out"]);
assert.deepStrictEqual(orderedRecordOutlets.map((box) => box.index), [1, 2, 3, 4, 5, 6]);
assertNoObjectOverlap(record, "Record Editor");

const granular = read("patchers/inputs/mt_input_granular_ui.maxpat");
const granularInput = boxMap(granular).get("p-Granular-input").patcher;
const granularInletX = granularInput.boxes
  .map(({ box }) => box)
  .filter((box) => box.maxclass === "inlet")
  .sort((left, right) => left.index - right.index)
  .map((box) => box.patching_rect[0]);
assert(
  granularInletX.every((x, index) => index === 0 || x > granularInletX[index - 1]),
  "Granular Input inlet arrows must progress left-to-right by index"
);

console.log("Patch interface cleanup contract: PASS");
