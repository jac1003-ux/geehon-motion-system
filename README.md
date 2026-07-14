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
5. Allow Max to access the camera when macOS asks.
6. Keep an internet connection available while the hand tracker loads its MediaPipe libraries and model.
7. Turn on DSP, enable one or more sources, then raise the relevant Source and FX return gains.

## Current Gesture Mapping

| Gesture value | Current destination |
| --- | --- |
| Hand X | Tremolo rate |
| Hand Y | Tremolo depth |
| Pinch distance | Tremolo stereo spread |
| Palm width | Reserved for a future mapping |

These mappings are provisional. The next design stage will evaluate neutral positions, movement range, fatigue, parameter scaling, and perceptual clarity before treating them as a final performance system.

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
```

Additional module-specific checks are available in `tests/`.

## Dependencies and Credits

The audio system uses standard Max/MSP objects. Hand tracking is adapted from `jweb-hands-landmarker` and loads MediaPipe Tasks Vision resources at runtime. Full attribution, network requirements, and license notes are documented in [docs/dependencies.md](docs/dependencies.md).

## Known Limitations

- Gesture tracking currently depends on remote MediaPipe CDN and model resources.
- Gesture mappings are functional prototypes and are not yet finalized for ergonomics.
- The project has not yet been packaged as a VST, Audio Unit, Max for Live device, or standalone app.
- Audio behavior should still be verified on each target interface and camera setup.

## Project Documentation

- [Architecture](docs/architecture.md)
- [Dependencies and attribution](docs/dependencies.md)
- [Design history](docs/design/)
- [Changelog](CHANGELOG.md)
