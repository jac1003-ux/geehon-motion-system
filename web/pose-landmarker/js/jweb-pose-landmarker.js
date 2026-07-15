(async function () {
  "use strict";

  const video = document.getElementById("videoel");
  const image = document.getElementById("imageel");
  const overlay = document.getElementById("overlay");
  const canvas = overlay.getContext("2d");
  const lifecycle = window.PoseRuntimeLifecycle;
  const sessionId = lifecycle.createSessionId();
  const cameraLifecycle = lifecycle.createCameraLifecycle("VIDEO");

  let dictName = "pose_landmarkdict";
  let frameId = 0;
  let flipImage = true;
  let drawControlZone = true;
  let drawImage = true;
  let drawLandmarks = true;
  let drawConnectors = true;
  let runningMode = "VIDEO";
  let poseLandmarker = null;
  let drawingUtils = null;
  let PoseLandmarkerClass = null;
  let currentStream = null;
  let animationFrame = 0;
  let lastVideoTime = -1;
  let processingFrame = false;
  let modelReady = false;
  let cameraReady = false;
  let pendingImageGeneration = 0;
  let modeOptionsQueue = Promise.resolve();

  function outlet() {
    window.max.outlet.apply(window.max, arguments);
  }

  function status(name, value) {
    outlet("status", name, value);
  }

  function readableError(error) {
    if (!error) {
      return "Unknown error";
    }
    return error.name ? error.name + ": " + error.message : String(error);
  }

  function reportError(code, error) {
    outlet("error", code, readableError(error));
  }

  const framePublisher = lifecycle.createFramePublisher({
    setDict: function (targetDictName, frame) {
      window.max.setDict(targetDictName, frame);
    },
    getDict: function (targetDictName, callback) {
      window.max.getDict(targetDictName, callback);
    },
    emitUpdate: function (targetDictName, targetFrameId, timestampMs) {
      outlet("update", targetDictName, targetFrameId, timestampMs);
    },
    emitError: reportError,
    isGenerationCurrent: function (generation) {
      return cameraLifecycle.isCurrent(generation);
    },
    maxAttempts: 8,
    retryDelayMs: 12,
    callbackTimeoutMs: 80,
  });

  function enabled(value) {
    return !(
      value === 0 ||
      value === "0" ||
      value === false ||
      value === "false" ||
      value == null
    );
  }

  function applyDisplayMirror() {
    const factor = flipImage ? "-1" : "1";
    video.style.transform = "scaleX(" + factor + ")";
    overlay.style.transform = "scaleX(" + factor + ")";
  }

  window.max.bindInlet("set_dict_name", function (name) {
    const requestedName = String(name || "").trim();
    if (requestedName) {
      dictName = requestedName;
    }
  });

  window.max.bindInlet("flip_image", function (value) {
    flipImage = enabled(value);
    applyDisplayMirror();
  });

  window.max.bindInlet("draw_control_zone", function (value) {
    drawControlZone = enabled(value);
  });

  window.max.bindInlet("draw_image", function (value) {
    drawImage = enabled(value);
  });

  window.max.bindInlet("draw_landmarks", function (value) {
    drawLandmarks = enabled(value);
  });

  window.max.bindInlet("draw_connectors", function (value) {
    drawConnectors = enabled(value);
  });

  window.max.bindInlet("get_mediadevices", function () {
    outputVideoDevices();
  });

  window.max.bindInlet("set_mediadevice", async function (deviceLabel) {
    const devices = await getVideoDevices();
    const device = devices.find(function (candidate) {
      return candidate.label === String(deviceLabel);
    });

    if (!device) {
      reportError("NO_VIDEO_DEVICE", 'No video input device named "' + deviceLabel + '".');
      return;
    }

    await openCamera({
      video: {
        deviceId: { exact: device.deviceId },
        width: { ideal: 640 },
        height: { ideal: 480 },
      },
      audio: false,
    });
  });

  window.max.bindInlet("set_image", async function (imageFile) {
    const imageGeneration = cameraLifecycle.invalidateForImage();
    pendingImageGeneration = imageGeneration;
    releaseCurrentStream();

    if (await setRunningMode("IMAGE", imageGeneration)) {
      image.src = String(imageFile);
    }
  });

  async function getMediaDevices() {
    if (!navigator.mediaDevices || !navigator.mediaDevices.enumerateDevices) {
      throw new Error("This browser cannot list media devices.");
    }
    return navigator.mediaDevices.enumerateDevices();
  }

  async function getVideoDevices() {
    try {
      const devices = await getMediaDevices();
      return devices.filter(function (device) {
        return device.kind === "videoinput";
      });
    } catch (error) {
      reportError("MEDIA_DEVICE_LIST_FAILED", error);
      return [];
    }
  }

  async function outputVideoDevices() {
    const devices = await getVideoDevices();
    const labels = devices.map(function (device, index) {
      return device.label || "Camera " + (index + 1);
    });
    outlet.apply(null, ["mediadevices"].concat(labels));
  }

  function cancelVideoLoop() {
    if (animationFrame) {
      cancelAnimationFrame(animationFrame);
      animationFrame = 0;
    }
  }

  function releaseCurrentStream() {
    cancelVideoLoop();

    const stream = currentStream || video.srcObject;
    lifecycle.stopStream(stream);

    currentStream = null;
    video.srcObject = null;
    cameraReady = false;
    status("camera_ready", 0);
  }

  function stopCurrentStream() {
    const generation = cameraLifecycle.stop();
    releaseCurrentStream();
    return generation;
  }

  async function openCamera(constraints) {
    const requestGeneration = cameraLifecycle.beginOpen();
    let candidateStream = null;

    releaseCurrentStream();

    if (!navigator.mediaDevices || !navigator.mediaDevices.getUserMedia) {
      reportError("CAMERA_UNAVAILABLE", "This browser cannot open a camera.");
      return;
    }

    try {
      if (!(await setRunningMode("VIDEO", requestGeneration))) {
        return;
      }

      candidateStream = await navigator.mediaDevices.getUserMedia(constraints);
      if (
        !cameraLifecycle.acceptVideoStream(requestGeneration, candidateStream)
      ) {
        return;
      }
      if (runningMode !== "VIDEO") {
        lifecycle.stopStream(candidateStream);
        return;
      }

      currentStream = candidateStream;
      video.srcObject = candidateStream;
      await video.play();

      if (
        !cameraLifecycle.acceptVideoStream(requestGeneration, candidateStream)
      ) {
        if (video.srcObject === candidateStream) {
          video.srcObject = null;
        }
        if (currentStream === candidateStream) {
          currentStream = null;
        }
        return;
      }
      if (runningMode !== "VIDEO") {
        lifecycle.stopStream(candidateStream);
        if (video.srcObject === candidateStream) {
          video.srcObject = null;
        }
        if (currentStream === candidateStream) {
          currentStream = null;
        }
        return;
      }

      cameraReady = true;
      status("camera_ready", 1);
      startVideoLoop(requestGeneration);
      await outputVideoDevices();
    } catch (error) {
      lifecycle.stopStream(candidateStream);
      if (!cameraLifecycle.isCurrent(requestGeneration, "VIDEO")) {
        return;
      }
      if (currentStream === candidateStream) {
        currentStream = null;
      }
      if (video.srcObject === candidateStream) {
        video.srcObject = null;
      }
      cameraReady = false;
      status("camera_ready", 0);
      reportError("CAMERA_OPEN_FAILED", error);
    }
  }

  function setRunningMode(nextMode, generation) {
    if (nextMode !== "VIDEO" && nextMode !== "IMAGE") {
      reportError("INVALID_RUNNING_MODE", nextMode);
      return Promise.resolve(false);
    }

    const modeTask = modeOptionsQueue.then(async function () {
      if (!cameraLifecycle.isCurrent(generation, nextMode)) {
        return false;
      }

      if (poseLandmarker && nextMode !== runningMode) {
        await poseLandmarker.setOptions({ runningMode: nextMode });
      }

      if (!cameraLifecycle.isCurrent(generation, nextMode)) {
        return false;
      }

      runningMode = nextMode;
      canvas.clearRect(0, 0, overlay.width, overlay.height);
      return true;
    });

    modeOptionsQueue = modeTask.then(
      function () {},
      function () {}
    );
    return modeTask;
  }

  function startVideoLoop(generation) {
    if (animationFrame) {
      cancelAnimationFrame(animationFrame);
    }
    animationFrame = requestAnimationFrame(function () {
      processVideoFrame(generation);
    });
  }

  async function processVideoFrame(generation) {
    animationFrame = 0;

    if (!cameraLifecycle.isCurrent(generation, "VIDEO")) {
      return;
    }

    if (
      runningMode === "VIDEO" &&
      modelReady &&
      cameraReady &&
      video.readyState >= 2 &&
      !processingFrame &&
      video.currentTime !== lastVideoTime
    ) {
      processingFrame = true;
      lastVideoTime = video.currentTime;
      const timestampMs = Date.now();

      try {
        const results = poseLandmarker.detectForVideo(video, timestampMs);
        if (!cameraLifecycle.isCurrent(generation, "VIDEO")) {
          return;
        }
        renderAndPublish(results, video, timestampMs, generation);
      } catch (error) {
        reportError("POSE_FRAME_FAILED", error);
      } finally {
        processingFrame = false;
      }
    }

    if (
      runningMode === "VIDEO" &&
      cameraReady &&
      cameraLifecycle.isCurrent(generation, "VIDEO")
    ) {
      animationFrame = requestAnimationFrame(function () {
        processVideoFrame(generation);
      });
    }
  }

  async function detectImage() {
    if (!poseLandmarker || runningMode !== "IMAGE" || !image.src) {
      return;
    }

    try {
      const timestampMs = Date.now();
      const results = poseLandmarker.detect(image);
      const generation = pendingImageGeneration;
      if (!cameraLifecycle.isCurrent(generation, "IMAGE")) {
        return;
      }
      renderAndPublish(results, image, timestampMs, generation);
    } catch (error) {
      reportError("POSE_IMAGE_FAILED", error);
    }
  }

  image.addEventListener("load", detectImage);

  function finiteOr(value, fallback) {
    return typeof value === "number" && isFinite(value) ? value : fallback;
  }

  function copyLandmark(landmark) {
    landmark = landmark || {};
    return {
      x: finiteOr(landmark.x, 0),
      y: finiteOr(landmark.y, 0),
      z: finiteOr(landmark.z, 0),
      visibility: finiteOr(landmark.visibility, 1),
      presence: finiteOr(landmark.presence, 1),
    };
  }

  function emptyFrame(timestampMs) {
    return {
      left: {},
      right: {},
      neutral: {},
      has_pose: 0,
      model_ready: modelReady ? 1 : 0,
      camera_ready: cameraReady ? 1 : 0,
      meta: {
        frame_id: frameId,
        session_id: sessionId,
        timestamp_ms: timestampMs,
        has_pose: 0,
        model_ready: modelReady ? 1 : 0,
        camera_ready: cameraReady ? 1 : 0,
      },
    };
  }

  function frameFromLandmarks(landmarks, timestampMs) {
    const frame = emptyFrame(timestampMs);

    POSE_LANDMARKS_LEFT.forEach(function (entry) {
      frame.left[entry[0]] = copyLandmark(landmarks[entry[1]]);
    });
    POSE_LANDMARKS_RIGHT.forEach(function (entry) {
      frame.right[entry[0]] = copyLandmark(landmarks[entry[1]]);
    });
    POSE_LANDMARKS_NEUTRAL.forEach(function (entry) {
      frame.neutral[entry[0]] = copyLandmark(landmarks[entry[1]]);
    });

    frame.has_pose = 1;
    frame.meta.has_pose = 1;
    return frame;
  }

  function drawZone() {
    if (!drawControlZone) {
      return;
    }

    const x = overlay.width * 0.15;
    const y = overlay.height * 0.10;
    const width = overlay.width * (0.85 - 0.15);
    const height = overlay.height * (0.90 - 0.10);

    canvas.save();
    canvas.strokeStyle = "rgba(242, 198, 69, 0.9)";
    canvas.lineWidth = 2;
    canvas.setLineDash([8, 6]);
    canvas.strokeRect(x, y, width, height);
    canvas.restore();
  }

  function drawPose(landmarks) {
    if (!landmarks || !drawingUtils || !PoseLandmarkerClass) {
      return;
    }

    if (drawLandmarks) {
      drawingUtils.drawLandmarks(landmarks, {
        radius: 3,
        color: "#f2c645",
        fillColor: "#edf4ef",
      });
    }

    if (drawConnectors) {
      drawingUtils.drawConnectors(
        landmarks,
        PoseLandmarkerClass.POSE_CONNECTIONS,
        { color: "#8fb6ad", lineWidth: 3 }
      );
    }
  }

  function renderAndPublish(results, source, timestampMs, generation) {
    if (!cameraLifecycle.isCurrent(generation)) {
      return;
    }

    const landmarks =
      results && results.landmarks && results.landmarks.length
        ? results.landmarks[0]
        : null;

    canvas.clearRect(0, 0, overlay.width, overlay.height);
    if (drawImage && source) {
      canvas.drawImage(source, 0, 0, overlay.width, overlay.height);
    }
    drawZone();
    drawPose(landmarks);

    frameId += 1;
    const frame = landmarks
      ? frameFromLandmarks(landmarks, timestampMs)
      : emptyFrame(timestampMs);

    if (!cameraLifecycle.isCurrent(generation)) {
      return;
    }

    framePublisher.enqueue({
      targetDictName: dictName,
      targetFrameId: frameId,
      timestampMs: timestampMs,
      generation: generation,
      sessionId: sessionId,
      frame: frame,
    });
  }

  applyDisplayMirror();
  status("model_loading", 1);
  status("model_ready", 0);
  status("camera_ready", 0);

  try {
    const visionBundle = await import(
      "https://cdn.jsdelivr.net/npm/@mediapipe/tasks-vision@0.10.0/vision_bundle.js"
    );
    const FilesetResolver = visionBundle.FilesetResolver;
    PoseLandmarkerClass = visionBundle.PoseLandmarker;
    drawingUtils = new visionBundle.DrawingUtils(canvas);

    const vision = await FilesetResolver.forVisionTasks(
      "https://cdn.jsdelivr.net/npm/@mediapipe/tasks-vision@0.10.0/wasm"
    );

    poseLandmarker = await PoseLandmarkerClass.createFromOptions(vision, {
      baseOptions: {
        modelAssetPath:
          "https://storage.googleapis.com/mediapipe-models/pose_landmarker/pose_landmarker_lite/float16/1/pose_landmarker_lite.task",
        delegate: "GPU",
      },
      numPoses: 1,
      runningMode: runningMode,
    });

    modelReady = true;
    status("model_loading", 0);
    status("model_ready", 1);

    await openCamera({
      video: {
        width: { ideal: 640 },
        height: { ideal: 480 },
      },
      audio: false,
    });
  } catch (error) {
    modelReady = false;
    status("model_loading", 0);
    status("model_ready", 0);
    reportError("MODEL_LOAD_FAILED", error);
  }

  window.addEventListener("beforeunload", stopCurrentStream);
})();
