autowatch = 1;
inlets = 4;
outlets = 1;

var mouseX = 0;
var mouseY = 0;
var mouseDown = 0;
var frequencies = [80, 160, 400, 1000, 3000, 8000, 12000];
var graphRect = [24, 84, 712, 210];

function msg_int(value) {
  if (inlet === 1) {
    mouseX = value;
  } else if (inlet === 2) {
    mouseY = value;
  } else if (inlet === 0) {
    handleButton(value);
  }
}

function msg_float(value) {
  msg_int(value);
}

function list() {
  var values = arrayfromargs(arguments);
  var index;
  var frequency;

  if (inlet !== 3 || values.length < 2) {
    return;
  }

  index = Math.round(Number(values[0]));
  frequency = Number(values[1]);
  if (index >= 0 && index < frequencies.length && frequency > 0) {
    frequencies[index] = frequency;
  }
}

function handleButton(value) {
  var next = Number(value) !== 0 ? 1 : 0;
  if (next && !mouseDown) {
    selectNearest(mouseX, mouseY);
  }
  mouseDown = next;
}

function selectNearest(x, y) {
  var normalized;
  var clickedFrequency;
  var nearest = 0;
  var nearestDistance = Infinity;
  var i;
  var distance;

  if (
    x < graphRect[0] ||
    x > graphRect[0] + graphRect[2] ||
    y < graphRect[1] ||
    y > graphRect[1] + graphRect[3]
  ) {
    return;
  }

  normalized = (x - graphRect[0]) / graphRect[2];
  clickedFrequency = 20 * Math.pow(1000, normalized);
  for (i = 0; i < frequencies.length; i += 1) {
    distance = Math.abs(Math.log(frequencies[i]) - Math.log(clickedFrequency));
    if (distance < nearestDistance) {
      nearestDistance = distance;
      nearest = i;
    }
  }
  outlet(0, nearest + 1);
}
