# FX Return Mixer UI Design

## Goal

Restyle `mt_fx_return_mixer.maxpat` as a portfolio-ready Herbal Editorial mixer without changing its audio graph, inlet/outlet order, enable synchronization, gain defaults, or patching-mode cable layout.

## Presentation Layout

- Canvas: `760 x 300` points, backed by a `1520 x 600` two-times PNG.
- Header: deep tea green with the JuHua flower mark, `FX RETURN MIXER`, the current return list, and a non-interactive `RETURN BANK A` badge.
- Body: four mathematically equal small strips followed by a wider Master section.
- Small strips: `DRY`, `VOCODER`, `CHOP`, and `TREMOLO`.
- Each small strip exposes one enable toggle and one stereo `live.gain~`. Existing standalone `meter~` objects remain in the DSP graph but are hidden from Presentation because `live.gain~` already provides level feedback.
- Master exposes the existing stereo `live.gain~`, two output meters, and mixed-output status.
- Colors: Dry uses sage green, FX returns use muted blue-green, and Master uses chrysanthemum yellow.

## Expansion Strategy

Dry and Master are permanent. The three center FX strips are visually treated as Return Bank A. The badge reserves room for a future A/B/C selector, but this version does not add inactive controls or change DSP routing. Future effects must adopt the same stereo L/R, enable, and return-gain contract.

## Technical Boundaries

- Preserve all 12 inlets and 5 outlets in their current left-to-right order.
- Preserve all patchlines and patching rectangles of existing DSP/control objects.
- Add only the background `fpic`, dependency metadata, Presentation rectangles, stable UI `varname`/assistance metadata, and the matching generator/test support.
- No `ezdac~`, no new `loadmess`, no audio-bank switching, and no absolute asset paths.

## Acceptance

- The module opens in Presentation and fills `760 x 300` without clipping.
- PNG text and frames do not overlap live Max controls.
- Four small strips have equal widths and identical internal alignment.
- Existing return enable synchronization and stereo summing remain unchanged.
- Main patch continues to reference the same `mt_fx_return_mixer.maxpat` filename and 12-in/5-out contract.
