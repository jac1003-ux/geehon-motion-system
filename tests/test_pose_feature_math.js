const assert = require("assert");
const {
  makeFrame,
  neutral,
  performerRightShift,
  performerLeftShift,
  rightShoulderRaised,
  headRight,
  closer,
  lowConfidence,
  missingPoint,
} = require("./fixtures/pose_frames");
const math = require("../javascript/pose_feature_math.js");

function assertClose(actual, expected, message) {
  assert(
    Math.abs(actual - expected) < 1e-12,
    `${message}: expected ${expected}, received ${actual}`
  );
}

assert.strictEqual(global.PoseFeatureMath, math);
assert.deepStrictEqual(Object.keys(math).sort(), [
  "calibrationFromSamples",
  "clip",
  "deadzoneSigned",
  "distance",
  "featuresFromGeometry",
  "frameConfidence",
  "geometry",
  "median",
  "pointConfidence",
  "smoothingAlpha",
]);

assert.strictEqual(math.pointConfidence({ visibility: 0.7, presence: 0.4 }), 0.4);
assert.strictEqual(math.pointConfidence({}), 1);
assert.strictEqual(math.pointConfidence(null), 0);
assert.strictEqual(math.pointConfidence({ visibility: null, presence: 0.6 }), 0.6);
assert.strictEqual(math.pointConfidence({ visibility: NaN, presence: 1 }), 0);
assert.strictEqual(math.pointConfidence({ visibility: Infinity, presence: 1 }), 0);
assert.strictEqual(math.pointConfidence({ visibility: -Infinity, presence: 1 }), 0);
assert.strictEqual(math.pointConfidence({ visibility: 2, presence: 1.5 }), 1);
assert.strictEqual(math.pointConfidence({ visibility: -0.2, presence: 0.8 }), 0);
assert.strictEqual(math.median([9, 1, 5, 3]), 4);
assert.strictEqual(math.median([]), null);

assert.strictEqual(math.frameConfidence(lowConfidence), 0.3);
assert.strictEqual(math.geometry(missingPoint), null);
const degenerateShoulders = makeFrame();
degenerateShoulders.left.left_shoulder.x = 0.5;
degenerateShoulders.right.right_shoulder.x = 0.5;
assert.strictEqual(math.geometry(degenerateShoulders), null);
const degenerateEars = makeFrame();
degenerateEars.left.left_ear.x = 0.5;
degenerateEars.right.right_ear.x = 0.5;
assert.strictEqual(math.geometry(degenerateEars), null);

const baseline = math.geometry(neutral);
assert.strictEqual(baseline.timestampMs, 1000);
assert.strictEqual(math.geometry(makeFrame({ timestampMs: NaN })).timestampMs, 0);
assert.strictEqual(
  math.geometry(makeFrame({ timestampMs: Infinity })).timestampMs,
  0
);
assert.strictEqual(
  math.geometry(makeFrame({ timestampMs: -Infinity })).timestampMs,
  0
);
const rightGeometry = math.geometry(performerRightShift);
const leftGeometry = math.geometry(performerLeftShift);
const rightShoulderUpGeometry = math.geometry(rightShoulderRaised);
const headRightGeometry = math.geometry(headRight);
const closerGeometry = math.geometry(closer);
const torsoLeanFrame = makeFrame();
torsoLeanFrame.left.left_shoulder.x -= 0.04;
torsoLeanFrame.right.right_shoulder.x -= 0.04;
const torsoLeanGeometry = math.geometry(torsoLeanFrame);

assertClose(
  baseline.bodyScale,
  Math.max(0.05, baseline.shoulderWidth * 0.65 + baseline.torsoLength * 0.35),
  "bodyScale should use the weighted shoulder/torso formula"
);
assertClose(baseline.earWidth, 0.08, "geometry should expose earWidth");
assertClose(
  headRightGeometry.headTurn,
  (headRightGeometry.earCenter.x - headRightGeometry.points.nose.x) /
    headRightGeometry.earWidth,
  "headTurn should normalize against earWidth"
);

const rightFeatures = math.featuresFromGeometry(rightGeometry, baseline);
const leanFeatures = math.featuresFromGeometry(torsoLeanGeometry, baseline);
const shoulderFeatures = math.featuresFromGeometry(
  rightShoulderUpGeometry,
  baseline
);
const headFeatures = math.featuresFromGeometry(headRightGeometry, baseline);
const proximityFeatures = math.featuresFromGeometry(closerGeometry, baseline);

assertClose(
  rightFeatures.torso_sway,
  math.clip(
    (baseline.centerX - rightGeometry.centerX) / (baseline.bodyScale * 0.75),
    -1,
    1
  ),
  "torso_sway sensitivity"
);
assertClose(
  leanFeatures.torso_lean,
  math.clip((torsoLeanGeometry.torsoLean - baseline.torsoLean) / 0.5, -1, 1),
  "torso_lean sensitivity"
);
assertClose(
  shoulderFeatures.shoulder_tilt,
  math.clip(
    (rightShoulderUpGeometry.shoulderTilt - baseline.shoulderTilt) / 0.5,
    -1,
    1
  ),
  "shoulder_tilt sensitivity"
);
assertClose(
  headFeatures.head_turn,
  math.clip((headRightGeometry.headTurn - baseline.headTurn) / 0.45, -1, 1),
  "head_turn sensitivity"
);
assertClose(
  proximityFeatures.body_proximity,
  math.clip(
    (closerGeometry.bodyScale / baseline.bodyScale - 1) / 0.6,
    -1,
    1
  ),
  "body_proximity sensitivity"
);

assert(
  math.featuresFromGeometry(rightGeometry, baseline).torso_sway > 0,
  "Performer-right movement should produce positive torso_sway"
);
assert(
  math.featuresFromGeometry(leftGeometry, baseline).torso_sway < 0,
  "Performer-left movement should produce negative torso_sway"
);
assert(
  math.featuresFromGeometry(rightShoulderUpGeometry, baseline).shoulder_tilt > 0,
  "Raising the performer's right shoulder should produce positive shoulder_tilt"
);
assert(
  math.featuresFromGeometry(headRightGeometry, baseline).head_turn > 0,
  "Turning toward the performer's right should produce positive head_turn"
);
assert(
  math.featuresFromGeometry(closerGeometry, baseline).body_proximity > 0,
  "Moving closer should produce positive body_proximity"
);
assert.strictEqual(math.deadzoneSigned(0.03, 0.04), 0);
assert(math.deadzoneSigned(-0.5, 0.04) < 0);
assert.strictEqual(math.smoothingAlpha(0, 80), 0);
assert.strictEqual(math.smoothingAlpha(20, 0), 1);
assert.strictEqual(math.smoothingAlpha(NaN, 80), 0);
assert.strictEqual(math.smoothingAlpha(Infinity, 80), 0);
assert.strictEqual(math.smoothingAlpha(-Infinity, 80), 0);
assert.strictEqual(math.smoothingAlpha(NaN, 0), 1);
assert(
  Math.abs(math.smoothingAlpha(80, 80) - (1 - Math.exp(-1))) < 1e-12
);

const calibration = math.calibrationFromSamples([
  makeFrame({ shiftX: 0.01, scale: 1.01 }),
  neutral,
  makeFrame({ shiftX: -0.01, scale: 0.99 }),
]);
assert(calibration, "Stable valid samples should calibrate");
assert(Math.abs(calibration.centerX - baseline.centerX) < 1e-12);
assert(Math.abs(calibration.bodyScale - baseline.bodyScale) < 1e-12);

assert.strictEqual(
  math.calibrationFromSamples([neutral, missingPoint, missingPoint]),
  null,
  "Calibration requires at least 60% valid geometry"
);
assert.strictEqual(
  math.calibrationFromSamples([
    makeFrame({ scale: 0.75 }),
    neutral,
    makeFrame({ scale: 1.25 }),
  ]),
  null,
  "Calibration rejects unstable body scale"
);

console.log("Pose feature math: PASS");
