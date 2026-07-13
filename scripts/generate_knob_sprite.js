const fs = require("fs");
const path = require("path");
const zlib = require("zlib");

const root = path.resolve(__dirname, "..");
const assetDir = path.join(root, "assets", "ui");
const frameSize = 44;
const frames = 64;
const width = frameSize * frames;
const height = frameSize;
const samples = 4;

function crc32(buffer) {
  let crc = 0xffffffff;
  for (const byte of buffer) {
    crc ^= byte;
    for (let bit = 0; bit < 8; bit += 1) {
      crc = (crc >>> 1) ^ (0xedb88320 & -(crc & 1));
    }
  }
  return (crc ^ 0xffffffff) >>> 0;
}

function chunk(type, data) {
  const typeBuffer = Buffer.from(type, "ascii");
  const length = Buffer.alloc(4);
  length.writeUInt32BE(data.length);
  const crc = Buffer.alloc(4);
  crc.writeUInt32BE(crc32(Buffer.concat([typeBuffer, data])));
  return Buffer.concat([length, typeBuffer, data, crc]);
}

function segmentDistance(px, py, ax, ay, bx, by) {
  const dx = bx - ax;
  const dy = by - ay;
  const denom = dx * dx + dy * dy;
  const t = denom === 0 ? 0 : Math.max(0, Math.min(1, ((px - ax) * dx + (py - ay) * dy) / denom));
  return Math.hypot(px - (ax + t * dx), py - (ay + t * dy));
}

function sample(frame, x, y, palette) {
  const cx = 22;
  const cy = 22;
  const dx = x - cx;
  const dy = y - cy;
  const distance = Math.hypot(dx, dy);
  if (distance > 19.5) return [0, 0, 0, 0];

  let color = distance > 18.1 ? palette.ring : palette.body;
  if (distance <= 16.9) {
    color = palette.face;
  }
  if (distance > 15.8 && distance <= 17.2 && x < 29 && y < 21) {
    color = palette.highlight;
  }

  const angle = (-135 + (270 * frame) / (frames - 1)) * Math.PI / 180;
  const startX = cx + Math.sin(angle) * 4;
  const startY = cy - Math.cos(angle) * 4;
  const endX = cx + Math.sin(angle) * 13.2;
  const endY = cy - Math.cos(angle) * 13.2;
  if (segmentDistance(x, y, startX, startY, endX, endY) <= 1.25) {
    color = palette.indicator;
  }
  if (Math.hypot(x - endX, y - endY) <= 1.6) color = palette.endpoint;
  if (distance <= 2.15) color = palette.center;
  if (distance <= 0.9) color = palette.centerDot;
  return color;
}

function generateSprite(palette) {
  const pixels = Buffer.alloc(width * height * 4);
  for (let frame = 0; frame < frames; frame += 1) {
    for (let py = 0; py < height; py += 1) {
      for (let px = 0; px < frameSize; px += 1) {
        let alphaSum = 0;
        let red = 0;
        let green = 0;
        let blue = 0;
        for (let sy = 0; sy < samples; sy += 1) {
          for (let sx = 0; sx < samples; sx += 1) {
            const rgba = sample(frame, px + (sx + 0.5) / samples, py + (sy + 0.5) / samples, palette);
            const alpha = rgba[3] / 255;
            alphaSum += alpha;
            red += rgba[0] * alpha;
            green += rgba[1] * alpha;
            blue += rgba[2] * alpha;
          }
        }
        const count = samples * samples;
        const alpha = alphaSum / count;
        const offset = (py * width + frame * frameSize + px) * 4;
        pixels[offset] = alphaSum ? Math.round(red / alphaSum) : 0;
        pixels[offset + 1] = alphaSum ? Math.round(green / alphaSum) : 0;
        pixels[offset + 2] = alphaSum ? Math.round(blue / alphaSum) : 0;
        pixels[offset + 3] = Math.round(alpha * 255);
      }
    }
  }

  const raw = Buffer.alloc((width * 4 + 1) * height);
  for (let y = 0; y < height; y += 1) {
    const rowStart = y * (width * 4 + 1);
    raw[rowStart] = 0;
    pixels.copy(raw, rowStart + 1, y * width * 4, (y + 1) * width * 4);
  }

  const ihdr = Buffer.alloc(13);
  ihdr.writeUInt32BE(width, 0);
  ihdr.writeUInt32BE(height, 4);
  ihdr[8] = 8;
  ihdr[9] = 6;
  return Buffer.concat([
    Buffer.from([137, 80, 78, 71, 13, 10, 26, 10]),
    chunk("IHDR", ihdr),
    chunk("IDAT", zlib.deflateSync(raw, { level: 9 })),
    chunk("IEND", Buffer.alloc(0)),
  ]);
}

const green = generateSprite({
  ring: [143, 178, 162, 255], body: [231, 239, 233, 255], face: [247, 250, 247, 255],
  highlight: [205, 221, 211, 255], indicator: [67, 102, 87, 255], endpoint: [127, 164, 123, 255],
  center: [143, 178, 162, 255], centerDot: [67, 102, 87, 255],
});
const gold = generateSprite({
  ring: [210, 179, 75, 255], body: [244, 235, 202, 255], face: [255, 252, 240, 255],
  highlight: [238, 224, 170, 255], indicator: [154, 123, 38, 255], endpoint: [224, 189, 70, 255],
  center: [210, 179, 75, 255], centerDot: [128, 103, 38, 255],
});

fs.mkdirSync(assetDir, { recursive: true });
fs.writeFileSync(path.join(assetDir, "granular_knob_v1.png"), green);
fs.writeFileSync(path.join(root, "granular_knob_v1.png"), green);
fs.writeFileSync(path.join(assetDir, "granular_knob_gain_v1.png"), gold);
fs.writeFileSync(path.join(root, "granular_knob_gain_v1.png"), gold);
console.log(`Generated green and gold ${width}x${height} RGBA knob sprites with ${frames} frames`);
