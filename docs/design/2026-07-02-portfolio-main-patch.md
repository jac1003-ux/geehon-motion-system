# Portfolio Main Patch Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the first complete portfolio prototype patch that wires input modules through the mixer into tremolo and a master output, with jweb gesture resources staged for the control layer.

**Architecture:** Keep existing modules isolated as bpatchers. Add `mt_portfolio_main.maxpat` as the top-level performance patch: Mic/File/Granular feed `mt_input_mixer.maxpat`, mixer feeds `mt_mod_tremolo.maxpat`, tremolo feeds master gain/meter/ezdac. Use `mt_control_hand_stub.maxpat` for first-pass gesture slot control and stage the two jweb packages under `gesture_input_system/jweb/`.

**Tech Stack:** Max/MSP `.maxpat` JSON, project-local Node generator script, bpatcher modules, jweb HTML/JS assets.

---

### Task 1: Stage jweb Gesture Assets

**Files:**
- Create directory: `/Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/jweb/`
- Copy from: `/Volumes/菊花茶/作品集msp/jweb-hands-gesture-recognizer-main.zip`
- Copy from: `/Volumes/菊花茶/作品集msp/jweb-hands-landmarker-main.zip`

- [ ] **Step 1: Extract both zip files into the project**

Run:

```bash
mkdir -p /Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/jweb
unzip -q -o /Volumes/菊花茶/作品集msp/jweb-hands-gesture-recognizer-main.zip -d /Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/jweb
unzip -q -o /Volumes/菊花茶/作品集msp/jweb-hands-landmarker-main.zip -d /Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/jweb
```

Expected: both package folders exist with `.html`, `.js`, `.maxpat`, README, image, and gif files.

### Task 2: Add Main Patch Generator

**Files:**
- Modify: `/Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/scripts/generate_patches.js`
- Create generated file: `/Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/mt_portfolio_main.maxpat`

- [ ] **Step 1: Add `buildPortfolioMain()`**

The function creates bpatchers for mic, file, granular, mixer, tremolo, and hand stub. It wires:

```text
mic/file/granular -> mixer -> tremolo -> master gain -> meter + ezdac
hand slot 1 -> tremolo rate
hand slot 2 -> tremolo depth
hand slot 3 -> tremolo stereo phase
```

- [ ] **Step 2: Call `buildPortfolioMain()` from `main()`**

Expected: running the generator writes `mt_portfolio_main.maxpat`.

### Task 3: Update Documentation

**Files:**
- Modify: `/Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/README.md`
- Modify generator README template in: `/Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/scripts/generate_patches.js`

- [ ] **Step 1: Add `mt_portfolio_main.maxpat` to the file list**

Expected: README describes this as the main portfolio prototype patch.

- [ ] **Step 2: Add a note that jweb resources are staged but not yet the active control module**

Expected: README states that the first prototype uses `mt_control_hand_stub.maxpat` while the two jweb packages are ready for the next integration pass.

### Task 4: Verify

**Files:**
- Check: `/Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/*.maxpat`
- Check: `/Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/jweb/`

- [ ] **Step 1: Run syntax and generator checks**

Run:

```bash
node --check /Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/scripts/generate_patches.js
node /Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/scripts/generate_patches.js
jq empty /Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/*.maxpat
```

Expected: all commands exit 0.

- [ ] **Step 2: Run a patchline integrity check**

Run a Node check that every patchline source/destination id exists in each patcher and nested subpatcher.

Expected: no missing object ids.

- [ ] **Step 3: Open the main patch in Max**

Run:

```bash
open -a Max /Users/jac_tea/Documents/maxmsp插件制作/gesture_input_system/mt_portfolio_main.maxpat
```

Expected: Max receives the file path without shell error.
