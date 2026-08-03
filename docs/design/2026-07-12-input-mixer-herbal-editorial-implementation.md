# Input Mixer Herbal Editorial Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a standalone 760 x 320 Herbal Editorial UI version of the three-source stereo Input Mixer while preserving the current interface and DSP behavior.

**Architecture:** Keep `mt_input_mixer.maxpat` as the untouched working reference. Create a new `mt_input_mixer_ui.maxpat` that uses a raster skin behind native Max controls and preserves the existing nine-inlet, two-outlet graph. Add a static contract test before any Main integration.

**Tech Stack:** Max 9 `.maxpat` JSON, SVG, PNG, Node.js contract tests, macOS Quick Look rasterization.

---

## File Structure

- Create `assets/ui/input_mixer_panel_v1.svg`: editable 760 x 320 Herbal Editorial skin.
- Create `assets/ui/input_mixer_panel_v1.png`: canonical 2x raster skin, 1520 x 640.
- Create `input_mixer_panel_v1.png`: module-local skin for reliable Max resolution.
- Create `assets/ui/juhua_tea_logo_v1.svg`: reusable flower-only Logo.
- Create `mt_input_mixer_ui.maxpat`: standalone UI mixer, leaving the working mixer untouched.
- Create `scripts/test_input_mixer_ui.js`: static interface, asset, graph, and behavior contract.
- Modify `scripts/generate_patches.js`: add a dedicated UI-mixer builder without changing `buildInputMixer()`.

### Task 1: Create The Herbal Editorial Assets

**Files:**
- Create: `gesture_input_system/assets/ui/juhua_tea_logo_v1.svg`
- Create: `gesture_input_system/assets/ui/input_mixer_panel_v1.svg`
- Create: `gesture_input_system/assets/ui/input_mixer_panel_v1.png`
- Create: `gesture_input_system/input_mixer_panel_v1.png`

- [x] **Step 1: Write the reusable flower Logo SVG**

Use the approved no-stem flower: seven separated yellow chrysanthemum petals, one green tea-leaf petal, and a central yellow disc. Set `viewBox="0 0 240 240"` and keep the background transparent.

- [x] **Step 2: Write the 760 x 320 panel SVG**

Include the 48 px deep-green header, clear-white Source strips, pale grey-green Master strip, source icon wells, gain and meter slots, Master readout with extra bottom space, and fixed label text. Do not draw the interactive Enable buttons or gain controls into the skin.

- [x] **Step 3: Rasterize the panel**

Run:

```bash
qlmanage -t -s 1520 -o /private/tmp assets/ui/input_mixer_panel_v1.svg
python3 \
  -c 'from PIL import Image; src=Image.open("/private/tmp/input_mixer_panel_v1.svg.png"); crop=src.crop((0,0,1520,640)); crop.save("assets/ui/input_mixer_panel_v1.png"); crop.save("input_mixer_panel_v1.png")'
```

Expected: both PNG files report exactly `1520 x 640`; `fpic` autofit displays them at `760 x 320`.

- [x] **Step 4: Verify asset dimensions**

Run:

```bash
file assets/ui/input_mixer_panel_v1.png input_mixer_panel_v1.png
```

Expected: two PNG files, each `1520 x 640`.

### Task 2: Write The Failing Static Contract

**Files:**
- Create: `gesture_input_system/scripts/test_input_mixer_ui.js`

- [x] **Step 1: Define graph and PNG helpers**

Implement `boxMap`, recursive `validateGraph`, and `pngSize` using the same assertion style as `scripts/test_file_ui.js`.

- [x] **Step 2: Define the mixer contract**

Assert all of the following:

```js
assert.strictEqual(p.openinpresentation, 1);
assert.deepStrictEqual(boxes.get("mx-bg").presentation_rect, [0, 0, 760, 320]);
assert.strictEqual(boxes.get("mx-bg").pic, "input_mixer_panel_v1.png");
assert.strictEqual(inlets.length, 9);
assert.strictEqual(outlets.length, 2);
assert.deepStrictEqual(gainIds, ["mx-mic-gain", "mx-file-gain", "mx-grain-gain", "mx-master-gain"]);
```

Also assert three `$1 20` messages, the three shared state send names, Mute All routing to all three toggles, no `/Users/` path, no `ezdac~`, and no `loadmess`.

- [x] **Step 3: Run the contract before creating the patch**

Run:

```bash
node scripts/test_input_mixer_ui.js
```

Expected: FAIL because `mt_input_mixer_ui.maxpat` does not exist.

### Task 3: Build The Standalone UI Mixer

**Files:**
- Create: `gesture_input_system/mt_input_mixer_ui.maxpat`
- Modify: `gesture_input_system/scripts/generate_patches.js`

- [x] **Step 1: Add `buildInputMixerUI()`**

Use the existing `buildInputMixer()` signal graph as the source of truth. Assign new `mx-*` IDs, preserve the nine inlet and two outlet ordering, and add an `fpic` background with:

```js
makeBox("mx-bg", "fpic", 0, 0, 760, 320, {
  pic: "input_mixer_panel_v1.png",
  autofit: 1,
  forceaspect: 1,
  background: 1,
  ignoreclick: 1,
});
```

- [x] **Step 2: Place the native presentation controls**

Place three Enable toggles in the Source headers, three vertical `live.gain~` objects in the Source strips, one Mute All button in the Master strip, and one Master `live.gain~`. Add stable varnames for every visible control.

- [x] **Step 3: Preserve the audio and state graph**

Keep the order `audio inlet -> *~ enable gate -> live.gain~ -> stereo sum -> master live.gain~ -> outlet`. External Enables update local toggles and ramps without rebroadcasting through the shared state send path.

- [x] **Step 4: Add asset dependency metadata**

Add `input_mixer_panel_v1.png` to `dependency_cache`, set `openinpresentation` to `1`, and use a standalone window that exposes the full 760 x 320 presentation area.

- [x] **Step 5: Generate only the new mixer safely**

Add a guarded generation entry or a dedicated script path so generating `mt_input_mixer_ui.maxpat` does not regenerate the user's manually arranged Mic, File, and Granular patches.

### Task 4: Run Static Verification

**Files:**
- Test: `gesture_input_system/scripts/test_input_mixer_ui.js`

- [x] **Step 1: Run the mixer contract**

Run:

```bash
node scripts/test_input_mixer_ui.js
```

Expected: `Input Mixer UI static contract: PASS`.

- [x] **Step 2: Parse every project patch**

Run:

```bash
find . -name '*.maxpat' -print0 | xargs -0 -n1 jq empty
```

Expected: exit code 0 with no JSON errors.

- [x] **Step 3: Verify no absolute paths in the new module**

Run:

```bash
rg -n '/Users/' mt_input_mixer_ui.maxpat
```

Expected: no matches.

### Task 5: Max Visual And Object Check

**Files:**
- Test: `gesture_input_system/mt_input_mixer_ui.maxpat`

- [x] **Step 1: Open the standalone module in Max**

Run:

```bash
open -n -a Max mt_input_mixer_ui.maxpat
```

Expected: the patch opens in Presentation Mode with the full 760 x 320 skin.

- [ ] **Step 2: Inspect object resolution and layering**

Confirm no red objects, the PNG is visible, native controls are clickable, the flower Logo renders, and the Master `0.0 dB` box retains bottom spacing.

- [x] **Step 3: Stop before Main integration**

Do not edit `mt_portfolio_main.maxpat`. Hand the standalone module to the user for audio testing and visual approval first.

## Repository Note

The current workspace is not a Git repository, so the commit steps normally required by the workflow cannot be performed. No repository initialization is included in this plan.
