# Gesture Input System

Portfolio-ready Max/MSP prototype for a gesture-controlled music plugin.

## Files

- `mt_input_mic.maxpat` - Mic source bpatcher with mono/stereo-pair selection and 20ms enable ramp.
- `mt_input_file.maxpat` - File source bpatcher with live drop/load, clickable waveform seek, elapsed/duration readout, #0-isolated buffer, and 20ms enable ramp.
- `mt_input_granular.maxpat` - Standalone-capable granular source bpatcher with mic recording, sample loading, waveform position, Safe/Frozen presets, patching-view ezdac~ monitor, and performance controls for wet, density, grain size, pitch, spray, amp, and output.
- `mt_input_granular_ui.maxpat` - Standalone 720 x 440 PNG-backed Granular Input UI with linked presets, waveform position feedback, commercial display units (percent, grains/second, milliseconds, semitones, and dB), seven visible performance dials, and stereo output gain. It is now the Granular source used by Main.
- `mt_granular_synth.maxpat` / `mt_grain_voice.maxpat` - Granular synthesis core and poly~ voice used by the original and PNG-backed Granular modules.
- `mt_input_mixer.maxpat` - Three-source stereo input mixer. It defaults muted, exposes source/mix gains, and uses shared enable-state buses so the main switches, source-box toggles, and mixer toggles stay visually and sonically linked.
- `mt_mod_vocoder.maxpat` - Portfolio pfft spectral vocoder. It uses the mixed input as a modulator, generates an internal saw/noise hybrid carrier, exposes manual dry/wet, tone, noise, spectral smooth, and brightness controls, and bypasses to dry when disabled.
- `mt_vocoder_pfft.maxpat` - pfft~ subpatch used by `mt_mod_vocoder.maxpat`; performs FFT amplitude-envelope transfer with `fftin~`, `cartopol~`, `vectral~`, `poltocar~`, and `fftout~`.
- `mt_mod_talkbox.maxpat` - Optional archived Talkbox-inspired formant processor with drive, vowel, mouth/Q, brightness-linked stereo width, dry/wet, and standalone test input. It is kept for reference but is not loaded by the main patch right now.
- `mt_mod_vocal_chop.maxpat` - Live vocal slicer/stutter module. The default wet path chops the incoming live signal immediately with a rhythmic gate, tone modulation, flip phase, and texture layer; Freeze crossfades to a recent-buffer hold layer only when needed.
- `mt_fx_return_mixer.maxpat` - Herbal Editorial parallel return mixer. It keeps Dry fixed, exposes Vocoder/Chop/Tremolo as Return Bank A, and provides per-layer enable/gain plus a fixed stereo Master. The shell keeps only ports and visible UI; `p Return_lanes` contains enable ramps/gates and `p Return_sum` contains the stereo sum. Shared enable-state buses keep FX module toggles and return toggles linked.
- `mt_mod_voice_transformer.maxpat` - Optional product-facing wrapper that combines pfft Vocoder, Talkbox, and Vocal Chop into one playable macro module. It is kept as a demo wrapper, not the required main-chain route.
- `mt_mod_tremolo.maxpat` - Portfolio stereo tremolo/mod box with six LFO shapes, bipolar/unipolar mod outputs, smoothed bypass enable, rate, depth, stereo phase, smoothing time, temporary test input, and patching-view ezdac~ monitor.
- `mt_portfolio_main.maxpat` - Main portfolio prototype: Mic/File/Granular -> Input Mixer -> Original + parallel FX layers -> Master, with jweb hand slots still mapped to tremolo rate/depth/stereo. Voice Transformer gesture mapping is intentionally left manual for the next design pass.
- `mt_input_system_demo.maxpat` - Main demo patch wiring the three source boxes into the mixer.
- `mt_control_hand_jweb.maxpat` - Camera hand-control module adapted from your teacher check patch; outputs slot1 hand_x, slot2 hand_y, slot3 pinch, slot4 palm.
- `mt_control_hand_stub.maxpat` - Manual 0-1 fallback source if camera tracking is not available.
- `jweb/` - MediaPipe/jweb hand landmarker and gesture recognizer resources used by the camera control layer.

## Intended Patch Flow

```
Mic / File / Granular -> MT Input Mixer -> Original ---------------------> MT FX Mixer -> ezdac~
                                      -> MT pfft Vocoder FX -------------^
                                      -> MT Live Chop FX ----------------^
                                      -> MT Tremolo FX ------------------^
Jweb hand slots -> Tremolo rate/depth/stereo for now
```

## Notes

- Teacher source files are not modified.
- Buffers use `#0` names so copied bpatcher instances do not collide.
- Source modules expose L/R outlets for reuse in the demo mixer.
- Opening `mt_portfolio_main.maxpat` should be silent until at least one source module or Input Mixer source switch is enabled.
- `mt_input_granular.maxpat` exposes L/R outlets and keeps a direct ezdac~ in patching view for quick standalone testing.
- Internal module ezdac~ objects are hidden from presentation so the main prototype has one visible output target: Main out.
- In the main patch, Original is only the Input Mixer output. FX modules are treated as independent layers, and their layer toggles live in `mt_fx_return_mixer.maxpat`.
- The main patch forces Vocoder / Vocal Chop internal wet to 1.0 when loaded, so total dry/wet balance is controlled by the FX Mixer instead of nested module dry/wet knobs.
- Talkbox is currently removed from `mt_portfolio_main.maxpat` because the effect was not distinctive enough in testing. The standalone file is kept so it can be redesigned or restored later.
- Vocal Chop is now a real-time FX layer: the main sound is live input chopped by a gate/tone/texture processor. Its buffer is used for the waveform monitor and optional Freeze hold, not as the default sound source.
- Voice Transformer defaults to bypassed dry passthrough until its Enable switch is turned on, and is now optional rather than part of `mt_portfolio_main.maxpat`.
- Voice Transformer is modular inside: pfft Vocoder, Talkbox, and Vocal Chop can still be opened and tested individually.
- Vocoder does not use pitch following; its carrier is internal and fixed by manual Tone / Noise / Brightness controls.
- Tremolo uses the Enable toggle inside `mt_mod_tremolo.maxpat`; there is no duplicate outer Tremolo on switch in the main patch.
- `mt_portfolio_main.maxpat` is the first full-work prototype patch to open for integrated testing.
- `mt_input_system_demo.maxpat` is kept as an earlier input-only overview.
- `mt_mod_tremolo.maxpat` can still be opened standalone for effect testing.
- The first full patch uses `mt_control_hand_jweb.maxpat`; `mt_control_hand_stub.maxpat` remains as a manual fallback.
- If the camera view does not appear, close and reopen `mt_portfolio_main.maxpat`, click `Reload Webcam`, then `List Cameras`; macOS/Max may ask for camera permission on first load.
- Put test samples in `media/` and load them from the File or Granular modules.
