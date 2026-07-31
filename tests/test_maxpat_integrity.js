const assert = require("assert");
const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");

function collectFiles(directory, extension, result = []) {
  for (const entry of fs.readdirSync(directory, { withFileTypes: true })) {
    if (entry.name === ".git") continue;
    const fullPath = path.join(directory, entry.name);
    if (entry.isDirectory()) collectFiles(fullPath, extension, result);
    if (entry.isFile() && entry.name.endsWith(extension)) result.push(fullPath);
  }
  return result;
}

function inspectPatcher(patcher, label, totals) {
  const boxes = patcher.boxes || [];
  const ids = boxes.map((entry) => entry.box && entry.box.id).filter(Boolean);
  const duplicateIds = ids.filter((id, index) => ids.indexOf(id) !== index);

  assert.deepStrictEqual(
    [...new Set(duplicateIds)],
    [],
    `${label}: duplicate object IDs`
  );

  const idSet = new Set(ids);
  const boxesById = new Map(
    boxes.map((entry) => [entry.box && entry.box.id, entry.box])
  );
  for (const entry of patcher.lines || []) {
    const patchline = entry.patchline || {};
    const sourceId = patchline.source && patchline.source[0];
    const sourceOutlet = patchline.source && patchline.source[1];
    const destinationId = patchline.destination && patchline.destination[0];
    assert(idSet.has(sourceId), `${label}: missing patchline source ${sourceId}`);
    assert(
      idSet.has(destinationId),
      `${label}: missing patchline destination ${destinationId}`
    );
    const sourceText = (boxesById.get(sourceId) || {}).text || "";
    if (/^pa(?:ck|k)\b/.test(sourceText)) {
      assert.strictEqual(
        sourceOutlet,
        0,
        `${label}: ${sourceId} has only one outlet`
      );
    }
    totals.lines += 1;
  }

  totals.patchers += 1;
  totals.boxes += ids.length;

  for (const entry of boxes) {
    const nested = entry.box && entry.box.patcher;
    if (nested) inspectPatcher(nested, `${label}/${entry.box.id}`, totals);
  }
}

const files = collectFiles(root, ".maxpat").sort();
assert(files.length > 0, "No .maxpat files found");

const totals = { files: files.length, patchers: 0, boxes: 0, lines: 0 };
for (const filePath of files) {
  const relativePath = path.relative(root, filePath);
  let document;
  assert.doesNotThrow(() => {
    document = JSON.parse(fs.readFileSync(filePath, "utf8"));
  }, `${relativePath}: invalid JSON`);
  assert(document.patcher, `${relativePath}: missing top-level patcher`);
  inspectPatcher(document.patcher, relativePath, totals);
}

console.log(
  `PASS: ${totals.files} maxpat files, ${totals.patchers} patchers, ` +
    `${totals.boxes} boxes, ${totals.lines} patchlines`
);
