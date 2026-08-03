const assert = require("assert");
const fs = require("fs");
const path = require("path");

const patchPath = path.resolve(__dirname, "../patchers/mixers/mt_fx_output_trim_panel.maxpat");
assert(fs.existsSync(patchPath), "FX Output Mixer patch has not been generated");
const project = JSON.parse(fs.readFileSync(path.resolve(__dirname, "../geehon-motion-system.maxproj"), "utf8"));
assert(project.contents.patchers["mt_fx_output_trim_panel.maxpat"], "Max Project must include the standalone mixer");

const patcher = JSON.parse(fs.readFileSync(patchPath, "utf8")).patcher;
const boxes = new Map(patcher.boxes.map(({ box }) => [box.id, box]));
const hasLine = (source, outlet, destination, inlet) => patcher.lines.some(({ patchline }) =>
  patchline.source[0] === source && patchline.source[1] === outlet
  && patchline.destination[0] === destination && patchline.destination[1] === inlet
);

assert.strictEqual(patcher.openinpresentation, 1);
assert.deepStrictEqual(patcher.rect.slice(2), [560, 450]);

const background = boxes.get("fxm-bg");
assert.strictEqual(background?.maxclass, "fpic", "FX mixer follows the proven Source Mixer background structure");
assert.strictEqual(background?.pic, "fx_output_mixer_panel_v1.png");
assert.strictEqual(background?.ignoreclick, 1, "the single background must pass locked-patcher drags through");
assert.strictEqual(
  patcher.boxes.filter(({ box }) => box.maxclass === "panel").length,
  0,
  "FX mixer has no presentation panels that can intercept fader drags"
);
assert(
  patcher.dependency_cache.some((entry) => entry.name === "fx_output_mixer_panel_v1.png"),
  "FX mixer declares its baked background asset"
);

const inlets = patcher.boxes.map(({ box }) => box).filter((box) => box.maxclass === "inlet");
const outlets = patcher.boxes.map(({ box }) => box).filter((box) => box.maxclass === "outlet");
assert.deepStrictEqual(inlets.map((box) => box.comment), [
  "Vocoder Output Gain feedback dB",
  "Bitcrusher Output Gain feedback dB",
  "Multiband Output Gain feedback dB",
  "Feedback Delay Output Gain feedback dB",
  "Current target index 0-3",
  "Vocoder stage monitor L",
  "Vocoder stage monitor R",
  "Bitcrusher stage monitor L",
  "Bitcrusher stage monitor R",
  "Multiband stage monitor L",
  "Multiband stage monitor R",
  "Feedback Delay stage monitor L",
  "Feedback Delay stage monitor R",
]);
assert(
  inlets.every((box, index) => index === 0 || box.patching_rect[0] > inlets[index - 1].patching_rect[0]),
  "bpatcher inlet objects must be laid out left-to-right in declared interface order"
);
assert.deepStrictEqual(outlets.map((box) => box.comment), [
  "Vocoder Output Gain control dB",
  "Bitcrusher Output Gain control dB",
  "Multiband Output Gain control dB",
  "Feedback Delay Output Gain control dB",
]);

const keys = ["vocoder", "bitcrusher", "multiband", "delay"];
for (const key of keys) {
  const gain = boxes.get(`fxm-${key}-gain`);
  assert.strictEqual(gain?.maxclass, "live.gain~", `${key} must reuse the draggable mixer fader`);
  assert.strictEqual(gain.parameter_enable, 1, `${key} fader owns its UI value like Source Mixer`);
  assert.deepStrictEqual(gain.saved_attribute_attributes.valueof.parameter_initial, [0]);
  assert.strictEqual(gain.saved_attribute_attributes.valueof.parameter_mmin, -70);
  assert.strictEqual(gain.saved_attribute_attributes.valueof.parameter_mmax, 6);
  assert.strictEqual(gain.metering, 0, `${key} uses the live.gain~ built-in pre-fader meter`);
  assert(gain.presentation_rect[3] >= 190, `${key} fader needs a generous vertical drag area`);

  assert.strictEqual(boxes.get(`fxm-${key}-readout`)?.maxclass, "live.numbox");
  assert.strictEqual(boxes.get(`fxm-${key}-current`)?.maxclass, "textbutton");
  assert.strictEqual(boxes.get(`fxm-${key}-current`)?.ignoreclick, 1);

  assert(!boxes.has(`fxm-${key}-meter`), `${key} must not add a duplicate meter~`);
  assert(!boxes.has(`fxm-${key}-monitor-pack`), `${key} must not add an unnecessary mc.pack~`);
  assert(hasLine(`fxm-${key}-monitor-l`, 0, `fxm-${key}-gain`, 0));
  assert(hasLine(`fxm-${key}-monitor-r`, 0, `fxm-${key}-gain`, 1));
  assert(
    !patcher.lines.some(({ patchline }) =>
      patchline.source[0] === `fxm-${key}-gain` && [0, 1].includes(patchline.source[1])
    ),
    `${key} monitor audio must not return to the main chain`
  );

  assert(hasLine(`fxm-${key}-in`, 0, `fxm-${key}-feedback`, 0));
  assert(hasLine(`fxm-${key}-feedback`, 1, `fxm-${key}-feedback-set`, 0));
  assert(hasLine(`fxm-${key}-feedback-set`, 0, `fxm-${key}-gain`, 0));
  assert(hasLine(`fxm-${key}-feedback`, 0, `fxm-${key}-readout-set`, 0));
  assert(hasLine(`fxm-${key}-gain`, 2, `fxm-${key}-write`, 0));
  assert(hasLine(`fxm-${key}-write`, 1, `fxm-${key}-out`, 0));
  assert(hasLine(`fxm-${key}-write`, 0, `fxm-${key}-readout-set`, 0));
}

assert.strictEqual(
  patcher.boxes.filter(({ box }) => ["+~", "*~", "selector~", "matrix~"].some((name) => box.text?.startsWith(name))).length,
  0,
  "control panel must not add an audio mixing or gain stage"
);

console.log("FX Output Mixer static contract: PASS");
