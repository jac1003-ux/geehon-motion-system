# Dependencies and Attribution

## Runtime Requirements

### Max 9

The instrument and DSP graph run in Cycling '74 Max 9. The active audio modules are built from Max/MSP objects and do not require Node.js.

### Camera Permission

The Gesture page requires camera access. On macOS, Max must be enabled under System Settings > Privacy & Security > Camera.

### Internet Connection

The local `jweb` page currently loads these remote resources at runtime:

- MediaPipe camera utilities `0.1`
- MediaPipe control utilities `0.1`
- MediaPipe drawing utilities `0.2`
- MediaPipe Tasks Vision `0.10.0`
- MediaPipe Hand Landmarker model and WASM files
- MediaPipe Pose Landmarker Lite model and WASM files

Without network access, the current Gesture module may not initialize even though its HTML and project bridge are local.

## Third-Party Hand Tracker

The hand-tracking integration is adapted from:

- [lysdexic-audio/jweb-hands-landmarker](https://github.com/lysdexic-audio/jweb-hands-landmarker)

The retained upstream source notice is stored at `web/hand-landmarker/README_HAND_LANDMARKER.md`, and its GPL-3.0 license text remains at `web/hand-landmarker/LICENSE`.

The local adaptation adds project-relative loading, mirrored video display, handedness correction, camera selection, and normalized performance-control outputs.

## Third-Party Pose Tracker

The Pose interaction prototype is adapted from:

- [lysdexic-audio/jweb-pose-landmarker](https://github.com/lysdexic-audio/jweb-pose-landmarker)

The retained upstream notice is stored at `web/pose-landmarker/README_POSE_LANDMARKER.md`, and the GPL-3.0 license text remains at `web/pose-landmarker/LICENSE`.

The local Pose page loads these exact runtime resources:

- `https://cdn.jsdelivr.net/npm/@mediapipe/tasks-vision@0.10.0/vision_bundle.js`
- `https://cdn.jsdelivr.net/npm/@mediapipe/tasks-vision@0.10.0/wasm`
- `https://storage.googleapis.com/mediapipe-models/pose_landmarker/pose_landmarker_lite/float16/1/pose_landmarker_lite.task`

The local adaptation adds instance-safe dictionaries, camera ownership, mirrored display without mirrored anatomical output, one-person Pose inference, calibration metadata, and lifecycle safeguards for asynchronous `jweb` communication.

## Development-Only Requirement

The files under `javascript/` are Max runtime logic and run inside Max's `js` object. Node.js is used only to run repository, pure-logic, and patch-structure checks in `tests/`; it is not required to perform with the Max project.

## Project License Status

The repository does not yet declare a separate license for the original MOTION INSTRUMENT code and artwork. Before public release or commercial distribution, select a project license and review how the bundled GPL-3.0 Hand and Pose tracking components affect the intended distribution model.
