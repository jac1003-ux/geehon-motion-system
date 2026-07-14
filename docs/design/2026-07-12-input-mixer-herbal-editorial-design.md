# Input Mixer Herbal Editorial Design

## Goal

Create a portfolio-ready Herbal Editorial UI version of `mt_input_mixer.maxpat` without changing its audio behavior. The module remains the balance stage for Mic, File, and Granular before the parallel FX returns.

## Scope

- Create a new formal UI module first; preserve the current working `mt_input_mixer.maxpat` until standalone approval.
- Keep the existing 760 x 320 footprint used by `mt_portfolio_main.maxpat`.
- Preserve all current inlets, outlets, enable synchronization, 20 ms ramps, gain staging, summing, and Mute All behavior.
- Do not modify Mic, File, Granular, FX modules, or Main during this phase.
- Use this module to establish the new Herbal Editorial palette for later PNG reskins of the remaining modules.

## Approved Visual Direction

- Approved concept: `input-mixer-herbal-editorial-v3.html` in the local visual-companion workspace.
- Style balance: 60 percent commercial mixer and 40 percent botanical identity.
- The background is predominantly clear white and pale grey-green.
- Deep tea green is limited to the header and a few high-contrast controls.
- Sage green defines Source structure and active states.
- Chrysanthemum yellow highlights the Logo, Master channel, and important feedback.
- Desaturated blue-green is reserved for small routing and status details.
- The flower Logo contains one green tea-leaf petal and has no stem.

## Color Roles

| Role | Reference Color | Usage |
| --- | --- | --- |
| Clear white | `#FBFCF9` | Source channel surfaces and readable empty space |
| Pale grey-green | `#EDF2EE` | Outer shell and Master background |
| Deep tea green | `#2E4138` | Header and selected high-contrast details |
| Sage green | `#7FA47B` | Source identity, active states, and meter color |
| Chrysanthemum yellow | `#E4BD46` | Logo petals, Master accents, and priority feedback |
| Blue-green | `#8CAEAA` | Small routing and status indicators only |

These values are visual references for the PNG asset. Minor adjustments are allowed during raster export to preserve contrast inside Max, but color roles must not change.

## Presentation Layout

### Header

- Fixed 48 px deep tea-green header.
- Left: flower-only Logo with no brand wordmark.
- Center-left: `SOURCE MIXER` and the secondary line `MIC / FILE / GRANULAR`.
- Right: `SOURCE MIX / DRY BUS` status label.

### Source Strips

- Three equal vertical strips: `MIC`, `FILE`, and `GRANULAR`.
- Each strip contains a top Enable toggle, a small source icon, a vertical `live.gain~`, dB feedback, and L/R routing status.
- Icons appear below the source name:
  - Mic: rounded microphone.
  - File: document plus waveform.
  - Granular: soft particle cluster.
- Source strips share one structure and palette; icons and labels provide identity.
- Native Max controls remain above the PNG and retain real interaction.

### Master Strip

- The Master strip is wider than each Source strip and sits on the right.
- It uses pale grey-green rather than a dark block.
- Chrysanthemum yellow provides the primary accent.
- It contains `SOURCE SUM`, a 0.0 dB readout, Mute All, Master `live.gain~`, and mixed L/R status.
- The `SOURCE SUM / 0.0 dB` readout has a 54 px region with extra bottom padding so the value is not vertically cramped.

## External Interface

The new UI module preserves the current interface order:

- Inlet 1: Mic audio L.
- Inlet 2: Mic audio R.
- Inlet 3: File audio L.
- Inlet 4: File audio R.
- Inlet 5: Granular audio L.
- Inlet 6: Granular audio R.
- Inlet 7: external Mic Enable.
- Inlet 8: external File Enable.
- Inlet 9: external Granular Enable.
- Outlet 1: mixed audio L.
- Outlet 2: mixed audio R.

Repositioning objects in patching mode must not alter inlet or outlet index order.

## Behavior

- Each Source Enable remains synchronized with the corresponding source module and Main control.
- Source switching continues to use a 20 ms `line~` ramp.
- Each source is gated before its `live.gain~` stage.
- Mic, File, and Granular remain independently combinable.
- Mute All sets all three source Enable states to Off through the existing routing logic.
- The Master stage receives the stereo sum after the three source gains.
- The mixer output remains the project Dry Bus and the send source for parallel FX processors.
- No extra Dry/Wet, pan, solo, compressor, or limiter controls are introduced.

## Assets And Module Strategy

- Canonical skin: `assets/ui/input_mixer_panel_v1.png`, exported at 1520 x 640 and displayed at 760 x 320 for Retina clarity.
- Optional editable reference: `assets/ui/input_mixer_panel_v1.svg`.
- Flower Logo assets should be exported separately for future reuse at large, header, and icon sizes.
- Create a new UI patch rather than overwriting the working mixer during the first implementation pass.
- After standalone approval, replace the mixer bpatcher in Main without changing its 760 x 320 rectangle.

## Internal Organization

- Keep audio routing, state synchronization, and presentation objects visually separated in patching mode.
- Reuse the existing enable-state send names so Main remains compatible.
- Keep the three source paths parallel and readable.
- Preserve the current 59 valid patchlines unless a presentation-only object requires an additional connection.
- Do not add initialization messages for visual decoration; defaults belong only where startup behavior requires them.
- Use the established patchline categories for state, control, and audio.

## Verification

- JSON parses with no duplicate IDs, dangling patchlines, or invalid inlet/outlet indices.
- PNG exists at 1520 x 640, resolves without an absolute user path, and uses `fpic` autofit to display at 760 x 320 behind native controls.
- The presentation footprint remains 760 x 320 and is not clipped in Main.
- Mic, File, and Granular Enable states remain bidirectionally synchronized without feedback loops.
- Each source gain and the Master gain pass stereo audio without swapping L/R.
- Mute All silences all three source paths.
- All Source Enables Off produces digital silence.
- The Master readout has visible space below `0.0 dB`.
- Native controls remain clickable and legible over the skin.
- Standalone Max testing is completed before Main integration.

## Future Global Reskin

After this mixer is approved in Max, the Herbal Editorial palette becomes the target for new PNG skins for Mic, File, Granular, FX Return Mixer, effects, Gesture, and Main. Their DSP behavior and physical footprints are handled in separate phases; this specification does not modify those modules.

## Out Of Scope

- New mixer channels.
- FX returns inside the Input Mixer.
- Gesture mapping.
- New DSP processing or automatic gain control.
- Immediate replacement of existing Input PNG assets.
- Main layout changes before standalone mixer approval.
