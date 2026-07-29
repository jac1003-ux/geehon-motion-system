const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");

function readPatch(relativePath) {
  return JSON.parse(fs.readFileSync(path.join(root, relativePath), "utf8")).patcher;
}

function boxes(patcher) {
  return (patcher.boxes || []).map((entry) => entry.box);
}

function sortedPorts(patcher, maxclass) {
  return boxes(patcher)
    .filter((box) => box.maxclass === maxclass)
    .sort((a, b) => a.patching_rect[0] - b.patching_rect[0]);
}

function find(patcher, id) {
  return boxes(patcher).find((box) => box.id === id);
}

function connected(patcher, sourceId, sourceOutlet, destinationId, destinationInlet) {
  return (patcher.lines || []).some(({ patchline }) => {
    return (
      patchline.source[0] === sourceId &&
      patchline.source[1] === sourceOutlet &&
      patchline.destination[0] === destinationId &&
      patchline.destination[1] === destinationInlet
    );
  });
}

const hand = readPatch("patchers/control/mt_control_hand_jweb.maxpat");
const handCore = find(hand, "th-hand-control");
assert(handCore && handCore.patcher, "Missing Hand_control core");
assert.strictEqual(handCore.numinlets, 2);
assert.strictEqual(handCore.numoutlets, 6);
assert.strictEqual(find(handCore.patcher, "hp-right").text, "dict.unpack Left: Right:");
assert.strictEqual(find(hand, "hj-free-hand-menu"), undefined);
assert.strictEqual(find(hand, "hj-free-hand-default").text, "loadmess 0");
assert(connected(hand, "hj-free-hand-default", 0, "th-hand-control", 1));
assert.strictEqual(sortedPorts(hand, "outlet").length, 5);
assert.deepStrictEqual(
  sortedPorts(hand, "outlet").map((item) => item.comment || ""),
  ["", "", "", "", "tracking valid 0/1"]
);
assert(connected(hand, "th-hand-control", 5, "hj-out-tracking", 0));

const profile = readPatch("patchers/control/mt_control_vocal_profile.maxpat");
assert.deepStrictEqual(
  sortedPorts(profile, "inlet").map((item) => item.comment),
  [
    "hand_x 0-1",
    "hand_y 0-1",
    "pinch distance 0-1",
    "palm width monitor 0-1",
    "tracking valid 0/1",
  ]
);
assert.deepStrictEqual(
  sortedPorts(profile, "outlet").map((item) => item.comment),
  [
    "Vocoder Brightness 0-1",
    "Vocoder Carrier Tone 0-1",
    "pinch clutch active 0/1",
    "tracking valid 0/1",
    "interaction status",
  ]
);
assert.strictEqual(
  find(profile, "vp-js").text,
  "js Patcher:/../../javascript/mt_vocal_hand_mapper.js"
);

const demo = readPatch("patchers/control/mt_control_vocal_demo.maxpat");
const handModule = find(demo, "vd-hand");
const profileModule = find(demo, "vd-profile");
const micModule = find(demo, "vd-mic");
const vocoderModule = find(demo, "vd-vocoder");

assert.strictEqual(handModule.numoutlets, 5);
assert.strictEqual(profileModule.numinlets, 5);
assert.strictEqual(vocoderModule.numinlets, 8);
for (let index = 0; index < 5; index += 1) {
  assert(connected(demo, "vd-hand", index, "vd-profile", index));
}
assert(connected(demo, "vd-mic", 0, "vd-vocoder", 0));
assert(connected(demo, "vd-mic", 1, "vd-vocoder", 1));
assert(connected(demo, "vd-profile", 0, "vd-vocoder", 7));
assert(connected(demo, "vd-profile", 1, "vd-vocoder", 4));
assert.strictEqual(micModule.numoutlets, 2);

console.log("Vocal profile patch interfaces: PASS");
