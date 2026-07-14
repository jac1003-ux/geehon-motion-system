# Main Patching Mode Cleanup Design

## Goal

Reduce top-level utility clutter in `mt_portfolio_main.maxpat` without moving bpatchers, changing Presentation geometry, or changing the audio architecture.

## Root Objects That Remain

- Page navigation: `pm-page-load`, `pm-page-tab`, `pm-page-router`, `pm-thispatcher`.
- DSP controls and output: start/stop, stereo meters, `ezdac~`, output label.
- Source, mixer, FX, return, and gesture bpatchers.
- Gesture monitor UI objects because they appear on the Gesture Presentation page.
- Direct audio patchlines between modules.

## Objects Collected or Removed

### `p Source_state_router`

Contains three shared-state receivers and three outlets. It forwards Mic, File, and Granular enable states only to Input Mixer inlets 6-8. Source modules already receive their own shared state internally, so routing the same value back to their external enable inlet is redundant.

Remove the three top-level source debug toggles, labels, state sends, state receives, triggers, `set $1` messages, and the redundant top-level File Play toggle/label.

### `p FX_state_router`

Contains Vocoder, Chop, and Tremolo state receivers, their `t i i` fan-outs, and the two `loadmess 1.` objects that force Vocoder/Chop wet output for parallel-return use. It exposes eight outlets: Vocoder module/return, Chop module/return, Tremolo module/return, Vocoder wet, and Chop wet.

### Granular State Bus

Standardize the shared bus name as `mt_granular_enable_state` in Main, Input Mixer UI, and their generator definitions. This matches the Granular module and restores bidirectional visual/state synchronization.

## Non-Goals

- Do not move any remaining top-level bpatcher or UI object.
- Do not alter any `presentation_rect`, page membership, or page show/hide command.
- Do not replace direct audio patchlines with send~/receive~ buses.
- Do not redesign Presentation mode.

## Verification

- Recursive endpoint validation for Main and both new subpatchers.
- Assert removed debug object IDs no longer exist.
- Assert source state router has 3 outlets wired to Input Mixer inlets 6-8.
- Assert FX state router has 8 outlets wired to the same destinations as before.
- Assert every bpatcher name, inlet/outlet count, varname, and Presentation rectangle remains unchanged.
- Run all seven static module contracts.
