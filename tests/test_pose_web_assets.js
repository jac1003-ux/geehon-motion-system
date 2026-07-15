const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const runtimeRoot = path.join(root, "web", "pose-landmarker");

const requiredFiles = [
  "LICENSE",
  "README_POSE_LANDMARKER.md",
  "css/mesh-style.css",
  "js/pose-landmarks-index.js",
  "js/pose-runtime-lifecycle.js",
  "js/jweb-pose-landmarker.js",
  "jweb-pose-landmarker.html",
];

const missingFiles = requiredFiles.filter(
  (relativePath) => !fs.existsSync(path.join(runtimeRoot, relativePath))
);

assert.deepStrictEqual(
  missingFiles,
  [],
  `Missing Pose web runtime files:\n${missingFiles.join("\n")}`
);

const bridgePath = path.join(runtimeRoot, "js", "jweb-pose-landmarker.js");
const bridgeSource = fs.readFileSync(bridgePath, "utf8");
const lifecycleSource = fs.readFileSync(
  path.join(runtimeRoot, "js", "pose-runtime-lifecycle.js"),
  "utf8"
);
const runtimeSource = bridgeSource + "\n" + lifecycleSource;

[
  "set_dict_name",
  "flip_image",
  "draw_control_zone",
  "numPoses: 1",
  "createFramePublisher",
  "cameraGeneration",
  "model_loading",
  "model_ready",
  "camera_ready",
  "has_pose",
  "getTracks",
  "track.stop()",
  "0.15",
  "0.85",
  "0.10",
  "0.90",
].forEach((needle) => {
  assert(
    runtimeSource.includes(needle),
    `Pose web bridge is missing required source marker: ${needle}`
  );
});

const htmlSource = fs.readFileSync(
  path.join(runtimeRoot, "jweb-pose-landmarker.html"),
  "utf8"
);
assert(
  htmlSource.includes("./js/pose-runtime-lifecycle.js"),
  "Pose HTML must load the lifecycle helper before the jweb bridge"
);

const readmeSource = fs.readFileSync(
  path.join(runtimeRoot, "README_POSE_LANDMARKER.md"),
  "utf8"
);
[
  "jsDelivr",
  "Google MediaPipe model",
  "requires network access",
  "does not mean offline",
  "offline vendoring",
].forEach((needle) => {
  assert(
    readmeSource.includes(needle),
    `Pose runtime README is missing network disclosure: ${needle}`
  );
});

assert(
  !/setDict\(\s*["']posedict["']/.test(bridgeSource),
  "Pose web bridge must not write to the fixed global posedict"
);

requiredFiles.forEach((relativePath) => {
  const source = fs.readFileSync(path.join(runtimeRoot, relativePath), "utf8");
  assert(
    !source.includes("/Users/"),
    `${relativePath} contains a machine-specific absolute path`
  );
});

const activeRuntimeFiles = fs
  .readdirSync(runtimeRoot, { recursive: true, withFileTypes: true })
  .filter((entry) => entry.isFile())
  .map((entry) => entry.name);

assert(
  !activeRuntimeFiles.some(
    (name) => name.endsWith(".png") || name.endsWith(".maxpat")
  ),
  "Pose web runtime must not include upstream screenshots or the reference Max patch"
);

const landmarkIndexSource = fs.readFileSync(
  path.join(runtimeRoot, "js", "pose-landmarks-index.js"),
  "utf8"
);
const landmarkIndices = Array.from(
  landmarkIndexSource.matchAll(/\[\s*["'][^"']+["']\s*,\s*(\d+)\s*\]/g),
  (match) => Number(match[1])
).sort((a, b) => a - b);

assert.deepStrictEqual(
  landmarkIndices,
  Array.from({ length: 33 }, (_, index) => index),
  "Pose landmark index must retain every anatomical point from 0 through 32"
);

const lifecycle = require(path.join(
  runtimeRoot,
  "js",
  "pose-runtime-lifecycle.js"
));

function publication(frameId, generation, dictName) {
  return {
    targetDictName: dictName,
    targetFrameId: frameId,
    timestampMs: frameId * 10,
    generation,
    frame: { meta: { frame_id: frameId } },
  };
}

function testGenerationAndStreamStop() {
  const generation = lifecycle.createGeneration();
  const stopped = [];
  const stream = {
    getTracks() {
      return [1, 2].map((id) => ({
        stop() {
          stopped.push(id);
        },
      }));
    },
  };

  assert.strictEqual(generation.current(), 0);
  const first = generation.advance();
  assert.strictEqual(first, 1);
  assert.strictEqual(generation.isCurrent(first), true);
  assert.strictEqual(generation.isCurrent(0), false);

  lifecycle.stopStream(stream);
  assert.deepStrictEqual(stopped, [1, 2]);

  const oldRequest = generation.current();
  generation.advance();
  assert.strictEqual(
    lifecycle.acceptCurrentStream(generation, oldRequest, stream),
    false,
    "A stale camera request must not claim its stream"
  );
  assert.deepStrictEqual(stopped, [1, 2, 1, 2]);
}

function testSerializedConfirmedPublishing() {
  const generation = lifecycle.createGeneration();
  const token = generation.advance();
  const setCalls = [];
  const getCallbacks = [];
  const timers = [];
  const updates = [];
  const errors = [];

  const publisher = lifecycle.createFramePublisher({
    setDict(name, frame) {
      setCalls.push({ name, frame });
    },
    getDict(name, callback) {
      getCallbacks.push({ name, callback });
    },
    emitUpdate(name, frameId, timestampMs) {
      updates.push([name, frameId, timestampMs]);
    },
    emitError(code) {
      errors.push(code);
    },
    isGenerationCurrent(value) {
      return generation.isCurrent(value);
    },
    setTimer(callback) {
      timers.push(callback);
    },
    maxAttempts: 3,
    retryDelayMs: 1,
  });

  publisher.enqueue(publication(1, token, "dict_A"));
  publisher.enqueue(publication(2, token, "dict_B"));
  publisher.enqueue(publication(3, token, "dict_C"));

  assert.deepStrictEqual(
    setCalls.map((call) => call.name),
    ["dict_A"],
    "Only one dictionary write may be in flight"
  );
  assert.strictEqual(getCallbacks[0].name, "dict_A");

  getCallbacks.shift().callback({ meta: { frame_id: 0 } });
  assert.strictEqual(updates.length, 0);
  timers.shift()();
  getCallbacks.shift().callback({ meta: { frame_id: 1 } });

  assert.deepStrictEqual(updates, [["dict_A", 1, 10]]);
  assert.deepStrictEqual(
    setCalls.map((call) => call.name),
    ["dict_A", "dict_C"],
    "Pending frames must coalesce to the latest snapshot"
  );

  getCallbacks.shift().callback({ meta: { frame_id: 3 } });
  assert.deepStrictEqual(updates[1], ["dict_C", 3, 30]);
  assert.deepStrictEqual(errors, []);
}

function testStaleGenerationAndFiniteTimeout() {
  const generation = lifecycle.createGeneration();
  const token = generation.advance();
  const callbacks = [];
  const timers = [];
  const updates = [];
  const errors = [];

  const publisher = lifecycle.createFramePublisher({
    setDict() {},
    getDict(name, callback) {
      callbacks.push(callback);
    },
    emitUpdate() {
      updates.push(Array.from(arguments));
    },
    emitError(code) {
      errors.push(code);
    },
    isGenerationCurrent(value) {
      return generation.isCurrent(value);
    },
    setTimer(callback) {
      timers.push(callback);
    },
    maxAttempts: 2,
    retryDelayMs: 1,
  });

  publisher.enqueue(publication(4, token, "dict_stale"));
  generation.advance();
  callbacks.shift()({ meta: { frame_id: 4 } });
  assert.deepStrictEqual(updates, [], "Stale camera generations must not emit update");

  const currentToken = generation.current();
  publisher.enqueue(publication(5, currentToken, "dict_timeout"));
  callbacks.shift()({ meta: { frame_id: 0 } });
  timers.shift()();
  callbacks.shift()({ meta: { frame_id: 0 } });

  assert.deepStrictEqual(errors, ["DICT_CONFIRM_TIMEOUT"]);
  assert.deepStrictEqual(updates, []);
  assert.strictEqual(publisher.isBusy(), false);
}

testGenerationAndStreamStop();
testSerializedConfirmedPublishing();
testStaleGenerationAndFiniteTimeout();

console.log("Pose web assets: PASS");
