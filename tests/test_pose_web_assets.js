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

[
  "set_dict_name",
  "flip_image",
  "draw_control_zone",
  "numPoses: 1",
  "window.max.setDict(dictName",
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
    bridgeSource.includes(needle),
    `Pose web bridge is missing required source marker: ${needle}`
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

console.log("Pose web assets: PASS");
