# Granular Input UI Design

## Goal

Create a portfolio-ready `mt_input_granular_ui.maxpat` based on the approved Granular Instrument Deck concept. The module must preserve the existing granular source behavior while presenting it as a coherent commercial audio instrument.

## Scope

- Create a new formal module; do not overwrite `mt_input_granular.maxpat`.
- Do not modify `mt_portfolio_main.maxpat` until standalone testing is approved.
- Keep gesture mapping outside this phase.
- Keep the existing Safe Cloud and Frozen Pad sounds; the preset control must support adding more entries later.

## Visual Reference

- Approved concept: `assets/ui/concepts/granular_ui_concept_v1.png`.
- Formal module footprint: 720 x 440.
- The concept image is a layout and art-direction reference, not the final clickable background.
- The final PNG skin provides panel structure, dividers, slots, and visual texture. Max controls remain native and interactive above it.
- Visual language continues the Mic/File dark precision-instrument system with cyan, blue, green, and amber accents.

## Presentation Layout

### Header And Material Strip

- Title: `GRANULAR INPUT`.
- Supporting text: `record / load / shape / perform`.
- Controls: Enable, Record Mic, Play Texture, Drop Sample, Load, Preset.
- `Record Mic` records live microphone material into the granular buffer.
- `Drop Sample` and `Load` replace the buffer with a selected audio file.
- The UI does not present Mic and File as two simultaneous playback sources.

### Waveform And Status

- A large central `waveform~` displays the granular buffer.
- Dragging the waveform changes the particle read position.
- A visible position/playhead line reflects the current granular read location.
- Status row displays short file name, `Recording` / `Loaded` / `No material`, and buffer duration.

### Grain Parameter Bank

Seven rotary controls remain visible at all times. Each dial has a numeric readout and stable varname.

| Parameter | Range | Initial |
| --- | --- | --- |
| Wet | 0 to 100 percent | 90 percent |
| Density | 1 to 80 grains/second | 28 grains/second |
| Grain Size | 20 to 500 ms | 129.370483 ms |
| Pitch | -24 to 24 semitones | 0 semitones |
| Spray | 0 to 1000 ms | 57.6 ms |
| Grain Amp | -60 to -3 dB | -32 dB |
| Texture Gain | -60 to 12 dB | 0 dB |

Preset changes must update the visible dials and readouts as well as the synthesis engine.

### Preset Menu

- Use a menu rather than separate preset buttons.
- Initial entries: `Safe Cloud`, `Frozen Pad`.
- Menu routing must be easy to extend with additional named presets without redesigning the presentation layer.

### Output Rail

- Right-side stereo `live.gain~`, initialized to 0 dB.
- Stereo meter and gain control use the same visual placement language as Mic and File.
- Stereo L/R outlets remain the formal audio interface.

## External Interface

- Inlet 1: Enable 0/1.
- Outlet 1: Granular audio L.
- Outlet 2: Granular audio R.

The external Enable inlet is receive-only: it updates the local UI and DSP but does not rebroadcast into the shared state bus. Local Enable changes publish to `mt_granular_enable_state` so Main can synchronize source and mixer state without a feedback loop.

## Behavior

- Startup: Enable Off, Record Off, Play Off, Output 0 dB.
- Enable changes use a 20 ms signal ramp.
- Loading a new sample stops recording, refreshes waveform/file name/duration, and leaves playback in a predictable stopped state.
- Record Mic and Play Texture are independent controls.
- When no material is available, output remains silent and status reads `No material`.
- Safe Cloud and Frozen Pad retain their current parameter values.

## Internal Organization

- `p Granular_control`: initialization, UI state, preset routing, status formatting, and receive-only external Enable.
- `p Granular_input`: microphone record, sample loading, buffer information, waveform position, enable ramp, and stereo output.
- Existing granular synthesis abstractions remain reusable and are not visually exposed in presentation mode.
- Defaults use one centralized `loadbang` chain instead of scattered `loadmess` objects.
- State, control, and audio patchlines use the established blue, amber, and green categories.

## Assets

- `assets/ui/concepts/granular_ui_concept_v1.png`: approved visual reference.
- `assets/ui/granular_panel_v1.png`: canonical final skin.
- `granular_panel_v1.png`: module-local copy for reliable `fpic` resolution.

## Verification

- JSON parses with no duplicate IDs or dangling patchlines.
- PNG is present, 720 x 440, behind controls, and does not intercept clicks.
- No absolute user paths, red objects, internal `ezdac~`, or scattered `loadmess` defaults.
- Record Mic, Drop, Load, Play Texture, Preset, waveform position, seven parameters, Output gain, and L/R outlets work independently.
- Preset selection visibly updates all seven controls.
- External Enable cannot create a Main feedback loop.
- Standalone approval occurs before replacing the Granular bpatcher in Main.

## Out Of Scope

- Additional presets beyond Safe Cloud and Frozen Pad.
- Hand/face/body parameter mapping.
- New granular synthesis features or changes to the grain voice algorithm.
- Main integration before standalone approval.
