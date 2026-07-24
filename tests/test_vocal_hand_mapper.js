const assert = require("assert");
const path = require("path");

const { VocalHandMapper } = require(path.resolve(
  __dirname,
  "../javascript/mt_vocal_hand_mapper.js"
));

function frame(mapper, x, y, pinch, palm = 0.4, tracking = 1) {
  return mapper.process({ x, y, pinch, palm, tracking });
}

const mapper = new VocalHandMapper();
assert.strictEqual(mapper.brightness, 0.65);
assert.strictEqual(mapper.tone, 0.35);
assert.strictEqual(mapper.arm, 0);

let result = frame(mapper, 0.5, 0.5, 0.5);
assert.strictEqual(result.status, "DISARMED");
assert.strictEqual(result.clutch, 0);

mapper.command("arm", 1);
result = frame(mapper, 0.5, 0.5, 0.5);
assert.strictEqual(result.status, "READY");

result = frame(mapper, 0.5, 0.5, 0.14);
assert.strictEqual(result.status, "ACTIVE");
assert.strictEqual(result.clutch, 1);

result = frame(mapper, 0.6, 0.4, 0.14);
assert(Math.abs(result.brightness - 0.8) < 1e-9);
assert(Math.abs(result.tone - 0.5) < 1e-9);

const heldBrightness = result.brightness;
const heldTone = result.tone;
result = frame(mapper, 0.6, 0.4, 0.25);
assert.strictEqual(result.status, "HOLD");
assert.strictEqual(result.clutch, 0);
assert.strictEqual(result.brightness, heldBrightness);
assert.strictEqual(result.tone, heldTone);

frame(mapper, 0.5, 0.5, 0.5);
frame(mapper, 0.5, 0.5, 0.14);
result = frame(mapper, 0.9, 0.1, 0.14, 0.4, 0);
assert.strictEqual(result.status, "NO_TRACKING");
assert.strictEqual(result.clutch, 0);
assert.strictEqual(result.brightness, heldBrightness);
assert.strictEqual(result.tone, heldTone);

result = frame(mapper, 0.9, 0.1, 0.14, 0.4, 1);
assert.strictEqual(result.status, "RELEASE_PINCH");
assert.strictEqual(result.clutch, 0);
assert.strictEqual(result.brightness, heldBrightness);

result = frame(mapper, 0.9, 0.1, 0.25);
assert.strictEqual(result.status, "READY");
result = frame(mapper, 0.9, 0.1, 0.14);
assert.strictEqual(result.status, "ACTIVE");

mapper.command("reset", 1);
assert.strictEqual(mapper.brightness, 0.65);
assert.strictEqual(mapper.tone, 0.35);
assert.strictEqual(mapper.clutch, 0);

console.log("Vocal hand mapper state machine: PASS");
