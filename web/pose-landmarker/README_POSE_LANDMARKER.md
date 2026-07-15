# Pose Landmarker Web Runtime

This directory retains and adapts the minimal browser runtime from
[`lysdexic-audio/jweb-pose-landmarker`](https://github.com/lysdexic-audio/jweb-pose-landmarker).
The upstream project is licensed under the GNU General Public License v3.0;
the original license text is preserved in `LICENSE`.

## Retained upstream files

- `LICENSE`
- `css/mesh-style.css`
- `js/pose-landmarks-index.js`
- `js/jweb-pose-landmarker.js`
- `jweb-pose-landmarker.html`

The upstream screenshots and reference Max patch are intentionally not copied
into the active runtime tree. This file replaces the upstream README so that
the local modifications and attribution travel with the runtime.

## Local adaptations

- The Max patch resolves the HTML through a project-relative path.
- Each `jweb` instance can select its own Max dictionary with
  `set_dict_name`, avoiding a shared global `posedict`.
- Camera mirroring is display-only. Landmark coordinates and anatomical
  left/right names are never swapped or rewritten.
- Pose Landmarker is configured for one performer (`numPoses: 1`).
- Every processed frame publishes all 33 landmarks plus frame metadata. Frames
  without a detected pose publish `has_pose: 0` instead of leaving stale data.
- Model and camera readiness are emitted as readable status messages, with
  errors forwarded to Max.
- An optional on-screen control zone marks normalized x `0.15..0.85` and y
  `0.10..0.90`.

The MediaPipe version, model URL, and CDN loading strategy remain aligned with
the upstream example. This adaptation adds no new online runtime dependency.
