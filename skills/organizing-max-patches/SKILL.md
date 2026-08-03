---
name: organizing-max-patches
description: Use when cleaning or reviewing Max/MSP .maxpat Patching Views with tangled cords, overlapping objects, or inconsistent inlet/outlet alignment while preserving behavior.
---

# Organizing Max Patches

## Overview

Treat cleanup as a layout-only refactor. Preserve the graph through clear placement, orthogonal routing, and local cable bundling.

## Boundary

Change only layout: object `patching_rect`, patchline `midpoints`, and approved functional color. Do not change identities, text, attributes, endpoints, port numbers, order, varnames, parameters, or Presentation data. Numbered interface arrows retain numeric left-to-right order.

Before editing:

```bash
python3 skills/organizing-max-patches/scripts/maxpat_layout_guard.py \
  snapshot patchers/example.maxpat --output /tmp/example.layout.json
```

If the structural check fails, stop and inspect the diff. Never call a behavior change cleanup.

## Workflow

1. Trace dependencies from the requested top-level patch; skip unused experiments.
2. Record protected patches and project colors; read nested topology.
3. Place objects using the priorities below.
4. Run Command+Y on every non-straight cable, then refine its bends manually.
5. Run the guard and project tests; reopen the Max Project for visual and relevant runtime checks.

## Quick reference

| Priority | Rule |
| --- | --- |
| 1 | Prefer pure vertical downward outlet-to-inlet connections. |
| 2 | Stagger downstream objects when this creates more pure vertical lines. |
| 3 | If vertical counts tie, choose the shorter routing. |
| 4 | Align repetitions within one small grid unit; group gaps may be twice internal gaps. |
| 5 | Object rectangles must never overlap. Lines may cross or pass through objects. |
| 6 | Route feedback/reverse paths by the nearest short route. |

Keep pure vertical cables free of midpoints; route others orthogonally. Consolidate nearby aligned segments onto one X or Y coordinate. Judge nearby by distance, not function. A shared trunk is a visual result, not a predefined bus. Keep distant routes independent. Colors may overlap when paths coincide.

## Multi-port objects

- For `trigger/unpack`, align first-layer targets below each outlet; use one row or a port-ordered stair-step.
- For `pack/pak`, mirror this rule above each inlet.
- When a shared target prevents full alignment, prioritize the hot inlet and main control path, then use shortest routes.
- Never change port numbers for appearance.

## Functional color

Color encodes function. Any number of colors is allowed, but meanings stay project-wide. Do not recolor without palette approval.

## Verification

```bash
python3 skills/organizing-max-patches/scripts/maxpat_layout_guard.py audit patchers/example.maxpat
python3 skills/organizing-max-patches/scripts/maxpat_layout_guard.py \
  check patchers/example.maxpat --snapshot /tmp/example.layout.json
```

The guard rejects structural edits, overlaps, missing endpoints, malformed midpoints, and diagonals. Lines through objects are allowed. Static checks do not replace Max runtime testing.

## Common mistakes

| Mistake | Correction |
| --- | --- |
| One global cable bus | Bundle only nearby aligned segments. |
| Row alignment before topology | Prefer pure vertical port flow. |
| Reordered interface arrows | Restore numeric order. |
| Hidden multi-port relationships | Align or stair-step first-layer objects. |
| Presentation changed during cleanup | Restore all Presentation data. |
