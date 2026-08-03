const assert = require("assert");
const fs = require("fs");
const path = require("path");

const patchPath = path.resolve(
  __dirname,
  "../patchers/control/mt_control_hand_jweb.maxpat"
);
const root = JSON.parse(fs.readFileSync(patchPath, "utf8")).patcher;
const rootBoxes = new Map(root.boxes.map((entry) => [entry.box.id, entry.box]));
const handControlBox = root.boxes
  .map((entry) => entry.box)
  .find((box) => box.id === "th-hand-control");

assert(handControlBox && handControlBox.patcher, "Missing p Hand_control core");

const outletOrder = handControlBox.patcher.boxes
  .map((entry) => entry.box)
  .filter((box) => box.maxclass === "outlet")
  .sort((a, b) => a.patching_rect[0] - b.patching_rect[0])
  .map((box) => box.id);

assert.deepStrictEqual(outletOrder, [
  "hp-hand-control-core-out-camera-append",
  "hp-hand-control-core-out-hand-x",
  "hp-hand-control-core-out-hand-y",
  "hp-hand-control-core-out-pinch",
  "hp-hand-control-core-out-palm",
  "hp-hand-control-core-out-tracking",
]);

assert.deepStrictEqual(root.rect.slice(2), [798, 486], "camera-first hand UI footprint");
assert.deepStrictEqual(
  rootBoxes.get("hp-jweb").presentation_rect,
  [12, 50, 774, 424],
  "camera must dominate the performance view"
);
for (const id of [
  "hp-jweb-reload", "hp-jweb-devices", "hp-camera-menu",
  "hp-camera-set", "hj-mirror-toggle",
]) {
  assert.strictEqual(rootBoxes.get(id)?.presentation, 1, `${id} remains available above the camera`);
}
for (const id of [
  "hp-hand-x-num", "hp-hand-y-num", "hp-pinch-num", "hp-palm-num",
  "hp-slot1-mapped-num", "hp-slot2-mapped-num",
  "hp-slot3-mapped-num", "hp-slot4-mapped-num",
]) {
  assert.strictEqual(rootBoxes.get(id)?.presentation, 0, `${id} debug readout stays off the performance camera`);
}

console.log("Hand control outlet interface: PASS");
