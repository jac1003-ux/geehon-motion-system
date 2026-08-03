const assert = require("assert");
const fs = require("fs");
const path = require("path");

const patchPath = path.resolve(__dirname, "../patchers/dsp/mt_serial_bypass.maxpat");
const patcher = JSON.parse(fs.readFileSync(patchPath, "utf8")).patcher;
const boxes = patcher.boxes.map((entry) => entry.box);
const texts = boxes.map((box) => box.text).filter(Boolean);

assert.strictEqual(boxes.filter((box) => box.maxclass === "inlet").length, 5);
assert.strictEqual(boxes.filter((box) => box.maxclass === "outlet").length, 2);
assert(texts.includes("clip 0. 1."), "enable must be bounded");
assert(texts.includes("$1 20"), "bypass transitions must ramp for 20 ms");
assert(texts.includes("line~"), "bypass control must be signal-rate smoothed");
assert(texts.includes("!-~ 1."), "dry gain must be the inverse of wet gain");
assert.strictEqual(texts.filter((text) => text === "*~").length, 2);
assert.strictEqual(texts.filter((text) => text === "+~").length, 2);

console.log("Serial bypass contract: PASS");
