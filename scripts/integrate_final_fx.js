const fs = require("fs");
const path = require("path");

const root = path.resolve(__dirname, "..");
const mixerPath = path.join(root, "patchers", "mixers", "mt_fx_return_mixer.maxpat");
const mainPath = path.join(root, "patchers", "mt_portfolio_main.maxpat");

const read = (file) => JSON.parse(fs.readFileSync(file, "utf8"));
const write = (file, value) => fs.writeFileSync(file, `${JSON.stringify(value, null, "\t")}\n`);
const clone = (value) => JSON.parse(JSON.stringify(value));
const entry = (box) => ({ box });
const line = (source, outlet, destination, inlet, extra = {}) => ({
  patchline: { source: [source, outlet], destination: [destination, inlet], ...extra },
});

function inlet(id, index, comment, x) {
  return entry({
    id,
    maxclass: "inlet",
    numinlets: 0,
    numoutlets: 1,
    outlettype: [index <= 10 ? "signal" : ""],
    index,
    comment,
    patching_rect: [x, 40, 30, 30],
  });
}

function outlet(id, index, comment, x, signal = false) {
  return entry({
    id,
    maxclass: "outlet",
    numinlets: 1,
    numoutlets: 0,
    index,
    comment,
    patching_rect: [x, 720, 30, 30],
    ...(signal ? { outlettype: ["signal"] } : {}),
  });
}

function object(id, text, x, y, width = 70, outlets = 1) {
  return entry({
    id,
    maxclass: "newobj",
    numinlets: 1,
    numoutlets: outlets,
    outlettype: Array(outlets).fill(""),
    patching_rect: [x, y, width, 22],
    text,
  });
}

function message(id, text, x, y) {
  return entry({
    id,
    maxclass: "message",
    numinlets: 2,
    numoutlets: 1,
    outlettype: [""],
    patching_rect: [x, y, 58, 22],
    text,
  });
}

const lanes = [
  { key: "dry", label: "Dry", initial: 0, state: null },
  { key: "voc", label: "Vocoder", initial: -10, state: "mt_vocoder_enable_state" },
  { key: "bit", label: "Bitcrusher", initial: 0, state: "mt_bitcrusher_enable_state" },
  { key: "delay", label: "Feedback Delay", initial: -10, state: "mt_feedback_delay_enable_state" },
  { key: "multi", label: "Multiband", initial: -10, state: "mt_multiband_filter_enable_state" },
];

function makeLaneCore(appversion) {
  const boxes = [entry({
    id: "fxc-title",
    maxclass: "comment",
    numinlets: 1,
    numoutlets: 0,
    patching_rect: [24, 10, 800, 20],
    text: "RETURN_LANES: five stereo returns -> 20 ms enable ramps",
  })];
  const lines = [];
  const inletX = (index) => 30 + (index - 1) * 42;
  const outletX = (index) => 30 + (index - 1) * 42;

  lanes.forEach((lane, i) => {
    const x = 30 + i * 170;
    boxes.push(
      inlet(`fxc-${lane.key}-l`, i * 2 + 1, "", inletX(i * 2 + 1)),
      inlet(`fxc-${lane.key}-r`, i * 2 + 2, "", inletX(i * 2 + 2)),
      inlet(`fxc-${lane.key}-ext`, 11 + i, "", inletX(11 + i)),
      inlet(`fxc-${lane.key}-local`, 16 + i, "", inletX(16 + i)),
      object(`fxc-${lane.key}-ext-route`, "t i i", x + 84, 105, 45, 2),
      message(`fxc-${lane.key}-ui-set`, "set $1", x + 84, 145),
      message(`fxc-${lane.key}-msg`, "$1 20", x, 225),
      object(`fxc-${lane.key}-line`, "line~", x, 265, 50),
      object(`fxc-${lane.key}-gate-l`, "*~ 0.", x, 325, 55),
      object(`fxc-${lane.key}-gate-r`, "*~ 0.", x + 72, 325, 55),
      outlet(`fxc-${lane.key}-out-l`, i * 2 + 1, "", outletX(i * 2 + 1), true),
      outlet(`fxc-${lane.key}-out-r`, i * 2 + 2, "", outletX(i * 2 + 2), true),
      outlet(`fxc-${lane.key}-ui-out`, 11 + i, "", outletX(11 + i)),
    );

    if (lane.key === "dry") {
      boxes.push(object("fxc-dry-default", "loadmess 1", x, 105, 90));
      lines.push(
        line("fxc-dry-default", 0, "fxc-dry-ext-route", 0),
        line("fxc-dry-local", 0, "fxc-dry-msg", 0),
      );
    } else {
      boxes.push(
        object(`fxc-${lane.key}-local-route`, "t i i i", x + 126, 185, 60, 3),
        object(`fxc-${lane.key}-state-send`, `s ${lane.state}`, x + 126, 225, 180),
        outlet(`fxc-${lane.key}-state-out`, 16 + i - 1, "", outletX(16 + i - 1)),
      );
      lines.push(
        line(`fxc-${lane.key}-local`, 0, `fxc-${lane.key}-local-route`, 0),
        line(`fxc-${lane.key}-local-route`, 0, `fxc-${lane.key}-msg`, 0),
        line(`fxc-${lane.key}-local-route`, 1, `fxc-${lane.key}-state-out`, 0),
        line(`fxc-${lane.key}-local-route`, 2, `fxc-${lane.key}-state-send`, 0),
      );
    }

    lines.push(
      line(`fxc-${lane.key}-ext`, 0, `fxc-${lane.key}-ext-route`, 0),
      line(`fxc-${lane.key}-ext-route`, 0, `fxc-${lane.key}-ui-set`, 0),
      line(`fxc-${lane.key}-ext-route`, 1, `fxc-${lane.key}-msg`, 0),
      line(`fxc-${lane.key}-ui-set`, 0, `fxc-${lane.key}-ui-out`, 0),
      line(`fxc-${lane.key}-msg`, 0, `fxc-${lane.key}-line`, 0),
      line(`fxc-${lane.key}-l`, 0, `fxc-${lane.key}-gate-l`, 0),
      line(`fxc-${lane.key}-r`, 0, `fxc-${lane.key}-gate-r`, 0),
      line(`fxc-${lane.key}-line`, 0, `fxc-${lane.key}-gate-l`, 1, { order: 1 }),
      line(`fxc-${lane.key}-line`, 0, `fxc-${lane.key}-gate-r`, 1, { order: 0 }),
      line(`fxc-${lane.key}-gate-l`, 0, `fxc-${lane.key}-out-l`, 0),
      line(`fxc-${lane.key}-gate-r`, 0, `fxc-${lane.key}-out-r`, 0),
    );
  });

  return {
    fileversion: 1,
    appversion,
    classnamespace: "box",
    rect: [120, 120, 980, 790],
    gridsize: [15, 15],
    boxes,
    lines,
  };
}

function makeSumCore(appversion) {
  const boxes = [entry({
    id: "fxs-title",
    maxclass: "comment",
    numinlets: 1,
    numoutlets: 0,
    patching_rect: [24, 10, 520, 20],
    text: "RETURN_SUM: five stereo lanes -> balanced L/R sum",
  })];
  const lines = [];
  lanes.forEach((lane, i) => {
    boxes.push(
      inlet(`fxs-${lane.key}-l`, i * 2 + 1, "", 30 + i * 110),
      inlet(`fxs-${lane.key}-r`, i * 2 + 2, "", 70 + i * 110),
    );
  });
  for (let stage = 1; stage <= 4; stage += 1) {
    boxes.push(
      object(`fxs-sum-l-${stage}`, "+~", 100 + stage * 90, 110 + stage * 70, 35),
      object(`fxs-sum-r-${stage}`, "+~", 150 + stage * 90, 110 + stage * 70, 35),
    );
    const leftSource = stage === 1 ? "fxs-dry-l" : `fxs-sum-l-${stage - 1}`;
    const rightSource = stage === 1 ? "fxs-dry-r" : `fxs-sum-r-${stage - 1}`;
    lines.push(
      line(leftSource, 0, `fxs-sum-l-${stage}`, 0),
      line(rightSource, 0, `fxs-sum-r-${stage}`, 0),
      line(`fxs-${lanes[stage].key}-l`, 0, `fxs-sum-l-${stage}`, 1),
      line(`fxs-${lanes[stage].key}-r`, 0, `fxs-sum-r-${stage}`, 1),
    );
  }
  boxes.push(
    outlet("fxs-out-l", 1, "", 460, true),
    outlet("fxs-out-r", 2, "", 520, true),
  );
  lines.push(
    line("fxs-sum-l-4", 0, "fxs-out-l", 0),
    line("fxs-sum-r-4", 0, "fxs-out-r", 0),
  );
  return {
    fileversion: 1,
    appversion,
    classnamespace: "box",
    rect: [120, 120, 720, 790],
    gridsize: [15, 15],
    boxes,
    lines,
  };
}

function rebuildMixer() {
  const document = read(mixerPath);
  const old = document.patcher;
  const oldBoxes = new Map(old.boxes.map((item) => [item.box.id, item.box]));
  const appversion = old.appversion;
  const boxes = [];
  const lines = [];

  boxes.push(entry({
    id: "fx-shell-note",
    maxclass: "comment",
    numinlets: 1,
    numoutlets: 0,
    patching_rect: [20, 10, 760, 20],
    text: "FX RETURN SHELL: dry + four pure-wet returns -> master",
  }));

  const inletComments = [
    "Dry audio L", "Dry audio R",
    "Vocoder return L", "Vocoder return R",
    "Bitcrusher return L", "Bitcrusher return R",
    "Feedback Delay return L", "Feedback Delay return R",
    "Multiband return L", "Multiband return R",
    "Dry Enable 0/1", "Vocoder Enable 0/1", "Bitcrusher Enable 0/1",
    "Feedback Delay Enable 0/1", "Multiband Enable 0/1",
  ];
  inletComments.forEach((comment, i) => boxes.push(inlet(
    `fx-${i < 10 ? `${lanes[Math.floor(i / 2)].key}-${i % 2 ? "r" : "l"}` : `${lanes[i - 10].key}-enable-in`}`,
    i + 1,
    comment,
    20 + i * 42,
  )));

  const toggleTemplate = clone(oldBoxes.get("fx-dry-enable"));
  const gainTemplate = clone(oldBoxes.get("fx-dry-gain"));
  lanes.forEach((lane, i) => {
    const toggle = clone(toggleTemplate);
    Object.assign(toggle, {
      id: `fx-${lane.key}-enable`,
      varname: `fx_return_${lane.key === "voc" ? "vocoder" : lane.key === "bit" ? "bitcrusher" : lane.key === "delay" ? "feedback_delay" : lane.key === "multi" ? "multiband" : "dry"}_enable`,
      patching_rect: [111 + i * 145, 345, 24, 24],
      presentation_rect: [111 + i * 145, 57, 24, 24],
    });
    const gain = clone(gainTemplate);
    Object.assign(gain, {
      id: `fx-${lane.key}-gain`,
      varname: `fx_return_${lane.key === "voc" ? "vocoder" : lane.key === "bit" ? "bitcrusher" : lane.key === "delay" ? "feedback_delay" : lane.key === "multi" ? "multiband" : "dry"}_gain`,
      patching_rect: [75 + i * 145, 600, 54, 139],
      presentation_rect: [75 + i * 145, 108, 54, 139],
    });
    gain.saved_attribute_attributes.valueof.parameter_initial = [lane.initial];
    boxes.push(entry(toggle), entry(gain));
  });

  const master = clone(oldBoxes.get("fx-master"));
  Object.assign(master, {
    patching_rect: [741, 600, 54, 144],
    presentation_rect: [741, 103, 54, 144],
  });
  const meterL = clone(oldBoxes.get("fx-meter-l"));
  const meterR = clone(oldBoxes.get("fx-meter-r"));
  Object.assign(meterL, { patching_rect: [815, 600, 12, 150], presentation_rect: [815, 96, 12, 150] });
  Object.assign(meterR, { patching_rect: [835, 600, 12, 150], presentation_rect: [835, 96, 12, 150] });
  boxes.push(entry(master), entry(meterL), entry(meterR));

  const laneCore = {
    id: "p-Return-lanes",
    maxclass: "newobj",
    numinlets: 20,
    numoutlets: 19,
    outlettype: Array(10).fill("signal").concat(Array(9).fill("")),
    patching_rect: [20, 430, 150, 22],
    text: "p Return_lanes",
    patcher: makeLaneCore(appversion),
  };
  const sumCore = {
    id: "p-Return-sum",
    maxclass: "newobj",
    numinlets: 10,
    numoutlets: 2,
    outlettype: ["signal", "signal"],
    patching_rect: [300, 500, 140, 22],
    text: "p Return_sum",
    patcher: makeSumCore(appversion),
  };
  boxes.push(entry(laneCore), entry(sumCore));

  const outputComments = [
    "Mixed audio L", "Mixed audio R", "Vocoder Enable state", "Bitcrusher Enable state",
    "Feedback Delay Enable state", "Multiband Enable state",
  ];
  outputComments.forEach((comment, i) => boxes.push(outlet(
    i < 2 ? `fx-out-${i ? "r" : "l"}` : `fx-${lanes[i - 1].key}-enable-out`,
    i + 1,
    comment,
    700 + i * 38,
    i < 2,
  )));

  const background = clone(oldBoxes.get("fx-bg"));
  Object.assign(background, {
    patching_rect: [20, 40, 905, 300],
    presentation_rect: [0, 0, 905, 300],
  });
  boxes.push(entry(background));

  lanes.forEach((lane, i) => {
    lines.push(
      line(`fx-${lane.key}-l`, 0, "p-Return-lanes", i * 2),
      line(`fx-${lane.key}-r`, 0, "p-Return-lanes", i * 2 + 1),
      line(`fx-${lane.key}-enable-in`, 0, "p-Return-lanes", 10 + i),
      line(`fx-${lane.key}-enable`, 0, "p-Return-lanes", 15 + i),
      line("p-Return-lanes", i * 2, `fx-${lane.key}-gain`, 0),
      line("p-Return-lanes", i * 2 + 1, `fx-${lane.key}-gain`, 1),
      line("p-Return-lanes", 10 + i, `fx-${lane.key}-enable`, 0),
      line(`fx-${lane.key}-gain`, 0, "p-Return-sum", i * 2),
      line(`fx-${lane.key}-gain`, 1, "p-Return-sum", i * 2 + 1),
    );
    if (i > 0) lines.push(line("p-Return-lanes", 14 + i, `fx-${lane.key}-enable-out`, 0));
  });
  lines.push(
    line("p-Return-sum", 0, "fx-master", 0),
    line("p-Return-sum", 1, "fx-master", 1),
    line("fx-master", 0, "fx-meter-l", 0, { order: 0 }),
    line("fx-master", 1, "fx-meter-r", 0, { order: 0 }),
    line("fx-master", 0, "fx-out-l", 0, { order: 1 }),
    line("fx-master", 1, "fx-out-r", 0, { order: 1 }),
  );

  document.patcher = {
    ...old,
    rect: [34, 101, 1100, 850],
    boxes,
    lines,
    dependency_cache: [{
      name: "fx_return_mixer_panel_v1.png",
      patcherrelativepath: "../../assets/ui",
      type: "PNG",
      implicit: 1,
    }],
  };
  write(mixerPath, document);
}

function makeFxRouter(appversion) {
  const boxes = [entry({
    id: "pmf-title",
    maxclass: "comment",
    numinlets: 1,
    numoutlets: 0,
    patching_rect: [24, 20, 720, 20],
    text: "FX STATE ROUTER: shared enable -> processor and return gate",
  })];
  const lines = [];
  lanes.slice(1).forEach((lane, i) => {
    const x = 24 + i * 190;
    boxes.push(
      object(`pmf-${lane.key}-recv`, `r ${lane.state}`, x, 70, 180),
      object(`pmf-${lane.key}-sync`, "t i i", x, 110, 45, 2),
      outlet(`pmf-${lane.key}-module`, i * 2 + 1, "", x),
      outlet(`pmf-${lane.key}-return`, i * 2 + 2, "", x + 30),
    );
    lines.push(
      line(`pmf-${lane.key}-recv`, 0, `pmf-${lane.key}-sync`, 0),
      line(`pmf-${lane.key}-sync`, 0, `pmf-${lane.key}-module`, 0),
      line(`pmf-${lane.key}-sync`, 1, `pmf-${lane.key}-return`, 0),
    );
  });
  boxes.push(
    object("pmf-voc-wet", "loadmess 1.", 800, 70, 95),
    outlet("pmf-voc-wet-out", 9, "", 800),
  );
  lines.push(line("pmf-voc-wet", 0, "pmf-voc-wet-out", 0));
  return {
    fileversion: 1,
    appversion,
    classnamespace: "box",
    rect: [134, 173, 980, 290],
    gridsize: [15, 15],
    boxes,
    lines,
  };
}

function bpatcher(template, id, name, varname, inlets, outlets, patchingRect, presentationRect) {
  const box = clone(template);
  Object.assign(box, {
    id,
    name,
    varname,
    numinlets: inlets,
    numoutlets: outlets,
    outlettype: Array(outlets).fill("signal"),
    patching_rect: patchingRect,
    presentation_rect: presentationRect,
  });
  return box;
}

function updateMain() {
  const document = read(mainPath);
  const patcher = document.patcher;
  const boxes = new Map(patcher.boxes.map((item) => [item.box.id, item.box]));
  const voc = boxes.get("pm-vocoder");
  const oldChop = boxes.get("pm-chop") || boxes.get("pm-bitcrusher");
  const oldTrem = boxes.get("pm-tremolo") || boxes.get("pm-feedback-delay");
  const router = boxes.get("p-FX-state-router");

  const bit = bpatcher(oldChop, "pm-bitcrusher", "mt_mod_bitcrusher.maxpat", "ui_fx_bitcrusher", 6, 2, [154, 1326, 760, 268], [808, 160, 760, 268]);
  const delay = bpatcher(oldTrem, "pm-feedback-delay", "mt_mod_feedback_delay.maxpat", "ui_fx_feedback_delay", 7, 2, [154, 1626, 850, 268], [24, 450, 850, 268]);
  const multi = bpatcher(oldTrem, "pm-multiband", "mt_mod_multiband_filter_v2.maxpat", "ui_fx_multiband", 6, 2, [154, 1926, 1100, 400], [24, 750, 1100, 400]);
  const fxReturn = boxes.get("pm-fx-return");
  Object.assign(fxReturn, {
    numinlets: 15,
    numoutlets: 6,
    outlettype: ["signal", "signal", "int", "int", "int", "int"],
    patching_rect: [24, 2380, 905, 300],
    presentation_rect: [24, 160, 905, 300],
  });
  Object.assign(router, {
    numoutlets: 9,
    outlettype: ["int", "int", "int", "int", "int", "int", "int", "int", ""],
    patcher: makeFxRouter(patcher.appversion),
  });

  patcher.boxes = patcher.boxes.filter((item) => ![
    "pm-chop", "pm-tremolo", "pm-bitcrusher", "pm-feedback-delay", "pm-multiband",
  ].includes(item.box.id));
  patcher.boxes.push(entry(bit), entry(delay), entry(multi));

  const oldEffects = new Set(["pm-chop", "pm-tremolo", "pm-bitcrusher", "pm-feedback-delay", "pm-multiband"]);
  patcher.lines = patcher.lines.filter((item) => {
    const { source, destination } = item.patchline;
    if (oldEffects.has(source[0]) || oldEffects.has(destination[0])) return false;
    if (source[0] === "p-FX-state-router") return false;
    if (destination[0] === "pm-fx-return") return false;
    if (source[0] === "pm-mixer" && ["pm-vocoder", ...oldEffects].includes(destination[0])) return false;
    return true;
  });

  const effectIds = ["pm-vocoder", "pm-bitcrusher", "pm-feedback-delay", "pm-multiband"];
  effectIds.forEach((id, i) => {
    patcher.lines.push(
      line("pm-mixer", 0, id, 0, { order: i }),
      line("pm-mixer", 1, id, 1, { order: i }),
      line(id, 0, "pm-fx-return", 2 + i * 2),
      line(id, 1, "pm-fx-return", 3 + i * 2),
      line("p-FX-state-router", i * 2, id, 2),
      line("p-FX-state-router", i * 2 + 1, "pm-fx-return", 11 + i),
    );
  });
  patcher.lines.push(
    line("pm-mixer", 0, "pm-fx-return", 0, { order: 4 }),
    line("pm-mixer", 1, "pm-fx-return", 1, { order: 4 }),
    line("p-FX-state-router", 8, "pm-vocoder", 3),
  );

  if (patcher.parameters) {
    for (const key of Object.keys(patcher.parameters)) {
      if (/pm-(chop|tremolo)::|pm-fx-return::fx-(chop|trem)-/.test(key)) delete patcher.parameters[key];
    }
  }

  const removeDependencies = new Set(["mt_mod_vocal_chop.maxpat", "mt_mod_tremolo.maxpat"]);
  patcher.dependency_cache = (patcher.dependency_cache || []).filter((item) => !removeDependencies.has(item.name));
  for (const name of [
    "mt_mod_bitcrusher.maxpat",
    "mt_mod_feedback_delay.maxpat",
    "mt_mod_multiband_filter_v2.maxpat",
    "mt_multiband_filter_controller.js",
    "mt_multiband_filter_visual.js",
  ]) {
    if (!patcher.dependency_cache.some((item) => item.name === name)) {
      patcher.dependency_cache.push({
        name,
        patcherrelativepath: "effects",
        type: name.endsWith(".js") ? "TEXT" : "JSON",
        implicit: 1,
      });
    }
  }

  write(mainPath, document);
}

rebuildMixer();
updateMain();
console.log("Final FX lineup integrated.");
