# Tabbed Main UI Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace the scrolling Presentation layout in `mt_portfolio_main.maxpat` with a 1760 x 960 four-page interface whose hidden pages continue processing audio.

**Architecture:** Keep the existing DSP graph and patching-mode layout intact. Add a top-level tab, a small embedded router that emits `script hide`/`script show` messages, and a top-level `thispatcher` that changes only object visibility. Give every page-owned object a stable `varname`, overlap page content inside one shared Presentation viewport, and keep DSP/output controls persistent.

**Tech Stack:** Max 9 patch JSON, `bpatcher`, `tab`, `thispatcher`, Max scripting names, Node.js static contract tests.

---

### Task 1: Add a failing tabbed-layout contract

**Files:**
- Modify: `scripts/test_portfolio_main.js`

- [ ] **Step 1: Assert the fixed window, tab, router, and scripting names**

Add assertions equivalent to:

```js
assert.deepStrictEqual(patcher.rect.slice(2), [1760, 960]);
assert.strictEqual(boxes.get("pm-page-tab").maxclass, "tab");
assert.deepStrictEqual(boxes.get("pm-page-tab").tabs, ["SOURCE", "FX", "GESTURE", "MASTER"]);
assert(boxes.get("pm-page-router"), "page router is missing");
assert.strictEqual(boxes.get("pm-thispatcher").text, "thispatcher");

for (const [id, varname] of Object.entries({
  "pm-mic": "ui_source_mic",
  "pm-file": "ui_source_file",
  "pm-grain": "ui_source_grain",
  "pm-mixer": "ui_source_mixer",
  "pm-vocoder": "ui_fx_vocoder",
  "pm-chop": "ui_fx_chop",
  "pm-tremolo": "ui_fx_tremolo",
  "pm-hand": "ui_gesture_hand",
  "pm-fx-return": "ui_master_returns",
})) assert.strictEqual(boxes.get(id).varname, varname, `${id} varname`);
```

- [ ] **Step 2: Assert visibility routing is isolated from DSP enables**

```js
assert(hasLine("pm-page-tab", 0, "pm-page-router", 0));
assert(hasLine("pm-page-router", 0, "pm-thispatcher", 0));
for (const entry of patcher.lines || []) {
  const source = entry.patchline.source[0];
  const destination = entry.patchline.destination[0];
  if (source === "pm-page-tab" || source === "pm-page-router") {
    assert(!/enable|wet-force/.test(destination), "page routing must not alter DSP state");
  }
}
```

- [ ] **Step 3: Run the contract and verify failure**

Run: `node scripts/test_portfolio_main.js`

Expected: FAIL because `pm-page-tab` does not exist.

### Task 2: Build the page router and Presentation layout

**Files:**
- Modify: `mt_portfolio_main.maxpat`

- [ ] **Step 1: Add the tab, initialization, router, and thispatcher objects**

Create:

```text
pm-page-load: loadmess 0
pm-page-tab: tab with SOURCE / FX / GESTURE / MASTER
pm-page-router: p Main_page_router
pm-thispatcher: thispatcher
```

The router clips input to 0-3, uses `sel 0 1 2 3`, and emits comma-separated
`script hide <varname>` / `script show <varname>` sequences. Each page sequence
must first hide all page objects, then show only the selected page objects.

- [ ] **Step 2: Assign stable scripting names**

```text
SOURCE: ui_source_mic, ui_source_file, ui_source_grain, ui_source_mixer
FX: ui_fx_vocoder, ui_fx_chop, ui_fx_tremolo
GESTURE: ui_gesture_hand, ui_gesture_map_title, ui_gesture_slot1..4,
         ui_gesture_slot1_label..slot4_label
MASTER: ui_master_returns
```

- [ ] **Step 3: Apply the 1760 x 960 Presentation grid**

Use a fixed header through y=128, shared page content from y=148 through y=840,
and a persistent footer from y=866 through y=944. Preserve every bpatcher's
native width and height.

```text
SOURCE: Mic (24,160), File (468,160), Granular (1012,160), Mixer (488,620)
FX: Vocoder (24,160), Chop (24,409), Tremolo (24,678)
GESTURE: Hand (24,160), mapping monitors starting at (680,190)
MASTER: FX Return Mixer (24,160)
```

Move DSP start/stop, master meters, `ezdac~`, and Main Out label into the footer.
Remove the redundant external source toggles from Presentation without deleting
their patching-mode logic.

- [ ] **Step 4: Preserve all existing DSP patchlines**

Do not recreate or reorder existing lines. Add only:

```text
pm-page-load -> pm-page-tab
pm-page-tab -> pm-page-router
pm-page-router -> pm-thispatcher
```

- [ ] **Step 5: Run the contract**

Run: `node scripts/test_portfolio_main.js`

Expected: `Portfolio Main source integration contract: PASS` and tabbed-layout assertions pass.

### Task 3: Synchronize the generator

**Files:**
- Modify: `scripts/generate_patches.js`

- [ ] **Step 1: Add generator helpers for the tab and embedded router**

Generate the same object IDs, tab labels, varnames, router messages, and three
new page-control patchlines used by the checked-in patch.

- [ ] **Step 2: Replace the long-page Presentation map**

Update `buildPortfolioMain()` to emit the 1760 x 960 window and the exact
coordinates from Task 2. Do not change the existing audio/control line list.

- [ ] **Step 3: Check generator syntax**

Run: `node --check scripts/generate_patches.js`

Expected: no output and exit code 0.

### Task 4: Regression verification

**Files:**
- Test: `scripts/test_portfolio_main.js`
- Test: `scripts/test_input_mixer_ui.js`

- [ ] **Step 1: Validate patch JSON**

Run: `jq empty mt_portfolio_main.maxpat mt_input_mixer_ui.maxpat`

Expected: no output and exit code 0.

- [ ] **Step 2: Run static contracts**

Run:

```bash
node scripts/test_portfolio_main.js
node scripts/test_input_mixer_ui.js
```

Expected: both print `PASS`.

- [ ] **Step 3: Audit endpoints and port ranges**

Verify every patchline source/destination ID exists and every destination inlet
index remains within its declared `numinlets`. Confirm the only newly added
patchlines are page-control lines.

- [ ] **Step 4: Manual Max acceptance test**

Open `mt_portfolio_main.maxpat`, verify SOURCE appears first, switch all four
tabs, and confirm an enabled effect remains audible while its UI is hidden.
Audio acceptance is completed by the user on their configured audio device.
