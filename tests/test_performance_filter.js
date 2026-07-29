const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(
  root,
  "patchers",
  "effects",
  "mt_mod_performance_filter.maxpat"
);
const document = JSON.parse(fs.readFileSync(patchPath, "utf8"));
const boxes = document.patcher.boxes.map((entry) => entry.box);
const coreBox = boxes.find((box) => box.id === "pf-core");

assert.strictEqual(
  boxes.filter((box) => box.maxclass === "inlet").length,
  7,
  "Expected stereo audio plus five external control inlets"
);
assert.strictEqual(
  boxes.filter((box) => box.maxclass === "outlet").length,
  2,
  "Expected stereo audio outlets"
);
assert(coreBox && coreBox.patcher, "Performance filter core is missing");
assert.strictEqual(coreBox.numinlets, 8, "Core inlet declaration is out of sync");

const coreBoxes = coreBox.patcher.boxes.map((entry) => entry.box);
const objectTexts = coreBoxes.map((box) => box.text).filter(Boolean);
assert.strictEqual(
  coreBoxes.filter((box) => box.maxclass === "inlet").length,
  8,
  "Core must receive audio, enable, test, and four performance parameters"
);
assert.strictEqual(
  objectTexts.filter((text) => text.startsWith("svf~")).length,
  2,
  "Stereo filtering requires one svf~ per channel"
);
assert(objectTexts.includes("overdrive~ 1."), "Drive stage is missing");
assert(objectTexts.includes("tanh~"), "Output safety stage is missing");
assert(
  objectTexts.every((text) => !text.startsWith("expr~")),
  "Use Max-native signal objects instead of expr~"
);

const mainPath = path.join(root, "patchers", "mt_portfolio_main.maxpat");
const mainText = fs.readFileSync(mainPath, "utf8");
assert(
  !mainText.includes("mt_mod_performance_filter.maxpat"),
  "First version must remain standalone until listening approval"
);

console.log("PASS: standalone performance filter interface and DSP contract");
