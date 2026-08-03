// IIFE for top level await
(async () => { 
const vision = await import("https://cdn.jsdelivr.net/npm/@mediapipe/tasks-vision@0.10.0/vision_bundle.js"); 
const { GestureRecognizer, FilesetResolver, DrawingUtils } = vision;

const video = document.getElementById('videoel');
const image = document.getElementById('imageel');
const overlay = document.getElementById('overlay');
const canvas = overlay.getContext('2d');

let gestureRecognizer;
let camera;

let drawImage = true;
let drawHands = true;
let flipHands = true;
let runningMode = "VIDEO";

overlay.style.transformOrigin = "center center";
overlay.style.transform = "scaleX(-1)";
video.style.transformOrigin = "center center";
video.style.transform = "scaleX(-1)";

function outputMax(mess) {
  window.max.outlet(mess);
}

function outputMaxDict(dstr) {
  window.max.outlet("dictionary", dstr);
}

function setMaxDict(d) {
  window.max.setDict('hands_landmarkdict', d);
}

window.max.bindInlet('draw_image', async function (enable) {
  drawImage = enable;
  if(runningMode === "IMAGE") {
    await detectImage();
  }
});

window.max.bindInlet('draw_hands', async function (enable) {
  drawHands = enable;
  if(runningMode === "IMAGE") {
    await detectImage();
  }
});

window.max.bindInlet('set_image', async function (imageFile) {
  await setRunningMode("IMAGE");
  image.src = imageFile;
});

window.max.bindInlet('flip_image', async function (flip) {
  const factor = flip ? "-1" : "1";
  video.style.transform = "scaleX(" + factor + ")";
  overlay.style.transform = "scaleX(" + factor + ")";
});

window.max.bindInlet('flip_hands', function (flip) {
  flipHands = flip;
});

window.max.bindInlet('set_mediadevice', async function (deviceLabel) {
  let devices = await getMediaDeviceByLabel(deviceLabel);
  if (!devices.length) {
    window.max.outlet("error", `No video input device: "${deviceLabel}" exists.`);
    return
  }
  const device = devices.shift();
  video.srcObject = await navigator.mediaDevices.getUserMedia({video: {deviceId: device.deviceId}});
  await setRunningMode("VIDEO");
});

window.max.bindInlet('get_mediadevices', function () {
  getVideoDevicesForMax();
});

const getMediaDevices = async () => {   
  if (!navigator.mediaDevices?.enumerateDevices) {
    window.max.outlet("error", "Cannot list available media devices.");
    return []
  }
  return await navigator.mediaDevices.enumerateDevices();
}

const getMediaDeviceByLabel = async (deviceLabel) => {
  let mediaDevices = await getMediaDevices();
  return mediaDevices.filter(device => device.label == deviceLabel);
}

const getVideoDevicesForMax = () => {
  getMediaDevices()
  .then((devices) => {
    let mediadevices = [];
    devices.forEach((device) => {
      if (device.kind === "videoinput") {
        mediadevices.push(device.label);
      }
    });
    window.max.outlet.apply(window.max, ["mediadevices"].concat(mediadevices));
  })
  .catch((err) => {
    window.max.outlet("error",`${err.name}: ${err.message}`);
  });
}


const startVideo = () => {
  camera = new Camera(video, {
    onFrame: async () => {
      if (video && runningMode === "VIDEO") {
        let nowInMs = Date.now();
        if (lastVideoTime !== video.currentTime) {
          lastVideoTime = video.currentTime;
          results = gestureRecognizer.recognizeForVideo(video, nowInMs);
          results.image = video;
          onResultsHands(results, nowInMs);
        }
      }
    },
    width: 640,
    height: 480
  });
  camera.start();
}


function stopBothVideoAndAudio() {
  camera = undefined;
  video.srcObject.getTracks().forEach((track) => {
      if (track.readyState == 'live') {
          track.stop();
      }
  });
}

const setRunningMode = async (running_mode) => {
  if (running_mode === runningMode) return
  canvas.clearRect(0, 0, overlay.width, overlay.height);
  switch(running_mode) {
    case "IMAGE":
      stopBothVideoAndAudio();
      runningMode = running_mode; 
      await gestureRecognizer.setOptions({ runningMode: running_mode }); 
      return
    case "VIDEO":
      runningMode = running_mode; 
      await gestureRecognizer.setOptions({ runningMode: running_mode }); 
      startVideo();
      return      
    default:
      window.max.outlet("error", `No running mode: "${running_mode}" exists.`); return
  }
};

const detectImage = async () => {
  let results = gestureRecognizer.recognize(image); 
  results.image = image;
  onResultsHands(results, Date.now());
};

image.onload = detectImage;

let lastVideoTime = -1;
let results = undefined;
const drawingUtils = new DrawingUtils(canvas);

function zonePalmCenter(hand) {
  const names = ["wrist", "index_finger_mcp", "middle_finger_mcp", "pinky_finger_mcp"];
  if (!hand || names.some((name) => !hand[name])) return null;
  return names.reduce((center, name) => ({
    x: center.x + hand[name].x / names.length,
    y: center.y + hand[name].y / names.length
  }), { x: 0, y: 0 });
}

function drawControlZone(output) {
  const inset = 4;
  const zoneWidth = overlay.width * 0.45 - inset * 2;
  const height = overlay.height * 0.65 - inset * 2;
  const parameterX = inset; // CSS mirror places this zone on the visible right.
  const gateX = overlay.width * 0.55 + inset;
  const y = overlay.height * 0.175 + inset;
  const indexedHands = Object.keys(output)
    .filter((key) => /^Hand\d+$/.test(key))
    .map((key) => output[key]);
  const hands = indexedHands.length ? indexedHands : [output.Left, output.Right].filter(Boolean);
  const parameterHands = hands.filter((hand) => {
    const center = zonePalmCenter(hand);
    return center && center.x <= 0.45 && center.y >= 0.175 && center.y <= 0.825;
  });
  const gateHands = hands.filter((hand) => {
    const center = zonePalmCenter(hand);
    return center && center.x >= 0.55 && center.y >= 0.175 && center.y <= 0.825;
  });
  const gateHand = gateHands.length === 1 ? gateHands[0] : null;
  const rolesValid = parameterHands.length <= 1 && gateHands.length <= 1;
  const fist = Number(gateHand?.Gestures?.Closed_Fist) || 0;
  const color = !rolesValid || (!parameterHands.length && !gateHands.length)
    ? "#86958f"
    : fist >= 0.6
      ? "#d3aa32"
      : gateHand ? "#52a875" : "#86958f";

  canvas.save();
  canvas.fillStyle = color + "18";
  canvas.strokeStyle = color;
  canvas.lineWidth = 3;
  canvas.setLineDash([10, 8]);
  canvas.fillRect(parameterX, y, zoneWidth, height);
  canvas.strokeRect(parameterX, y, zoneWidth, height);
  canvas.fillRect(gateX, y, zoneWidth, height);
  canvas.strokeRect(gateX, y, zoneWidth, height);
  canvas.setLineDash([]);
  canvas.lineWidth = 2;
  canvas.beginPath();
  canvas.moveTo(parameterX + zoneWidth / 2 - 18, y + height / 2);
  canvas.lineTo(parameterX + zoneWidth / 2 + 18, y + height / 2);
  canvas.moveTo(parameterX + zoneWidth / 2, y + height / 2 - 18);
  canvas.lineTo(parameterX + zoneWidth / 2, y + height / 2 + 18);
  canvas.stroke();
  canvas.restore();

  // CSS mirrors the camera, so mirror labels once in-canvas to keep them readable.
  canvas.save();
  canvas.translate(overlay.width, 0);
  canvas.scale(-1, 1);
  canvas.fillStyle = color;
  canvas.font = "600 15px sans-serif";
  canvas.textAlign = "center";
  canvas.fillText("GATE: 1-5 / FIST", overlay.width * 0.225, y + 22);
  canvas.fillText("PARAMETER ZONE", overlay.width * 0.775, y + 22);
  canvas.restore();
}

function onResultsHands(results, timestampMs) {

  canvas.save();
  canvas.clearRect(0, 0, overlay.width, overlay.height);
  
  if(drawImage) {
    canvas.drawImage(results.image, 0, 0, overlay.width, overlay.height);
  }

  const output = { meta: { timestamp_ms: timestampMs } };

  if (results.handednesses) {
    for (let handIndex = 0; handIndex < results.handednesses.length; handIndex += 1) {
      try {
        const handedness = results.handednesses[handIndex][0];
        const indexedKey = `Hand${handIndex}`;
        const detectedHand = {};
        Object.values(HAND_LANDMARKS).forEach(([landmark, landmarkIndex]) => {
          detectedHand[landmark] = results.landmarks[handIndex][landmarkIndex];
        });
        if (results.gestures?.[handIndex]?.length) {
          const gesture = results.gestures[handIndex][0];
          detectedHand.Gestures = { [gesture.categoryName]: gesture.score };
        }
        output[indexedKey] = detectedHand;

        // Keep legacy handedness keys for older patchers; spatial control ignores them.
        const handName = flipHands
          ? handedness.categoryName === "Right" ? "Left" : "Right"
          : handedness.categoryName;
        output[handName] = detectedHand;
      } catch (e) {
        console.error(e);
      }
    }
  }

  drawControlZone(output);

  if (results.landmarks) {
    for (const landmarks of results.landmarks) {
      if(drawHands) {
        drawingUtils.drawConnectors(landmarks, GestureRecognizer.HAND_CONNECTIONS, {
          color: "#00FF00",
          lineWidth: 1
        });
        drawingUtils.drawLandmarks(landmarks, { 
          color: "#FF0000", 
          fillColor: '#FF0000',
          lineWidth: (data) => 1 + data.from.z * -2,
          radius: (data) => {
            return DrawingUtils.lerp(data.from.z, -0.15, .1, 2, 1);
          }
        });
      }
    }
  }
  setMaxDict(output);
  outputMax("update");
  canvas.restore();
}

const filesetResolver = await FilesetResolver.forVisionTasks(
  "https://cdn.jsdelivr.net/npm/@mediapipe/tasks-vision@0.10.0/wasm"
);
gestureRecognizer = await GestureRecognizer.createFromOptions(filesetResolver, {
  baseOptions: {
    modelAssetPath: `https://storage.googleapis.com/mediapipe-models/gesture_recognizer/gesture_recognizer/float16/1/gesture_recognizer.task`,
    delegate: "GPU"
  },
  runningMode: runningMode,
  numHands: 2
});

getVideoDevicesForMax();
startVideo();

})(); // end IIFE
