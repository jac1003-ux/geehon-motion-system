const assert = require("assert");
const fs = require("fs");
const path = require("path");
const zlib = require("zlib");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(root, "mt_ui_knob_preview.maxpat");
const localPng = path.join(root, "granular_knob_v1.png");
const assetPng = path.join(root, "assets", "ui", "granular_knob_v1.png");
const localGainPng = path.join(root, "granular_knob_gain_v1.png");
const assetGainPng = path.join(root, "assets", "ui", "granular_knob_gain_v1.png");

function pngInfo(filePath) {
  const data = fs.readFileSync(filePath);
  assert.strictEqual(data.toString("ascii", 1, 4), "PNG");
  return {
    width: data.readUInt32BE(16),
    height: data.readUInt32BE(20),
    colorType: data[25],
  };
}

function alphaAt(filePath, x, y) {
  const data = fs.readFileSync(filePath);
  const width = data.readUInt32BE(16);
  const idat = [];
  for (let offset = 8; offset < data.length;) {
    const length = data.readUInt32BE(offset);
    const type = data.toString("ascii", offset + 4, offset + 8);
    if (type === "IDAT") idat.push(data.subarray(offset + 8, offset + 8 + length));
    offset += 12 + length;
  }
  const raw = zlib.inflateSync(Buffer.concat(idat));
  const rowSize = width * 4 + 1;
  assert.strictEqual(raw[y * rowSize], 0, "sprite must use deterministic unfiltered rows");
  return raw[y * rowSize + 1 + x * 4 + 3];
}

assert(fs.existsSync(patchPath), "knob preview patch is missing");
assert(fs.existsSync(localPng), "local knob sprite is missing");
assert(fs.existsSync(assetPng), "canonical knob sprite is missing");
assert.deepStrictEqual(pngInfo(localPng), { width: 2816, height: 44, colorType: 6 });
assert.deepStrictEqual(pngInfo(assetPng), { width: 2816, height: 44, colorType: 6 });
assert.deepStrictEqual(pngInfo(localGainPng), { width: 2816, height: 44, colorType: 6 });
assert.deepStrictEqual(pngInfo(assetGainPng), { width: 2816, height: 44, colorType: 6 });
assert.strictEqual(alphaAt(localPng, 0, 0), 0, "sprite corners must be transparent");
assert.strictEqual(alphaAt(localPng, 22, 22), 255, "knob center must be opaque");

const p = JSON.parse(fs.readFileSync(patchPath, "utf8")).patcher;
const boxes = new Map(p.boxes.map((entry) => [entry.box.id, entry.box]));
const knob = boxes.get("kp-knob");
assert.strictEqual(boxes.get("kp-panel").background, 1);
assert.strictEqual(boxes.get("kp-panel").ignoreclick, 1);
assert(knob && knob.maxclass === "pictctrl");
assert.strictEqual(knob.name, "granular_knob_v1.png");
assert.strictEqual(knob.mode, 2);
assert.strictEqual(knob.frames, 64);
assert.strictEqual(knob.range, 255);
assert.strictEqual(knob.varname, "granular_knob_preview");
assert.strictEqual(boxes.get("p-Knob-map").text, "p Knob_map");
assert((p.dependency_cache || []).some((item) => item.name === "granular_knob_v1.png"));
assert(!fs.readFileSync(patchPath, "utf8").includes("/Users/"));
assert(!fs.readFileSync(patchPath, "utf8").includes("loadmess"));
assert(p.lines.some((entry) =>
  entry.patchline.source[0] === "kp-value"
  && entry.patchline.destination[0] === "p-Knob-map"
  && entry.patchline.destination[1] === 0
), "number box must update the picture knob through the silent set path");

console.log("Knob preview static contract: PASS");
