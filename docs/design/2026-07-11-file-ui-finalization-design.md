# File Input UI Finalization Design

## Goal

Create a portfolio-ready `mt_input_file_ui.maxpat` that keeps the existing File source behavior while giving it an original 520 x 340 PNG instrument skin and a clearer playback workflow.

## Scope

- Create a new formal module; do not replace `mt_input_file.maxpat`.
- Do not modify `mt_portfolio_main.maxpat` until standalone approval.
- Do not regenerate or modify the manually arranged `mt_input_mic_ui.maxpat`.
- Borrow only general layout methods from Gutter Synthesis; do not copy its GPL artwork or patch assets.

## Interface

- Inlet 1: external Enable, 0 or 1.
- Inlet 2: external Play, 0 or 1.
- Outlet 1: stereo audio left.
- Outlet 2: stereo audio right.

The external Enable inlet is receive-only. It updates the local UI and DSP but must not write back to the shared Enable state bus, preventing feedback loops when hosted in Main.

## Presentation UI

- Fixed footprint: 520 x 340.
- Original PNG background: `file_panel_v1.png`.
- Top transport strip: Enable, Play, Loop, Drop Audio, Load.
- Center: large native `waveform~` display with click/drag seek and visible playhead.
- Bottom status strip: short file name plus `MM:SS / MM:SS` time display.
- Right output rail: `live.gain~`, initialized to 0 dB.
- Empty state: `No file loaded`; playback stays silent.

## Behavior

- Startup: Enable Off, Play Off, Loop Off, Output 0 dB.
- Enable uses a 20 ms signal ramp.
- Play controls `groove~` transport.
- Loop is explicit and defaults Off.
- Loading or dropping a new file stops playback, resets the playhead, updates the short file name, and refreshes duration.
- The waveform remains the interactive seek control; no duplicate progress slider is added.
- Each patch instance uses a `#0` buffer name.

## Visual Language

- Dark, compact instrument panel consistent with the approved Mic UI.
- Thin cyan, green, blue, and amber boundary accents.
- No copied Gutter assets and no decorative gradients.
- Native controls sit above the PNG so Max retains real interactivity and accessibility.

## Verification

- JSON parses and all patchline endpoints exist.
- PNG exists beside the module and in `assets/ui/`.
- Required varnames and assistance comments are present.
- No absolute user paths, `ezdac~`, or scattered `loadmess` defaults.
- External Enable does not feed the shared state sender.
- Static checks confirm Loop Off, Output 0 dB, 20 ms ramp, waveform seek, playhead feedback, and instance-safe buffer naming.
- The module is opened in Max for object-resolution and visual inspection before any Main integration.
