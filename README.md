# Geehon Motion System

[中文说明](README_ZH.md)

Geehon Motion System is a portfolio-stage Max/MSP instrument for controlling sound sources and parallel audio effects with hand movement. It combines a modular source layer, gesture tracking in `jweb`, and a tabbed instrument interface designed for live demonstration.

## Current Status

This repository contains a working prototype, not a packaged standalone application or commercial plug-in. The current build has been developed for Max 9 and is intended for portfolio review, classroom testing, and continued research into ergonomic gesture-to-sound mapping.

## Features

- Mic input with mono channel or stereo-pair selection
- File playback with drag-and-drop loading, waveform seeking, looping, and time feedback
- Granular source with recording, sample loading, presets, waveform position, density, size, pitch, spray, amplitude, and texture gain
- Three-channel source mixer with a dedicated dry bus
- Parallel FX returns for a pfft spectral vocoder, live vocal chop, and stereo tremolo
- MediaPipe hand tracking inside Max `jweb`
- Standalone MediaPipe Pose interaction prototype with Singer and Instrumentalist calibration profiles
- Tracking-loss safety with Hold, Return, Lost, and reconnect ramps
- Optional MIDI CC foot clutch with device-loss protection
- Four-page Source, FX, Gesture, and Master presentation interface
- Short parameter ramps for click-free switching

## Signal Flow

```text
Mic / File / Granular
        |
        v
   Source Mixer
        |
        +---------------------------> Dry Return
        +---> pfft Vocoder ---------> Vocoder Return
        +---> Live Vocal Chop ------> Chop Return
        +---> Stereo Tremolo -------> Tremolo Return
                                         |
                                         v
                                  FX Return Mixer
                                         |
                                         v
                                     Main Out
```

FX modules output independent processed layers. The original source signal is controlled only by the Dry return, avoiding hidden dry-signal leakage through effect bypass paths.

## Quick Start

1. Download or clone the complete repository. Do not separate individual `.maxpat` files from the project folders.
2. Install Max 9.
3. Open `geehon-motion-system.maxproj`.
4. Open `mt_portfolio_main.maxpat` from the Max Project window.
5. To test the Stage-One Pose control layer separately, open `mt_control_pose_demo.maxpat` from the same Project window.
6. Allow Max to access the camera when macOS asks.
7. Keep an internet connection available while the Hand or Pose tracker loads its MediaPipe libraries and model.
8. Turn on DSP, enable one or more sources, then raise the relevant Source and FX return gains.

## Current Gesture Mapping

| Gesture value | Current destination |
| --- | --- |
| Hand X | Tremolo rate |
| Hand Y | Tremolo depth |
| Pinch distance | Tremolo stereo spread |
| Palm width | Reserved for a future mapping |

These mappings are provisional. The next design stage will evaluate neutral positions, movement range, fatigue, parameter scaling, and perceptual clarity before treating them as a final performance system.

## Pose Interaction Stage One

The standalone Pose demo deliberately stops before effect mapping. It produces calibrated, safety-conditioned body features for later ergonomic design:

- **Singer:** a separately stored neutral baseline intended for hands-free control while singing.
- **Instrumentalist:** a separately stored neutral baseline intended for postures shaped by an instrument.
- **Safety:** tracking loss holds the last value briefly, returns to neutral, and reconnects without a sudden jump.
- **Optional foot clutch:** MIDI Learn can bind one CC pedal; device loss closes the clutch and reconnection does not automatically re-arm it.

The `Energy`, `Space`, `Texture`, and `Transform` macro outputs exist but remain zero and explicitly unassigned. The Pose prototype is not connected to `mt_portfolio_main.maxpat` or to any audio effect in Stage One.

## Repository Structure

```text
geehon-motion-system.maxproj   Supported Max Project entry point
patchers/                      Active Max runtime patchers
  inputs/                      Mic, File, and Granular sources
  mixers/                      Source and FX return mixers
  effects/                     Vocoder, Vocal Chop, and Tremolo
  control/                     Hand tracking and control routing
  dsp/                         Granular voices and pfft processing
assets/ui/                     PNG skins, editable SVG sources, and logo assets
web/hand-landmarker/           Local jweb page and MediaPipe bridge
web/pose-landmarker/           Local Pose jweb page, runtime, license, and model bridge
javascript/                    Max runtime math, calibration, state, and MIDI safety logic
media/                         Optional local audio files, ignored by default
tests/                         Static patch and repository checks
scripts/                       Maintenance utilities
docs/                          Architecture, dependencies, and design history
archive/                       Legacy patchers and experiments, not used at runtime
```

## Development Checks

The checks require Node.js but the instrument itself does not.

```bash
node tests/test_maxproj.js
node tests/test_maxpat_integrity.js
node tests/test_repository_structure.js
node tests/test_hand_control_interface.js
node tests/test_pose_feature_math.js
node tests/test_pose_interaction_state.js
node tests/test_pose_patch_interfaces.js
node tests/test_pose_demo.js
```

Additional module-specific checks are available in `tests/`.

## Dependencies and Credits

The audio system uses standard Max/MSP objects. Hand and Pose tracking are adapted from their respective `jweb` Landmarker projects and load MediaPipe Tasks Vision resources at runtime. Full attribution, network requirements, and license notes are documented in [docs/dependencies.md](docs/dependencies.md).

## Known Limitations

- Hand and Pose tracking currently depend on remote MediaPipe CDN and model resources.
- Gesture mappings are functional prototypes and are not yet finalized for ergonomics.
- Pose Singer/Instrumentalist operation, long-session fatigue, and MIDI hardware behavior still require the documented manual checkpoint.
- The project has not yet been packaged as a VST, Audio Unit, Max for Live device, or standalone app.
- Audio behavior should still be verified on each target interface and camera setup.

## Project Documentation

- [Architecture](docs/architecture.md)
- [Dependencies and attribution](docs/dependencies.md)
- [Design history](docs/design/)
- [Changelog](CHANGELOG.md)
