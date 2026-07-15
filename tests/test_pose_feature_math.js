const assert = require("assert");
const {
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

assert.strictEqual(math.frameConfidence(lowConfidence), 0.3);
assert.strictEqual(math.geometry(missingPoint), null);

const baseline = math.geometry(neutral);
const rightGeometry = math.geometry(performerRightShift);
const leftGeometry = math.geometry(performerLeftShift);
const rightShoulderUpGeometry = math.geometry(rightShoulderRaised);
const headRightGeometry = math.geometry(headRight);
const closerGeometry = math.geometry(closer);

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

console.log("Pose feature math: PASS");
