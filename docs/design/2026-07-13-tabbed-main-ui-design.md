# MT Portfolio Main Tabbed UI Design

## Goal

Convert `mt_portfolio_main.maxpat` from a long scrolling overview into a
commercial-style four-page interface while preserving the existing audio and
control graph.

## Fixed Decisions

- Presentation window: 1760 x 960.
- Default page: SOURCE.
- Pages: SOURCE, FX, GESTURE, MASTER.
- Switching pages changes visibility only. Hidden processors continue running
  and must not mute, reset, or interrupt audio.
- First implementation covers page switching, layout, and functional testing.
  The final Herbal Editorial shell PNG is a later visual pass.
- Existing patching-mode object positions and manually organized patchlines are
  not rearranged.

## Persistent Regions

### Header

- JuHua identity and project title.
- Four page tabs: SOURCE / FX / GESTURE / MASTER.
- Active-page feedback.

### Footer

- DSP start/stop.
- Master L/R meters.
- Main output toggle.
- Footer remains visible on every page.

## Page Contents

### SOURCE

- `mt_input_mic_ui.maxpat`
- `mt_input_file_ui.maxpat`
- `mt_input_granular_ui.maxpat`
- `mt_input_mixer_ui.maxpat`
- Existing source enable synchronization remains active.

### FX

- `mt_mod_vocoder.maxpat`
- `mt_mod_vocal_chop.maxpat`
- `mt_mod_tremolo.maxpat`
- Effects keep receiving the Source Mixer signal while other pages are shown.

### GESTURE

- `mt_control_hand_jweb.maxpat`
- Four mapped-value monitors and labels.
- Existing gesture-to-Tremolo mappings remain unchanged in the first pass.

### MASTER

- `mt_fx_return_mixer.maxpat`
- Master output status and metering context.
- Dry and independent FX-return behavior remains unchanged.

## Page Switching

- Every page-owned bpatcher and companion UI object receives a stable scripting
  name.
- A contained page-router subpatch maps the selected tab index to parent-patcher
  show/hide commands.
- The router initializes SOURCE on load.
- Visibility commands must not be connected to processor enable inlets.

## Layout Rules

- Page content begins below the fixed header and ends above the fixed footer.
- Existing bpatcher dimensions are preserved; no bpatcher is reduced in a way
  that clips its internal Presentation UI.
- Modules align to a consistent grid with 24 px outer margins and at least 20 px
  between modules.
- Only `presentation_rect` values change for page layout. `patching_rect` values
  and patchline midpoints remain untouched.

## Generator Contract

- `scripts/generate_patches.js` must generate the same tabs, scripting names,
  visibility router, and Presentation coordinates as the checked-in main patch.
- Regeneration must not revert the main patch to the long-page layout.

## Verification

1. SOURCE is the visible page after opening the patch.
2. Each tab shows only its assigned modules plus the persistent header/footer.
3. Audio continues without clicks or interruption during page changes.
4. A running FX remains audible while its UI page is hidden.
5. Mic/File/Granular enable synchronization still works in both directions.
6. Gesture values continue controlling the existing Tremolo mappings while any
   page is visible.
7. All bpatchers retain their original inlet/outlet counts and patchlines.
8. Main patch JSON and generator syntax checks pass.

## Deferred Work

- Final full-window Herbal Editorial PNG shell.
- Restyling Vocoder, Vocal Chop, Tremolo, Gesture, and FX Return Mixer internals.
- New gesture mappings or DSP behavior changes.
