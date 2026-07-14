# System Architecture

## Overview

Geehon Motion System separates audio generation, parallel processing, gesture control, and presentation UI into independent Max abstractions. The supported entry point is `geehon-motion-system.maxproj`; the top-level performance patch is `patchers/mt_portfolio_main.maxpat`.

## Runtime Layers

### 1. Source Layer

- `mt_input_mic_ui.maxpat`: live ADC input with mono/stereo routing
- `mt_input_file_ui.maxpat`: buffered file playback and waveform transport
- `mt_input_granular_ui.maxpat`: sample capture/loading and granular synthesis controls
- `mt_input_mixer_ui.maxpat`: source enable, gain, metering, and master source sum

All source enables use shared state routing so the module controls and mixer controls remain synchronized.

### 2. Parallel FX Layer

- `mt_mod_vocoder.maxpat`: pfft spectral envelope transfer with an internal carrier
- `mt_mod_vocal_chop.maxpat`: live slicing and optional recent-buffer hold behavior
- `mt_mod_tremolo.maxpat`: stereo amplitude motion

The Source Mixer output is copied to each processor. Effect outputs do not form a serial chain.

### 3. Return and Master Layer

`mt_fx_return_mixer.maxpat` receives one dry stereo bus and three independent stereo FX returns. Each return has its own enable and gain stage before the master sum.

This structure keeps the dry signal explicit:

- Dry Return off means no unprocessed source reaches the master.
- FX Return off means that processor contributes no output.
- Enabling an effect does not implicitly add another dry copy.

### 4. Gesture Layer

`mt_control_hand_jweb.maxpat` embeds a local HTML page with `jweb`. The page loads MediaPipe Tasks Vision, obtains camera frames, draws the mirrored preview, and sends hand landmark dictionaries back into Max.

The Max control layer derives normalized values for hand X, hand Y, pinch distance, and palm width. The current Main patch maps the first three values to Tremolo parameters and leaves palm width reserved.

## Project-Relative Resource Loading

The hand tracker resolves:

```text
Project:/web/hand-landmarker/jweb-hands-landmarker.html
```

through `absolutepath`, converts it to a `file://` URL, and sends it to `jweb`. Active runtime patchers therefore do not depend on a specific macOS user folder.

## Interface Stability

Max inlet and outlet order follows interface order, including horizontal outlet placement inside subpatchers. The test `tests/test_hand_control_interface.js` locks the internal hand-control order to:

```text
Camera Menu -> Hand X -> Hand Y -> Pinch -> Palm
```

This prevents camera list messages from being routed into numeric gesture outputs if internal objects are rearranged.

## Source of Truth

The manually organized `.maxpat` files under `patchers/` are the current source of truth. Older generators are retained only under `archive/development-tools/` and must not overwrite active patches.
