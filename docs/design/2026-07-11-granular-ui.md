# Granular Input UI Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a standalone 720 x 440 portfolio Granular Input module matching the approved Granular Instrument Deck concept without changing the old Granular module or Main.

**Architecture:** A PNG-backed presentation layer hosts native Max transport controls, `waveform~`, seven dial/readout pairs, preset menu, and stereo output gain. `p Granular_control` owns centralized initialization, parameter/preset UI synchronization, status, and external Enable handling; `p Granular_input` preserves the existing record/load/play granular engine and 20 ms output ramp.

**Tech Stack:** Max 9 `.maxpat` JSON, Node.js generator and static contract tests, deterministic SVG-to-PNG skin.

---

### Task 1: Contract Test

**Files:**
- Create: `scripts/test_granular_ui.js`

- [ ] Assert the 720 x 440 PNG footprint, interface comments, stable varnames, parameter ranges/defaults, preset menu entries, waveform interaction, centralized initialization, 20 ms ramp, and L/R outlets.
- [ ] Run `node scripts/test_granular_ui.js` and confirm failure because the formal module does not exist.

### Task 2: Granular Skin

**Files:**
- Create: `assets/ui/granular_panel_v1.svg`
- Create: `assets/ui/granular_panel_v1.png`
- Create: `granular_panel_v1.png`

- [ ] Draw the approved header, material strip, waveform/status region, seven parameter slots, and right Output rail at 720 x 440.
- [ ] Rasterize the SVG and verify both PNG copies are exactly 720 x 440.

### Task 3: Formal Granular Module

**Files:**
- Modify: `scripts/generate_patches.js`
- Create: `mt_input_granular_ui.maxpat`

- [ ] Add a targeted `granular-ui` generator path that writes only the new module.
- [ ] Build native Enable, Record Mic, Play Texture, Drop, Load, Preset, waveform, status, seven dial/readout pairs, Output gain, inlet, and L/R outlets.
- [ ] Build centralized defaults and preset routing so Safe Cloud and Frozen Pad update the engine, dials, and numeric readouts.
- [ ] Preserve mic recording, sample loading, waveform position, granular playback, duration reporting, and 20 ms Enable ramp.
- [ ] Color state, control, and audio patchlines consistently and keep the outer patch readable.

### Task 4: Verification

**Files:**
- Test: `scripts/test_granular_ui.js`
- Inspect: `mt_input_granular_ui.maxpat`

- [ ] Run the Granular UI contract and all-project graph validation.
- [ ] Confirm hashes for `mt_input_granular.maxpat` and `mt_portfolio_main.maxpat` did not change.
- [ ] Open the standalone module in Max and verify the skin, object resolution, complete layout, and no red objects.
- [ ] Leave Main unchanged until user audio testing approves the standalone module.

No Git commit is included because this directory is not currently a Git repository.
