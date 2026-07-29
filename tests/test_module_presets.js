const assert = require("assert");
const fs = require("fs");
const path = require("path");
const vm = require("vm");

const root = path.resolve(__dirname, "..");

function read(relativePath) {
  return JSON.parse(fs.readFileSync(path.join(root, relativePath), "utf8"));
}

function findBox(patcher, id) {
  for (const entry of patcher.boxes || []) {
    if (entry.box.id === id) return entry.box;
    if (entry.box.patcher) {
      const nested = findBox(entry.box.patcher, id);
      if (nested) return nested;
    }
  }
}

function hasLine(patcher, sourceId, destinationId) {
  for (const entry of patcher.lines || []) {
    const line = entry.patchline;
    if (line.source[0] === sourceId && line.destination[0] === destinationId) {
      return true;
    }
  }
  return (patcher.boxes || []).some(
    (entry) =>
      entry.box.patcher &&
      hasLine(entry.box.patcher, sourceId, destinationId)
  );
}

const granular = read("patchers/inputs/mt_input_granular_ui.maxpat").patcher;
assert.deepStrictEqual(findBox(granular, "g-preset").items, [
  "Safe Cloud",
  ",",
  "Frozen Pad",
  ",",
  "Rhythmic Dust"
]);
assert.strictEqual(findBox(granular, "gc-preset-select").text, "sel 0 1 2");
assert(hasLine(granular, "gc-rhythmic-values", "gc-param-unpack"));

const modules = [
  ["vocoder", "vm", "patchers/effects/mt_mod_vocoder.maxpat", 5],
  ["bitcrusher", "bc", "patchers/effects/mt_mod_bitcrusher.maxpat", 3],
  ["delay", "fd", "patchers/effects/mt_mod_feedback_delay.maxpat", 4]
];
for (const [, prefix, relativePath, outputCount] of modules) {
  const patcher = read(relativePath).patcher;
  assert(findBox(patcher, `${prefix}-preset`));
  assert.strictEqual(findBox(patcher, `${prefix}-preset-unpack`).numoutlets, outputCount);
  assert(hasLine(patcher, `${prefix}-preset`, `${prefix}-preset-js`));
}

const presetSource = fs.readFileSync(
  path.join(root, "patchers/effects/mt_module_presets.js"),
  "utf8"
);
for (const [moduleName, , , outputCount] of modules) {
  let output;
  const context = {
    jsarguments: ["js", moduleName],
    outlet: (_, value) => {
      output = value;
    }
  };
  vm.runInNewContext(presetSource, context);
  context.msg_int(2);
  assert.strictEqual(output.length, outputCount);
}

const multiband = read("patchers/effects/mt_mod_multiband_filter_v2.maxpat").patcher;
assert(findBox(multiband, "mb2-preset"));
assert.strictEqual(findBox(multiband, "mb2-controller").numoutlets, 22);
assert(hasLine(multiband, "mb2-preset-message", "mb2-controller"));
assert(hasLine(multiband, "mb2-controller", "mb2-focus"));
assert(hasLine(multiband, "mb2-controller", "mb2-high-x"));

const controllerSource = fs.readFileSync(
  path.join(root, "patchers/effects/mt_multiband_filter_controller.js"),
  "utf8"
);
const controller = { outlet() {} };
vm.runInNewContext(controllerSource, controller);
controller.preset(2);
assert.deepStrictEqual(Array.from(controller.gains), [0, 1, 1.5]);
assert.deepStrictEqual(Array.from(controller.widths), [0.7, 1.25, 1.65]);

console.log("module presets: ok");
