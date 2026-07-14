const assert = require("assert");
const fs = require("fs");
const path = require("path");

const patchPath = path.resolve(
  __dirname,
  "../patchers/control/mt_control_hand_jweb.maxpat"
);
const root = JSON.parse(fs.readFileSync(patchPath, "utf8")).patcher;
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
]);

console.log("Hand control outlet interface: PASS");
