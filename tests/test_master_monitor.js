const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const patchPath = path.join(root, "patchers", "mixers", "mt_master_monitor.maxpat");

assert(fs.existsSync(patchPath), "Master Monitor patch is missing");

const patcher = JSON.parse(fs.readFileSync(patchPath, "utf8")).patcher;
const boxes = new Map((patcher.boxes || []).map(({ box }) => [box.id, box]));
const lines = patcher.lines || [];
const hasLine = (source, outlet, destination, inlet) => lines.some(({ patchline }) =>
  patchline.source[0] === source
  && patchline.source[1] === outlet
  && patchline.destination[0] === destination
  && patchline.destination[1] === inlet
);

assert.deepStrictEqual(patcher.rect.slice(2), [574, 578], "Master Monitor editor size");
assert.strictEqual([...boxes.values()].filter((box) => box.maxclass === "inlet").length, 2, "stereo input count");
assert.strictEqual([...boxes.values()].filter((box) => box.maxclass === "outlet").length, 2, "stereo output count");
assert(![...boxes.values()].some((box) => box.maxclass === "ezdac~"), "shared Main DSP control stays outside the module");

const gain = boxes.get("mm-gain");
assert.strictEqual(gain?.maxclass, "live.gain~", "Monitor Level uses native live.gain~");
assert.strictEqual(gain?.channels, 2, "Monitor Level is stereo");
assert.strictEqual(gain?.varname, "master_monitor_gain", "Monitor Level scripting name");
assert.deepStrictEqual(gain?.presentation_rect, [42, 134, 62, 318], "Monitor Level placement");

assert.strictEqual(boxes.get("mm-mute")?.maxclass, "textbutton", "Mute uses a clear button");
assert.strictEqual(boxes.get("mm-mute-invert")?.text, "== 0", "unmuted state opens the monitor");
assert.strictEqual(boxes.get("mm-mute-ramp")?.maxclass, "newobj", "line~ uses Max's newobj representation");
assert.strictEqual(boxes.get("mm-mute-ramp")?.text, "line~", "mute is signal-smoothed");
assert.strictEqual(boxes.get("mm-mute-message")?.text, "$1 20", "mute ramp is click-safe");
assert.strictEqual(boxes.get("mm-peak-max")?.text, "maximum", "peak display uses a valid maximum object");

for (const [channel, inlet, gainOutlet] of [["l", "mm-in-l", 0], ["r", "mm-in-r", 1]]) {
  assert(hasLine(inlet, 0, "mm-gain", gainOutlet), `${channel.toUpperCase()} input reaches Monitor Level`);
  assert(hasLine("mm-gain", gainOutlet, `mm-mute-${channel}`, 0), `${channel.toUpperCase()} gain reaches mute stage`);
  assert(hasLine("mm-mute-ramp", 0, `mm-mute-${channel}`, 1), `${channel.toUpperCase()} mute stage uses smoothed control`);
  assert(hasLine(`mm-mute-${channel}`, 0, `mm-out-${channel}`, 0), `${channel.toUpperCase()} monitor output route`);
  assert(hasLine(`mm-mute-${channel}`, 0, `mm-meter-${channel}`, 0), `${channel.toUpperCase()} visible output meter route`);
  assert(hasLine(`mm-mute-${channel}`, 0, `mm-peak-${channel}`, 0), `${channel.toUpperCase()} peak monitor route`);
}

const background = boxes.get("mm-bg");
assert.strictEqual(background?.maxclass, "fpic", "Master Monitor background");
assert.strictEqual(background?.ignoreclick, 1, "background cannot block controls");
assert.strictEqual(background?.pic, "master_monitor_panel_v1.png", "portable Master Monitor asset");
assert.deepStrictEqual(background?.presentation_rect, [0, 0, 574, 578], "background fills module");
assert(fs.existsSync(path.join(root, "assets", "ui", "master_monitor_panel_v1.svg")), "editable Master Monitor SVG");
assert(fs.existsSync(path.join(root, "assets", "ui", "master_monitor_panel_v1.png")), "rendered Master Monitor PNG");

console.log("PASS: Master Monitor stereo gain, mute, meters, and peak routing");
