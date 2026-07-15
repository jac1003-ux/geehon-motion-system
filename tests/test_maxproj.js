const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const projectPath = path.join(root, "geehon-motion-system.maxproj");
const patchersRoot = path.join(root, "patchers");

function collectPatchers(directory, result = []) {
  for (const entry of fs.readdirSync(directory, { withFileTypes: true })) {
    const fullPath = path.join(directory, entry.name);
    if (entry.isDirectory()) collectPatchers(fullPath, result);
    if (entry.isFile() && entry.name.endsWith(".maxpat")) result.push(fullPath);
  }
  return result;
}

const project = JSON.parse(fs.readFileSync(projectPath, "utf8"));
assert.strictEqual(project.name, "geehon-motion-system");
assert.strictEqual(project.autoorganize, 0, "Project auto-organize must stay disabled");

const members = project.contents && project.contents.patchers;
assert(members, "Project has no explicit patcher members");
assert.strictEqual(
  members["mt_portfolio_main.maxpat"].toplevel,
  1,
  "Main patch is not marked as top-level"
);

for (const name of [
  "mt_control_pose_jweb.maxpat",
  "mt_pose_feature_engine.maxpat",
  "mt_interaction_profile.maxpat",
  "mt_midi_clutch.maxpat",
  "mt_control_pose_demo.maxpat",
]) {
  assert(members[name], `Pose project member is missing: ${name}`);
  assert.strictEqual(members[name].local, 1, `${name} must be project-local`);
  assert.strictEqual(
    members[name].toplevel,
    undefined,
    `${name} must not be a top-level project patcher`
  );
}

assert.deepStrictEqual(
  Object.entries(members)
    .filter(([, metadata]) => metadata.toplevel === 1)
    .map(([name]) => name),
  ["mt_portfolio_main.maxpat"],
  "Main must remain the only top-level patcher"
);

const activePatchers = collectPatchers(patchersRoot);
const byName = new Map();
for (const filePath of activePatchers) {
  const name = path.basename(filePath);
  assert(!byName.has(name), `Duplicate active patcher filename: ${name}`);
  byName.set(name, filePath);
}

for (const name of Object.keys(members)) {
  assert(byName.has(name), `Project member cannot be resolved: ${name}`);
}

assert.deepStrictEqual(
  [...byName.keys()].sort(),
  Object.keys(members).sort(),
  "Project member list does not match active patchers"
);

console.log(`PASS: Max Project resolves ${byName.size} active patchers`);
