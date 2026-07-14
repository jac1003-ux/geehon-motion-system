# Mic Input UI Finalization Implementation Plan

1. Record hashes for `mt_input_mic.maxpat` and `mt_portfolio_main.maxpat`.
2. Add `scripts/test_mic_ui.js` and run it before implementation to establish a failing baseline.
3. Add a separate `buildMicInputUI()` generator and a `mic-ui` targeted generation mode to `scripts/generate_patches.js`.
4. Generate `mt_input_mic_ui.maxpat` with the approved 420 x 280 PNG UI, centralized defaults, shared Enable state, stable varnames, and assistance.
5. Implement independent 20 ms Enable and route-change ramps in the internal Mic core.
6. Run the static Mic UI test and the existing whole-project patch validation.
7. Open the formal patch in Max, verify object resolution and PNG display, then test it inside a bpatcher host.
8. After validation, move `mt_input_mic_ui_preview.maxpat` to `archive/ui_prototypes/`.
9. Recheck old Mic and Main hashes to prove they were not modified.

No Git commit is included because this directory is not currently a Git repository.
