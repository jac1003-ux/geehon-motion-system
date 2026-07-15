const assert = require("assert");
const fs = require("fs");
const path = require("path");
const vm = require("vm");

const stateModule = require("../javascript/pose_interaction_state.js");
const InteractionState = stateModule.InteractionState;

const FEATURE_NAMES = [
  "torso_sway",
  "torso_lean",
  "shoulder_tilt",
  "head_turn",
  "body_proximity",
  "motion_energy",
];

function engine(overrides) {
  return Object.assign(
    {
      profile: "singer",
      status: "ready",
      calibration_phase: "idle",
      calibrated: 1,
      tracking_valid: 1,
      inside_control_zone: 1,
      model_ready: 1,
      camera_ready: 1,
      has_pose: 1,
      tracking_confidence: 0.9,
      torso_sway: 0.8,
      torso_lean: -0.6,
      shoulder_tilt: 0.4,
      head_turn: -0.2,
      body_proximity: 0.5,
      motion_energy: 0.7,
    },
    overrides || {}
  );
}

function makeState() {
  return new InteractionState({
    holdMs: 300,
    returnMs: 800,
    reconnectMs: 200,
    intentionalReleaseMs: 80,
  });
}

function arm(state) {
  state.command("arm", 1);
  state.command("profile", "singer");
  state.command("clutch", 1);
  state.command("pedal_mode", 0);
  state.command("pedal_connected", 1);
}

function assertNear(actual, expected, message) {
  assert(
    Math.abs(actual - expected) < 1e-9,
    `${message}: expected ${expected}, received ${actual}`
  );
}

function assertNeutral(output, message) {
  for (const name of FEATURE_NAMES) {
    assertNear(output[name], 0, `${message} ${name}`);
  }
}

function assertFiniteOutput(output, message) {
  for (const name of FEATURE_NAMES.concat([
    "tracking_confidence",
    "energy",
    "space",
    "texture",
    "transform",
  ])) {
    assert(Number.isFinite(output[name]), `${message} ${name} must be finite`);
  }
}

assert.strictEqual(typeof InteractionState, "function");

{
  const source = fs.readFileSync(
    path.resolve(__dirname, "../javascript/pose_interaction_state.js"),
    "utf8"
  );
  const sandbox = {};
  vm.runInNewContext(source, sandbox);
  assert.strictEqual(
    typeof sandbox.PoseInteractionState,
    "function",
    "Browser-style global export must be available"
  );
}

{
  const state = makeState();
  assert.strictEqual(
    state.step(0, engine({ camera_ready: 0, model_ready: 0 })).state,
    "NO_CAMERA"
  );
  assert.strictEqual(
    state.step(10, engine({ inside_control_zone: 0 })).state,
    "POSITION"
  );
  assert.strictEqual(
    state.step(20, engine({ calibrated: 0 })).state,
    "UNCALIBRATED"
  );
  assert.strictEqual(
    state.step(
      30,
      engine({
        calibrated: 0,
        calibration_phase: "collecting",
        status: "calibrating",
      })
    ).state,
    "CALIBRATING"
  );
  assert.strictEqual(state.step(40, engine()).state, "READY");
  arm(state);
  const active = state.step(50, engine());
  assert.strictEqual(active.state, "ACTIVE");
  assert.strictEqual(active.active, 1);
  assert.strictEqual(active.clutch_gate, 1);
  assertNear(active.torso_sway, 0.8, "ACTIVE follows live input");
}

{
  const state = makeState();
  arm(state);
  state.step(1000, engine());
  const invalid = engine({ tracking_valid: 0, tracking_confidence: 0.2 });

  assert.strictEqual(state.step(1100, invalid).state, "HOLD");
  assert.strictEqual(state.step(1399, invalid).state, "HOLD"); // elapsed 299
  assert.strictEqual(state.step(1400, invalid).state, "HOLD"); // elapsed 300
  assertNear(state.step(1400, invalid).torso_sway, 0.8, "HOLD keeps value");

  const returnStart = state.step(1401, invalid); // elapsed 301
  assert.strictEqual(returnStart.state, "RETURN");
  assert(returnStart.torso_sway < 0.8, "RETURN begins after the HOLD boundary");

  const returnMiddle = state.step(1800, invalid);
  assert.strictEqual(returnMiddle.state, "RETURN");
  assertNear(returnMiddle.torso_sway, 0.4, "RETURN reaches midpoint");

  assert.strictEqual(state.step(2199, invalid).state, "RETURN"); // elapsed 1099
  const returnEnd = state.step(2200, invalid); // elapsed 1100
  assert.strictEqual(returnEnd.state, "RETURN");
  assertNeutral(returnEnd, "RETURN reaches neutral at its inclusive boundary");

  const lost = state.step(2201, invalid); // elapsed 1101
  assert.strictEqual(lost.state, "LOST");
  assert.strictEqual(lost.active, 0);
  assertNeutral(lost, "LOST is neutral");
}

{
  const state = makeState();
  arm(state);
  state.step(0, engine());
  const invalid = engine({ tracking_valid: 0 });
  state.step(100, invalid);
  const returning = state.step(700, invalid);
  assert.strictEqual(returning.state, "RETURN");
  assertNear(returning.torso_sway, 0.5, "RETURN value before recovery");

  const liveAfterRecovery = engine({ torso_sway: -0.6, torso_lean: 0.2 });
  const recoveryStart = state.step(800, liveAfterRecovery);
  assert.strictEqual(recoveryStart.state, "ACTIVE");
  assertNear(
    recoveryStart.torso_sway,
    returning.torso_sway,
    "Reconnect begins from current output"
  );
  assertNear(
    state.step(900, liveAfterRecovery).torso_sway,
    -0.05,
    "Reconnect reaches midpoint"
  );
  assertNear(
    state.step(1000, liveAfterRecovery).torso_sway,
    -0.6,
    "Reconnect reaches live value"
  );
}

{
  const state = makeState();
  arm(state);
  const active = state.step(0, engine());
  state.command("arm", 0);

  const releaseStart = state.step(10, engine());
  assert.strictEqual(releaseStart.state, "READY");
  assert.strictEqual(releaseStart.active, 0);
  assertNear(
    releaseStart.torso_sway,
    active.torso_sway,
    "Intentional arm release begins at current output"
  );
  assertNear(
    state.step(50, engine()).torso_sway,
    active.torso_sway * 0.5,
    "Intentional arm release reaches midpoint"
  );
  assertNeutral(state.step(90, engine()), "Intentional arm release ends neutral");
}

{
  const state = makeState();
  arm(state);
  state.step(0, engine());
  state.command("clutch", 0);
  const released = state.step(1, engine());
  assert.strictEqual(released.state, "READY");
  assert.strictEqual(released.clutch_gate, 0);
  assert.strictEqual(released.active, 0);
  assert.strictEqual(state.step(81, engine()).state, "READY");
  assertNeutral(state.step(81, engine()), "Clutch release ends neutral");
}

{
  const state = makeState();
  arm(state);
  state.command("pedal_mode", 1);
  state.command("pedal_connected", 1);
  state.command("clutch", 1);
  assert.strictEqual(state.step(0, engine()).state, "ACTIVE");

  state.command("pedal_connected", 0);
  const disconnectedPedal = state.step(10, engine());
  assert.strictEqual(disconnectedPedal.active, 0);
  assert.strictEqual(disconnectedPedal.clutch_gate, 0);
  assert.strictEqual(disconnectedPedal.pedal_fault, 1);

  state.command("pedal_connected", 1);
  state.command("clutch", 1);
  const reconnectedOnly = state.step(20, engine());
  assert.strictEqual(reconnectedOnly.active, 0);
  assert.strictEqual(reconnectedOnly.clutch_gate, 0);
  assert.strictEqual(reconnectedOnly.pedal_fault, 1);

  state.command("pedal_mode", 0);
  const manualReset = state.step(100, engine());
  assert.strictEqual(manualReset.pedal_fault, 0);
  assert.strictEqual(manualReset.clutch_gate, 1);
}

{
  const state = makeState();
  arm(state);
  const unassignedMacros = state.step(0, engine());
  assert.strictEqual(unassignedMacros.energy, 0);
  assert.strictEqual(unassignedMacros.space, 0);
  assert.strictEqual(unassignedMacros.texture, 0);
  assert.strictEqual(unassignedMacros.transform, 0);
}

{
  const state = makeState();
  arm(state);
  state.step(1000, engine());
  state.step(1100, engine({ tracking_valid: 0 }));
  const reset = state.step(
    100,
    engine({
      torso_sway: NaN,
      torso_lean: Infinity,
      tracking_confidence: NaN,
    })
  );
  assert.strictEqual(reset.state, "ACTIVE");
  assertFiniteOutput(reset, "Timestamp reset output");
  assertNeutral(reset, "Timestamp reset starts from neutral");
  assertFiniteOutput(state.step(50, engine()), "Repeated rollback output");
}

{
  const state = makeState();
  arm(state);
  const invalidFlags = state.step(
    0,
    engine({
      calibrated: NaN,
      tracking_valid: Infinity,
      inside_control_zone: "not-a-number",
      model_ready: NaN,
      camera_ready: Infinity,
      has_pose: NaN,
    })
  );
  assert.strictEqual(invalidFlags.state, "NO_CAMERA");
  assert.strictEqual(invalidFlags.calibrated, 0);
  assert.strictEqual(invalidFlags.tracking_valid, 0);
  assert.strictEqual(invalidFlags.inside_control_zone, 0);
  assert.strictEqual(invalidFlags.model_ready, 0);
  assert.strictEqual(invalidFlags.camera_ready, 0);
  assert.strictEqual(invalidFlags.has_pose, 0);
  assertFiniteOutput(invalidFlags, "Invalid flags output");
}

{
  const state = makeState();
  arm(state);
  state.step(0, engine());
  const outside = engine({ inside_control_zone: 0 });
  assert.strictEqual(state.step(10, outside).state, "HOLD");
  assert.strictEqual(state.step(310, outside).state, "HOLD");
  assert.strictEqual(state.step(311, outside).state, "RETURN");
  assert.strictEqual(state.step(1110, outside).state, "RETURN");
  assert.strictEqual(state.step(1111, outside).state, "LOST");
}

{
  const state = makeState();
  arm(state);
  state.step(0, engine());
  const cameraLost = state.step(10, engine({ camera_ready: 0 }));
  assert.strictEqual(cameraLost.state, "NO_CAMERA");
  assertNeutral(cameraLost, "Camera loss is immediately neutral");

  const cameraReturns = state.step(100, engine({ torso_sway: 0.6 }));
  assert.strictEqual(cameraReturns.state, "ACTIVE");
  assertNeutral(cameraReturns, "Camera recovery starts from neutral");
  assertNear(
    state.step(200, engine({ torso_sway: 0.6 })).torso_sway,
    0.3,
    "Camera recovery reaches midpoint"
  );
  assertNear(
    state.step(300, engine({ torso_sway: 0.6 })).torso_sway,
    0.6,
    "Camera recovery reaches live value"
  );
}

console.log("Pose interaction state: PASS");
