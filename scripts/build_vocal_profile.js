const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const handPath = path.join(root, "patchers/control/mt_control_hand_jweb.maxpat");
const profilePath = path.join(root, "patchers/control/mt_control_vocal_profile.maxpat");
const demoPath = path.join(root, "patchers/control/mt_control_vocal_demo.maxpat");
const projectPath = path.join(root, "geehon-motion-system.maxproj");

function patcher(rect, description, openinpresentation = 1) {
  return {
    fileversion: 1,
    appversion: {
      major: 9,
      minor: 0,
      revision: 5,
      architecture: "x64",
      modernui: 1,
    },
    classnamespace: "box",
    rect,
    gridsize: [15, 15],
    openinpresentation,
    description,
    boxes: [],
    lines: [],
  };
}

function box(id, maxclass, patchingRect, extra = {}) {
  return { box: Object.assign({ id, maxclass, patching_rect: patchingRect }, extra) };
}

function newobj(id, text, rect, numinlets, numoutlets, outlettype) {
  return box(id, "newobj", rect, {
    numinlets,
    numoutlets,
    outlettype: outlettype || Array(numoutlets).fill(""),
    text,
  });
}

function comment(id, text, rect, presentationRect) {
  const extra = { numinlets: 1, numoutlets: 0, text };
  if (presentationRect) {
    extra.presentation = 1;
    extra.presentation_rect = presentationRect;
  }
  return box(id, "comment", rect, extra);
}

function inlet(id, x, text, index) {
  return box(id, "inlet", [x, 55, 30, 30], {
    comment: text,
    index,
    numinlets: 0,
    numoutlets: 1,
    outlettype: [""],
  });
}

function outletBox(id, x, text, index) {
  return box(id, "outlet", [x, 375, 30, 30], {
    comment: text,
    index,
    numinlets: 1,
    numoutlets: 0,
  });
}

function patchline(sourceId, sourceOutlet, destinationId, destinationInlet, extra = {}) {
  return {
    patchline: Object.assign(
      {
        source: [sourceId, sourceOutlet],
        destination: [destinationId, destinationInlet],
      },
      extra
    ),
  };
}

function idOf(entry) {
  return entry.box.id;
}

function findBox(target, id) {
  const entry = target.boxes.find((candidate) => idOf(candidate) === id);
  if (!entry) throw new Error(`Missing box: ${id}`);
  return entry.box;
}

function removeBoxes(target, ids) {
  const unwanted = new Set(ids);
  target.boxes = target.boxes.filter((entry) => !unwanted.has(idOf(entry)));
  target.lines = target.lines.filter(({ patchline: line }) => {
    return !unwanted.has(line.source[0]) && !unwanted.has(line.destination[0]);
  });
}

function addLineOnce(target, line) {
  const candidate = line.patchline;
  const exists = target.lines.some(({ patchline: current }) => {
    return (
      current.source[0] === candidate.source[0] &&
      current.source[1] === candidate.source[1] &&
      current.destination[0] === candidate.destination[0] &&
      current.destination[1] === candidate.destination[1]
    );
  });
  if (!exists) target.lines.push(line);
}

function modifyHandPatch() {
  const document = JSON.parse(fs.readFileSync(handPath, "utf8"));
  const top = document.patcher;
  const coreBox = findBox(top, "th-hand-control");
  const core = coreBox.patcher;

  removeBoxes(top, [
    "hj-free-hand-label",
    "hj-free-hand-menu",
    "hj-free-hand-default",
    "hj-tracking-toggle",
    "hj-tracking-label",
    "hj-out-tracking",
  ]);
  removeBoxes(core, [
    "hp-hand-control-core-in-side",
    "hp-hand-control-core-in-side-label",
    "hp-hand-selector",
    "hp-hand-select-trigger",
    "hp-hand-select-plus",
    "hp-selected-trigger",
    "hp-tracking-stop",
    "hp-tracking-delay",
    "hp-tracking-one",
    "hp-tracking-zero",
    "hp-hand-control-core-out-tracking",
    "hp-hand-control-core-out-tracking-label",
  ]);

  top.description =
    "Camera hand control source with selectable free hand and tracking-valid safety output.";
  findBox(top, "th-note").text =
    "Camera hand tracking outputs hand X, hand Y, pinch distance, palm width, and Tracking Valid.";
  findBox(top, "th-test-note").text =
    "Test: select the free hand, reload camera, then confirm four 0-1 values plus Tracking Valid.";
  findBox(top, "hj-out-label").text =
    "out 1-5: hand_x / hand_y / pinch / palm / tracking valid";

  coreBox.numinlets = 2;
  coreBox.numoutlets = 6;
  coreBox.outlettype = ["", "", "", "", "", ""];
  coreBox.patching_rect = [890, 166, 420, 22];

  const handUnpack = findBox(core, "hp-right");
  handUnpack.text = "dict.unpack Left: Right:";
  handUnpack.numoutlets = 3;
  handUnpack.outlettype = ["", "", ""];
  handUnpack.patching_rect = [35, 379, 165, 22];
  findBox(core, "hp-hand-control-core-values-label").text =
    "out: camera list / hand_x / hand_y / pinch / palm / tracking_valid";

  core.lines = core.lines.filter(({ patchline: line }) => {
    return !(line.source[0] === "hp-right" && line.destination[0] === "hp-points");
  });

  core.boxes.push(
    comment(
      "hp-hand-control-core-in-side-label",
      "in 2: free hand 0 Right / 1 Left",
      [170, 35, 230, 20]
    ),
    box("hp-hand-control-core-in-side", "inlet", [170, 121, 30, 30], {
      comment: "free hand: 0 Right / 1 Left",
      index: 2,
      numinlets: 0,
      numoutlets: 1,
      outlettype: [""],
    }),
    newobj("hp-hand-select-trigger", "t i b b", [230, 121, 65, 22], 1, 3),
    newobj("hp-hand-select-plus", "+ 1", [230, 164, 40, 22], 2, 1),
    newobj("hp-hand-selector", "selector 2", [230, 422, 82, 22], 3, 1),
    newobj("hp-selected-trigger", "t l b b b", [230, 465, 78, 22], 1, 4),
    box("hp-tracking-stop", "message", [355, 422, 40, 22], {
      numinlets: 2,
      numoutlets: 1,
      outlettype: [""],
      text: "stop",
    }),
    newobj("hp-tracking-delay", "delay 250", [355, 465, 70, 22], 2, 1),
    box("hp-tracking-one", "message", [445, 422, 32, 22], {
      numinlets: 2,
      numoutlets: 1,
      outlettype: [""],
      text: "1",
    }),
    box("hp-tracking-zero", "message", [445, 465, 32, 22], {
      numinlets: 2,
      numoutlets: 1,
      outlettype: [""],
      text: "0",
    }),
    comment(
      "hp-hand-control-core-out-tracking-label",
      "out 6: tracking valid 0/1",
      [1540, 70, 175, 20]
    ),
    box("hp-hand-control-core-out-tracking", "outlet", [635, 981, 30, 30], {
      comment: "tracking valid 0/1",
      index: 6,
      numinlets: 1,
      numoutlets: 0,
    })
  );

  [
    patchline("hp-hand-control-core-in-side", 0, "hp-hand-select-trigger", 0),
    patchline("hp-hand-select-trigger", 0, "hp-hand-select-plus", 0),
    patchline("hp-hand-select-trigger", 2, "hp-tracking-stop", 0),
    patchline("hp-hand-select-trigger", 1, "hp-tracking-zero", 0),
    patchline("hp-hand-select-plus", 0, "hp-hand-selector", 0),
    patchline("hp-right", 1, "hp-hand-selector", 1),
    patchline("hp-right", 0, "hp-hand-selector", 2),
    patchline("hp-hand-selector", 0, "hp-selected-trigger", 0),
    patchline("hp-selected-trigger", 3, "hp-tracking-stop", 0),
    patchline("hp-selected-trigger", 2, "hp-tracking-one", 0),
    patchline("hp-selected-trigger", 1, "hp-tracking-delay", 0),
    patchline("hp-selected-trigger", 0, "hp-points", 0),
    patchline("hp-tracking-stop", 0, "hp-tracking-delay", 0),
    patchline("hp-tracking-delay", 0, "hp-tracking-zero", 0),
    patchline("hp-tracking-one", 0, "hp-hand-control-core-out-tracking", 0),
    patchline("hp-tracking-zero", 0, "hp-hand-control-core-out-tracking", 0),
  ].forEach((line) => addLineOnce(core, line));

  top.boxes.push(
    comment("hj-free-hand-label", "Free Hand", [620, 200, 90, 20], [435, 38, 80, 20]),
    box("hj-free-hand-menu", "umenu", [620, 225, 150, 22], {
      items: ["Right", ",", "Left"],
      numinlets: 1,
      numoutlets: 3,
      outlettype: ["int", "", ""],
      parameter_enable: 0,
      presentation: 1,
      presentation_rect: [435, 64, 160, 22],
      varname: "free_hand_selector",
    }),
    newobj("hj-free-hand-default", "loadmess 0", [790, 225, 78, 22], 1, 1),
    box("hj-tracking-toggle", "toggle", [620, 370, 24, 24], {
      numinlets: 1,
      numoutlets: 1,
      outlettype: ["int"],
      presentation: 1,
      presentation_rect: [425, 232, 24, 24],
      varname: "hand_tracking_valid",
    }),
    comment("hj-tracking-label", "Tracking Valid", [655, 372, 120, 20], [455, 234, 120, 20]),
    box("hj-out-tracking", "outlet", [520, 682, 30, 30], {
      comment: "tracking valid 0/1",
      index: 5,
      numinlets: 1,
      numoutlets: 0,
    })
  );

  [
    patchline("hj-free-hand-default", 0, "hj-free-hand-menu", 0),
    patchline("hj-free-hand-menu", 0, "th-hand-control", 1),
    patchline("th-hand-control", 5, "hj-tracking-toggle", 0),
    patchline("th-hand-control", 5, "hj-out-tracking", 0),
  ].forEach((line) => addLineOnce(top, line));

  fs.writeFileSync(handPath, `${JSON.stringify(document, null, 2)}\n`);
}

function buildProfilePatch() {
  const p = patcher(
    [80, 80, 760, 450],
    "Free-hand vocal performance profile with pinch clutch and relative vocoder mapping."
  );

  p.boxes.push(
    comment(
      "vp-title",
      "GEEHON FREE HAND VOCAL PROFILE",
      [20, 10, 420, 24],
      [16, 12, 390, 24]
    ),
    comment(
      "vp-note",
      "Pinch and hold to move. Release to freeze. X controls Brightness; raised Y controls Carrier Tone.",
      [20, 35, 690, 22],
      [16, 40, 700, 22]
    ),
    inlet("vp-in-x", 40, "hand_x 0-1", 1),
    inlet("vp-in-y", 150, "hand_y 0-1", 2),
    inlet("vp-in-pinch", 260, "pinch distance 0-1", 3),
    inlet("vp-in-palm", 370, "palm width monitor 0-1", 4),
    inlet("vp-in-tracking", 480, "tracking valid 0/1", 5),
    newobj("vp-frame-pak", "pak f f f f i", [40, 110, 112, 22], 5, 1),
    newobj("vp-frame-prepend", "prepend frame", [40, 150, 95, 22], 1, 1),
    newobj(
      "vp-js",
      "js Patcher:/../../javascript/mt_vocal_hand_mapper.js",
      [40, 195, 310, 22],
      1,
      5,
      ["", "", "", "", ""]
    ),
    box("vp-arm", "toggle", [575, 75, 24, 24], {
      numinlets: 1,
      numoutlets: 1,
      outlettype: ["int"],
      presentation: 1,
      presentation_rect: [20, 82, 28, 28],
      varname: "vocal_profile_arm",
    }),
    comment("vp-arm-label", "ARM", [610, 78, 55, 20], [56, 86, 55, 20]),
    newobj("vp-arm-prepend", "prepend arm", [575, 115, 85, 22], 1, 1),
    box("vp-reset", "button", [680, 75, 24, 24], {
      numinlets: 1,
      numoutlets: 1,
      outlettype: ["bang"],
      presentation: 1,
      presentation_rect: [130, 84, 24, 24],
    }),
    comment("vp-reset-label", "RESET", [710, 78, 55, 20], [160, 86, 62, 20]),
    box("vp-reset-message", "message", [680, 115, 62, 22], {
      numinlets: 2,
      numoutlets: 1,
      outlettype: [""],
      text: "reset 1",
    }),
    newobj("vp-loadbang", "loadbang", [575, 155, 65, 22], 1, 1),
    newobj("vp-load-trigger", "t b b", [575, 190, 45, 22], 1, 2),
    box("vp-arm-zero", "message", [640, 190, 32, 22], {
      numinlets: 2,
      numoutlets: 1,
      outlettype: [""],
      text: "0",
    }),
    newobj("vp-bright-pack", "pack f 60", [40, 245, 75, 22], 2, 1),
    newobj("vp-bright-line", "line", [40, 280, 45, 22], 3, 2, ["", "bang"]),
    newobj("vp-bright-trigger", "t f f", [40, 315, 42, 22], 1, 2),
    newobj("vp-tone-pack", "pack f 60", [150, 245, 75, 22], 2, 1),
    newobj("vp-tone-line", "line", [150, 280, 45, 22], 3, 2, ["", "bang"]),
    newobj("vp-tone-trigger", "t f f", [150, 315, 42, 22], 1, 2),
    box("vp-bright-num", "flonum", [300, 250, 70, 22], {
      numinlets: 1,
      numoutlets: 2,
      outlettype: ["", "bang"],
      presentation: 1,
      presentation_rect: [250, 90, 82, 24],
      varname: "vocal_brightness",
    }),
    comment("vp-bright-label", "BRIGHTNESS", [300, 225, 110, 20], [250, 68, 110, 20]),
    box("vp-tone-num", "flonum", [400, 250, 70, 22], {
      numinlets: 1,
      numoutlets: 2,
      outlettype: ["", "bang"],
      presentation: 1,
      presentation_rect: [370, 90, 82, 24],
      varname: "vocal_carrier_tone",
    }),
    comment("vp-tone-label", "CARRIER TONE", [400, 225, 120, 20], [370, 68, 120, 20]),
    box("vp-clutch-toggle", "toggle", [500, 250, 24, 24], {
      numinlets: 1,
      numoutlets: 1,
      outlettype: ["int"],
      presentation: 1,
      presentation_rect: [500, 90, 24, 24],
    }),
    comment("vp-clutch-label", "CLUTCH", [535, 252, 70, 20], [500, 68, 70, 20]),
    box("vp-tracking-toggle", "toggle", [610, 250, 24, 24], {
      numinlets: 1,
      numoutlets: 1,
      outlettype: ["int"],
      presentation: 1,
      presentation_rect: [590, 90, 24, 24],
    }),
    comment("vp-tracking-label", "TRACKING", [645, 252, 80, 20], [590, 68, 90, 20]),
    newobj("vp-status-set", "prepend set", [500, 300, 85, 22], 1, 1),
    box("vp-status", "message", [600, 300, 125, 22], {
      numinlets: 2,
      numoutlets: 1,
      outlettype: [""],
      text: "DISARMED",
      presentation: 1,
      presentation_rect: [20, 145, 200, 24],
      varname: "vocal_profile_status",
    }),
    comment("vp-status-label", "STATUS", [500, 277, 60, 20], [20, 122, 70, 20]),
    box("vp-palm-num", "flonum", [610, 335, 70, 22], {
      numinlets: 1,
      numoutlets: 2,
      outlettype: ["", "bang"],
      presentation: 1,
      presentation_rect: [250, 145, 82, 24],
    }),
    comment("vp-palm-label", "PALM MONITOR", [610, 312, 110, 20], [250, 122, 120, 20]),
    outletBox("vp-out-bright", 40, "Vocoder Brightness 0-1", 1),
    outletBox("vp-out-tone", 150, "Vocoder Carrier Tone 0-1", 2),
    outletBox("vp-out-clutch", 260, "pinch clutch active 0/1", 3),
    outletBox("vp-out-tracking", 370, "tracking valid 0/1", 4),
    outletBox("vp-out-status", 480, "interaction status", 5)
  );

  [
    patchline("vp-in-x", 0, "vp-frame-pak", 0),
    patchline("vp-in-y", 0, "vp-frame-pak", 1),
    patchline("vp-in-pinch", 0, "vp-frame-pak", 2),
    patchline("vp-in-palm", 0, "vp-frame-pak", 3),
    patchline("vp-in-palm", 0, "vp-palm-num", 0),
    patchline("vp-in-tracking", 0, "vp-frame-pak", 4),
    patchline("vp-frame-pak", 0, "vp-frame-prepend", 0),
    patchline("vp-frame-prepend", 0, "vp-js", 0),
    patchline("vp-arm", 0, "vp-arm-prepend", 0),
    patchline("vp-arm-prepend", 0, "vp-js", 0),
    patchline("vp-reset", 0, "vp-reset-message", 0),
    patchline("vp-reset-message", 0, "vp-js", 0),
    patchline("vp-loadbang", 0, "vp-load-trigger", 0),
    patchline("vp-load-trigger", 1, "vp-arm-zero", 0),
    patchline("vp-arm-zero", 0, "vp-arm", 0),
    patchline("vp-load-trigger", 0, "vp-reset-message", 0),
    patchline("vp-js", 0, "vp-bright-pack", 0),
    patchline("vp-bright-pack", 0, "vp-bright-line", 0),
    patchline("vp-bright-line", 0, "vp-bright-trigger", 0),
    patchline("vp-bright-trigger", 0, "vp-out-bright", 0),
    patchline("vp-bright-trigger", 1, "vp-bright-num", 0),
    patchline("vp-js", 1, "vp-tone-pack", 0),
    patchline("vp-tone-pack", 0, "vp-tone-line", 0),
    patchline("vp-tone-line", 0, "vp-tone-trigger", 0),
    patchline("vp-tone-trigger", 0, "vp-out-tone", 0),
    patchline("vp-tone-trigger", 1, "vp-tone-num", 0),
    patchline("vp-js", 2, "vp-clutch-toggle", 0),
    patchline("vp-js", 2, "vp-out-clutch", 0),
    patchline("vp-js", 3, "vp-tracking-toggle", 0),
    patchline("vp-js", 3, "vp-out-tracking", 0),
    patchline("vp-js", 4, "vp-status-set", 0),
    patchline("vp-status-set", 0, "vp-status", 0),
    patchline("vp-js", 4, "vp-out-status", 0),
  ].forEach((line) => p.lines.push(line));

  fs.writeFileSync(profilePath, `${JSON.stringify({ patcher: p }, null, 2)}\n`);
}

function bpatcher(id, name, rect, numinlets, numoutlets, outlettype, presentationRect) {
  return box(id, "bpatcher", rect, {
    bgmode: 0,
    border: 1,
    clickthrough: 0,
    enablehscroll: 0,
    enablevscroll: 0,
    lockeddragscroll: 0,
    lockedsize: 0,
    name,
    numinlets,
    numoutlets,
    offset: [0, 0],
    outlettype,
    presentation: 1,
    presentation_rect: presentationRect,
    viewvisibility: 1,
  });
}

function buildDemoPatch() {
  const p = patcher(
    [40, 40, 1320, 930],
    "Standalone Free Hand Vocal Profile demo: hand clutch controls pfft vocoder brightness and carrier tone."
  );

  p.boxes.push(
    comment(
      "vd-title",
      "GEEHON FREE HAND VOCAL DEMO",
      [20, 15, 420, 24],
      [20, 12, 420, 24]
    ),
    comment(
      "vd-note",
      "Default free hand: RIGHT. Arm, pinch and hold, then move X/Y. Release to freeze the sound.",
      [20, 42, 860, 22],
      [20, 40, 900, 22]
    ),
    bpatcher(
      "vd-hand",
      "mt_control_hand_jweb.maxpat",
      [20, 90, 620, 460],
      0,
      5,
      ["", "", "", "", ""],
      [20, 78, 620, 460]
    ),
    bpatcher(
      "vd-profile",
      "mt_control_vocal_profile.maxpat",
      [660, 90, 760, 230],
      5,
      5,
      ["", "", "", "", ""],
      [660, 78, 760, 230]
    ),
    bpatcher(
      "vd-mic",
      "mt_input_mic_ui.maxpat",
      [20, 590, 420, 280],
      1,
      2,
      ["signal", "signal"],
      [20, 565, 420, 280]
    ),
    bpatcher(
      "vd-vocoder",
      "mt_mod_vocoder.maxpat",
      [470, 590, 760, 225],
      8,
      2,
      ["signal", "signal"],
      [470, 565, 760, 225]
    ),
    box("vd-mic-enable", "toggle", [980, 20, 24, 24], {
      numinlets: 1,
      numoutlets: 1,
      outlettype: ["int"],
      presentation: 1,
      presentation_rect: [980, 18, 24, 24],
    }),
    comment("vd-mic-enable-label", "MIC", [1012, 22, 45, 20], [1012, 20, 45, 20]),
    box("vd-voc-enable", "toggle", [1070, 20, 24, 24], {
      numinlets: 1,
      numoutlets: 1,
      outlettype: ["int"],
      presentation: 1,
      presentation_rect: [1070, 18, 24, 24],
    }),
    comment("vd-voc-enable-label", "VOCODER", [1102, 22, 85, 20], [1102, 20, 85, 20]),
    box("vd-dsp", "ezdac~", [1210, 18, 45, 45], {
      numinlets: 2,
      numoutlets: 0,
      presentation: 1,
      presentation_rect: [1210, 12, 45, 45],
    }),
    newobj("vd-loadbang", "loadbang", [1000, 400, 65, 22], 1, 1),
    newobj("vd-init-trigger", "t b b b", [1000, 435, 62, 22], 1, 3),
    box("vd-wet-one", "message", [920, 475, 32, 22], {
      numinlets: 2,
      numoutlets: 1,
      outlettype: [""],
      text: "1.",
    }),
    box("vd-noise-default", "message", [990, 475, 42, 22], {
      numinlets: 2,
      numoutlets: 1,
      outlettype: [""],
      text: "0.25",
    }),
    box("vd-smooth-default", "message", [1060, 475, 42, 22], {
      numinlets: 2,
      numoutlets: 1,
      outlettype: [""],
      text: "0.35",
    }),
    comment(
      "vd-audio-note",
      "Audio monitor uses the Vocoder module's built-in Output Gain and ezdac~; no duplicate monitor path is added.",
      [660, 340, 590, 22],
      [660, 330, 590, 22]
    ),
    box("vd-out-l", "outlet", [1080, 850, 30, 30], {
      comment: "processed audio L",
      index: 1,
      numinlets: 1,
      numoutlets: 0,
    }),
    box("vd-out-r", "outlet", [1160, 850, 30, 30], {
      comment: "processed audio R",
      index: 2,
      numinlets: 1,
      numoutlets: 0,
    })
  );

  [
    patchline("vd-hand", 0, "vd-profile", 0),
    patchline("vd-hand", 1, "vd-profile", 1),
    patchline("vd-hand", 2, "vd-profile", 2),
    patchline("vd-hand", 3, "vd-profile", 3),
    patchline("vd-hand", 4, "vd-profile", 4),
    patchline("vd-mic-enable", 0, "vd-mic", 0),
    patchline("vd-mic", 0, "vd-vocoder", 0),
    patchline("vd-mic", 1, "vd-vocoder", 1),
    patchline("vd-voc-enable", 0, "vd-vocoder", 2),
    patchline("vd-profile", 1, "vd-vocoder", 4),
    patchline("vd-profile", 0, "vd-vocoder", 7),
    patchline("vd-loadbang", 0, "vd-init-trigger", 0),
    patchline("vd-init-trigger", 2, "vd-wet-one", 0),
    patchline("vd-init-trigger", 1, "vd-noise-default", 0),
    patchline("vd-init-trigger", 0, "vd-smooth-default", 0),
    patchline("vd-wet-one", 0, "vd-vocoder", 3),
    patchline("vd-noise-default", 0, "vd-vocoder", 5),
    patchline("vd-smooth-default", 0, "vd-vocoder", 6),
    patchline("vd-vocoder", 0, "vd-out-l", 0),
    patchline("vd-vocoder", 1, "vd-out-r", 0),
  ].forEach((line) => p.lines.push(line));

  fs.writeFileSync(demoPath, `${JSON.stringify({ patcher: p }, null, 2)}\n`);
}

function updateProject() {
  const project = JSON.parse(fs.readFileSync(projectPath, "utf8"));
  const members = project.contents.patchers;
  members["mt_control_vocal_profile.maxpat"] = { kind: "patcher", local: 1 };
  members["mt_control_vocal_demo.maxpat"] = { kind: "patcher", local: 1 };
  fs.writeFileSync(projectPath, `${JSON.stringify(project, null, 2)}\n`);
}

modifyHandPatch();
buildProfilePatch();
buildDemoPatch();
updateProject();

console.log("Built Free Hand Vocal Profile patches.");
