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
          onResultsHands(results);
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
  onResultsHands(results);
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
  const width = overlay.width * 0.5 - inset * 2;
  const height = overlay.height * 0.65 - inset * 2;
  const x = inset; // CSS mirror places this half on the visible right.
  const y = overlay.height * 0.175 + inset;
  const gateHand = output.Left;
  const controlCenter = zonePalmCenter(output.Right);
  const open = Number(gateHand?.Gestures?.Open_Palm) || 0;
  const fist = Number(gateHand?.Gestures?.Closed_Fist) || 0;
  const inside = controlCenter
    && controlCenter.x >= 0 && controlCenter.x <= 0.5
    && controlCenter.y >= 0.175 && controlCenter.y <= 0.825;
  const color = !gateHand || !controlCenter
    ? "#86958f"
    : open >= 0.6 && open > fist && inside
      ? "#52a875"
      : "#d3aa32";

  canvas.save();
  canvas.fillStyle = color + "18";
  canvas.strokeStyle = color;
  canvas.lineWidth = 3;
  canvas.setLineDash([10, 8]);
  canvas.fillRect(x, y, width, height);
  canvas.strokeRect(x, y, width, height);
  canvas.setLineDash([]);
  canvas.lineWidth = 2;
  canvas.beginPath();
  canvas.moveTo(x + width / 2 - 18, y + height / 2);
  canvas.lineTo(x + width / 2 + 18, y + height / 2);
  canvas.moveTo(x + width / 2, y + height / 2 - 18);
  canvas.lineTo(x + width / 2, y + height / 2 + 18);
  canvas.stroke();
  canvas.restore();
}

function onResultsHands(results) {

  canvas.save();
  canvas.clearRect(0, 0, overlay.width, overlay.height);
  
  if(drawImage) {
    canvas.drawImage(results.image, 0, 0, overlay.width, overlay.height);
  }

  const output = {};

  if (results.handednesses) {
    for (const hand of results.handednesses) {
      Object.values(HAND_LANDMARKS).forEach(([landmark, index]) => { 
        try {
          const handIndex = results.handednesses.length > 1 ? Number(hand[0].index) : 0;
          const handName = flipHands ? hand[0].categoryName === "Right" ? "Left" : "Right" : hand[0].categoryName;
          output[handName] = output[handName] || {};
          output[handName][landmark] = results.landmarks[handIndex][index];
          if (results.gestures?.[handIndex]?.length) {
            const gesture = results.gestures[handIndex][0];
            output[handName]["Gestures"] = {
              [gesture.categoryName]: gesture.score
            };
          }
        } catch (e) {
          console.error(e);
        }
      });
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
