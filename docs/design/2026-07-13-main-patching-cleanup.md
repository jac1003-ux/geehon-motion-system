# Main Patching Mode Cleanup Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Collect Main's source/FX state utilities into two subpatchers while preserving all audio routing and Presentation geometry.

**Architecture:** Main retains visible modules and direct audio flow. `p Source_state_router` handles three source buses, while `p FX_state_router` handles FX enable fan-out and wet defaults. The generator remains the source of truth.

**Tech Stack:** Max 9 `.maxpat` JSON, Node.js patch generator, Node.js contract tests.

---

### Task 1: Lock the Cleanup Contract

**Files:**
- Modify: `scripts/test_portfolio_main.js`

- [ ] Add recursive graph validation and assertions for the two new subpatchers.
- [ ] Assert all redundant source debug IDs are absent.
- [ ] Assert Presentation rectangles and primary audio routes are unchanged.
- [ ] Run `node scripts/test_portfolio_main.js` and confirm it fails before implementation.

### Task 2: Refactor Main Generation

**Files:**
- Modify: `scripts/generate_patches.js`
- Generate: `mt_portfolio_main.maxpat`

- [ ] Add `p Source_state_router` with three receivers and three outputs.
- [ ] Add `p FX_state_router` with three state fan-outs and two wet defaults.
- [ ] Remove redundant source debug controls and top-level utility objects.
- [ ] Preserve every existing bpatcher position and Presentation rectangle.
- [ ] Generate only Main with `node scripts/generate_patches.js portfolio-main`.

### Task 3: Normalize Granular State Naming

**Files:**
- Modify: `scripts/generate_patches.js`
- Modify: `mt_input_mixer_ui.maxpat`
- Generate: `mt_portfolio_main.maxpat`

- [ ] Replace `mt_grain_enable_state` with `mt_granular_enable_state` in Input Mixer and Main generator definitions.
- [ ] Confirm Granular UI, Input Mixer, and Main all use the same bus symbol.

### Task 4: Verify the Result

**Files:**
- Test: `scripts/test_portfolio_main.js`
- Test: `scripts/test_input_mixer_ui.js`

- [ ] Run all seven static contract tests and require PASS.
- [ ] Recursively validate every `.maxpat` patchline endpoint.
- [ ] Open Main in Max and query MCP when its Socket.IO agent is available.
- [ ] Report MCP unavailability separately if the local agent server is not running; do not block file verification.
