# Mic Input UI Finalization Design

## Scope

Create a new formal `mt_input_mic_ui.maxpat` from the approved PNG UI prototype. Keep `mt_input_mic.maxpat` and `mt_portfolio_main.maxpat` unchanged. Main-patch integration is deferred.

## Public Interface

- Fixed presentation and bpatcher footprint: 420 x 280.
- Controls: Enable, Mono Ch, Stereo Pair, Output `live.gain~`.
- One control inlet: enable 0/1.
- Two signal outlets: clean Mic audio L/R.
- Stable scripting names: `mic_enable`, `mic_mono_channel`, `mic_stereo_pair`, `mic_output_gain`.
- Assistance text identifies the enable inlet and L/R audio outlets.

## Startup State

- Enable: Off.
- Mono channel: 1.
- Stereo pair: Off.
- Output gain: 0 dB.
- One centralized initialization chain; no scattered `loadmess` objects.

## Audio Behavior

- Mono Ch accepts 1-8 only.
- Stereo Pair Off duplicates the selected mono channel to L/R.
- Stereo Pair 1-2, 3-4, 5-6, or 7-8 outputs the corresponding true stereo pair.
- Selecting a stereo pair disables interaction with Mono Ch and visually dims it; returning to Off restores the stored mono selection.
- Enable transitions use a 20 ms signal ramp.
- Channel and pair changes fade down for 20 ms, switch routing, then fade up for 20 ms.
- Output gain is a source trim. The Input Mixer gain remains responsible for mix balance.

## State Synchronization

- Continue using the existing `mt_mic_enable_state` send/receive bus so the module, Input Mixer, and future Main control remain synchronized.
- The module-local toggle writes to the shared state bus. The external inlet is receive-only: it updates the Mic UI and DSP core directly, without rebroadcasting state back to Main.
- The shared-state receiver updates the visible toggle without feedback and drives the DSP core.
- Instance-safe state names are intentionally deferred because the current project uses one Mic source.

## UI Assets

- Reuse `assets/ui/mic_panel_v1.png` without changing its visual style.
- Resolve the PNG through a relative project path and dependency cache. No absolute `/Users/...` path may appear in the formal patch.
- The PNG is a background object and must not intercept clicks.
- Keep the approved technical copy and L/R output note.

## Non-Goals

- No `ezdac~` or local monitor.
- No preset or `pattr` storage.
- No Main-patch replacement in this change.
- No changes to File, Granular, Input Mixer, or FX modules.

## Acceptance

- JSON parses recursively with unique object IDs and valid patchline endpoints.
- No red/missing objects in Max.
- PNG displays in standalone and bpatcher contexts.
- Controls initialize and behave as specified.
- Physical Mic tests confirm mono channels 1-8, stereo pairs, enable smoothing, route-change smoothing, and L/R output.
- The old Mic and Main patch hashes remain unchanged.
