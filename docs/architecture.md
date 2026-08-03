# System Architecture

## Overview

MOTION INSTRUMENT separates audio sources, serial processing, gesture control, recording, and presentation into reusable Max abstractions. The supported entry point remains `geehon-motion-system.maxproj`; the top-level performance patch is `patchers/mt_portfolio_main.maxpat`.

## Runtime signal flow

```text
Mic / File / Granular
          |
          v
     Source Mixer
          |
          v
       Vocoder
          |
          v
      Bitcrusher
          |
          v
  Multiband Filter
          |
          v
   Feedback Delay
          |
          +----> Record / Edit / Export (post-FX, pre-monitor)
          |
          v
   Master Monitor ----> Meter / DAC
```

Bitcrusher, Multiband Filter, and Feedback Delay use a short `mt_serial_bypass` ramp so a disabled processor continues passing the dry serial signal without clicks. Vocoder uses its internal bypass path. The monitor gain and mute stage is after the recording tap and therefore cannot change the exported WAV.

## Runtime layers

### 1. Source layer

- `mt_input_mic_ui.maxpat`: live mono/stereo input, noise gate, and microphone EQ access
- `mt_input_file_ui.maxpat`: buffered file loading, playback, progress, and waveform transport
- `mt_input_granular_ui.maxpat`: sample capture/loading and granular synthesis controls
- `mt_input_mixer_ui.maxpat`: source enable, gain, metering, and stereo source sum

### 2. Serial FX layer

- `mt_mod_vocoder.maxpat`: pfft spectral voice processor
- `mt_mod_bitcrusher.maxpat`: sample-rate reduction, bit-depth reduction, and drive
- `mt_mod_multiband_filter_v2.maxpat`: three-band spectral motion processor
- `mt_mod_feedback_delay.maxpat`: stereo feedback delay
- `mt_fx_output_trim_panel.maxpat`: one synchronized output control and meter per serial stage

Effect selection in the FX page changes only the visible editor. It does not change signal order.

### 3. Gesture layer

`mt_control_hand_jweb.maxpat` embeds the local Hand Landmarker page and returns independent tracked-hand dictionaries. `mt_fx_hand_mapper.js` assigns roles by workspace position:

- Target workspace: finger counts 1–5 select Vocoder, Bitcrusher, Multiband, Delay, or All; a fist holds the current values.
- Parameter workspace: X, Y, and pinch continuously drive the selected target.

This spatial role assignment avoids relying on MediaPipe Left/Right labels. Confirmation, loss handling, and smoothing use timestamps so the response is not tied to a particular camera frame rate.

### 4. Record and monitor layer

- `mt_record_export_editor.maxpat`: post-FX stereo capture, waveform selection, preview, and 24-bit WAV export
- `mt_master_monitor.maxpat`: final listening gain, mute, stereo meters, and peak display

Preview is routed into the monitor path without being recorded back into the take.

### 5. Presentation layer

The top-level patch contains five presentation states:

- Perform: live source, gesture, effect, record, and monitor controls
- Source: one selected source editor plus the fixed Source Mixer
- FX: one selected effect editor plus the fixed serial-stage output panel
- Gesture: camera workspace, gesture readout, control target, and mapping values
- Master: full record/export editor and final monitor

Page switching changes visibility only; it does not reset DSP or create duplicate processing instances.

## Project-relative loading

The hand tracker resolves `Project:/web/hand-landmarker/jweb-hands-landmarker.html` through the Max Project. Active runtime patchers and UI assets therefore do not depend on a specific macOS user path.

## Source of truth

The manually organized `.maxpat` files under `patchers/` are the runtime source of truth. Files under `archive/` are retained for design history and are not part of the current Main signal path.
