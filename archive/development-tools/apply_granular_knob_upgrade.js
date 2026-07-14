const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const targetPath = path.join(root, "mt_input_granular_ui.maxpat");
const templatePath = path.join(root, "mt_input_granular_ui.generated.maxpat");
const backupPath = "/private/tmp/mt_input_granular_ui_before_pictctrl.maxpat";
const names = ["wet", "density", "size", "pitch", "spray", "amp", "makeup"];
const dialIds = new Set(names.map((name) => `g-${name}-dial`));
const valueIds = new Set(names.map((name) => `g-${name}-value`));
const setIds = new Set(names.map((name) => `g-${name}-set`));
const changedIds = new Set([...dialIds, ...setIds, "p-Granular-knob-map"]);

function byId(patcher) {
  return new Map((patcher.boxes || []).map((entry) => [entry.box.id, entry]));
}

function endpointId(endpoint) {
  return endpoint && endpoint[0];
}

function validate(patcher, label = "root") {
  const ids = new Set();
  for (const entry of patcher.boxes || []) {
    const box = entry.box;
    if (!box.id || ids.has(box.id)) throw new Error(`${label}: duplicate or missing id ${box.id}`);
    ids.add(box.id);
    if (box.patcher) validate(box.patcher, `${label}/${box.id}`);
  }
  for (const entry of patcher.lines || []) {
    const source = endpointId(entry.patchline.source);
    const destination = endpointId(entry.patchline.destination);
    if (!ids.has(source) || !ids.has(destination)) {
      throw new Error(`${label}: dangling line ${source} -> ${destination}`);
    }
  }
}

if (!fs.existsSync(templatePath)) throw new Error("Generate the Granular UI template first");
const targetDocument = JSON.parse(fs.readFileSync(targetPath, "utf8"));
const templateDocument = JSON.parse(fs.readFileSync(templatePath, "utf8"));
const target = targetDocument.patcher;
const template = templateDocument.patcher;
const targetBoxes = byId(target);
const templateBoxes = byId(template);

if (targetBoxes.has("p-Granular-knob-map")) {
  console.log("Granular picture knobs are already installed");
  process.exit(0);
}

fs.copyFileSync(targetPath, backupPath);
const untouchedBefore = new Map(
  [...targetBoxes.entries()]
    .filter(([id]) => !changedIds.has(id))
    .map(([id, entry]) => [id, JSON.stringify(entry)]),
);

for (const name of names) {
  const id = `g-${name}-dial`;
  const current = targetBoxes.get(id).box;
  const replacement = JSON.parse(JSON.stringify(templateBoxes.get(id).box));
  replacement.patching_rect = current.patching_rect;
  if (current.presentation_rect) replacement.presentation_rect = current.presentation_rect;
  targetBoxes.get(id).box = replacement;
}

target.boxes = target.boxes.filter((entry) => !setIds.has(entry.box.id));
target.boxes.push(JSON.parse(JSON.stringify(templateBoxes.get("p-Granular-knob-map"))));

target.lines = (target.lines || []).filter((entry) => {
  const source = endpointId(entry.patchline.source);
  const destination = endpointId(entry.patchline.destination);
  if (setIds.has(source) || setIds.has(destination)) return false;
  if (dialIds.has(source) && valueIds.has(destination)) return false;
  return true;
});

const knobLines = (template.lines || []).filter((entry) => {
  const source = endpointId(entry.patchline.source);
  const destination = endpointId(entry.patchline.destination);
  return source === "p-Granular-knob-map"
    || destination === "p-Granular-knob-map";
});
target.lines.push(...JSON.parse(JSON.stringify(knobLines)));

target.dependency_cache = target.dependency_cache || [];
if (!target.dependency_cache.some((item) => item.name === "granular_knob_v1.png")) {
  target.dependency_cache.push({
    name: "granular_knob_v1.png",
    bootpath: ".",
    patcherrelativepath: ".",
    type: "PNG",
    implicit: 1,
  });
}

const afterBoxes = byId(target);
for (const [id, serialized] of untouchedBefore) {
  if (JSON.stringify(afterBoxes.get(id)) !== serialized) {
    throw new Error(`Unexpected change to manually arranged object ${id}`);
  }
}
validate(target);
fs.writeFileSync(targetPath, JSON.stringify(targetDocument, null, 2), "utf8");
console.log(`Installed seven picture knobs; untouched object positions preserved. Backup: ${backupPath}`);
