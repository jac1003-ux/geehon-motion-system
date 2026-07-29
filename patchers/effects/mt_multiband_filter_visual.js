autowatch = 1;
// Kept beside the patch so the standalone module resolves it without a project search path.
inlets = 4;
outlets = 0;

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var lowX = 250;
var highX = 3500;
var gains = [0, 0, 0];
var drives = [0, 0, 0];
var widths = [1, 1, 1];
var selected = 0;
var mutes = [0, 0, 0];
var solo = -1;
var focus = 0.5;
var contrast = 0;
var spread = 0;
var energy = [0, 0, 0];

function clamp(value, minimum, maximum) {
  return Math.max(minimum, Math.min(maximum, Number(value)));
}

function list() {
  var values = arrayfromargs(arguments);
  if (inlet !== 0 || values.length < 19) return;
  lowX = values[0];
  highX = values[1];
  gains = values.slice(2, 5);
  drives = values.slice(5, 8);
  widths = values.slice(8, 11);
  selected = values[11];
  mutes = values.slice(12, 15);
  solo = values[15];
  focus = values[16];
  contrast = values[17];
  spread = values[18];
  mgraphics.redraw();
}

function msg_float(value) {
  if (inlet > 0) energy[inlet - 1] = clamp(value, 0, 1);
  mgraphics.redraw();
}

function frequencyX(frequency, width, margin) {
  var normalized = Math.log(clamp(frequency, 20, 20000) / 20) / Math.log(1000);
  return margin + normalized * (width - margin * 2);
}

function gainY(gain, height, top, bottom) {
  return top + ((12 - clamp(gain, -24, 12)) / 36) * (bottom - top);
}

function responseAt(x, lowPoint, highPoint) {
  var transition = 22;
  var amount;
  if (x < lowPoint - transition) return gains[0];
  if (x < lowPoint + transition) {
    amount = (x - lowPoint + transition) / (transition * 2);
    return gains[0] + (gains[1] - gains[0]) * amount;
  }
  if (x < highPoint - transition) return gains[1];
  if (x < highPoint + transition) {
    amount = (x - highPoint + transition) / (transition * 2);
    return gains[1] + (gains[2] - gains[1]) * amount;
  }
  return gains[2];
}

function paintBand(left, right, index, top, bottom) {
  var colors = [
    [0.49, 0.69, 0.60],
    [0.93, 0.77, 0.29],
    [0.31, 0.60, 0.62]
  ];
  var active = !mutes[index] && (solo < 0 || solo === index);
  var alpha = active ? 0.13 + energy[index] * 0.42 : 0.035;
  var fillHeight = (bottom - top) * clamp(energy[index] * 1.8, 0, 1);

  with (mgraphics) {
    set_source_rgba(colors[index][0], colors[index][1], colors[index][2], alpha);
    rectangle(left, top, right - left, bottom - top);
    fill();
    set_source_rgba(colors[index][0], colors[index][1], colors[index][2], active ? 0.18 : 0.04);
    rectangle(left, bottom - fillHeight, right - left, fillHeight);
    fill();
    if (selected === index) {
      set_source_rgba(colors[index][0], colors[index][1], colors[index][2], 0.95);
      set_line_width(2);
      rectangle(left + 1, top + 1, right - left - 2, bottom - top - 2);
      stroke();
    }
  }
}

function paint() {
  var width = box.rect[2] - box.rect[0];
  var height = box.rect[3] - box.rect[1];
  var margin = 34;
  var top = 20;
  var bottom = height - 26;
  var lowPoint = frequencyX(lowX, width, margin);
  var highPoint = frequencyX(highX, width, margin);
  var focusPoint = margin + focus * (width - margin * 2);
  var names = ["LOW", "MID", "HIGH"];
  var frequencyTicks = [20, 100, 1000, 10000, 20000];
  var frequencyLabels = ["20", "100", "1k", "10k", "20k"];
  var gainTicks = [12, 0, -12, -24];
  var lefts = [margin, lowPoint, highPoint];
  var rights = [lowPoint, highPoint, width - margin];

  with (mgraphics) {
    set_source_rgba(0.055, 0.09, 0.075, 1);
    rectangle(0, 0, width, height);
    fill();

    for (var band = 0; band < 3; band += 1) {
      paintBand(lefts[band], rights[band], band, top, bottom);
    }

    select_font_face("Arial", 0);
    set_font_size(9);
    for (var tick = 0; tick < frequencyTicks.length; tick += 1) {
      var tickX = frequencyX(frequencyTicks[tick], width, margin);
      var labelWidth = text_measure(frequencyLabels[tick])[0];
      set_source_rgba(0.68, 0.76, 0.71, 0.12);
      move_to(tickX, top);
      line_to(tickX, bottom);
      stroke();
      set_source_rgba(0.72, 0.80, 0.75, 0.78);
      move_to(Math.max(2, Math.min(width - labelWidth - 2, tickX - labelWidth * 0.5)), height - 8);
      show_text(frequencyLabels[tick]);
    }

    set_line_width(1);
    for (tick = 0; tick < gainTicks.length; tick += 1) {
      var gain = gainTicks[tick];
      var y = gainY(gain, height, top, bottom);
      var gainLabel = gain > 0 ? "+" + gain : String(gain);
      var gainWidth = text_measure(gainLabel)[0];
      set_source_rgba(0.68, 0.76, 0.71, gain === 0 ? 0.35 : 0.13);
      move_to(margin, y);
      line_to(width - margin, y);
      stroke();
      set_source_rgba(0.72, 0.80, 0.75, 0.78);
      move_to(margin - gainWidth - 5, y + 3);
      show_text(gainLabel);
    }

    set_source_rgba(0.92, 0.72, 0.22, 0.82);
    move_to(lowPoint, top);
    line_to(lowPoint, bottom);
    move_to(highPoint, top);
    line_to(highPoint, bottom);
    stroke();

    set_source_rgba(0.94, 0.97, 0.95, 0.96);
    set_line_width(2.4);
    move_to(margin, gainY(responseAt(margin, lowPoint, highPoint), height, top, bottom));
    for (var x = margin + 2; x <= width - margin; x += 2) {
      line_to(x, gainY(responseAt(x, lowPoint, highPoint), height, top, bottom));
    }
    stroke();

    set_source_rgba(0.96, 0.78, 0.25, 0.9);
    set_line_width(1.5 + contrast * 2);
    move_to(focusPoint, top - 5);
    line_to(focusPoint, bottom + 5);
    stroke();
    ellipse(focusPoint - 5, top - 9, 10, 10);
    fill();

    set_font_size(10);
    for (band = 0; band < 3; band += 1) {
      set_source_rgba(0.78, 0.84, 0.80, 0.88);
      move_to(lefts[band] + 8, top + 13);
      show_text(names[band] + "  D" + Math.round(drives[band]) + "  W" + widths[band].toFixed(1));
    }
  }
}
