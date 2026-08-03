{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 5,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            34,
            101,
            1332,
            941
        ],
        "bglocked": 1,
        "openinpresentation": 1,
        "gridsize": [
            15,
            15
        ],
        "boxes": [
            {
                "box": {
                    "id": "m-enable",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        43,
                        96,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        38,
                        109,
                        28,
                        28
                    ],
                    "varname": "mic_enable"
                }
            },
            {
                "box": {
                    "id": "m-channel",
                    "maxclass": "number",
                    "maximum": 8,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        138,
                        113,
                        58,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        115.42857658863068,
                        132.50000592321157,
                        75.28571765124798,
                        22
                    ],
                    "varname": "mic_mono_channel"
                }
            },
            {
                "box": {
                    "disabled": [
                        0,
                        0,
                        0,
                        0,
                        0
                    ],
                    "id": "m-pair",
                    "itemtype": 0,
                    "maxclass": "radiogroup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        237,
                        98,
                        20,
                        82
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        231,
                        123,
                        20,
                        82
                    ],
                    "size": 5,
                    "value": 0,
                    "varname": "mic_stereo_pair"
                }
            },
            {
                "box": {
                    "id": "m-gain",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        437.3333463668823,
                        210,
                        36,
                        145
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        351,
                        112,
                        36,
                        98
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_longname": "mic_output_gain",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mic Input",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "mic_output_gain"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 9,
                    "id": "m-gate-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        223,
                        72,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        223,
                        72,
                        17
                    ],
                    "text": "NOISE GATE",
                    "textcolor": [
                        0.24,
                        0.33,
                        0.29,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.72,
                        0.78,
                        0.74,
                        1
                    ],
                    "id": "m-gate-state",
                    "ignoreclick": 1,
                    "maxclass": "led",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "oncolor": [
                        0.93,
                        0.75,
                        0.24,
                        1
                    ],
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        84,
                        253,
                        14,
                        14
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        84,
                        223,
                        14,
                        14
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 8,
                    "id": "m-threshold-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        110,
                        221,
                        82,
                        15
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        110,
                        221,
                        82,
                        15
                    ],
                    "text": "THRESHOLD dBFS",
                    "textcolor": [
                        0.34,
                        0.43,
                        0.39,
                        1
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "m-threshold",
                    "maxclass": "flonum",
                    "maximum": -10,
                    "minimum": -70,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        110,
                        255,
                        72,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        110,
                        240,
                        72,
                        22
                    ],
                    "varname": "mic_gate_threshold"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 8,
                    "id": "m-release-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        208,
                        221,
                        76,
                        15
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        208,
                        221,
                        76,
                        15
                    ],
                    "text": "RELEASE ms",
                    "textcolor": [
                        0.34,
                        0.43,
                        0.39,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "m-release",
                    "maxclass": "number",
                    "maximum": 500,
                    "minimum": 20,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        208,
                        255,
                        64,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        208,
                        240,
                        64,
                        22
                    ],
                    "varname": "mic_gate_release"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.94,
                        0.97,
                        0.95,
                        1
                    ],
                    "border": 1,
                    "bordercolor": [
                        0.55,
                        0.68,
                        0.61,
                        1
                    ],
                    "id": "m-gate-panel",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        825,
                        30,
                        288,
                        52
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        16,
                        216,
                        288,
                        52
                    ]
                }
            },
            {
                "box": {
                    "comment": "Enable 0/1",
                    "id": "m-ext-enable",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        437.3333463668823,
                        12,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Open EQ editor",
                    "id": "m-ext-eq-open",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        481.3333463668823,
                        12,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "p-Mic-control",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 10,
                    "outlettype": [
                        "",
                        "int",
                        "",
                        "",
                        "int",
                        "",
                        "",
                        "int",
                        "",
                        ""
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 5,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            134,
                            173,
                            900,
                            520
                        ],
                        "gridsize": [
                            15,
                            15
                        ],
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mc-ext-enable",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        25,
                                        70,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mc-ui-enable",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        145,
                                        70,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mc-ui-mono",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        370.5,
                                        70,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mc-ui-pair",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        589,
                                        70,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30,
                                        25,
                                        760,
                                        20
                                    ],
                                    "text": "external enable / UI enable / mono 1-8 / stereo pair 0-4"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-ext-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        25,
                                        135,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-enable-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        145,
                                        232,
                                        150,
                                        22
                                    ],
                                    "text": "s mt_mic_enable_state"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-enable-receive",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        25,
                                        275,
                                        150,
                                        22
                                    ],
                                    "text": "r mt_mic_enable_state"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-enable-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        25,
                                        315,
                                        50,
                                        22
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-enable-set",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        25,
                                        369,
                                        58,
                                        22
                                    ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-mono-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        370.5,
                                        135,
                                        70,
                                        22
                                    ],
                                    "text": "clip 1 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-mono-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        370.5,
                                        210,
                                        50,
                                        22
                                    ],
                                    "text": "t i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-pair-set",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        401.5,
                                        369,
                                        52,
                                        22
                                    ],
                                    "text": "set 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-pair-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        589,
                                        135,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-pair-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        589,
                                        210,
                                        50,
                                        22
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-mono-active-test",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        589,
                                        250,
                                        45,
                                        22
                                    ],
                                    "text": "== 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-mono-active",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        589,
                                        369,
                                        70,
                                        22
                                    ],
                                    "text": "active $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-loadbang",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        225,
                                        70,
                                        65,
                                        22
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-init-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        "bang",
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        225,
                                        120,
                                        95,
                                        22
                                    ],
                                    "text": "t b b b b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-init-enable",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        295,
                                        175,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-init-mono",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        260,
                                        175,
                                        32,
                                        22
                                    ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-init-gain",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        225,
                                        175,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-init-threshold",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        695,
                                        369,
                                        45,
                                        22
                                    ],
                                    "text": "-45."
                                }
                            },
                            {
                                "box": {
                                    "id": "mc-init-release",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        775,
                                        369,
                                        42,
                                        22
                                    ],
                                    "text": "120"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mc-enable-out",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        105,
                                        450,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mc-mono-out",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        370.5,
                                        450,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mc-pair-out",
                                    "index": 8,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        621,
                                        450,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Gate threshold default",
                                    "id": "mc-threshold-ui-out",
                                    "index": 9,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        695,
                                        450,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Gate release default",
                                    "id": "mc-release-ui-out",
                                    "index": 10,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        775,
                                        450,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mc-enable-ui-out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        25,
                                        450,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mc-pair-ui-out",
                                    "index": 6,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        401.5,
                                        450,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mc-mono-active-out",
                                    "index": 7,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        589,
                                        450,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mc-mono-ui-out",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        260,
                                        450,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mc-gain-ui-out",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        225,
                                        450,
                                        30,
                                        30
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "mc-enable-trigger",
                                        0
                                    ],
                                    "source": [
                                        "mc-enable-receive",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "mc-enable-ui-out",
                                        0
                                    ],
                                    "midpoints": [
                                        34.5,
                                        430,
                                        34.5,
                                        430
                                    ],
                                    "source": [
                                        "mc-enable-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "mc-enable-out",
                                        0
                                    ],
                                    "midpoints": [
                                        65.5,
                                        359.1171875,
                                        114.5,
                                        359.1171875
                                    ],
                                    "source": [
                                        "mc-enable-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "mc-enable-set",
                                        0
                                    ],
                                    "source": [
                                        "mc-enable-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "mc-enable-trigger",
                                        0
                                    ],
                                    "source": [
                                        "mc-ext-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "mc-ext-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        34.5,
                                        117.5,
                                        34.5,
                                        117.5
                                    ],
                                    "source": [
                                        "mc-ext-enable",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "mc-enable-send",
                                        0
                                    ],
                                    "midpoints": [
                                        272.5,
                                        220,
                                        154.5,
                                        220
                                    ],
                                    "source": [
                                        "mc-init-enable",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-gain-ui-out",
                                        0
                                    ],
                                    "source": [
                                        "mc-init-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-mono-ui-out",
                                        0
                                    ],
                                    "source": [
                                        "mc-init-mono",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-release-ui-out",
                                        0
                                    ],
                                    "source": [
                                        "mc-init-release",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-threshold-ui-out",
                                        0
                                    ],
                                    "source": [
                                        "mc-init-threshold",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-init-enable",
                                        0
                                    ],
                                    "midpoints": [
                                        272.5,
                                        160,
                                        272.5,
                                        160
                                    ],
                                    "source": [
                                        "mc-init-trigger",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-init-gain",
                                        0
                                    ],
                                    "midpoints": [
                                        234.5,
                                        160,
                                        234.5,
                                        160
                                    ],
                                    "source": [
                                        "mc-init-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-init-mono",
                                        0
                                    ],
                                    "midpoints": [
                                        253.5,
                                        160,
                                        253.5,
                                        160
                                    ],
                                    "source": [
                                        "mc-init-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-init-release",
                                        0
                                    ],
                                    "midpoints": [
                                        310.5,
                                        191.3984375,
                                        784.5,
                                        191.3984375
                                    ],
                                    "source": [
                                        "mc-init-trigger",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-init-threshold",
                                        0
                                    ],
                                    "midpoints": [
                                        291.5,
                                        192.20703125,
                                        704.5,
                                        192.20703125
                                    ],
                                    "source": [
                                        "mc-init-trigger",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-init-trigger",
                                        0
                                    ],
                                    "source": [
                                        "mc-loadbang",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-mono-active-out",
                                        0
                                    ],
                                    "midpoints": [
                                        598.5,
                                        430,
                                        598.5,
                                        430
                                    ],
                                    "source": [
                                        "mc-mono-active",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-mono-active",
                                        0
                                    ],
                                    "source": [
                                        "mc-mono-active-test",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-mono-trigger",
                                        0
                                    ],
                                    "source": [
                                        "mc-mono-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-mono-out",
                                        0
                                    ],
                                    "source": [
                                        "mc-mono-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-pair-set",
                                        0
                                    ],
                                    "source": [
                                        "mc-mono-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-pair-trigger",
                                        0
                                    ],
                                    "source": [
                                        "mc-pair-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-pair-ui-out",
                                        0
                                    ],
                                    "midpoints": [
                                        411,
                                        430,
                                        411,
                                        430
                                    ],
                                    "source": [
                                        "mc-pair-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-mono-active-test",
                                        0
                                    ],
                                    "source": [
                                        "mc-pair-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-pair-out",
                                        0
                                    ],
                                    "midpoints": [
                                        629.5,
                                        341,
                                        630.5,
                                        341
                                    ],
                                    "source": [
                                        "mc-pair-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "mc-enable-send",
                                        0
                                    ],
                                    "midpoints": [
                                        154.5,
                                        220,
                                        154.5,
                                        220
                                    ],
                                    "source": [
                                        "mc-ui-enable",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-mono-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        380,
                                        117.5,
                                        380,
                                        117.5
                                    ],
                                    "source": [
                                        "mc-ui-mono",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mc-pair-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        598.5,
                                        117.5,
                                        598.5,
                                        117.5
                                    ],
                                    "source": [
                                        "mc-ui-pair",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-372"
                    },
                    "patching_rect": [
                        437.3333463668823,
                        54.66666793823242,
                        110,
                        22
                    ],
                    "text": "p Mic_control"
                }
            },
            {
                "box": {
                    "id": "p-Mic-input",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        ""
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 5,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            134,
                            102,
                            980,
                            940
                        ],
                        "gridsize": [
                            15,
                            15
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "mi-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30,
                                        25,
                                        760,
                                        20
                                    ],
                                    "text": "Mic input DSP: adc 1-8 -> mono/stereo routing -> linked noise gate -> enable ramp -> L/R"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mi-enable",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        146,
                                        170,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mi-channel",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        250,
                                        170,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mi-pair",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        485,
                                        170,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Gate threshold dBFS",
                                    "id": "mi-threshold",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        650,
                                        170,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Gate release ms",
                                    "id": "mi-release",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        750,
                                        170,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-enable-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        146,
                                        230,
                                        55,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-enable-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        146,
                                        275,
                                        50,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-route-control",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        345,
                                        655,
                                        35,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-channel-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        250,
                                        230,
                                        70,
                                        22
                                    ],
                                    "text": "clip 1 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-channel-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "int",
                                        "int",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        250,
                                        275,
                                        60,
                                        22
                                    ],
                                    "text": "t i i b"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-channel-store",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        485,
                                        419,
                                        40,
                                        22
                                    ],
                                    "text": "i 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-channel-delay",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        250,
                                        347,
                                        60,
                                        22
                                    ],
                                    "text": "pipe 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-channel-apply",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "bang",
                                        "int",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        250,
                                        387,
                                        75,
                                        22
                                    ],
                                    "text": "t b i 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-pair-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        485,
                                        230,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-pair-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        485,
                                        275,
                                        50,
                                        22
                                    ],
                                    "text": "t i b"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-pair-delay",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        485,
                                        347,
                                        60,
                                        22
                                    ],
                                    "text": "pipe 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-pair-sel",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        485,
                                        387,
                                        50,
                                        22
                                    ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-pair-off-apply",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "bang",
                                        "int",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        485,
                                        451,
                                        75,
                                        22
                                    ],
                                    "text": "t b i 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-pair-on-apply",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "bang",
                                        "int",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        564,
                                        451,
                                        75,
                                        22
                                    ],
                                    "text": "t b i i 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-route-down",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        591,
                                        347,
                                        48,
                                        22
                                    ],
                                    "text": "0 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-route-up",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        670,
                                        499,
                                        48,
                                        22
                                    ],
                                    "text": "1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-route-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        591,
                                        585,
                                        50,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-adc",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 8,
                                    "outlettype": [
                                        "signal",
                                        "signal",
                                        "signal",
                                        "signal",
                                        "signal",
                                        "signal",
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        259.5,
                                        499,
                                        190,
                                        22
                                    ],
                                    "text": "adc~ 1 2 3 4 5 6 7 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-mono-selector",
                                    "maxclass": "newobj",
                                    "numinlets": 9,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        250,
                                        585,
                                        95,
                                        22
                                    ],
                                    "text": "selector~ 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-pair-selector-l",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        367,
                                        585,
                                        95,
                                        22
                                    ],
                                    "text": "selector~ 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-pair-selector-r",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        485,
                                        585,
                                        95,
                                        22
                                    ],
                                    "text": "selector~ 4"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-sum-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        250,
                                        655,
                                        35,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-sum-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        425,
                                        655,
                                        35,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Mic-noise-gate",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "signal",
                                        "signal",
                                        ""
                                    ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 0,
                                            "revision": 5,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [
                                            120,
                                            120,
                                            900,
                                            650
                                        ],
                                        "gridsize": [
                                            15,
                                            15
                                        ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "ng-title",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        30,
                                                        25,
                                                        600,
                                                        20
                                                    ],
                                                    "text": "Linked stereo noise gate: either channel opens both / 5 ms attack / 40 ms hold"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "ng-in-l",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        60,
                                                        80,
                                                        30,
                                                        30
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "ng-in-r",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        170,
                                                        80,
                                                        30,
                                                        30
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "ng-enable",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        330,
                                                        80,
                                                        30,
                                                        30
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "ng-threshold",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        470,
                                                        80,
                                                        30,
                                                        30
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "ng-release",
                                                    "index": 5,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        610,
                                                        80,
                                                        30,
                                                        30
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-peak-l",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "float"
                                                    ],
                                                    "patching_rect": [
                                                        60,
                                                        139,
                                                        88,
                                                        22
                                                    ],
                                                    "text": "peakamp~ 10"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-peak-r",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "float"
                                                    ],
                                                    "patching_rect": [
                                                        170,
                                                        139,
                                                        88,
                                                        22
                                                    ],
                                                    "text": "peakamp~ 10"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-maximum",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "float",
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        60.14492803812027,
                                                        173.18840724229813,
                                                        90,
                                                        22
                                                    ],
                                                    "text": "maximum 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-atodb",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        60.14492803812027,
                                                        203.6231901049614,
                                                        55,
                                                        22
                                                    ],
                                                    "text": "atodb"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-threshold-clip",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        470,
                                                        139,
                                                        105,
                                                        22
                                                    ],
                                                    "text": "clip -70. -10."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-compare",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        60.14492803812027,
                                                        232.60869759321213,
                                                        70,
                                                        22
                                                    ],
                                                    "text": ">= -45."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-active-pak",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        60.14492803812027,
                                                        262.3188427686691,
                                                        70,
                                                        22
                                                    ],
                                                    "text": "pak 0 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-active",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        60.14492803812027,
                                                        290.5797125697136,
                                                        120,
                                                        22
                                                    ],
                                                    "text": "expr $i1 && $i2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-change",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "",
                                                        "int",
                                                        "int"
                                                    ],
                                                    "patching_rect": [
                                                        60.14492803812027,
                                                        321.73913311958313,
                                                        60,
                                                        22
                                                    ],
                                                    "text": "change"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-sel",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "bang",
                                                        "bang",
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        60.14492803812027,
                                                        350.72464060783386,
                                                        60,
                                                        22
                                                    ],
                                                    "text": "sel 1 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-open-trigger",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [
                                                        "bang",
                                                        "bang",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        60.14492803812027,
                                                        386.231887280941,
                                                        60,
                                                        22
                                                    ],
                                                    "text": "t b b b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-stop",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        260.1449297070503,
                                                        424.63768470287323,
                                                        42,
                                                        22
                                                    ],
                                                    "text": "stop"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-open-state",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        366.9855095744133,
                                                        565,
                                                        32,
                                                        22
                                                    ],
                                                    "text": "1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-open-ramp",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        60,
                                                        461.5942067503929,
                                                        45,
                                                        22
                                                    ],
                                                    "text": "1. 5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-close-delay",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        394.1884093284607,
                                                        379.7101480960846,
                                                        65,
                                                        22
                                                    ],
                                                    "text": "delay 40"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-close-trigger",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "bang",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        394.1884093284607,
                                                        409.4202932715416,
                                                        48,
                                                        22
                                                    ],
                                                    "text": "t b b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-close-state",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        423.1884093284607,
                                                        565,
                                                        32,
                                                        22
                                                    ],
                                                    "text": "0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-release-clip",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        610,
                                                        139,
                                                        85,
                                                        22
                                                    ],
                                                    "text": "clip 20 500"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-release-store",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "float"
                                                    ],
                                                    "patching_rect": [
                                                        394.20290184020996,
                                                        436.2318876981735,
                                                        55,
                                                        22
                                                    ],
                                                    "text": "f 120."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-close-ramp",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        ""
                                                    ],
                                                    "patching_rect": [
                                                        394.1884093284607,
                                                        463.04348212480545,
                                                        50,
                                                        22
                                                    ],
                                                    "text": "0. $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-line",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [
                                                        "signal",
                                                        "bang"
                                                    ],
                                                    "patching_rect": [
                                                        60.14492803812027,
                                                        497.10145342350006,
                                                        50,
                                                        22
                                                    ],
                                                    "text": "line~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-gain-l",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        60,
                                                        565,
                                                        55,
                                                        22
                                                    ],
                                                    "text": "*~ 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ng-gain-r",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [
                                                        "signal"
                                                    ],
                                                    "patching_rect": [
                                                        170,
                                                        565,
                                                        55,
                                                        22
                                                    ],
                                                    "text": "*~ 0."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "ng-out-l",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        60,
                                                        625,
                                                        30,
                                                        30
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "ng-out-r",
                                                    "index": 2,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        170,
                                                        625,
                                                        30,
                                                        30
                                                    ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "ng-state-out",
                                                    "index": 3,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [
                                                        366.9855095744133,
                                                        625,
                                                        30,
                                                        30
                                                    ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-change",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-active",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-active",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-active-pak",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-compare",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-atodb",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-sel",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-change",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-close-trigger",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-close-delay",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-line",
                                                        0
                                                    ],
                                                    "midpoints": [
                                                        403.6884093284607,
                                                        491.07246777415276,
                                                        69.64492803812027,
                                                        491.07246777415276
                                                    ],
                                                    "source": [
                                                        "ng-close-ramp",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-state-out",
                                                        0
                                                    ],
                                                    "midpoints": [
                                                        432.6884093284607,
                                                        606,
                                                        376.4855095744133,
                                                        606
                                                    ],
                                                    "source": [
                                                        "ng-close-state",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-close-state",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-close-trigger",
                                                        1
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-release-store",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-close-trigger",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-active-pak",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-compare",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-active-pak",
                                                        1
                                                    ],
                                                    "midpoints": [
                                                        339.5,
                                                        255.68285888433456,
                                                        120.64492803812027,
                                                        255.68285888433456
                                                    ],
                                                    "source": [
                                                        "ng-enable",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-out-l",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-gain-l",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-out-r",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-gain-r",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-gain-l",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "ng-in-l",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-peak-l",
                                                        0
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "ng-in-l",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-gain-r",
                                                        0
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "ng-in-r",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-peak-r",
                                                        0
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "ng-in-r",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-gain-l",
                                                        1
                                                    ],
                                                    "midpoints": [
                                                        69.64492803812027,
                                                        542.05072671175,
                                                        105.5,
                                                        542.05072671175
                                                    ],
                                                    "order": 1,
                                                    "source": [
                                                        "ng-line",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-gain-r",
                                                        1
                                                    ],
                                                    "midpoints": [
                                                        69.64492803812027,
                                                        542.05072671175,
                                                        215.5,
                                                        542.05072671175
                                                    ],
                                                    "order": 0,
                                                    "source": [
                                                        "ng-line",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-atodb",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-maximum",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-line",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-open-ramp",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-state-out",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-open-state",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-open-ramp",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-open-trigger",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-open-state",
                                                        0
                                                    ],
                                                    "midpoints": [
                                                        90.14492803812027,
                                                        491.6081311404705,
                                                        376.4855095744133,
                                                        491.6081311404705
                                                    ],
                                                    "source": [
                                                        "ng-open-trigger",
                                                        1
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-stop",
                                                        0
                                                    ],
                                                    "midpoints": [
                                                        110.64492803812027,
                                                        416.4347859919071,
                                                        269.6449297070503,
                                                        416.4347859919071
                                                    ],
                                                    "source": [
                                                        "ng-open-trigger",
                                                        2
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-maximum",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-peak-l",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-maximum",
                                                        1
                                                    ],
                                                    "midpoints": [
                                                        179.5,
                                                        167.09420362114906,
                                                        140.64492803812027,
                                                        167.09420362114906
                                                    ],
                                                    "source": [
                                                        "ng-peak-r",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-release-clip",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-release",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-release-store",
                                                        1
                                                    ],
                                                    "midpoints": [
                                                        619.5,
                                                        430.43625634908676,
                                                        439.70290184020996,
                                                        430.43625634908676
                                                    ],
                                                    "source": [
                                                        "ng-release-clip",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-close-ramp",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-release-store",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-close-delay",
                                                        0
                                                    ],
                                                    "midpoints": [
                                                        90.14492803812027,
                                                        376.21739435195923,
                                                        403.6884093284607,
                                                        376.21739435195923
                                                    ],
                                                    "source": [
                                                        "ng-sel",
                                                        1
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-open-trigger",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-sel",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-close-delay",
                                                        0
                                                    ],
                                                    "midpoints": [
                                                        269.6449297070503,
                                                        456.63768470287323,
                                                        336.6666695177555,
                                                        456.63768470287323,
                                                        336.6666695177555,
                                                        377.0265543460846,
                                                        403.6884093284607,
                                                        377.0265543460846
                                                    ],
                                                    "source": [
                                                        "ng-stop",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-threshold-clip",
                                                        0
                                                    ],
                                                    "source": [
                                                        "ng-threshold",
                                                        0
                                                    ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [
                                                        "ng-compare",
                                                        1
                                                    ],
                                                    "midpoints": [
                                                        479.5,
                                                        208.91372379660606,
                                                        120.64492803812027,
                                                        208.91372379660606
                                                    ],
                                                    "source": [
                                                        "ng-threshold-clip",
                                                        0
                                                    ]
                                                }
                                            }
                                        ],
                                        "originid": "pat-376"
                                    },
                                    "patching_rect": [
                                        250,
                                        710,
                                        160,
                                        22
                                    ],
                                    "text": "p Noise_gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-gate-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        250,
                                        765,
                                        55,
                                        22
                                    ],
                                    "text": "*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "mi-gate-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        425,
                                        765,
                                        55,
                                        22
                                    ],
                                    "text": "*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mi-out-l",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        250,
                                        850,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mi-out-r",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        425,
                                        850,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Gate open state",
                                    "id": "mi-gate-state-out",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        559,
                                        850,
                                        30,
                                        30
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-mono-selector",
                                        8
                                    ],
                                    "midpoints": [
                                        440,
                                        553,
                                        335.5,
                                        553
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mi-adc",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-mono-selector",
                                        7
                                    ],
                                    "midpoints": [
                                        415.57142857142856,
                                        553,
                                        326,
                                        553
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mi-adc",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-mono-selector",
                                        6
                                    ],
                                    "midpoints": [
                                        391.1428571428571,
                                        553,
                                        316.5,
                                        553
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mi-adc",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-mono-selector",
                                        5
                                    ],
                                    "midpoints": [
                                        366.7142857142857,
                                        553,
                                        307,
                                        553
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mi-adc",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-mono-selector",
                                        4
                                    ],
                                    "midpoints": [
                                        342.2857142857143,
                                        553,
                                        297.5,
                                        553
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mi-adc",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-mono-selector",
                                        3
                                    ],
                                    "midpoints": [
                                        317.85714285714283,
                                        553,
                                        288,
                                        553
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mi-adc",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-mono-selector",
                                        2
                                    ],
                                    "midpoints": [
                                        293.42857142857144,
                                        553,
                                        278.5,
                                        553
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mi-adc",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-mono-selector",
                                        1
                                    ],
                                    "midpoints": [
                                        269,
                                        553,
                                        269,
                                        553
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mi-adc",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-l",
                                        4
                                    ],
                                    "midpoints": [
                                        415.57142857142856,
                                        553,
                                        452.5,
                                        553
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mi-adc",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-l",
                                        3
                                    ],
                                    "midpoints": [
                                        366.7142857142857,
                                        553,
                                        433.5,
                                        553
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mi-adc",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-l",
                                        2
                                    ],
                                    "midpoints": [
                                        317.85714285714283,
                                        553,
                                        414.5,
                                        553
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mi-adc",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-l",
                                        1
                                    ],
                                    "midpoints": [
                                        269,
                                        553,
                                        395.5,
                                        553
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mi-adc",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-r",
                                        4
                                    ],
                                    "midpoints": [
                                        440,
                                        553,
                                        570.5,
                                        553
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mi-adc",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-r",
                                        3
                                    ],
                                    "midpoints": [
                                        391.1428571428571,
                                        553,
                                        551.5,
                                        553
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mi-adc",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-r",
                                        2
                                    ],
                                    "midpoints": [
                                        342.2857142857143,
                                        553,
                                        532.5,
                                        553
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mi-adc",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-r",
                                        1
                                    ],
                                    "midpoints": [
                                        293.42857142857144,
                                        553,
                                        513.5,
                                        553
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mi-adc",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-channel-clip",
                                        0
                                    ],
                                    "source": [
                                        "mi-channel",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-mono-selector",
                                        0
                                    ],
                                    "midpoints": [
                                        278.1666666666667,
                                        486.41015625,
                                        259.5,
                                        486.41015625
                                    ],
                                    "source": [
                                        "mi-channel-apply",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-l",
                                        0
                                    ],
                                    "midpoints": [
                                        296.8333333333333,
                                        529.20703125,
                                        376.5,
                                        529.20703125
                                    ],
                                    "source": [
                                        "mi-channel-apply",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-r",
                                        0
                                    ],
                                    "midpoints": [
                                        315.5,
                                        528.15234375,
                                        494.5,
                                        528.15234375
                                    ],
                                    "source": [
                                        "mi-channel-apply",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-route-up",
                                        0
                                    ],
                                    "midpoints": [
                                        259.5,
                                        486.4375,
                                        679.5,
                                        486.4375
                                    ],
                                    "source": [
                                        "mi-channel-apply",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-channel-trigger",
                                        0
                                    ],
                                    "source": [
                                        "mi-channel-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-channel-apply",
                                        0
                                    ],
                                    "source": [
                                        "mi-channel-delay",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-off-apply",
                                        0
                                    ],
                                    "source": [
                                        "mi-channel-store",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-channel-delay",
                                        0
                                    ],
                                    "source": [
                                        "mi-channel-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-channel-store",
                                        1
                                    ],
                                    "midpoints": [
                                        280,
                                        321.94921875,
                                        515.5,
                                        321.94921875
                                    ],
                                    "source": [
                                        "mi-channel-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-route-down",
                                        0
                                    ],
                                    "midpoints": [
                                        300.5,
                                        322,
                                        600.5,
                                        322
                                    ],
                                    "source": [
                                        "mi-channel-trigger",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "mi-enable-msg",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mi-enable",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "p-Mic-noise-gate",
                                        2
                                    ],
                                    "midpoints": [
                                        155.5,
                                        629.40234375,
                                        330,
                                        629.40234375
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mi-enable",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "mi-route-control",
                                        0
                                    ],
                                    "midpoints": [
                                        155.5,
                                        630.109375,
                                        354.5,
                                        630.109375
                                    ],
                                    "source": [
                                        "mi-enable-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "mi-enable-line",
                                        0
                                    ],
                                    "source": [
                                        "mi-enable-msg",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-out-l",
                                        0
                                    ],
                                    "source": [
                                        "mi-gate-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-out-r",
                                        0
                                    ],
                                    "source": [
                                        "mi-gate-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-sum-l",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mi-mono-selector",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-sum-r",
                                        0
                                    ],
                                    "midpoints": [
                                        259.5,
                                        631,
                                        434.5,
                                        631
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mi-mono-selector",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-clip",
                                        0
                                    ],
                                    "source": [
                                        "mi-pair",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-trigger",
                                        0
                                    ],
                                    "source": [
                                        "mi-pair-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-sel",
                                        0
                                    ],
                                    "source": [
                                        "mi-pair-delay",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-mono-selector",
                                        0
                                    ],
                                    "midpoints": [
                                        513.1666666666667,
                                        529,
                                        259.5,
                                        529
                                    ],
                                    "source": [
                                        "mi-pair-off-apply",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-l",
                                        0
                                    ],
                                    "midpoints": [
                                        531.8333333333334,
                                        529,
                                        376.5,
                                        529
                                    ],
                                    "source": [
                                        "mi-pair-off-apply",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-r",
                                        0
                                    ],
                                    "midpoints": [
                                        550.5,
                                        529,
                                        494.5,
                                        529
                                    ],
                                    "source": [
                                        "mi-pair-off-apply",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-route-up",
                                        0
                                    ],
                                    "midpoints": [
                                        494.5,
                                        486,
                                        679.5,
                                        486
                                    ],
                                    "source": [
                                        "mi-pair-off-apply",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-mono-selector",
                                        0
                                    ],
                                    "midpoints": [
                                        629.5,
                                        529,
                                        259.5,
                                        529
                                    ],
                                    "source": [
                                        "mi-pair-on-apply",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-l",
                                        0
                                    ],
                                    "midpoints": [
                                        592.1666666666666,
                                        529,
                                        376.5,
                                        529
                                    ],
                                    "source": [
                                        "mi-pair-on-apply",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-selector-r",
                                        0
                                    ],
                                    "midpoints": [
                                        610.8333333333334,
                                        529,
                                        494.5,
                                        529
                                    ],
                                    "source": [
                                        "mi-pair-on-apply",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-route-up",
                                        0
                                    ],
                                    "midpoints": [
                                        573.5,
                                        486,
                                        679.5,
                                        486
                                    ],
                                    "source": [
                                        "mi-pair-on-apply",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-channel-store",
                                        0
                                    ],
                                    "source": [
                                        "mi-pair-sel",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-on-apply",
                                        0
                                    ],
                                    "midpoints": [
                                        525.5,
                                        430,
                                        573.5,
                                        430
                                    ],
                                    "source": [
                                        "mi-pair-sel",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-sum-l",
                                        1
                                    ],
                                    "midpoints": [
                                        376.5,
                                        631,
                                        275.5,
                                        631
                                    ],
                                    "source": [
                                        "mi-pair-selector-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-sum-r",
                                        1
                                    ],
                                    "midpoints": [
                                        494.5,
                                        631,
                                        450.5,
                                        631
                                    ],
                                    "source": [
                                        "mi-pair-selector-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-pair-delay",
                                        0
                                    ],
                                    "source": [
                                        "mi-pair-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-route-down",
                                        0
                                    ],
                                    "midpoints": [
                                        525.5,
                                        322,
                                        600.5,
                                        322
                                    ],
                                    "source": [
                                        "mi-pair-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "p-Mic-noise-gate",
                                        4
                                    ],
                                    "midpoints": [
                                        759.5,
                                        631.0703125,
                                        400.5,
                                        631.0703125
                                    ],
                                    "source": [
                                        "mi-release",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "mi-gate-l",
                                        1
                                    ],
                                    "midpoints": [
                                        354.5,
                                        696,
                                        295.5,
                                        696
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mi-route-control",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "mi-gate-r",
                                        1
                                    ],
                                    "midpoints": [
                                        354.5,
                                        696,
                                        470.5,
                                        696
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mi-route-control",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-route-line",
                                        0
                                    ],
                                    "source": [
                                        "mi-route-down",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-route-control",
                                        1
                                    ],
                                    "midpoints": [
                                        600.5,
                                        631,
                                        370.5,
                                        631
                                    ],
                                    "source": [
                                        "mi-route-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-route-line",
                                        0
                                    ],
                                    "midpoints": [
                                        679.5,
                                        553,
                                        600.5,
                                        553
                                    ],
                                    "source": [
                                        "mi-route-up",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "p-Mic-noise-gate",
                                        0
                                    ],
                                    "source": [
                                        "mi-sum-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "p-Mic-noise-gate",
                                        1
                                    ],
                                    "midpoints": [
                                        434.5,
                                        695.875,
                                        294.75,
                                        695.875
                                    ],
                                    "source": [
                                        "mi-sum-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "p-Mic-noise-gate",
                                        3
                                    ],
                                    "midpoints": [
                                        659.5,
                                        631.16015625,
                                        365.25,
                                        631.16015625
                                    ],
                                    "source": [
                                        "mi-threshold",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-gate-l",
                                        0
                                    ],
                                    "source": [
                                        "p-Mic-noise-gate",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "mi-gate-r",
                                        0
                                    ],
                                    "midpoints": [
                                        330,
                                        751.00390625,
                                        434.5,
                                        751.00390625
                                    ],
                                    "source": [
                                        "p-Mic-noise-gate",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "mi-gate-state-out",
                                        0
                                    ],
                                    "midpoints": [
                                        400.5,
                                        751.40625,
                                        568.5,
                                        751.40625
                                    ],
                                    "source": [
                                        "p-Mic-noise-gate",
                                        2
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-374"
                    },
                    "patching_rect": [
                        437.3333463668823,
                        114.00000303983688,
                        150,
                        22
                    ],
                    "text": "p Mic_input"
                }
            },
            {
                "box": {
                    "comment": "Mic audio L",
                    "id": "m-out-l",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        437.3333463668823,
                        390,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Mic audio R",
                    "id": "m-out-r",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        497.33334815502167,
                        390,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.92,
                        0.94,
                        0.92,
                        1
                    ],
                    "id": "m-eq-open",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        620,
                        15,
                        84,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        316,
                        233,
                        88,
                        24
                    ],
                    "rounded": 6,
                    "text": "OPEN EQ",
                    "textcolor": [
                        0.15,
                        0.28,
                        0.23,
                        1
                    ],
                    "varname": "mic_eq_open"
                }
            },
            {
                "box": {
                    "id": "m-eq-open-msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        620,
                        54.66666793823242,
                        45,
                        22
                    ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "id": "m-eq-pcontrol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        620,
                        114.00000303983688,
                        55,
                        22
                    ],
                    "text": "pcontrol"
                }
            },
            {
                "box": {
                    "id": "p-Mic-eq",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 5,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [
                            34,
                            101,
                            1732,
                            941
                        ],
                        "openinpresentation": 1,
                        "gridsize": [
                            15,
                            15
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "background": 1,
                                    "bgcolor": [
                                        0.95,
                                        0.97,
                                        0.95,
                                        1
                                    ],
                                    "id": "eq-bg",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1450,
                                        20,
                                        120,
                                        36
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        0,
                                        0,
                                        760,
                                        430
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "bgcolor": [
                                        0.12,
                                        0.23,
                                        0.19,
                                        1
                                    ],
                                    "id": "eq-header",
                                    "maxclass": "panel",
                                    "mode": 0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1580,
                                        20,
                                        120,
                                        30
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        0,
                                        0,
                                        760,
                                        64
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 18,
                                    "id": "eq-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30,
                                        15,
                                        300,
                                        27
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        24,
                                        18,
                                        260,
                                        27
                                    ],
                                    "text": "MIC EQ · 7 BAND",
                                    "textcolor": [
                                        0.96,
                                        0.98,
                                        0.96,
                                        1
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11,
                                    "id": "eq-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        350,
                                        15,
                                        900,
                                        19
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        372,
                                        22,
                                        360,
                                        19
                                    ],
                                    "text": "Drag a node, then refine its frequency, gain and Q.",
                                    "textcolor": [
                                        0.7,
                                        0.78,
                                        0.73,
                                        1
                                    ],
                                    "textjustification": 2
                                }
                            },
                            {
                                "box": {
                                    "comment": "Mic audio L",
                                    "id": "eq-in-l",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        494.5,
                                        730,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Mic audio R",
                                    "id": "eq-in-r",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        644.5,
                                        730,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "autoout": 1,
                                    "bgcolor": [
                                        0.055,
                                        0.075,
                                        0.067,
                                        1
                                    ],
                                    "curvecolor": [
                                        0.94,
                                        0.74,
                                        0.23,
                                        1
                                    ],
                                    "fontface": 0,
                                    "hcurvecolor": [
                                        0.45,
                                        0.72,
                                        0.61,
                                        1
                                    ],
                                    "id": "eq-graph",
                                    "markercolor": [
                                        0.25,
                                        0.34,
                                        0.3,
                                        1
                                    ],
                                    "maxclass": "filtergraph~",
                                    "nfilters": 7,
                                    "numinlets": 8,
                                    "numoutlets": 7,
                                    "outlettype": [
                                        "list",
                                        "float",
                                        "float",
                                        "float",
                                        "float",
                                        "list",
                                        "int"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        480,
                                        480,
                                        712,
                                        210
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        24,
                                        84,
                                        712,
                                        210
                                    ],
                                    "setfilter": [
                                        6,
                                        7,
                                        1,
                                        0,
                                        0,
                                        12000,
                                        1,
                                        0.699999988079071,
                                        20,
                                        20000,
                                        0.125891998410225,
                                        7.943282127380371,
                                        0.100000001490116,
                                        10,
                                        5,
                                        5,
                                        1,
                                        0,
                                        0,
                                        8000,
                                        1,
                                        1,
                                        20,
                                        20000,
                                        0.125891998410225,
                                        7.943282127380371,
                                        0.100000001490116,
                                        10,
                                        4,
                                        5,
                                        1,
                                        0,
                                        0,
                                        3000,
                                        1,
                                        1,
                                        20,
                                        20000,
                                        0.125891998410225,
                                        7.943282127380371,
                                        0.100000001490116,
                                        10,
                                        3,
                                        5,
                                        1,
                                        0,
                                        0,
                                        1000,
                                        1,
                                        1,
                                        20,
                                        20000,
                                        0.125891998410225,
                                        7.943282127380371,
                                        0.100000001490116,
                                        10,
                                        2,
                                        5,
                                        1,
                                        0,
                                        0,
                                        400,
                                        1,
                                        1,
                                        20,
                                        20000,
                                        0.125891998410225,
                                        7.943282127380371,
                                        0.100000001490116,
                                        10,
                                        1,
                                        5,
                                        1,
                                        0,
                                        0,
                                        160,
                                        1,
                                        1,
                                        20,
                                        20000,
                                        0.125891998410225,
                                        7.943282127380371,
                                        0.100000001490116,
                                        10,
                                        0,
                                        6,
                                        1,
                                        0,
                                        0,
                                        80,
                                        1,
                                        0.699999988079071,
                                        20,
                                        20000,
                                        0.125891998410225,
                                        7.943282127380371,
                                        0.100000001490116,
                                        10
                                    ],
                                    "varname": "mic_eq_graph"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-freq",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "float"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        24,
                                        240,
                                        82,
                                        48
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        78,
                                        324,
                                        82,
                                        48
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 3,
                                            "parameter_initial": [
                                                80
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "mic_eq_frequency",
                                            "parameter_mmax": 20000,
                                            "parameter_mmin": 20,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "FREQ Hz",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "varname": "mic_eq_frequency"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-gain",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "float"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        138,
                                        240,
                                        82,
                                        48
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        180,
                                        324,
                                        82,
                                        48
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [
                                                0
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "mic_eq_gain_db",
                                            "parameter_mmax": 18,
                                            "parameter_mmin": -18,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "GAIN dB",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "varname": "mic_eq_gain_db"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-q",
                                    "maxclass": "live.dial",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "float"
                                    ],
                                    "parameter_enable": 1,
                                    "patching_rect": [
                                        284,
                                        240,
                                        82,
                                        48
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        282,
                                        324,
                                        82,
                                        48
                                    ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_exponent": 2,
                                            "parameter_initial": [
                                                0.7
                                            ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "mic_eq_q",
                                            "parameter_mmax": 10,
                                            "parameter_mmin": 0.1,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Q",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 1
                                        }
                                    },
                                    "varname": "mic_eq_q"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10,
                                    "id": "eq-band-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1590,
                                        140,
                                        52,
                                        18
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        390,
                                        318,
                                        52,
                                        18
                                    ],
                                    "text": "BAND",
                                    "textcolor": [
                                        0.25,
                                        0.34,
                                        0.3,
                                        1
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-band",
                                    "maxclass": "number",
                                    "maximum": 7,
                                    "minimum": 1,
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        1590,
                                        240,
                                        52,
                                        22
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        390,
                                        344,
                                        52,
                                        22
                                    ],
                                    "varname": "mic_eq_selected_band"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10,
                                    "id": "eq-type-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1200,
                                        295,
                                        126,
                                        18
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        458,
                                        318,
                                        126,
                                        18
                                    ],
                                    "text": "FILTER TYPE",
                                    "textcolor": [
                                        0.25,
                                        0.34,
                                        0.3,
                                        1
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-type-menu",
                                    "items": [
                                        "LOW CUT",
                                        ",",
                                        "LOW SHELF",
                                        ",",
                                        "BELL",
                                        ",",
                                        "NOTCH",
                                        ",",
                                        "HIGH SHELF",
                                        ",",
                                        "HIGH CUT"
                                    ],
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "int",
                                        "",
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        1200,
                                        320,
                                        126,
                                        22
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        458,
                                        344,
                                        126,
                                        22
                                    ],
                                    "varname": "mic_eq_filter_type"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 10,
                                    "id": "eq-preset-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1330,
                                        294.7999986857176,
                                        136,
                                        18
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        600,
                                        318,
                                        136,
                                        18
                                    ],
                                    "text": "PRESET",
                                    "textcolor": [
                                        0.25,
                                        0.34,
                                        0.3,
                                        1
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-preset-menu",
                                    "items": [
                                        "FLAT",
                                        ",",
                                        "RADIO",
                                        ",",
                                        "TELEPHONE",
                                        ",",
                                        "WARM VOCAL",
                                        ",",
                                        "AIR / PRESENCE",
                                        ",",
                                        "MEGAPHONE"
                                    ],
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "int",
                                        "",
                                        ""
                                    ],
                                    "parameter_enable": 0,
                                    "patching_rect": [
                                        1330,
                                        320,
                                        136,
                                        22
                                    ],
                                    "presentation": 1,
                                    "presentation_rect": [
                                        600,
                                        344,
                                        136,
                                        22
                                    ],
                                    "varname": "mic_eq_preset"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-controller",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1200,
                                        380,
                                        270,
                                        22
                                    ],
                                    "saved_object_attributes": {
                                        "filename": "Patcher:/../../javascript/mt_mic_eq_controller.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js Patcher:/../../javascript/mt_mic_eq_controller.js"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-dbtoa",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        156,
                                        390,
                                        50,
                                        22
                                    ],
                                    "text": "dbtoa"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-atodb",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        210,
                                        80,
                                        50,
                                        22
                                    ],
                                    "text": "atodb"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-freq-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "float",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        24,
                                        315,
                                        55,
                                        22
                                    ],
                                    "text": "t b f 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-gain-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "float",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        138,
                                        315,
                                        55,
                                        22
                                    ],
                                    "text": "t b f 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-q-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "float",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        284,
                                        315,
                                        55,
                                        22
                                    ],
                                    "text": "t b f 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-feedback-close",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "int",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        400,
                                        390,
                                        55,
                                        22
                                    ],
                                    "text": "t 0 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-feedback-defer",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        401,
                                        423,
                                        58,
                                        22
                                    ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-feedback-open",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "int",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        401,
                                        470,
                                        55,
                                        22
                                    ],
                                    "text": "t 1 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-feedback-freq",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        24,
                                        160,
                                        55,
                                        22
                                    ],
                                    "text": "gate 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-feedback-gain",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        138,
                                        160,
                                        55,
                                        22
                                    ],
                                    "text": "gate 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-feedback-q",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        284,
                                        160,
                                        55,
                                        22
                                    ],
                                    "text": "gate 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-set-freq",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        24,
                                        200,
                                        74,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-set-gain",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        138,
                                        200,
                                        74,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-set-q",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        284,
                                        196,
                                        74,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-band-plus",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        1590,
                                        160,
                                        35,
                                        22
                                    ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-band-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1590,
                                        200,
                                        74,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-band-minus",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        1590,
                                        279.3103594779968,
                                        35,
                                        22
                                    ],
                                    "text": "- 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-band-select",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1589.6552557945251,
                                        353.4482944011688,
                                        119.82759249210358,
                                        22
                                    ],
                                    "text": "selectfilt $1, bang"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-selected-pattr",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1200,
                                        80,
                                        420,
                                        22
                                    ],
                                    "restore": [
                                        4
                                    ],
                                    "saved_object_attributes": {
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "pattr eq_selected_filter @bindto mic_eq_graph::edit_filter @autorestore 0",
                                    "varname": "eq_selected_filter"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-selected-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "int",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        1451,
                                        126.72414457798004,
                                        38,
                                        22
                                    ],
                                    "text": "t i i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-index-match",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        800,
                                        730,
                                        38,
                                        22
                                    ],
                                    "text": "== 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-index-gates",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "int",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        800,
                                        770,
                                        52,
                                        22
                                    ],
                                    "text": "t i i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-selected-freq",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        60,
                                        120,
                                        55,
                                        22
                                    ],
                                    "text": "gate 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-selected-gain",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        174,
                                        125,
                                        55,
                                        22
                                    ],
                                    "text": "gate 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-selected-q",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        320,
                                        120,
                                        55,
                                        22
                                    ],
                                    "text": "gate 1 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-band-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        1590,
                                        320,
                                        38,
                                        22
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-selection-watch",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        990,
                                        830,
                                        282,
                                        22
                                    ],
                                    "saved_object_attributes": {
                                        "filename": "Patcher:/../../javascript/mt_filtergraph_selection.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js Patcher:/../../javascript/mt_filtergraph_selection.js"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-mouse-state",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 10,
                                    "outlettype": [
                                        "int",
                                        "int",
                                        "int",
                                        "int",
                                        "int",
                                        "int",
                                        "int",
                                        "float",
                                        "float",
                                        "list"
                                    ],
                                    "patching_rect": [
                                        1500,
                                        770,
                                        71,
                                        22
                                    ],
                                    "text": "mousestate"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-mouse-start",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1500,
                                        730,
                                        85,
                                        22
                                    ],
                                    "text": "mode 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-mouse-poll",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        1590,
                                        730,
                                        130,
                                        22
                                    ],
                                    "text": "qmetro 20 @active 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-filter-state",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        900,
                                        770,
                                        70,
                                        22
                                    ],
                                    "text": "pak i f f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-cascade-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        494.5,
                                        790,
                                        66,
                                        22
                                    ],
                                    "text": "cascade~"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-cascade-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        644.5,
                                        790,
                                        66,
                                        22
                                    ],
                                    "text": "cascade~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "EQ audio L",
                                    "id": "eq-out-l",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        494.5,
                                        860,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "EQ audio R",
                                    "id": "eq-out-r",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        644.5,
                                        860,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-loadbang",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        1500,
                                        450,
                                        60,
                                        22
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-init-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 8,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        "bang",
                                        "bang",
                                        "bang",
                                        "bang",
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        1450,
                                        490,
                                        140,
                                        22
                                    ],
                                    "text": "t b b b b b b b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-constraint-0",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1200,
                                        530,
                                        320,
                                        22
                                    ],
                                    "text": "setconstraints 0 20 20000 0.125892 7.943282 0.1 10."
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-constraint-1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1200,
                                        558,
                                        320,
                                        22
                                    ],
                                    "text": "setconstraints 1 20 20000 0.125892 7.943282 0.1 10."
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-constraint-2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1200,
                                        586,
                                        320,
                                        22
                                    ],
                                    "text": "setconstraints 2 20 20000 0.125892 7.943282 0.1 10."
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-constraint-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1200,
                                        614,
                                        320,
                                        22
                                    ],
                                    "text": "setconstraints 3 20 20000 0.125892 7.943282 0.1 10."
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-constraint-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1200,
                                        642,
                                        320,
                                        22
                                    ],
                                    "text": "setconstraints 4 20 20000 0.125892 7.943282 0.1 10."
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-constraint-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1200,
                                        670,
                                        320,
                                        22
                                    ],
                                    "text": "setconstraints 5 20 20000 0.125892 7.943282 0.1 10."
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-constraint-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1200,
                                        698,
                                        320,
                                        22
                                    ],
                                    "text": "setconstraints 6 20 20000 0.125892 7.943282 0.1 10."
                                }
                            },
                            {
                                "box": {
                                    "id": "eq-init-query",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1200,
                                        730,
                                        161,
                                        22
                                    ],
                                    "text": "edit_filter 0, selectfilt 0, bang"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-selected-gain",
                                        1
                                    ],
                                    "source": [
                                        "eq-atodb",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-band-minus",
                                        0
                                    ],
                                    "midpoints": [
                                        1599.5,
                                        272,
                                        1599.5,
                                        272
                                    ],
                                    "source": [
                                        "eq-band",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-band-trigger",
                                        0
                                    ],
                                    "source": [
                                        "eq-band-minus",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-band-set",
                                        0
                                    ],
                                    "source": [
                                        "eq-band-plus",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-graph",
                                        0
                                    ],
                                    "midpoints": [
                                        1599.1552557945251,
                                        382,
                                        1710,
                                        382,
                                        1710,
                                        450,
                                        489.5,
                                        450
                                    ],
                                    "source": [
                                        "eq-band-select",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-band",
                                        0
                                    ],
                                    "source": [
                                        "eq-band-set",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-band-select",
                                        0
                                    ],
                                    "midpoints": [
                                        1599.5,
                                        352,
                                        1599.1552557945251,
                                        352
                                    ],
                                    "source": [
                                        "eq-band-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-selected-pattr",
                                        0
                                    ],
                                    "midpoints": [
                                        1618.5,
                                        350,
                                        1724.7972814445384,
                                        350,
                                        1724.7972814445384,
                                        65,
                                        1209.5,
                                        65
                                    ],
                                    "source": [
                                        "eq-band-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "eq-out-l",
                                        0
                                    ],
                                    "source": [
                                        "eq-cascade-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "eq-out-r",
                                        0
                                    ],
                                    "source": [
                                        "eq-cascade-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-graph",
                                        0
                                    ],
                                    "midpoints": [
                                        1209.5,
                                        552,
                                        1610,
                                        552,
                                        1610,
                                        450,
                                        489.5,
                                        450
                                    ],
                                    "source": [
                                        "eq-constraint-0",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-graph",
                                        0
                                    ],
                                    "midpoints": [
                                        1209.5,
                                        580,
                                        1610,
                                        580,
                                        1610,
                                        450,
                                        489.5,
                                        450
                                    ],
                                    "source": [
                                        "eq-constraint-1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-graph",
                                        0
                                    ],
                                    "midpoints": [
                                        1209.5,
                                        608,
                                        1610,
                                        608,
                                        1610,
                                        450,
                                        489.5,
                                        450
                                    ],
                                    "source": [
                                        "eq-constraint-2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-graph",
                                        0
                                    ],
                                    "midpoints": [
                                        1209.5,
                                        636,
                                        1610,
                                        636,
                                        1610,
                                        450,
                                        489.5,
                                        450
                                    ],
                                    "source": [
                                        "eq-constraint-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-graph",
                                        0
                                    ],
                                    "midpoints": [
                                        1209.5,
                                        664,
                                        1610,
                                        664,
                                        1610,
                                        450,
                                        489.5,
                                        450
                                    ],
                                    "source": [
                                        "eq-constraint-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-graph",
                                        0
                                    ],
                                    "midpoints": [
                                        1209.5,
                                        692,
                                        1610,
                                        692,
                                        1610,
                                        450,
                                        489.5,
                                        450
                                    ],
                                    "source": [
                                        "eq-constraint-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-graph",
                                        0
                                    ],
                                    "midpoints": [
                                        1209.5,
                                        724.1453396570869,
                                        1610,
                                        724.1453396570869,
                                        1610,
                                        450,
                                        489.5,
                                        450
                                    ],
                                    "source": [
                                        "eq-constraint-6",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-graph",
                                        0
                                    ],
                                    "midpoints": [
                                        1209.5,
                                        420.1951196375303,
                                        1209.6859205812216,
                                        420.1951196375303,
                                        1209.6859205812216,
                                        450,
                                        489.5,
                                        450
                                    ],
                                    "source": [
                                        "eq-controller",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-type-menu",
                                        0
                                    ],
                                    "midpoints": [
                                        1460.5,
                                        420,
                                        1170,
                                        420,
                                        1170,
                                        315.9209366235882,
                                        1209.5,
                                        315.9209366235882
                                    ],
                                    "source": [
                                        "eq-controller",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-graph",
                                        6
                                    ],
                                    "midpoints": [
                                        165.5,
                                        449.4296875,
                                        1083.5,
                                        449.4296875
                                    ],
                                    "source": [
                                        "eq-dbtoa",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-freq",
                                        0
                                    ],
                                    "midpoints": [
                                        409.5,
                                        150.4659599517472,
                                        33.5,
                                        150.4659599517472
                                    ],
                                    "source": [
                                        "eq-feedback-close",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-gain",
                                        0
                                    ],
                                    "midpoints": [
                                        427.5,
                                        150,
                                        147.5,
                                        150
                                    ],
                                    "source": [
                                        "eq-feedback-close",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-q",
                                        0
                                    ],
                                    "midpoints": [
                                        445.5,
                                        150.89564722357318,
                                        293.5,
                                        150.89564722357318
                                    ],
                                    "source": [
                                        "eq-feedback-close",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-open",
                                        0
                                    ],
                                    "source": [
                                        "eq-feedback-defer",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-set-freq",
                                        0
                                    ],
                                    "source": [
                                        "eq-feedback-freq",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-set-gain",
                                        0
                                    ],
                                    "source": [
                                        "eq-feedback-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-freq",
                                        0
                                    ],
                                    "midpoints": [
                                        410.5,
                                        150.48828138085082,
                                        33.5,
                                        150.48828138085082
                                    ],
                                    "source": [
                                        "eq-feedback-open",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-gain",
                                        0
                                    ],
                                    "midpoints": [
                                        428.5,
                                        150,
                                        147.5,
                                        150
                                    ],
                                    "source": [
                                        "eq-feedback-open",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-q",
                                        0
                                    ],
                                    "midpoints": [
                                        446.5,
                                        149.84933023434132,
                                        293.5,
                                        149.84933023434132
                                    ],
                                    "source": [
                                        "eq-feedback-open",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-set-q",
                                        0
                                    ],
                                    "source": [
                                        "eq-feedback-q",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-selection-watch",
                                        3
                                    ],
                                    "midpoints": [
                                        909.5,
                                        815.9105609171093,
                                        1262.5,
                                        815.9105609171093
                                    ],
                                    "source": [
                                        "eq-filter-state",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-freq-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        33.5,
                                        301.5,
                                        33.5,
                                        301.5
                                    ],
                                    "source": [
                                        "eq-freq",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-close",
                                        0
                                    ],
                                    "midpoints": [
                                        69.5,
                                        359.05691985879093,
                                        409.5,
                                        359.05691985879093
                                    ],
                                    "source": [
                                        "eq-freq-trigger",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-defer",
                                        0
                                    ],
                                    "midpoints": [
                                        33.5,
                                        359.2354906955734,
                                        410.5,
                                        359.2354906955734
                                    ],
                                    "source": [
                                        "eq-freq-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-graph",
                                        5
                                    ],
                                    "midpoints": [
                                        51.5,
                                        450.61328125,
                                        984.5,
                                        450.61328125
                                    ],
                                    "source": [
                                        "eq-freq-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-gain-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        147.5,
                                        301.5,
                                        147.5,
                                        301.5
                                    ],
                                    "source": [
                                        "eq-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-dbtoa",
                                        0
                                    ],
                                    "source": [
                                        "eq-gain-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-close",
                                        0
                                    ],
                                    "midpoints": [
                                        183.5,
                                        360,
                                        409.5,
                                        360
                                    ],
                                    "source": [
                                        "eq-gain-trigger",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-defer",
                                        0
                                    ],
                                    "midpoints": [
                                        147.5,
                                        359.1210931329988,
                                        410.5,
                                        359.1210931329988
                                    ],
                                    "source": [
                                        "eq-gain-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-atodb",
                                        0
                                    ],
                                    "midpoints": [
                                        720.5,
                                        60,
                                        219.5,
                                        60
                                    ],
                                    "order": 1,
                                    "source": [
                                        "eq-graph",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-cascade-l",
                                        1
                                    ],
                                    "midpoints": [
                                        489.5,
                                        775,
                                        551,
                                        775
                                    ],
                                    "order": 1,
                                    "source": [
                                        "eq-graph",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-cascade-r",
                                        1
                                    ],
                                    "midpoints": [
                                        489.5,
                                        775,
                                        701,
                                        775
                                    ],
                                    "order": 0,
                                    "source": [
                                        "eq-graph",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-filter-state",
                                        0
                                    ],
                                    "midpoints": [
                                        1182.5,
                                        750.73046875,
                                        909.5,
                                        750.73046875
                                    ],
                                    "order": 0,
                                    "source": [
                                        "eq-graph",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-filter-state",
                                        3
                                    ],
                                    "midpoints": [
                                        836,
                                        751.17578125,
                                        960.5,
                                        751.17578125
                                    ],
                                    "order": 0,
                                    "source": [
                                        "eq-graph",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-filter-state",
                                        2
                                    ],
                                    "midpoints": [
                                        720.5,
                                        749.74609375,
                                        943.5,
                                        749.74609375
                                    ],
                                    "order": 0,
                                    "source": [
                                        "eq-graph",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-filter-state",
                                        1
                                    ],
                                    "midpoints": [
                                        605,
                                        750,
                                        926.5,
                                        750
                                    ],
                                    "order": 0,
                                    "source": [
                                        "eq-graph",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-index-match",
                                        0
                                    ],
                                    "midpoints": [
                                        1182.5,
                                        724.6368540027179,
                                        809.5,
                                        724.6368540027179
                                    ],
                                    "order": 1,
                                    "source": [
                                        "eq-graph",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-selected-freq",
                                        1
                                    ],
                                    "midpoints": [
                                        605,
                                        59.38671875,
                                        105.5,
                                        59.38671875
                                    ],
                                    "order": 1,
                                    "source": [
                                        "eq-graph",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-selected-q",
                                        1
                                    ],
                                    "midpoints": [
                                        836,
                                        59.4453125,
                                        365.5,
                                        59.4453125
                                    ],
                                    "order": 1,
                                    "source": [
                                        "eq-graph",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "eq-cascade-l",
                                        0
                                    ],
                                    "source": [
                                        "eq-in-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.68,
                                        0.95,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "eq-cascade-r",
                                        0
                                    ],
                                    "source": [
                                        "eq-in-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-selected-freq",
                                        0
                                    ],
                                    "midpoints": [
                                        809.5,
                                        59.3515625,
                                        69.5,
                                        59.3515625
                                    ],
                                    "source": [
                                        "eq-index-gates",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-selected-gain",
                                        0
                                    ],
                                    "midpoints": [
                                        826,
                                        60.2265625,
                                        183.5,
                                        60.2265625
                                    ],
                                    "source": [
                                        "eq-index-gates",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-selected-q",
                                        0
                                    ],
                                    "midpoints": [
                                        842.5,
                                        59.38671875,
                                        329.5,
                                        59.38671875
                                    ],
                                    "source": [
                                        "eq-index-gates",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-index-gates",
                                        0
                                    ],
                                    "source": [
                                        "eq-index-match",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-graph",
                                        0
                                    ],
                                    "midpoints": [
                                        1209.5,
                                        760.2839444000274,
                                        1610,
                                        760.2839444000274,
                                        1610,
                                        450,
                                        489.5,
                                        450
                                    ],
                                    "source": [
                                        "eq-init-query",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-constraint-0",
                                        0
                                    ],
                                    "midpoints": [
                                        1580.5,
                                        512,
                                        1612.2077043326572,
                                        512,
                                        1612.2077043326572,
                                        525,
                                        1209.5,
                                        525
                                    ],
                                    "source": [
                                        "eq-init-trigger",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-constraint-1",
                                        0
                                    ],
                                    "midpoints": [
                                        1563.2142857142858,
                                        512,
                                        1611.2396271438338,
                                        512,
                                        1611.2396271438338,
                                        553,
                                        1209.5,
                                        553
                                    ],
                                    "source": [
                                        "eq-init-trigger",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-constraint-2",
                                        0
                                    ],
                                    "midpoints": [
                                        1545.9285714285713,
                                        512,
                                        1644,
                                        512,
                                        1644,
                                        581,
                                        1209.5,
                                        581
                                    ],
                                    "source": [
                                        "eq-init-trigger",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-constraint-3",
                                        0
                                    ],
                                    "midpoints": [
                                        1528.642857142857,
                                        512,
                                        1656,
                                        512,
                                        1656,
                                        609,
                                        1209.5,
                                        609
                                    ],
                                    "source": [
                                        "eq-init-trigger",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-constraint-4",
                                        0
                                    ],
                                    "midpoints": [
                                        1511.357142857143,
                                        512,
                                        1668,
                                        512,
                                        1668,
                                        637,
                                        1209.5,
                                        637
                                    ],
                                    "source": [
                                        "eq-init-trigger",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-constraint-5",
                                        0
                                    ],
                                    "midpoints": [
                                        1494.0714285714287,
                                        512,
                                        1680,
                                        512,
                                        1680,
                                        665,
                                        1209.5,
                                        665
                                    ],
                                    "source": [
                                        "eq-init-trigger",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-constraint-6",
                                        0
                                    ],
                                    "midpoints": [
                                        1476.7857142857142,
                                        512,
                                        1692,
                                        512,
                                        1692,
                                        693,
                                        1209.5,
                                        693
                                    ],
                                    "source": [
                                        "eq-init-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-init-query",
                                        0
                                    ],
                                    "midpoints": [
                                        1459.5,
                                        512,
                                        1704,
                                        512,
                                        1704,
                                        725,
                                        1209.5,
                                        725
                                    ],
                                    "source": [
                                        "eq-init-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-init-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        1509.5,
                                        482,
                                        1459.5,
                                        482
                                    ],
                                    "order": 1,
                                    "source": [
                                        "eq-loadbang",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-mouse-start",
                                        0
                                    ],
                                    "midpoints": [
                                        1509.5,
                                        715,
                                        1509.5,
                                        715
                                    ],
                                    "order": 0,
                                    "source": [
                                        "eq-loadbang",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-mouse-state",
                                        0
                                    ],
                                    "midpoints": [
                                        1599.5,
                                        760,
                                        1509.5,
                                        760
                                    ],
                                    "source": [
                                        "eq-mouse-poll",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-mouse-state",
                                        0
                                    ],
                                    "midpoints": [
                                        1509.5,
                                        760,
                                        1509.5,
                                        760
                                    ],
                                    "source": [
                                        "eq-mouse-start",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-selection-watch",
                                        2
                                    ],
                                    "midpoints": [
                                        1521.0555555555557,
                                        815.1340245292522,
                                        1174.8333333333333,
                                        815.1340245292522
                                    ],
                                    "source": [
                                        "eq-mouse-state",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-selection-watch",
                                        1
                                    ],
                                    "midpoints": [
                                        1515.2777777777778,
                                        815,
                                        1087.1666666666667,
                                        815
                                    ],
                                    "source": [
                                        "eq-mouse-state",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-selection-watch",
                                        0
                                    ],
                                    "midpoints": [
                                        1509.5,
                                        815.4956899434328,
                                        999.5,
                                        815.4956899434328
                                    ],
                                    "source": [
                                        "eq-mouse-state",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-controller",
                                        1
                                    ],
                                    "source": [
                                        "eq-preset-menu",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-q-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        293.5,
                                        301.5,
                                        293.5,
                                        301.5
                                    ],
                                    "source": [
                                        "eq-q",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-close",
                                        0
                                    ],
                                    "midpoints": [
                                        329.5,
                                        359.4866068921983,
                                        409.5,
                                        359.4866068921983
                                    ],
                                    "source": [
                                        "eq-q-trigger",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-defer",
                                        0
                                    ],
                                    "midpoints": [
                                        293.5,
                                        359.37778932927176,
                                        410.5,
                                        359.37778932927176
                                    ],
                                    "source": [
                                        "eq-q-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "eq-graph",
                                        7
                                    ],
                                    "midpoints": [
                                        311.5,
                                        450.421875,
                                        1182.5,
                                        450.421875
                                    ],
                                    "source": [
                                        "eq-q-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-freq",
                                        1
                                    ],
                                    "midpoints": [
                                        69.5,
                                        152,
                                        69.5,
                                        152
                                    ],
                                    "source": [
                                        "eq-selected-freq",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-gain",
                                        1
                                    ],
                                    "midpoints": [
                                        183.5,
                                        152,
                                        183.5,
                                        152
                                    ],
                                    "source": [
                                        "eq-selected-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-selected-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        1209.5,
                                        112,
                                        1460.5,
                                        112
                                    ],
                                    "source": [
                                        "eq-selected-pattr",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-feedback-q",
                                        1
                                    ],
                                    "midpoints": [
                                        329.5,
                                        152,
                                        329.5,
                                        152
                                    ],
                                    "source": [
                                        "eq-selected-q",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-band-plus",
                                        0
                                    ],
                                    "midpoints": [
                                        1470,
                                        150,
                                        1599.5,
                                        150
                                    ],
                                    "source": [
                                        "eq-selected-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-controller",
                                        2
                                    ],
                                    "source": [
                                        "eq-selected-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-index-match",
                                        1
                                    ],
                                    "midpoints": [
                                        1479.5,
                                        150,
                                        1725,
                                        150,
                                        1725,
                                        724.425512347836,
                                        828.5,
                                        724.425512347836
                                    ],
                                    "source": [
                                        "eq-selected-trigger",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-band",
                                        0
                                    ],
                                    "midpoints": [
                                        999.5,
                                        870,
                                        1725,
                                        870,
                                        1725,
                                        225,
                                        1599.5,
                                        225
                                    ],
                                    "source": [
                                        "eq-selection-watch",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-freq",
                                        0
                                    ],
                                    "source": [
                                        "eq-set-freq",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-gain",
                                        0
                                    ],
                                    "source": [
                                        "eq-set-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-q",
                                        0
                                    ],
                                    "source": [
                                        "eq-set-q",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.44,
                                        0.72,
                                        1,
                                        1
                                    ],
                                    "destination": [
                                        "eq-controller",
                                        0
                                    ],
                                    "source": [
                                        "eq-type-menu",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-378"
                    },
                    "patching_rect": [
                        437.3333463668823,
                        158,
                        150,
                        22
                    ],
                    "text": "p Mic_eq",
                    "varname": "Mic_eq"
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "background": 1,
                    "forceaspect": 1,
                    "id": "m-bg",
                    "ignoreclick": 1,
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        825,
                        112,
                        420,
                        280
                    ],
                    "pic": "mic_panel_v1.png",
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        0,
                        420,
                        280
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "p-Mic-control",
                        2
                    ],
                    "midpoints": [
                        147.5,
                        155,
                        167,
                        155,
                        712,
                        155,
                        712,
                        54.66666793823242
                    ],
                    "source": [
                        "m-channel",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.44,
                        0.72,
                        1,
                        1
                    ],
                    "destination": [
                        "p-Mic-control",
                        1
                    ],
                    "midpoints": [
                        55,
                        155,
                        602,
                        155,
                        602,
                        54.66666793823242
                    ],
                    "source": [
                        "m-enable",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.44,
                        0.72,
                        1,
                        1
                    ],
                    "destination": [
                        "m-eq-open-msg",
                        0
                    ],
                    "source": [
                        "m-eq-open",
                        0
                    ],
                    "midpoints": [
                        629.5,
                        50,
                        662,
                        50,
                        643,
                        50,
                        643,
                        54.66666793823242
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.44,
                        0.72,
                        1,
                        1
                    ],
                    "destination": [
                        "m-eq-pcontrol",
                        0
                    ],
                    "source": [
                        "m-eq-open-msg",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.44,
                        0.72,
                        1,
                        1
                    ],
                    "destination": [
                        "p-Mic-eq",
                        0
                    ],
                    "midpoints": [
                        629.5,
                        155,
                        648,
                        155,
                        512,
                        155,
                        512,
                        158
                    ],
                    "source": [
                        "m-eq-pcontrol",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.44,
                        0.72,
                        1,
                        1
                    ],
                    "destination": [
                        "p-Mic-control",
                        0
                    ],
                    "source": [
                        "m-ext-enable",
                        0
                    ],
                    "midpoints": [
                        452,
                        50,
                        492,
                        50,
                        492,
                        54.66666793823242
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.44,
                        0.72,
                        1,
                        1
                    ],
                    "destination": [
                        "m-eq-open-msg",
                        0
                    ],
                    "midpoints": [
                        496,
                        50,
                        643,
                        50,
                        643,
                        54.66666793823242
                    ],
                    "source": [
                        "m-ext-eq-open",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.68,
                        0.95,
                        0.34,
                        1
                    ],
                    "destination": [
                        "m-out-l",
                        0
                    ],
                    "source": [
                        "m-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.68,
                        0.95,
                        0.34,
                        1
                    ],
                    "destination": [
                        "m-out-r",
                        0
                    ],
                    "midpoints": [
                        451.0833463668823,
                        375,
                        491,
                        375,
                        512,
                        375
                    ],
                    "source": [
                        "m-gain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "p-Mic-control",
                        3
                    ],
                    "midpoints": [
                        247,
                        195,
                        822,
                        195,
                        822,
                        54.66666793823242
                    ],
                    "source": [
                        "m-pair",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "p-Mic-input",
                        4
                    ],
                    "midpoints": [
                        217.5,
                        300,
                        240,
                        300,
                        1112,
                        300,
                        1112,
                        114.00000303983688
                    ],
                    "source": [
                        "m-release",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "p-Mic-input",
                        3
                    ],
                    "midpoints": [
                        119.5,
                        300,
                        146,
                        300,
                        962,
                        300,
                        962,
                        114.00000303983688
                    ],
                    "source": [
                        "m-threshold",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "m-channel",
                        0
                    ],
                    "midpoints": [
                        507.500013033549,
                        95,
                        1152,
                        95,
                        167,
                        95,
                        167,
                        113
                    ],
                    "source": [
                        "p-Mic-control",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "m-channel",
                        0
                    ],
                    "midpoints": [
                        477.16667970021564,
                        95,
                        822,
                        95,
                        167,
                        95,
                        167,
                        113
                    ],
                    "source": [
                        "p-Mic-control",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.44,
                        0.72,
                        1,
                        1
                    ],
                    "destination": [
                        "m-enable",
                        0
                    ],
                    "midpoints": [
                        446.8333463668823,
                        95,
                        492,
                        95,
                        55,
                        95
                    ],
                    "source": [
                        "p-Mic-control",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "m-gain",
                        0
                    ],
                    "midpoints": [
                        467.05556858910455,
                        155,
                        712,
                        155,
                        455,
                        155,
                        455,
                        210
                    ],
                    "source": [
                        "p-Mic-control",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "m-pair",
                        0
                    ],
                    "midpoints": [
                        497.38890192243787,
                        95,
                        1042,
                        95,
                        247,
                        95
                    ],
                    "source": [
                        "p-Mic-control",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "m-release",
                        0
                    ],
                    "midpoints": [
                        537.8333463668823,
                        155,
                        1482,
                        155,
                        240,
                        155,
                        240,
                        255
                    ],
                    "source": [
                        "p-Mic-control",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "m-threshold",
                        0
                    ],
                    "midpoints": [
                        527.7222352557712,
                        155,
                        1372,
                        155,
                        146,
                        155,
                        146,
                        255
                    ],
                    "source": [
                        "p-Mic-control",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "p-Mic-input",
                        2
                    ],
                    "midpoints": [
                        517.6111241446602,
                        95,
                        1262,
                        95,
                        812,
                        95,
                        812,
                        114.00000303983688
                    ],
                    "source": [
                        "p-Mic-control",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "p-Mic-input",
                        1
                    ],
                    "midpoints": [
                        487.2777908113268,
                        95,
                        932,
                        95,
                        662,
                        95,
                        662,
                        114.00000303983688
                    ],
                    "source": [
                        "p-Mic-control",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.44,
                        0.72,
                        1,
                        1
                    ],
                    "destination": [
                        "p-Mic-input",
                        0
                    ],
                    "midpoints": [
                        456.9444574779934,
                        95,
                        602,
                        95,
                        512,
                        95,
                        512,
                        114.00000303983688
                    ],
                    "source": [
                        "p-Mic-control",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.68,
                        0.95,
                        0.34,
                        1
                    ],
                    "destination": [
                        "m-gain",
                        1
                    ],
                    "midpoints": [
                        577.8333463668823,
                        195,
                        662,
                        195,
                        491,
                        195,
                        491,
                        210
                    ],
                    "source": [
                        "p-Mic-eq",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.68,
                        0.95,
                        0.34,
                        1
                    ],
                    "destination": [
                        "m-gain",
                        0
                    ],
                    "source": [
                        "p-Mic-eq",
                        0
                    ],
                    "midpoints": [
                        446.8333463668823,
                        195,
                        512,
                        195,
                        455,
                        195,
                        455,
                        210
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "m-gate-state",
                        0
                    ],
                    "midpoints": [
                        577.8333463668823,
                        195,
                        812,
                        195,
                        91,
                        195
                    ],
                    "source": [
                        "p-Mic-input",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.68,
                        0.95,
                        0.34,
                        1
                    ],
                    "destination": [
                        "p-Mic-eq",
                        1
                    ],
                    "source": [
                        "p-Mic-input",
                        1
                    ],
                    "midpoints": [
                        512.3333463668823,
                        150,
                        577.8333463668823,
                        150
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.68,
                        0.95,
                        0.34,
                        1
                    ],
                    "destination": [
                        "p-Mic-eq",
                        0
                    ],
                    "source": [
                        "p-Mic-input",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-234",
        "parameters": {
            "m-gain": [
                "mic_output_gain",
                "Mic Input",
                0
            ],
            "p-Mic-eq::eq-freq": [
                "mic_eq_frequency",
                "FREQ Hz",
                0
            ],
            "p-Mic-eq::eq-gain": [
                "mic_eq_gain_db",
                "GAIN dB",
                0
            ],
            "p-Mic-eq::eq-q": [
                "mic_eq_q",
                "Q",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "dependency_cache": [
            {
                "name": "mic_panel_v1.png",
                "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/assets/ui",
                "patcherrelativepath": "../../assets/ui",
                "type": "PNG",
                "implicit": 1
            },
            {
                "name": "mt_filtergraph_selection.js",
                "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/javascript",
                "patcherrelativepath": "../../javascript",
                "type": "TEXT",
                "implicit": 1
            },
            {
                "name": "mt_mic_eq_controller.js",
                "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/javascript",
                "patcherrelativepath": "../../javascript",
                "type": "TEXT",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}
