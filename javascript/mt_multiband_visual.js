autowatch = 1;
inlets = 5;
outlets = 0;

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var lowX = 250;
var highX = 3500;
var lowGain = 0;
var midGain = 0;
var highGain = 0;

function clamp(value, minimum, maximum) {
  return Math.max(minimum, Math.min(maximum, value));
}

function msg_float(value) {
  if (inlet === 0) lowX = clamp(value, 80, 1200);
  if (inlet === 1) highX = clamp(value, 1200, 12000);
  if (inlet === 2) lowGain = clamp(value, -24, 12);
  if (inlet === 3) midGain = clamp(value, -24, 12);
  if (inlet === 4) highGain = clamp(value, -24, 12);
  mgraphics.redraw();
}

function frequencyX(frequency, width, margin) {
  var normalized = Math.log(frequency / 20) / Math.log(1000);
  return margin + normalized * (width - margin * 2);
}

function gainY(gain, height, margin) {
  return margin + ((12 - gain) / 36) * (height - margin * 2);
}

function blend(a, b, amount) {
  amount = clamp(amount, 0, 1);
  amount = amount * amount * (3 - 2 * amount);
  return a + (b - a) * amount;
}

function responseAt(x, lowPoint, highPoint) {
  var transition = 18;
  if (x < lowPoint - transition) return lowGain;
  if (x < lowPoint + transition) {
    return blend(lowGain, midGain, (x - lowPoint + transition) / (transition * 2));
  }
  if (x < highPoint - transition) return midGain;
  if (x < highPoint + transition) {
    return blend(midGain, highGain, (x - highPoint + transition) / (transition * 2));
  }
  return highGain;
}

function paint() {
  var width = box.rect[2] - box.rect[0];
  var height = box.rect[3] - box.rect[1];
  var margin = 18;
  var lowPoint = frequencyX(lowX, width, margin);
  var highPoint = frequencyX(highX, width, margin);
  var zeroY = gainY(0, height, margin);

  with (mgraphics) {
    set_source_rgba(0.055, 0.09, 0.075, 1);
    rectangle(0, 0, width, height);
    fill();

    set_source_rgba(0.49, 0.69, 0.60, 0.12);
    rectangle(margin, margin, lowPoint - margin, height - margin * 2);
    fill();
    set_source_rgba(0.93, 0.77, 0.29, 0.10);
    rectangle(lowPoint, margin, highPoint - lowPoint, height - margin * 2);
    fill();
    set_source_rgba(0.31, 0.60, 0.62, 0.12);
    rectangle(highPoint, margin, width - margin - highPoint, height - margin * 2);
    fill();

    set_line_width(1);
    for (var gain = -24; gain <= 12; gain += 12) {
      var y = gainY(gain, height, margin);
      set_source_rgba(0.68, 0.76, 0.71, gain === 0 ? 0.42 : 0.17);
      move_to(margin, y);
      line_to(width - margin, y);
      stroke();
    }

    set_source_rgba(0.92, 0.72, 0.22, 0.75);
    move_to(lowPoint, margin);
    line_to(lowPoint, height - margin);
    move_to(highPoint, margin);
    line_to(highPoint, height - margin);
    stroke();

    set_source_rgba(0.93, 0.96, 0.94, 0.96);
    set_line_width(2.4);
    move_to(margin, gainY(responseAt(margin, lowPoint, highPoint), height, margin));
    for (var x = margin + 2; x <= width - margin; x += 2) {
      line_to(x, gainY(responseAt(x, lowPoint, highPoint), height, margin));
    }
    stroke();

    set_source_rgba(0.92, 0.72, 0.22, 1);
    ellipse(lowPoint - 3.5, gainY(midGain, height, margin) - 3.5, 7, 7);
    fill();
    ellipse(highPoint - 3.5, gainY(highGain, height, margin) - 3.5, 7, 7);
    fill();

    select_font_face("Arial", 0);
    set_font_size(9);
    set_source_rgba(0.70, 0.78, 0.74, 0.82);
    move_to(margin + 4, zeroY - 5);
    show_text("LOW");
    move_to(lowPoint + 8, zeroY - 5);
    show_text("MID");
    move_to(highPoint + 8, zeroY - 5);
    show_text("HIGH");
  }
}
