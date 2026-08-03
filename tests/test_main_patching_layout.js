const assert = require("assert");
const crypto = require("crypto");
const fs = require("fs");
const path = require("path");

const file = path.resolve(__dirname, "../patchers/mt_portfolio_main.maxpat");
const document = JSON.parse(fs.readFileSync(file, "utf8"));
const patcher = document.patcher;

assert.strictEqual(patcher.boxes.length, 138, "Main root object count changed");
assert.strictEqual(patcher.lines.length, 203, "Main root patchline count changed");

const structuralCopy = JSON.parse(JSON.stringify(document));
function removeLayout(patcherToClean) {
  for (const { box } of patcherToClean.boxes || []) {
    delete box.patching_rect;
    if (box.patcher) removeLayout(box.patcher);
  }
  for (const { patchline } of patcherToClean.lines || []) delete patchline.midpoints;
}
removeLayout(structuralCopy.patcher);
const structuralDigest = crypto
  .createHash("sha256")
  .update(JSON.stringify(structuralCopy))
  .digest("hex");
assert.strictEqual(
  structuralDigest,
  "7a60b83c053a9911f3d600ae8b4be702eabc226ab504b3ba92438dffd4faef9a",
  "Main cleanup may only change patching_rect and patchline midpoints"
);

function portX(box, port, count) {
  const [x, , width] = box.patching_rect;
  if (box.maxclass === "inlet" || box.maxclass === "outlet") return x + width / 2;
  const portCount = Number.isFinite(count) && count > 0 ? count : 1;
  if (portCount <= 1) return x + 9.5;
  return x + 9.5 + (port * (width - 19)) / (portCount - 1);
}

const close = (a, b) => Math.abs(a - b) < 0.01;
function assertLayout(patcherToCheck, label) {
  const boxes = (patcherToCheck.boxes || []).map(({ box }) => box);
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
  for (const { patchline } of patcherToCheck.lines || []) {
    const source = byId.get(patchline.source[0]);
    const destination = byId.get(patchline.destination[0]);
    const points = [
      [portX(source, patchline.source[1], source.numoutlets), source.patching_rect[1] + source.patching_rect[3]],
    ];
    const midpoints = patchline.midpoints || [];
    for (let index = 0; index < midpoints.length; index += 2) {
      points.push([midpoints[index], midpoints[index + 1]]);
    }
    points.push([
      portX(destination, patchline.destination[1], destination.numinlets),
      destination.patching_rect[1],
    ]);
    for (let index = 1; index < points.length; index += 1) {
      assert(
        close(points[index - 1][0], points[index][0]) || close(points[index - 1][1], points[index][1]),
        `${label}: ${patchline.source[0]} -> ${patchline.destination[0]} is not orthogonal`
      );
    }
  }
  for (const box of boxes) {
    if (box.patcher) assertLayout(box.patcher, `${label}/${box.id}`);
  }
}
assertLayout(patcher, "Main");

console.log("Main patching layout contract: PASS");
