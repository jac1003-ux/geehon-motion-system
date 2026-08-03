# MOTION INSTRUMENT

[中文说明](README_ZH.md) · [Project statement (PDF)](docs/MOTION_INSTRUMENT_Project_Statement_Draft_EN.pdf)

MOTION INSTRUMENT is a Max/MSP performance system that uses camera-tracked hand movement to shape sound in real time. It combines three sound sources, a fixed serial effects chain, spatial gesture roles, and an integrated record/edit/export workflow in one five-page interface.

![Perform page](assets/documentation/screenshots/perform_actual.png)

## Current build

This repository contains the complete portfolio prototype for Max 9. It is a Max Project rather than a packaged VST, Audio Unit, Max for Live device, or standalone application.

### Audio system

- Sources: microphone input with EQ, file player, and granular instrument
- Source Mixer with independent enable, gain, and level feedback
- Fixed serial effects chain: **Vocoder → Bitcrusher → Multiband Filter → Feedback Delay**
- Independent output gain and metering for every effect stage
- Post-FX stereo recording, waveform range selection, preview, and 24-bit WAV export
- Separate monitor level and mute controls that do not alter the exported recording

### Gesture system

- MediaPipe hand tracking embedded in Max through `jweb`
- Hands are assigned by workspace position instead of unreliable Left/Right labels
- The target workspace selects an effect with finger counts `1–5`; a fist freezes parameter updates
- The parameter workspace maps normalized X, Y, and pinch values to the selected effect
- Timestamp-based confirmation and smoothing keep behavior consistent across camera frame rates
- The Gesture page shows the recognized number, current target, raw input values, and mapped parameters

| Target | X | Y | Pinch |
| --- | --- | --- | --- |
| 1 Vocoder | Brightness | Carrier tone | Noise mix |
| 2 Bitcrusher | Sample rate | Bit depth | Drive |
| 3 Multiband | Focus | Contrast | Spread |
| 4 Delay | Delay time | Feedback | Stereo offset |
| 5 All | Controls all four effects | Controls all four effects | Controls all four effects |

Gesture target selection does not automatically enable an effect. Effect enable/bypass remains an explicit performance control.

## Interface

| Source | FX |
| --- | --- |
| ![Source page](assets/documentation/screenshots/source_actual.png) | ![FX page](assets/documentation/screenshots/fx_actual.png) |

| Gesture | Master |
| --- | --- |
| ![Gesture page](assets/documentation/screenshots/gesture_actual.png) | ![Master page](assets/documentation/screenshots/master_actual.png) |

The five tabs have distinct roles: **Perform** for live operation, **Source** for input editing and mixing, **FX** for detailed effect control, **Gesture** for camera feedback and mapping, and **Master** for recording, export, and final monitoring.

## Quick start

1. Install Cycling '74 Max 9.
2. Clone or download the complete repository; keep its folder structure intact.
3. Open `geehon-motion-system.maxproj`.
4. Open `mt_portfolio_main.maxpat` from the Max Project window.
5. Allow camera access when macOS asks, then select the camera in the Gesture view.
6. Turn on DSP, enable a source, raise its Source Mixer level, and enable effects as needed.

The current hand tracker loads MediaPipe libraries and model resources from the internet at runtime. Start with monitor volume low when testing a new audio interface.

## Repository structure

```text
geehon-motion-system.maxproj   Max Project entry point
patchers/mt_portfolio_main.maxpat
patchers/inputs/               Mic, File, and Granular sources
patchers/effects/              Four serial effects
patchers/mixers/               Source, FX output, and monitor controls
patchers/control/              Hand tracking and gesture routing
patchers/dsp/                  Granular and vocoder DSP abstractions
web/hand-landmarker/           Local jweb bridge and MediaPipe integration
javascript/                    Gesture mapping and UI control logic
assets/ui/                     Interface assets
tests/                         Static structure and logic checks
docs/                          Project statements and technical notes
archive/                       Research prototypes and retired modules
```

## Verification and documentation

Run the full static verification suite with:

```bash
node tests/test_maxpat_integrity.js
```

Static checks validate patch structure and routing; final sound, camera, latency, and recording behavior must still be checked inside Max on the target computer.

- [English project statement (PDF)](docs/MOTION_INSTRUMENT_Project_Statement_Draft_EN.pdf)
- [Chinese project statement (PDF)](docs/MOTION_INSTRUMENT_Project_Statement_Draft_ZH.pdf)
- [Architecture](docs/architecture.md)
- [Dependencies and attribution](docs/dependencies.md)

## Dependencies and attribution

The audio system uses standard Max/MSP objects. Hand tracking is adapted from [lysdexic-audio/jweb-hands-landmarker](https://github.com/lysdexic-audio/jweb-hands-landmarker); the retained notice and GPL-3.0 license are included under `web/hand-landmarker/`. See [docs/dependencies.md](docs/dependencies.md) for details.
