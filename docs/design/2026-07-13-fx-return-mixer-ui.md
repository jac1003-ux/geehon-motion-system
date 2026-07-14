# FX Return Mixer UI Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Apply the approved Herbal Editorial skin and Presentation layout to the existing parallel FX return mixer without changing its DSP contract.

**Architecture:** A deterministic SVG is the editable design source and is rendered to a two-times PNG used by a background `fpic`. Existing Max controls remain interactive above the image; the existing signal graph and patching-mode geometry remain untouched.

**Tech Stack:** Max 9 `.maxpat` JSON, SVG, PNG, Node.js static-contract tests.

---

### Task 1: Add the visual asset

**Files:**
- Create: `assets/ui/fx_return_mixer_panel_v1.svg`
- Create: `assets/ui/fx_return_mixer_panel_v1.png`
- Create: `fx_return_mixer_panel_v1.png`

- [ ] Draw the approved `760 x 300` SVG with equal Dry/Vocoder/Chop/Tremolo strips and a wider Master section.
- [ ] Render at `1520 x 600` and copy the PNG beside the patch for Max search-path reliability.
- [ ] Verify PNG dimensions and inspect the rendered image.

### Task 2: Skin the existing mixer

**Files:**
- Modify: `mt_fx_return_mixer.maxpat`
- Modify: `scripts/generate_patches.js`

- [ ] Add a background `fpic` referencing `fx_return_mixer_panel_v1.png`.
- [ ] Set Presentation rectangles for the four enables, four `live.gain~` controls, Master gain, and stereo meters.
- [ ] Hide static comments and redundant lane meters from Presentation.
- [ ] Preserve existing IDs, patching rectangles, patchlines, inlet/outlet order, initial gains, and enable synchronization.
- [ ] Add the PNG to `dependency_cache` and reproduce the same result from `buildFxReturnMixer()`.

### Task 3: Add regression checks

**Files:**
- Create: `scripts/test_fx_return_mixer_ui.js`

- [ ] Validate SVG/PNG presence and `1520 x 600` dimensions.
- [ ] Validate graph endpoints and unique IDs.
- [ ] Validate 12 inlets, 5 outlets, the background `fpic`, stable UI names, gain defaults, 20 ms enable ramps, stereo summing, and absence of absolute paths.
- [ ] Validate that redundant lane meters are not in Presentation.

### Task 4: Verify integration

**Files:**
- Verify: `mt_portfolio_main.maxpat`
- Verify: `scripts/test_portfolio_main.js`

- [ ] Regenerate only the FX return mixer and confirm no main-patch contract changes.
- [ ] Run the FX mixer test and all existing UI/main tests.
- [ ] Parse every project `.maxpat` and audit patchline endpoints.
