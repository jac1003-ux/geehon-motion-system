# File Input UI Finalization Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build and verify a standalone 520 x 340 portfolio File Input module with an original PNG skin, interactive waveform seeking, explicit loop control, and reliable playback status.

**Architecture:** A presentation-layer patch hosts native controls, an original PNG background, a small control subpatch, and a dedicated audio/file core subpatch. The core owns the `#0` buffer and `groove~`; the control layer owns initialization and receive-only external state handling. A targeted generator mode writes only the File UI module.

**Tech Stack:** Max 9 `.maxpat` JSON, Node.js patch generator/static tests, original raster PNG assets.

---

### Task 1: Static Contract Test

**Files:**
- Create: `scripts/test_file_ui.js`

- [ ] Write assertions for the 520 x 340 presentation footprint, PNG dependency, stable varnames, interface comments, centralized initialization, `#0_file_buffer`, Loop Off, Output 0 dB, waveform seek, playhead feedback, and receive-only external Enable.
- [ ] Run `node scripts/test_file_ui.js` and confirm it fails because `mt_input_file_ui.maxpat` does not exist.

### Task 2: Original File Panel Asset

**Files:**
- Create: `assets/ui/file_panel_v1.svg`
- Create: `assets/ui/file_panel_v1.png`
- Create: `file_panel_v1.png`

- [ ] Draw a deterministic 520 x 340 dark instrument panel with transport, waveform, status, and output zones.
- [ ] Rasterize it to PNG and place an identical module-local copy beside the patch.
- [ ] Verify both PNG files are readable and exactly 520 x 340.

### Task 3: Targeted File UI Generator

**Files:**
- Modify: `scripts/generate_patches.js`
- Create: `mt_input_file_ui.maxpat`

- [ ] Add `buildFileInputUI()` without changing `buildFileInput()`.
- [ ] Add a `file-ui` CLI branch that calls only `buildFileInputUI()` and returns.
- [ ] Build the outer presentation layer with Enable, Play, Loop, Drop, Load, waveform, file name, time, Output gain, two inlets, and two outlets.
- [ ] Build `p File_control` with one `loadbang` initialization fan-out, local Enable state publication, receive-only external Enable, external Play UI synchronization, filename extraction, file-change stop/reset, and time formatting.
- [ ] Build `p File_input` with `buffer~ #0_file_buffer`, `groove~`, explicit loop messages, waveform seek, playhead feedback, 20 ms Enable ramp, duration output, and stereo L/R output.
- [ ] Color state, control, and audio patchlines consistently.
- [ ] Run `node scripts/generate_patches.js file-ui`; do not run the generator without an argument and do not run `mic-ui`.

### Task 4: Automated Verification

**Files:**
- Test: `scripts/test_file_ui.js`

- [ ] Run `node scripts/test_file_ui.js` and require `File UI static contract: PASS`.
- [ ] Parse every `.maxpat` file and validate patchline endpoints and duplicate IDs.
- [ ] Compare the Mic UI file hash captured before/after generation to prove it was not overwritten.

### Task 5: Max Standalone Check

**Files:**
- Inspect: `mt_input_file_ui.maxpat`

- [ ] Open the module in Max and confirm no red objects and a visible PNG skin.
- [ ] Confirm Load and Drop update waveform, short file name, and duration.
- [ ] Confirm Play, Loop, waveform seek, 20 ms Enable switching, and stereo Output work.
- [ ] Keep the module standalone; defer Main integration until user approval.

No Git commit is included because this directory is not currently a Git repository.
