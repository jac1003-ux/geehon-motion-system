const assert = require("assert");
const fs = require("fs");
const path = require("path");
const vm = require("vm");

const root = path.resolve(__dirname, "..");
const patchPaths = [
  "patchers/control/mt_control_pose_jweb.maxpat",
  "patchers/control/mt_pose_feature_engine.maxpat",
  "patchers/control/mt_interaction_profile.maxpat",
  "patchers/control/mt_midi_clutch.maxpat",
  "patchers/control/mt_control_pose_demo.maxpat",
];

function boxesFor(relativePath) {
  const filePath = path.join(root, relativePath);
  return JSON.parse(fs.readFileSync(filePath, "utf8")).patcher.boxes.map(
    (entry) => entry.box
  );
}

for (const relativePath of patchPaths) {
  const boxes = boxesFor(relativePath);
  const texts = boxes.map((box) => box.text || "");

  assert(
    !texts.some((text) => /^declarepath(?:\s|$)/.test(text)),
    `${relativePath} uses the nonexistent Max object declarepath`
  );
  assert(
    !texts.some((text) => /^t(?:rigger)?\s+(?:a(?:\s|$)|.*\sa(?:\s|$))/.test(text)),
    `${relativePath} uses literal trigger argument a instead of a typed outlet`
  );
  assert(
    !texts.some((text) => /^t(?:rigger)?\s+.*\bclear\b/.test(text)),
    `${relativePath} embeds clear as a trigger argument instead of using a message`
  );
}

const expectedLoaders = new Map([
  [
    "patchers/control/mt_pose_feature_engine.maxpat",
    "js Patcher:/../../javascript/mt_pose_feature_engine.js",
  ],
  [
    "patchers/control/mt_interaction_profile.maxpat",
    "js Patcher:/../../javascript/mt_pose_interaction_state.js",
  ],
  [
    "patchers/control/mt_midi_clutch.maxpat",
    "js Patcher:/../../javascript/mt_midi_device_watch.js",
  ],
]);

for (const [relativePath, expectedText] of expectedLoaders) {
  assert(
    boxesFor(relativePath).some((box) => box.text === expectedText),
    `${relativePath} must load JavaScript through a patcher-relative path`
  );
}

assert(
  boxesFor("patchers/control/mt_control_pose_jweb.maxpat").some(
    (box) =>
      box.text ===
      "Patcher:/../../web/pose-landmarker/jweb-pose-landmarker.html"
  ),
  "Pose jweb bridge must load its page through a patcher-relative path"
);

const featureEngineSource = fs.readFileSync(
  path.join(root, "javascript/mt_pose_feature_engine.js"),
  "utf8"
);
const interactionStateSource = fs.readFileSync(
  path.join(root, "javascript/mt_pose_interaction_state.js"),
  "utf8"
);

function legacyMaxRequireExports(relativePath) {
  const source = fs.readFileSync(path.join(root, relativePath), "utf8");
  const context = { exports: {} };
  vm.runInNewContext(source, context, { filename: relativePath });
  return context.exports;
}

const featureMathExports = legacyMaxRequireExports(
  "javascript/pose_feature_math.js"
);
const interactionCoreExports = legacyMaxRequireExports(
  "javascript/pose_interaction_state.js"
);

assert.strictEqual(
  typeof featureMathExports.geometry,
  "function",
  "Pose feature math must export through Max legacy CommonJS exports"
);
assert.strictEqual(
  typeof interactionCoreExports.InteractionState,
  "function",
  "Pose interaction state must export through Max legacy CommonJS exports"
);

assert(
  featureEngineSource.includes(
    'include("Patcher:/../../javascript/pose_feature_math.js")'
  ),
  "Feature engine must load its math dependency relative to its patcher"
);
assert(
  interactionStateSource.includes(
    'include("Patcher:/../../javascript/pose_interaction_state.js")'
  ),
  "Interaction state must load its dependency relative to its patcher"
);
assert(
  !featureEngineSource.includes('include("pose_feature_math.js")'),
  "Feature engine must not depend on the global Max search path"
);
assert(
  !interactionStateSource.includes('include("pose_interaction_state.js")'),
  "Interaction state must not depend on the global Max search path"
);
assert(
  /function anything\(\)[\s\S]*messagename\s*===\s*"model_loading"/.test(
    featureEngineSource
  ),
  "Feature engine must consume the jweb model_loading status message"
);

console.log("Pose Max runtime contracts: PASS");
