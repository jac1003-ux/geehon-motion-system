const BASE_POINTS = {
  nose: [0.50, 0.20],
  left_ear: [0.54, 0.22],
  right_ear: [0.46, 0.22],
  left_shoulder: [0.60, 0.40],
  right_shoulder: [0.40, 0.40],
  left_hip: [0.57, 0.70],
  right_hip: [0.43, 0.70],
};

const POINT_GROUPS = {
  nose: "neutral",
  left_ear: "left",
  right_ear: "right",
  left_shoulder: "left",
  right_shoulder: "right",
  left_hip: "left",
  right_hip: "right",
};

function makeFrame(options) {
  const settings = Object.assign(
    {
      shiftX: 0,
      rightShoulderY: null,
      noseX: null,
      scale: 1,
      visibility: 1,
      presence: 1,
      timestampMs: 0,
    },
    options
  );
  const scaleCenter = { x: 0.50, y: 0.45 };
  const frame = {
    meta: {
      frame_id: 1,
      timestamp_ms: settings.timestampMs,
      has_pose: 1,
      model_ready: 1,
      camera_ready: 1,
    },
    neutral: {},
    left: {},
    right: {},
  };

  Object.keys(BASE_POINTS).forEach((name) => {
    const base = BASE_POINTS[name];
    let x = scaleCenter.x + (base[0] - scaleCenter.x) * settings.scale;
    let y = scaleCenter.y + (base[1] - scaleCenter.y) * settings.scale;

    x += settings.shiftX;
    if (name === "nose" && settings.noseX != null) x = settings.noseX;
    if (name === "right_shoulder" && settings.rightShoulderY != null) {
      y = settings.rightShoulderY;
    }

    frame[POINT_GROUPS[name]][name] = {
      x,
      y,
      z: 0,
      visibility: settings.visibility,
      presence: settings.presence,
    };
  });

  return frame;
}

const neutral = makeFrame({ timestampMs: 1000 });
const performerRightShift = makeFrame({ shiftX: -0.08, timestampMs: 1100 });
const performerLeftShift = makeFrame({ shiftX: 0.08, timestampMs: 1200 });
const rightShoulderRaised = makeFrame({
  rightShoulderY: 0.34,
  timestampMs: 1300,
});
const headRight = makeFrame({ noseX: 0.43, timestampMs: 1400 });
const closer = makeFrame({ scale: 1.35, timestampMs: 1500 });
const lowConfidence = makeFrame({
  visibility: 0.3,
  presence: 0.3,
  timestampMs: 1600,
});
const missingPoint = makeFrame({ timestampMs: 1700 });
delete missingPoint.right.right_hip;

module.exports = {
  BASE_POINTS,
  makeFrame,
  neutral,
  performerRightShift,
  performerLeftShift,
  rightShoulderRaised,
  headRight,
  closer,
  lowConfidence,
  missingPoint,
};
