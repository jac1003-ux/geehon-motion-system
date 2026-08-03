const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");

function readEffect(name) {
  const file = path.join(root, "patchers", "effects", name);
  const document = JSON.parse(fs.readFileSync(file, "utf8"));
  return document.patcher;
}

function recursiveBoxes(patcher) {
  return patcher.boxes.flatMap(({ box }) => [
    box,
    ...(box.patcher ? recursiveBoxes(box.patcher) : [])
  ]);
}

function hasLine(patcher, source, outlet, destination, inlet) {
  return patcher.lines.some(({ patchline }) =>
    patchline.source[0] === source && patchline.source[1] === outlet
      && patchline.destination[0] === destination && patchline.destination[1] === inlet
  );
}

function assertProductionOnly(patcher, name) {
  const boxes = recursiveBoxes(patcher);
  assert(
    !boxes.some((box) => box.maxclass === "ezdac~"),
    `${name} must not contain a standalone ezdac~`
  );
  assert(
    !boxes.some((box) => /test input/i.test(box.text || "")),
    `${name} must not expose a standalone Test Input`
  );
}

function assertExternalEnableIsEchoSuppressed(patcher, prefix, name) {
  const lines = patcher.lines.map(({ patchline }) => patchline);
  assert(
    !lines.some(
      (line) =>
        line.source[0] === `${prefix}-in-enable` &&
        line.destination[0] === `${prefix}-enable`
    ),
    `${name} external enable must not retrigger its shared state send`
  );
}

function assertCompactedCoreInterface(patcher, core, name, inletIds, routes) {
  const inlets = core.patcher.boxes
    .map((entry) => entry.box)
    .filter((box) => box.maxclass === "inlet")
    .sort((left, right) => left.index - right.index);
  assert.strictEqual(core.numinlets, inletIds.length, `${name} core inlet count`);
  assert.deepStrictEqual(
    inlets.map((box) => box.index),
    Array.from({ length: inletIds.length }, (_, index) => index + 1),
    `${name} core inlet indexes must be contiguous`
  );
  assert.deepStrictEqual(
    inlets.map((box) => box.id),
    inletIds,
    `${name} core must not retain a disconnected legacy Test Input`
  );
  routes.forEach(([source, outlet, inlet]) => {
    assert(
      hasLine(patcher, source, outlet, core.id, inlet),
      `${name} ${source} must reach compacted core inlet ${inlet + 1}`
    );
  });
}

const bitcrusher = readEffect("mt_mod_bitcrusher.maxpat");
const bitcrusherBoxes = bitcrusher.boxes.map((entry) => entry.box);
const bitcrusherCore = bitcrusherBoxes.find((box) => box.id === "bc-core");
assertProductionOnly(bitcrusher, "Bitcrusher");
assertExternalEnableIsEchoSuppressed(bitcrusher, "bc", "Bitcrusher");

assert.strictEqual(
  bitcrusherBoxes.filter((box) => box.maxclass === "inlet").length,
  6,
  "Bitcrusher must expose stereo audio, enable, bits, rate, and drive"
);
assert.strictEqual(
  bitcrusherBoxes.filter((box) => box.maxclass === "outlet").length,
  2,
  "Bitcrusher must expose stereo audio"
);
assert(bitcrusherCore && bitcrusherCore.patcher, "Bitcrusher core is missing");
assertCompactedCoreInterface(
  bitcrusher,
  bitcrusherCore,
  "Bitcrusher",
  ["bci-l", "bci-r", "bci-enable", "bci-bits", "bci-rate", "bci-drive"],
  [["bc-bits", 0, 3], ["bc-rate", 0, 4], ["bc-drive", 0, 5]]
);
assert.strictEqual(
  bitcrusherBoxes.filter((box) => box.maxclass === "live.dial").length,
  3,
  "Bitcrusher parameters must use teacher-style live.dial controls"
);
assert.strictEqual(
  bitcrusherBoxes.filter((box) => box.maxclass === "live.scope~").length,
  2,
  "Bitcrusher must show input and processed waveforms"
);
assert.strictEqual(
  bitcrusherCore.patcher.boxes.filter(
    (entry) => entry.box.maxclass === "outlet"
  ).length,
  4,
  "Bitcrusher core must expose stereo audio plus two monitor signals"
);

const bitcrusherCoreTexts = bitcrusherCore.patcher.boxes
  .map((entry) => entry.box.text)
  .filter(Boolean);
assert.strictEqual(
  bitcrusherCoreTexts.filter((text) => text.startsWith("degrade~")).length,
  2,
  "Bitcrusher requires one degrade~ per channel"
);
assert.strictEqual(
  bitcrusherCoreTexts.filter((text) => text.startsWith("round~")).length,
  2,
  "Bit depth must use one round~ quantizer per channel"
);
assert(
  bitcrusherCoreTexts.includes("dspstate~"),
  "Sample-rate control must use the current DSP sample rate"
);
assert(
  bitcrusherCoreTexts.filter((text) => text === "tanh~").length === 2,
  "Bitcrusher needs bounded stereo drive"
);
assert(
  bitcrusherCoreTexts.every((text) => !text.startsWith("expr~")),
  "Avoid expr~ runtime compatibility problems"
);
assert(
  !bitcrusherCoreTexts.includes("!-~ 1."),
  "FX return output must not contain a dry bypass"
);

const mainText = fs.readFileSync(
  path.join(root, "patchers", "mt_portfolio_main.maxpat"),
  "utf8"
);
assert(
  mainText.includes("mt_mod_bitcrusher.maxpat"),
  "Approved Bitcrusher must be integrated into Main"
);

const delay = readEffect("mt_mod_feedback_delay.maxpat");
const delayBoxes = delay.boxes.map((entry) => entry.box);
const delayCore = delayBoxes.find((box) => box.id === "fd-core");
assertProductionOnly(delay, "Feedback Delay");
assertExternalEnableIsEchoSuppressed(delay, "fd", "Feedback Delay");

assert.strictEqual(
  delayBoxes.filter((box) => box.maxclass === "inlet").length,
  7,
  "Delay must expose stereo audio, enable, time, feedback, damping, and stereo"
);
assert.strictEqual(
  delayBoxes.filter((box) => box.maxclass === "outlet").length,
  2,
  "Delay must expose stereo audio"
);
assert(delayCore && delayCore.patcher, "Feedback delay core is missing");
assertCompactedCoreInterface(
  delay,
  delayCore,
  "Feedback Delay",
  ["fdi-l", "fdi-r", "fdi-enable", "fdi-time", "fdi-feedback", "fdi-damping", "fdi-stereo"],
  [["fd-time", 0, 3], ["fd-feedback", 0, 4], ["fd-damping", 0, 5], ["fd-stereo", 0, 6]]
);
assert.strictEqual(
  delayBoxes.filter((box) => box.maxclass === "live.dial").length,
  4,
  "Delay parameters must use teacher-style live.dial controls"
);
assert.strictEqual(
  delayCore.patcher.boxes.filter(
    (entry) => entry.box.maxclass === "outlet"
  ).length,
  2,
  "Delay core must expose stereo audio only"
);

const delayCoreTexts = delayCore.patcher.boxes
  .map((entry) => entry.box.text)
  .filter(Boolean);
const delayCoreBoxes = new Map(
  delayCore.patcher.boxes.map((entry) => [entry.box.id, entry.box])
);
assert.strictEqual(
  delayCoreTexts.filter((text) => text === "slide~").length,
  2,
  "Only the stereo delay-time controls should use slide~"
);
assert.strictEqual(
  delayCoreTexts.filter((text) => text === "line~").length,
  2,
  "Feedback and wet enable must retain deterministic line~ ramps"
);
assert.strictEqual(delayCoreBoxes.get("fd-time-msg-l").text, "sig~");
assert.strictEqual(delayCoreBoxes.get("fd-time-msg-r").text, "sig~");
assert(delayCoreTexts.includes("mstosamps~"), "Delay slide time must follow the DSP sample rate");
assert.strictEqual(
  delayCoreTexts.filter((text) => text.startsWith("tapin~")).length,
  2,
  "Delay requires one tapin~ per channel"
);
assert.strictEqual(
  delayCoreTexts.filter((text) => text.startsWith("tapout~")).length,
  2,
  "Delay requires one tapout~ per channel"
);
assert(
  delayCoreTexts.includes("clip 0. 0.88"),
  "Feedback must be bounded below unity"
);
assert(delayCoreTexts.includes("clear"), "Disable must clear the delay memory");
assert(
  delayCoreTexts.every((text) => !text.startsWith("expr~")),
  "Avoid expr~ runtime compatibility problems"
);
assert(
  !delayCoreTexts.includes("!-~ 1."),
  "FX return output must not contain a dry bypass"
);
assert(
  mainText.includes("mt_mod_feedback_delay.maxpat"),
  "Approved Delay must be integrated into Main"
);

const multiband = readEffect("mt_mod_multiband_filter.maxpat");
const multibandBoxes = multiband.boxes.map((entry) => entry.box);
const multibandCore = multibandBoxes.find((box) => box.id === "mb-core");
const multibandVisual = multibandBoxes.find((box) => box.id === "mb-visual");

assert.strictEqual(
  multibandBoxes.filter((box) => box.maxclass === "inlet").length,
  8,
  "Multiband must expose stereo audio, enable, two crossovers, and three gains"
);
assert.strictEqual(
  multibandBoxes.filter((box) => box.maxclass === "outlet").length,
  2,
  "Multiband must expose stereo audio"
);
assert.strictEqual(
  multibandBoxes.filter((box) => box.maxclass === "live.dial").length,
  5,
  "Multiband must expose two crossover and three band-gain dials"
);
assert(multibandCore && multibandCore.patcher, "Multiband core is missing");
assert(
  multibandVisual &&
    multibandVisual.maxclass === "jsui" &&
    multibandVisual.numinlets === 5,
  "Multiband needs a five-parameter jsui response display"
);
assert(
  fs.existsSync(path.join(root, "javascript", "mt_multiband_visual.js")),
  "Multiband jsui script is missing"
);

const multibandCoreTexts = multibandCore.patcher.boxes
  .map((entry) => entry.box.text)
  .filter(Boolean);
assert.strictEqual(
  multibandCoreTexts.filter((text) => text.startsWith("cross~")).length,
  4,
  "Stereo three-band splitting requires four cross~ objects"
);
assert.strictEqual(
  multibandCoreTexts.filter((text) => text === "dbtoa").length,
  3,
  "Each band gain must convert dB to linear amplitude"
);
assert(
  multibandCoreTexts.includes("clip 80. 1200.") &&
    multibandCoreTexts.includes("clip 1200. 12000."),
  "Crossover ranges must remain ordered"
);
assert(
  !multibandCoreTexts.includes("!-~ 1."),
  "Multiband return must not contain a dry bypass"
);
assert(
  !mainText.includes("mt_mod_multiband_filter.maxpat"),
  "Multiband must remain standalone until listening approval"
);

const multibandV2 = readEffect("mt_mod_multiband_filter_v2.maxpat");
const multibandV2Boxes = multibandV2.boxes.map((entry) => entry.box);
const multibandV2Core = multibandV2Boxes.find((box) => box.id === "mb2-core");
const multibandV2Visual = multibandV2Boxes.find((box) => box.id === "mb2-visual");
const multibandV2Controller = multibandV2Boxes.find(
  (box) => box.id === "mb2-controller"
);
assertProductionOnly(multibandV2, "Multiband V2");
assertExternalEnableIsEchoSuppressed(multibandV2, "mb2", "Multiband V2");

assert.strictEqual(
  multibandV2Boxes.filter((box) => box.maxclass === "inlet").length,
  6,
  "V2 must expose stereo audio plus enable, focus, contrast, and spread"
);
assert.strictEqual(
  multibandV2Boxes.filter((box) => box.maxclass === "outlet").length,
  2,
  "V2 must expose stereo audio"
);
assert.strictEqual(
  multibandV2Boxes.filter((box) => box.maxclass === "live.dial").length,
  8,
  "V2 needs selected-band, crossover, and macro dials"
);
[
  ["mb2-width", 200],
  ["mb2-focus", 100],
  ["mb2-contrast", 100],
  ["mb2-spread", 100]
].forEach(([id, maximum]) => {
  const dial = multibandV2Boxes.find((box) => box.id === id);
  const attributes = dial.saved_attribute_attributes.valueof;
  assert.strictEqual(
    attributes.parameter_unitstyle,
    5,
    `${id} must display percentage units`
  );
  assert.strictEqual(
    attributes.parameter_type,
    1,
    `${id} must display whole-number percentages`
  );
  assert.strictEqual(
    attributes.parameter_mmax,
    maximum,
    `${id} must use a percentage UI range`
  );
});
assert(multibandV2Core && multibandV2Core.patcher, "V2 core is missing");
const multibandV2CoreInlets = multibandV2Core.patcher.boxes
  .map((entry) => entry.box)
  .filter((box) => box.maxclass === "inlet")
  .sort((left, right) => left.index - right.index);
assert.strictEqual(
  multibandV2Core.numinlets,
  14,
  "V2 core must not retain the removed legacy Test Input"
);
assert.deepStrictEqual(
  multibandV2CoreInlets.map((box) => box.index),
  Array.from({ length: 14 }, (_, index) => index + 1),
  "V2 core inlet indexes must remain contiguous after Test Input removal"
);
assert(
  !multibandV2CoreInlets.some((box) => box.id === "mb2c-test"),
  "V2 core must not contain the disconnected legacy Test Input inlet"
);
[
  [15, 3],
  [16, 4],
  [5, 5],
  [6, 6],
  [7, 7],
  [8, 8],
  [9, 9],
  [10, 10],
  [11, 11],
  [12, 12],
  [13, 13]
].forEach(([controllerOutlet, coreInlet]) => {
  assert(
    hasLine(multibandV2, "mb2-controller", controllerOutlet, "mb2-core", coreInlet),
    `V2 controller outlet ${controllerOutlet} must reach compacted core inlet ${coreInlet + 1}`
  );
});
assert(
  multibandV2Visual &&
    multibandV2Visual.maxclass === "jsui" &&
    multibandV2Visual.numinlets === 4 &&
    multibandV2Visual.filename === "mt_multiband_filter_visual.js",
  "V2 needs a four-input realtime jsui display"
);
assert(
  multibandV2Controller &&
    multibandV2Controller.text === "js mt_multiband_filter_controller.js",
  "V2 selected-band controller is missing"
);

const multibandV2CoreTexts = multibandV2Core.patcher.boxes
  .map((entry) => entry.box.text)
  .filter(Boolean);
const multibandV2RampMessages = multibandV2Core.patcher.boxes
  .map((entry) => entry.box)
  .filter((box) => box.text === "$1 20");
assert(
  multibandV2RampMessages.length > 0 &&
    multibandV2RampMessages.every((box) => box.maxclass === "message"),
  "V2 ramp commands must be Max message boxes, not newobj objects"
);
assert.strictEqual(
  multibandV2CoreTexts.filter((text) => text.startsWith("cross~")).length,
  4,
  "V2 stereo splitting requires four cross~ objects"
);
assert.strictEqual(
  multibandV2CoreTexts.filter((text) => text === "tanh~").length,
  6,
  "V2 requires stereo soft drive for all three bands"
);
assert.strictEqual(
  multibandV2CoreTexts.filter((text) => text === "abs~").length,
  6,
  "V2 must meter both channels in all three bands"
);
assert(
  mainText.includes("mt_mod_multiband_filter_v2.maxpat"),
  "Approved V2 Multiband must be integrated into Main"
);
assert(
  fs.existsSync(
    path.join(root, "patchers", "effects", "mt_multiband_filter_controller.js")
  ) &&
    fs.existsSync(
      path.join(root, "patchers", "effects", "mt_multiband_filter_visual.js")
    ),
  "V2 JavaScript dependencies are missing"
);
const vocoder = readEffect("mt_mod_vocoder.maxpat");
const vocoderBoxes = new Map(
  vocoder.boxes.map((entry) => [entry.box.id, entry.box])
);
const vocoderCore = vocoderBoxes.get("p-Vocoder-core");
assertProductionOnly(vocoder, "Vocoder");
assert(vocoderCore && vocoderCore.patcher, "Vocoder core is missing");
assertCompactedCoreInterface(
  vocoder,
  vocoderCore,
  "Vocoder",
  ["vc-in-l", "vc-in-r", "vc-enable", "vc-wet", "vc-tone", "vc-noise", "vc-smooth", "vc-bright"],
  [["vm-wet", 0, 3], ["vm-tone", 0, 4], ["vm-noise", 0, 5], ["vm-smooth", 0, 6], ["vm-bright", 0, 7]]
);
assert.strictEqual(
  [...vocoderBoxes.values()].filter((box) => box.maxclass === "live.dial").length,
  5,
  "Vocoder must expose five presentation live.dial controls"
);
assert.deepStrictEqual(
  vocoderBoxes.get("vm-header")?.presentation_rect,
  [0, 0, 760, 58],
  "Vocoder commercial header"
);
assert.deepStrictEqual(
  vocoderBoxes.get("vm-body")?.presentation_rect,
  [0, 58, 760, 210],
  "Vocoder commercial body"
);
assert.strictEqual(vocoderBoxes.get("vm-title")?.text, "VOCODER");
for (const [id, varname] of [
  ["vm-wet", "vocoder_dry_wet"],
  ["vm-tone", "vocoder_carrier_tone"],
  ["vm-noise", "vocoder_noise_mix"],
  ["vm-smooth", "vocoder_spectral_smooth"],
  ["vm-bright", "vocoder_brightness"],
]) {
  assert.strictEqual(vocoderBoxes.get(id)?.maxclass, "live.dial", `${id} UI class`);
  assert.strictEqual(vocoderBoxes.get(id)?.varname, varname, `${id} varname`);
  assert(vocoder.parameters?.[id], `${id} parameter metadata`);
}
assert.strictEqual(vocoderBoxes.get("vm-bright-label")?.text, "X · BRIGHTNESS");
assert.strictEqual(vocoderBoxes.get("vm-tone-label")?.text, "Y · CARRIER TONE");
assert.strictEqual(vocoderBoxes.get("vm-noise-label")?.text, "PINCH · NOISE MIX");
const vocoderGain = vocoderBoxes.get("vm-gain");
assert.deepStrictEqual(vocoderGain?.inactivecoldcolor, [0.08, 0.1, 0.09, 0], "disabled Vocoder meter is visually silent");
assert.deepStrictEqual(vocoderGain?.inactivewarmcolor, [0.08, 0.1, 0.09, 0], "disabled Vocoder warm meter is visually silent");
assert.strictEqual(vocoderBoxes.get("vm-gain-active-state")?.text, "r mt_vocoder_enable_state");
assert.strictEqual(vocoderBoxes.get("vm-gain-active")?.text, "prepend active");
assert(hasLine(vocoder, "vm-gain-active-state", 0, "vm-gain-active", 0), "Vocoder state reaches gain active mode");
assert(hasLine(vocoder, "vm-gain-active", 0, "vm-gain", 0), "Vocoder off state disables only its gain UI");
const vocoderLabels = ["vm-bright-label", "vm-tone-label", "vm-noise-label", "vm-wet-label", "vm-smooth-label"]
  .map((id) => vocoderBoxes.get(id));
for (const label of vocoderLabels) {
  assert.strictEqual(label?.fontsize, 9, `${label?.id} uses compact text`);
  assert.strictEqual(label?.textjustification, 1, `${label?.id} is centered below its dial`);
}
for (let index = 1; index < vocoderLabels.length; index += 1) {
  const previous = vocoderLabels[index - 1].presentation_rect;
  const current = vocoderLabels[index].presentation_rect;
  assert(previous[0] + previous[2] <= current[0], "Vocoder parameter labels must not overlap");
}
assert(
  vocoderBoxes.get("vm-bright").presentation_rect[0]
    < vocoderBoxes.get("vm-tone").presentation_rect[0]
    && vocoderBoxes.get("vm-tone").presentation_rect[0]
      < vocoderBoxes.get("vm-noise").presentation_rect[0]
    && vocoderBoxes.get("vm-noise").presentation_rect[0]
      < vocoderBoxes.get("vm-wet").presentation_rect[0]
    && vocoderBoxes.get("vm-wet").presentation_rect[0]
      < vocoderBoxes.get("vm-smooth").presentation_rect[0],
  "Vocoder must place X, Y, and Pinch controls before manual Wet and Smooth controls"
);
const multibandVisualSource = fs.readFileSync(
  path.join(root, "patchers", "effects", "mt_multiband_filter_visual.js"),
  "utf8"
);
assert(
  multibandVisualSource.includes(
    'var frequencyLabels = ["20", "100", "1k", "10k", "20k"];'
  ) &&
    multibandVisualSource.includes("var gainTicks = [12, 0, -12, -24];"),
  "V2 visualization must label frequency and gain axes"
);

console.log(
  "PASS: standalone bitcrusher, feedback delay, and multiband contracts"
);
