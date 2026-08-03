const assert = require("assert");
const fs = require("fs");
const os = require("os");
const path = require("path");
const { spawnSync } = require("child_process");

const root = path.resolve(__dirname, "..");
const skillRoot = path.join(root, "skills/organizing-max-patches");
const skillFile = path.join(skillRoot, "SKILL.md");
const agentFile = path.join(skillRoot, "agents/openai.yaml");
const guardFile = path.join(skillRoot, "scripts/maxpat_layout_guard.py");

for (const file of [skillFile, agentFile, guardFile]) {
  assert(fs.existsSync(file), `Missing skill artifact: ${path.relative(root, file)}`);
}

const skill = fs.readFileSync(skillFile, "utf8");
for (const phrase of [
  "only layout",
  "pure vertical",
  "nearby",
  "Command+Y",
  "object rectangles must never overlap",
  "trigger/unpack",
  "pack/pak",
]) {
  assert(skill.toLowerCase().includes(phrase.toLowerCase()), `SKILL.md must cover: ${phrase}`);
}

const fixture = path.join(root, "patchers/dsp/mt_serial_bypass.maxpat");
const temp = fs.mkdtempSync(path.join(os.tmpdir(), "max-layout-skill-"));
const snapshot = path.join(temp, "layout.snapshot.json");

function run(...args) {
  return spawnSync("python3", [guardFile, ...args], { encoding: "utf8" });
}

const snapshotResult = run("snapshot", fixture, "--output", snapshot);
assert.strictEqual(snapshotResult.status, 0, snapshotResult.stderr || snapshotResult.stdout);

const checkResult = run("check", fixture, "--snapshot", snapshot);
assert.strictEqual(checkResult.status, 0, checkResult.stderr || checkResult.stdout);

const recolored = path.join(temp, "recolored.maxpat");
const recoloredDocument = JSON.parse(fs.readFileSync(fixture, "utf8"));
recoloredDocument.patcher.boxes[0].box.color = [0.2, 0.4, 0.6, 1.0];
fs.writeFileSync(recolored, JSON.stringify(recoloredDocument));
const recoloredResult = run("check", recolored, "--snapshot", snapshot);
assert.strictEqual(recoloredResult.status, 0, "Approved functional color changes must remain layout-only");

const changed = path.join(temp, "changed.maxpat");
const changedDocument = JSON.parse(fs.readFileSync(fixture, "utf8"));
changedDocument.patcher.boxes[0].box.text = "structural change";
fs.writeFileSync(changed, JSON.stringify(changedDocument));
const changedResult = run("check", changed, "--snapshot", snapshot);
assert.notStrictEqual(changedResult.status, 0, "Structural edits must fail the layout-only guard");

console.log("Organizing Max patches skill contract: PASS");
