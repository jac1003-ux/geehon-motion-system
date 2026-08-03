const assert = require("assert");
const fs = require("fs");
const path = require("path");

const patchPath = path.resolve(__dirname, "../patchers/mt_record_export_editor.maxpat");
assert(fs.existsSync(patchPath), "standalone record/export editor patch must exist");

const patcher = JSON.parse(fs.readFileSync(patchPath, "utf8")).patcher;
assert.strictEqual(patcher.openinpresentation, 1, "standalone module must open in its test UI");
assert.deepStrictEqual(patcher.openrect, [80, 80, 1000, 588]);
const boxes = patcher.boxes.map((entry) => entry.box);
const byId = new Map(boxes.map((box) => [box.id, box]));
const texts = boxes.map((box) => box.text).filter(Boolean);
const lines = patcher.lines.map((entry) => entry.patchline);
const hasLine = (source, outlet, destination, inlet) =>
  lines.some(
    (line) =>
      line.source[0] === source &&
      line.source[1] === outlet &&
      line.destination[0] === destination &&
      line.destination[1] === inlet
  );

assert.strictEqual(boxes.filter((box) => box.maxclass === "inlet").length, 3);
assert.strictEqual(boxes.filter((box) => box.maxclass === "outlet").length, 6);
const orderedInlets = boxes
  .filter((box) => box.maxclass === "inlet")
  .sort((left, right) => left.patching_rect[0] - right.patching_rect[0]);
const orderedOutlets = boxes
  .filter((box) => box.maxclass === "outlet")
  .sort((left, right) => left.patching_rect[0] - right.patching_rect[0]);
assert.deepStrictEqual(
  orderedInlets.map((box) => [box.index, box.id]),
  [[1, "re-in-l"], [2, "re-in-r"], [3, "re-command-in"]],
  "record editor inlet arrows must remain in external port order"
);
assert.deepStrictEqual(
  orderedOutlets.map((box) => [box.index, box.id]),
  [
    [1, "re-preview-l"],
    [2, "re-preview-r"],
    [3, "re-status-out"],
    [4, "re-elapsed-out"],
    [5, "re-preview-active-out"],
    [6, "re-elapsed-text-out"]
  ],
  "record editor outlet arrows must remain in external port order"
);
assert(texts.includes("route record stop preview reset new export"));
assert(texts.includes("buffer~ #0_master_take 300000 2"));
assert(texts.includes("buffer~ #0_export_take 300000 2"));
assert(texts.includes("record~ #0_master_take 2"));
assert(texts.includes("play~ #0_master_take 2"));
assert(!texts.some((text) => text.startsWith("sfrecord~")), "recording must remain editable in memory");
assert(!texts.some((text) => /(?:ez)?dac~/.test(text)), "module must not own the main audio output");

const waveform = byId.get("re-waveform");
assert.strictEqual(waveform?.maxclass, "waveform~");
assert.strictEqual(waveform?.buffername, "#0_master_take");
assert.strictEqual(waveform?.setmode, 1);
assert.strictEqual(waveform?.outmode ?? 4, 4);
assert.strictEqual(waveform?.setunit ?? 0, 0);
assert.strictEqual(waveform?.snapto, 2);
assert.deepStrictEqual(waveform?.presentation_rect, [42, 122, 876, 158]);

assert.deepStrictEqual(byId.get("re-bg")?.presentation_rect, [0, 0, 960, 528]);
assert.strictEqual(byId.get("re-bg")?.rounded, 14);
assert.deepStrictEqual(byId.get("re-header")?.presentation_rect, [0, 0, 960, 64]);
for (const [id, rect] of [
  ["re-status-pill", [800, 15, 136, 34]],
  ["re-wave-card", [24, 84, 912, 216]],
  ["re-duration-card", [24, 392, 236, 112]],
  ["re-selection-card", [272, 392, 364, 112]],
  ["re-format-card", [648, 392, 288, 112]],
]) {
  const panel = byId.get(id);
  assert.strictEqual(panel?.maxclass, "panel", `${id} must be a native panel`);
  assert.deepStrictEqual(panel?.presentation_rect, rect);
  assert.strictEqual(panel?.presentation, 1);
}
for (const id of [
  "re-brand-ring",
  "re-brand-dot",
  "re-wave-title",
  "re-wave-hint",
  "re-duration-sub",
  "re-selection-sub",
  "re-format-title",
  "re-format-main",
  "re-format-rate",
  "re-format-safety",
]) {
  assert.strictEqual(byId.get(id)?.presentation, 1, `${id} must be visible in the commercial UI`);
}

const statusDisplay = byId.get("re-status-display");
assert.strictEqual(statusDisplay?.maxclass, "comment");
assert.deepStrictEqual(statusDisplay?.presentation_rect, [833, 22, 88, 18]);

const elapsedDisplay = byId.get("re-elapsed-display");
assert.strictEqual(elapsedDisplay?.maxclass, "comment");
assert.strictEqual(elapsedDisplay?.text, "00:00");
assert.deepStrictEqual(elapsedDisplay?.presentation_rect, [42, 431, 190, 40]);
for (const text of [
  "expr int($f1 / 1000.)",
  "t i i",
  "% 60",
  "/ 60",
  "pack i i",
  "sprintf %02ld:%02ld",
]) {
  assert(texts.includes(text), `elapsed formatter is missing ${text}`);
}
assert(hasLine("re-elapsed-out-fan", 1, "re-elapsed-ms-int", 0));
assert(hasLine("re-elapsed-time-set", 0, "re-elapsed-display", 0));
assert(hasLine("re-elapsed-time-format", 0, "re-elapsed-time-fan", 0));
assert(hasLine("re-elapsed-time-fan", 0, "re-elapsed-time-set", 0));
assert(hasLine("re-elapsed-time-fan", 1, "re-elapsed-text-out", 0));
assert(hasLine("re-record-duration-zero", 0, "re-record-duration-zero-fan", 0));
assert(hasLine("re-record-duration-zero-fan", 0, "re-elapsed-ms-int", 0));
assert(hasLine("re-new-duration-zero", 0, "re-new-duration-zero-fan", 0));
assert(hasLine("re-new-duration-zero-fan", 0, "re-elapsed-ms-int", 0));

for (const id of ["re-start-display", "re-end-display"]) {
  const display = byId.get(id);
  assert.strictEqual(display?.triangle, 0);
  assert.strictEqual(display?.cantchange, 1);
  assert.strictEqual(display?.fontsize, 16);
}

const buttonSpec = [
  ["record", "●  RECORD", 24],
  ["stop", "■  STOP", 178],
  ["preview", "▶  PREVIEW", 332],
  ["reset", "↺  RESET RANGE", 486],
  ["new", "+  NEW TAKE", 640],
  ["export", "EXPORT WAV  ↗", 794],
];
for (const [name, label, x] of buttonSpec) {
  const button = byId.get(`re-${name}-button`);
  assert.strictEqual(button?.maxclass, "textbutton");
  assert.strictEqual(button?.text, label);
  assert.strictEqual(button?.texton, label);
  assert.deepStrictEqual(button?.presentation_rect, [x, 328, 142, 40]);
  assert.strictEqual(button?.rounded, 8);
  assert.strictEqual(button?.fontsize, 11);
  assert.strictEqual(button?.fontface, 1);
  assert(Array.isArray(button?.bgoncolor), `${name} button needs press feedback`);
  assert(Array.isArray(button?.textoncolor), `${name} button needs pressed text color`);
}
assert.deepStrictEqual(byId.get("re-record-button")?.bgcolor, [0.42, 0.68, 0.61, 1]);
assert.deepStrictEqual(byId.get("re-export-button")?.bgcolor, [0.95, 0.72, 0.2, 1]);
for (const name of ["stop", "reset", "new", "export"]) {
  assert.deepStrictEqual(
    byId.get(`re-${name}-button`)?.textovercolor,
    [0.12, 0.25, 0.21, 1],
    `${name} hover text must retain contrast`
  );
}
for (const id of ["re-capture-group", "re-edit-group", "re-deliver-group"]) {
  assert.strictEqual(byId.get(id)?.presentation, 1, `${id} must label the button groups`);
}

assert(hasLine("re-in-l", 0, "re-record", 0));
assert(hasLine("re-in-r", 0, "re-record", 1));
assert(hasLine("re-play", 0, "re-preview-l", 0));
assert(hasLine("re-play", 1, "re-preview-r", 0));
assert.strictEqual(byId.get("re-preview-active-out")?.comment, "preview active 0 or 1");
assert.strictEqual(byId.get("re-elapsed-text-out")?.comment, "formatted elapsed time");
assert(hasLine("re-preview-state-command-receive", 0, "re-preview-state-route", 0));
assert(hasLine("re-preview-state-route", 0, "re-preview-state-on", 0));
assert(hasLine("re-preview-state-route", 1, "re-preview-state-off", 0));
assert(hasLine("re-preview-state-receive", 0, "re-preview-active-out", 0));
assert(hasLine("re-preview-delay", 0, "re-preview-done-fan", 0));
assert(hasLine("re-preview-done-fan", 0, "re-preview-state-off", 0));
assert(hasLine("re-preview-done-fan", 1, "re-preview-ready", 0));

assert.strictEqual(byId.get("re-export-duplicate")?.text, "duplicate #0_master_take");
assert.strictEqual(byId.get("re-export-crop")?.text, "crop $1 $2");
assert.strictEqual(byId.get("re-export-write")?.text, "write");
assert.strictEqual(byId.get("re-export-format")?.text, "loadmess samptype int24");
for (const id of ["re-export-duplicate", "re-export-crop", "re-export-write", "re-export-format"]) {
  assert(hasLine(id, 0, "re-export-buffer", 0), `${id} must target only the export buffer`);
}
assert(
  !lines.some(
    (line) =>
      ["re-export-crop", "re-export-write"].includes(line.source[0]) &&
      line.destination[0] === "re-source-buffer"
  ),
  "export must not crop or write the source recording buffer"
);

assert(hasLine("re-waveform", 2, "re-selection-start-fan", 0));
assert(hasLine("re-waveform", 3, "re-selection-end-fan", 0));
assert(hasLine("re-record-sync", 0, "re-sync-snapshot", 0));
assert(hasLine("re-elapsed-out-fan", 2, "re-duration-store", 1));

const controlFanout = new Map();
for (const line of lines) {
  const source = byId.get(line.source[0]);
  if (source?.maxclass === "newobj" && !String(source.text || "").includes("~")) {
    const key = `${line.source[0]}:${line.source[1]}`;
    controlFanout.set(key, (controlFanout.get(key) || 0) + 1);
  }
}
assert.deepStrictEqual(
  [...controlFanout.entries()].filter(([, count]) => count > 1),
  [],
  "control-rate fan-out must be explicit through trigger objects"
);

console.log("Record/export editor contract: PASS");
