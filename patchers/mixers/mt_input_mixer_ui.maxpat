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
            134,
            173,
            760,
            380
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
                    "autofit": 1,
                    "background": 1,
                    "forceaspect": 1,
                    "id": "mx-bg",
                    "ignoreclick": 1,
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1170,
                        30,
                        760,
                        320
                    ],
                    "pic": "input_mixer_panel_v1.png",
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        0,
                        760,
                        320
                    ]
                }
            },
            {
                "box": {
                    "id": "mx-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        20,
                        420,
                        20
                    ],
                    "text": "MT Input Mixer - 3 source portfolio input layer"
                }
            },
            {
                "box": {
                    "id": "mx-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        48,
                        680,
                        20
                    ],
                    "text": "Connect Mic/File/Granular stereo sources. Each source has enable ramp, gain, meter, then master gain."
                }
            },
            {
                "box": {
                    "comment": "Mic audio L",
                    "id": "mx-mic-l",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        24,
                        110,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Mic audio R",
                    "id": "mx-mic-r",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        70,
                        110,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "mx-mic-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        148,
                        80,
                        20
                    ],
                    "text": "Mic L/R"
                }
            },
            {
                "box": {
                    "comment": "File audio L",
                    "id": "mx-file-l",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        210,
                        110,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "File audio R",
                    "id": "mx-file-r",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        256,
                        110,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "mx-file-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        210,
                        148,
                        80,
                        20
                    ],
                    "text": "File L/R"
                }
            },
            {
                "box": {
                    "comment": "Granular audio L",
                    "id": "mx-grain-l",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        396,
                        110,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Granular audio R",
                    "id": "mx-grain-r",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        442,
                        110,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "mx-grain-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        396,
                        148,
                        110,
                        20
                    ],
                    "text": "Granular L/R"
                }
            },
            {
                "box": {
                    "comment": "Mic Enable 0/1",
                    "id": "mx-mic-enable-in",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        560,
                        110,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "File Enable 0/1",
                    "id": "mx-file-enable-in",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        606,
                        110,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Granular Enable 0/1",
                    "id": "mx-grain-enable-in",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        652,
                        110,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "mx-ext-enable-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        560,
                        148,
                        140,
                        20
                    ],
                    "text": "external enables"
                }
            },
            {
                "box": {
                    "id": "mx-explain",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        515,
                        726,
                        20
                    ],
                    "text": "Source enable buttons are linked with the source boxes and main switches. Use these gains to balance the dry input before FX returns."
                }
            },
            {
                "box": {
                    "id": "mx-mic-enable",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        24,
                        175,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        145,
                        58,
                        24,
                        24
                    ],
                    "varname": "mixer_mic_enable"
                }
            },
            {
                "box": {
                    "id": "mx-mic-enable-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        55,
                        178,
                        45,
                        20
                    ],
                    "text": "Mic"
                }
            },
            {
                "box": {
                    "id": "mx-file-enable",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        210,
                        175,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        327,
                        58,
                        24,
                        24
                    ],
                    "varname": "mixer_file_enable"
                }
            },
            {
                "box": {
                    "id": "mx-file-enable-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        241,
                        178,
                        45,
                        20
                    ],
                    "text": "File"
                }
            },
            {
                "box": {
                    "id": "mx-grain-enable",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        396,
                        175,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        509,
                        58,
                        24,
                        24
                    ],
                    "varname": "mixer_granular_enable"
                }
            },
            {
                "box": {
                    "id": "mx-grain-enable-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        427,
                        178,
                        75,
                        20
                    ],
                    "text": "Granular"
                }
            },
            {
                "box": {
                    "id": "mx-mic-msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        24,
                        215,
                        55,
                        22
                    ],
                    "text": "$1 20"
                }
            },
            {
                "box": {
                    "id": "mx-file-msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        210,
                        215,
                        55,
                        22
                    ],
                    "text": "$1 20"
                }
            },
            {
                "box": {
                    "id": "mx-grain-msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        396,
                        215,
                        55,
                        22
                    ],
                    "text": "$1 20"
                }
            },
            {
                "box": {
                    "id": "mx-mic-enable-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        560,
                        175,
                        60,
                        22
                    ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "mx-file-enable-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        650,
                        175,
                        60,
                        22
                    ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "mx-grain-enable-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        710,
                        145,
                        60,
                        22
                    ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "mx-mic-enable-route",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        560,
                        210,
                        45,
                        22
                    ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "mx-file-enable-route",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        620,
                        210,
                        45,
                        22
                    ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "mx-grain-enable-route",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        680,
                        210,
                        45,
                        22
                    ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "mx-mic-state-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        560,
                        245,
                        155,
                        22
                    ],
                    "text": "s mt_mic_enable_state"
                }
            },
            {
                "box": {
                    "id": "mx-file-state-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        560,
                        275,
                        155,
                        22
                    ],
                    "text": "s mt_file_enable_state"
                }
            },
            {
                "box": {
                    "id": "mx-grain-state-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        560,
                        305,
                        165,
                        22
                    ],
                    "text": "s mt_granular_enable_state"
                }
            },
            {
                "box": {
                    "id": "mx-mic-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        24,
                        255,
                        50,
                        22
                    ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "mx-file-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        210,
                        255,
                        50,
                        22
                    ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "mx-grain-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        396,
                        255,
                        50,
                        22
                    ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "mx-mic-gate-l",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        24,
                        305,
                        55,
                        22
                    ],
                    "text": "*~ 0."
                }
            },
            {
                "box": {
                    "id": "mx-mic-gate-r",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        85,
                        305,
                        55,
                        22
                    ],
                    "text": "*~ 0."
                }
            },
            {
                "box": {
                    "id": "mx-file-gate-l",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        210,
                        305,
                        55,
                        22
                    ],
                    "text": "*~ 0."
                }
            },
            {
                "box": {
                    "id": "mx-file-gate-r",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        271,
                        305,
                        55,
                        22
                    ],
                    "text": "*~ 0."
                }
            },
            {
                "box": {
                    "id": "mx-grain-gate-l",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        396,
                        305,
                        55,
                        22
                    ],
                    "text": "*~ 0."
                }
            },
            {
                "box": {
                    "id": "mx-grain-gate-r",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        457,
                        305,
                        55,
                        22
                    ],
                    "text": "*~ 0."
                }
            },
            {
                "box": {
                    "id": "mx-mic-gain",
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
                        105,
                        345,
                        54,
                        120
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        84,
                        103,
                        54,
                        152
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -12
                            ],
                            "parameter_longname": "mixer_mic_gain",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mic Mix",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "mixer_mic_gain"
                }
            },
            {
                "box": {
                    "id": "mx-file-gain",
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
                        291,
                        345,
                        54,
                        120
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        266,
                        103,
                        54,
                        152
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -12
                            ],
                            "parameter_longname": "mixer_file_gain",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "File Mix",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "mixer_file_gain"
                }
            },
            {
                "box": {
                    "id": "mx-grain-gain",
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
                        477,
                        345,
                        54,
                        120
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        448,
                        103,
                        54,
                        152
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -12
                            ],
                            "parameter_longname": "mixer_granular_gain",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Granular Mix",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "mixer_granular_gain"
                }
            },
            {
                "box": {
                    "id": "mx-mic-meter",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        105,
                        485,
                        90,
                        12
                    ]
                }
            },
            {
                "box": {
                    "id": "mx-file-meter",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        291,
                        485,
                        90,
                        12
                    ]
                }
            },
            {
                "box": {
                    "id": "mx-grain-meter",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        477,
                        485,
                        90,
                        12
                    ]
                }
            },
            {
                "box": {
                    "id": "mx-sum-l-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        670,
                        355,
                        35,
                        22
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-sum-r-1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        720,
                        355,
                        35,
                        22
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-sum-l-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        670,
                        425,
                        35,
                        22
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-sum-r-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        720,
                        425,
                        35,
                        22
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "mx-master-gain",
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
                        790,
                        340,
                        54,
                        145
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        674,
                        100,
                        54,
                        158
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -8
                            ],
                            "parameter_longname": "mixer_master_gain",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Input Master",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "mixer_master_gain"
                }
            },
            {
                "box": {
                    "comment": "Mixed audio L",
                    "id": "mx-out-l",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        925,
                        395,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Mixed audio R",
                    "id": "mx-out-r",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        975,
                        395,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "mx-out-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        910,
                        435,
                        140,
                        20
                    ],
                    "text": "out: mixed L/R"
                }
            },
            {
                "box": {
                    "handoff": "",
                    "id": "mx-mute-button",
                    "maxclass": "ubutton",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "bang",
                        "bang",
                        "",
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        734.7070721387863,
                        178.979798078537,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        565,
                        172,
                        88,
                        34
                    ],
                    "varname": "mixer_mute_all"
                }
            },
            {
                "box": {
                    "id": "mx-mute-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        779,
                        181,
                        80,
                        20
                    ],
                    "text": "Mute all"
                }
            },
            {
                "box": {
                    "id": "mx-mute-zero",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        731.2070721387863,
                        215,
                        35,
                        22
                    ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "mx-mute-route",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        731.2070721387863,
                        245,
                        70,
                        22
                    ],
                    "text": "t i i i"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.968,
                        0.973,
                        0.957,
                        1
                    ],
                    "format": 6,
                    "id": "mx-master-readout",
                    "ignoreclick": 1,
                    "maxclass": "flonum",
                    "maximum": 6,
                    "minimum": -70,
                    "numdecimalplaces": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        875,
                        340,
                        68,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        575,
                        121,
                        68,
                        22
                    ],
                    "textcolor": [
                        0.19,
                        0.26,
                        0.23,
                        1
                    ],
                    "varname": "mixer_master_db"
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
                        "mx-file-msg",
                        0
                    ],
                    "midpoints": [
                        222,
                        225,
                        238,
                        225,
                        238,
                        215
                    ],
                    "order": 1,
                    "source": [
                        "mx-file-enable",
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
                        "mx-file-state-send",
                        0
                    ],
                    "midpoints": [
                        222,
                        225,
                        638,
                        225,
                        638,
                        275
                    ],
                    "order": 0,
                    "source": [
                        "mx-file-enable",
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
                        "mx-file-enable-route",
                        0
                    ],
                    "midpoints": [
                        621,
                        175,
                        643,
                        175,
                        643,
                        210
                    ],
                    "source": [
                        "mx-file-enable-in",
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
                        "mx-file-enable-set",
                        0
                    ],
                    "midpoints": [
                        629.5,
                        255,
                        643,
                        255,
                        680,
                        255,
                        680,
                        175
                    ],
                    "source": [
                        "mx-file-enable-route",
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
                        "mx-file-msg",
                        0
                    ],
                    "midpoints": [
                        655.5,
                        255,
                        688,
                        255,
                        238,
                        255,
                        238,
                        215
                    ],
                    "source": [
                        "mx-file-enable-route",
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
                        "mx-file-enable",
                        0
                    ],
                    "midpoints": [
                        659.5,
                        225,
                        680,
                        225,
                        222,
                        225
                    ],
                    "source": [
                        "mx-file-enable-set",
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
                        "mx-file-meter",
                        0
                    ],
                    "midpoints": [
                        300.5,
                        490,
                        318,
                        490,
                        336,
                        490,
                        336,
                        485
                    ],
                    "order": 1,
                    "source": [
                        "mx-file-gain",
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
                        "mx-sum-l-1",
                        1
                    ],
                    "midpoints": [
                        300.5,
                        490,
                        318,
                        490,
                        723,
                        490,
                        723,
                        355
                    ],
                    "order": 0,
                    "source": [
                        "mx-file-gain",
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
                        "mx-sum-r-1",
                        1
                    ],
                    "midpoints": [
                        309.25,
                        490,
                        372,
                        490,
                        773,
                        490,
                        773,
                        355
                    ],
                    "source": [
                        "mx-file-gain",
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
                        "mx-file-gain",
                        0
                    ],
                    "midpoints": [
                        219.5,
                        335,
                        238,
                        335,
                        318,
                        335,
                        318,
                        345
                    ],
                    "source": [
                        "mx-file-gate-l",
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
                        "mx-file-gain",
                        1
                    ],
                    "midpoints": [
                        280.5,
                        335,
                        299,
                        335,
                        372,
                        335,
                        372,
                        345
                    ],
                    "source": [
                        "mx-file-gate-r",
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
                        "mx-file-gate-l",
                        0
                    ],
                    "midpoints": [
                        225,
                        225,
                        238,
                        225,
                        238,
                        305
                    ],
                    "source": [
                        "mx-file-l",
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
                        "mx-file-gate-l",
                        1
                    ],
                    "midpoints": [
                        219.5,
                        300,
                        235,
                        300,
                        293,
                        300,
                        293,
                        305
                    ],
                    "order": 1,
                    "source": [
                        "mx-file-line",
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
                        "mx-file-gate-r",
                        1
                    ],
                    "midpoints": [
                        219.5,
                        300,
                        235,
                        300,
                        354,
                        300,
                        354,
                        305
                    ],
                    "order": 0,
                    "source": [
                        "mx-file-line",
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
                        "mx-file-line",
                        0
                    ],
                    "source": [
                        "mx-file-msg",
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
                        "mx-file-gate-r",
                        0
                    ],
                    "midpoints": [
                        271,
                        225,
                        299,
                        225,
                        299,
                        305
                    ],
                    "source": [
                        "mx-file-r",
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
                        "mx-grain-msg",
                        0
                    ],
                    "midpoints": [
                        408,
                        225,
                        424,
                        225,
                        424,
                        215
                    ],
                    "order": 1,
                    "source": [
                        "mx-grain-enable",
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
                        "mx-grain-state-send",
                        0
                    ],
                    "midpoints": [
                        408,
                        225,
                        643,
                        225,
                        643,
                        305
                    ],
                    "order": 0,
                    "source": [
                        "mx-grain-enable",
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
                        "mx-grain-enable-route",
                        0
                    ],
                    "midpoints": [
                        667,
                        175,
                        703,
                        175,
                        703,
                        210
                    ],
                    "source": [
                        "mx-grain-enable-in",
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
                        "mx-grain-enable-set",
                        0
                    ],
                    "midpoints": [
                        689.5,
                        255,
                        703,
                        255,
                        740,
                        255,
                        740,
                        145
                    ],
                    "source": [
                        "mx-grain-enable-route",
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
                        "mx-grain-msg",
                        0
                    ],
                    "midpoints": [
                        715.5,
                        255,
                        748,
                        255,
                        424,
                        255,
                        424,
                        215
                    ],
                    "source": [
                        "mx-grain-enable-route",
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
                        "mx-grain-enable",
                        0
                    ],
                    "midpoints": [
                        719.5,
                        175,
                        740,
                        175,
                        408,
                        175
                    ],
                    "source": [
                        "mx-grain-enable-set",
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
                        "mx-grain-meter",
                        0
                    ],
                    "midpoints": [
                        486.5,
                        490,
                        504,
                        490,
                        522,
                        490,
                        522,
                        485
                    ],
                    "order": 1,
                    "source": [
                        "mx-grain-gain",
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
                        "mx-sum-l-2",
                        1
                    ],
                    "midpoints": [
                        486.5,
                        490,
                        504,
                        490,
                        723,
                        490,
                        723,
                        425
                    ],
                    "order": 0,
                    "source": [
                        "mx-grain-gain",
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
                        "mx-sum-r-2",
                        1
                    ],
                    "midpoints": [
                        495.25,
                        490,
                        558,
                        490,
                        773,
                        490,
                        773,
                        425
                    ],
                    "source": [
                        "mx-grain-gain",
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
                        "mx-grain-gain",
                        0
                    ],
                    "midpoints": [
                        405.5,
                        335,
                        424,
                        335,
                        504,
                        335,
                        504,
                        345
                    ],
                    "source": [
                        "mx-grain-gate-l",
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
                        "mx-grain-gain",
                        1
                    ],
                    "midpoints": [
                        466.5,
                        335,
                        485,
                        335,
                        558,
                        335,
                        558,
                        345
                    ],
                    "source": [
                        "mx-grain-gate-r",
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
                        "mx-grain-gate-l",
                        0
                    ],
                    "midpoints": [
                        411,
                        225,
                        424,
                        225,
                        424,
                        305
                    ],
                    "source": [
                        "mx-grain-l",
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
                        "mx-grain-gate-l",
                        1
                    ],
                    "midpoints": [
                        405.5,
                        300,
                        421,
                        300,
                        479,
                        300,
                        479,
                        305
                    ],
                    "order": 1,
                    "source": [
                        "mx-grain-line",
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
                        "mx-grain-gate-r",
                        1
                    ],
                    "midpoints": [
                        405.5,
                        300,
                        421,
                        300,
                        540,
                        300,
                        540,
                        305
                    ],
                    "order": 0,
                    "source": [
                        "mx-grain-line",
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
                        "mx-grain-line",
                        0
                    ],
                    "source": [
                        "mx-grain-msg",
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
                        "mx-grain-gate-r",
                        0
                    ],
                    "midpoints": [
                        457,
                        225,
                        485,
                        225,
                        485,
                        305
                    ],
                    "source": [
                        "mx-grain-r",
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
                        "mx-master-readout",
                        0
                    ],
                    "midpoints": [
                        817,
                        510,
                        925,
                        510,
                        909,
                        510,
                        909,
                        340
                    ],
                    "source": [
                        "mx-master-gain",
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
                        "mx-out-l",
                        0
                    ],
                    "midpoints": [
                        799.5,
                        510,
                        817,
                        510,
                        940,
                        510
                    ],
                    "source": [
                        "mx-master-gain",
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
                        "mx-out-r",
                        0
                    ],
                    "midpoints": [
                        808.25,
                        510,
                        871,
                        510,
                        990,
                        510
                    ],
                    "source": [
                        "mx-master-gain",
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
                        "mx-mic-msg",
                        0
                    ],
                    "midpoints": [
                        36,
                        225,
                        52,
                        225,
                        52,
                        215
                    ],
                    "order": 1,
                    "source": [
                        "mx-mic-enable",
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
                        "mx-mic-state-send",
                        0
                    ],
                    "midpoints": [
                        36,
                        225,
                        638,
                        225,
                        638,
                        245
                    ],
                    "order": 0,
                    "source": [
                        "mx-mic-enable",
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
                        "mx-mic-enable-route",
                        0
                    ],
                    "source": [
                        "mx-mic-enable-in",
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
                        "mx-mic-enable-set",
                        0
                    ],
                    "midpoints": [
                        569.5,
                        255,
                        583,
                        255,
                        590,
                        255,
                        590,
                        175
                    ],
                    "source": [
                        "mx-mic-enable-route",
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
                        "mx-mic-msg",
                        0
                    ],
                    "midpoints": [
                        595.5,
                        255,
                        628,
                        255,
                        52,
                        255,
                        52,
                        215
                    ],
                    "source": [
                        "mx-mic-enable-route",
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
                        "mx-mic-enable",
                        0
                    ],
                    "midpoints": [
                        569.5,
                        225,
                        590,
                        225,
                        36,
                        225
                    ],
                    "source": [
                        "mx-mic-enable-set",
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
                        "mx-mic-meter",
                        0
                    ],
                    "midpoints": [
                        114.5,
                        490,
                        132,
                        490,
                        150,
                        490,
                        150,
                        485
                    ],
                    "order": 1,
                    "source": [
                        "mx-mic-gain",
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
                        "mx-sum-l-1",
                        0
                    ],
                    "midpoints": [
                        114.5,
                        490,
                        132,
                        490,
                        688,
                        490,
                        688,
                        355
                    ],
                    "order": 0,
                    "source": [
                        "mx-mic-gain",
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
                        "mx-sum-r-1",
                        0
                    ],
                    "midpoints": [
                        123.25,
                        490,
                        186,
                        490,
                        738,
                        490,
                        738,
                        355
                    ],
                    "source": [
                        "mx-mic-gain",
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
                        "mx-mic-gain",
                        0
                    ],
                    "midpoints": [
                        33.5,
                        335,
                        52,
                        335,
                        132,
                        335,
                        132,
                        345
                    ],
                    "source": [
                        "mx-mic-gate-l",
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
                        "mx-mic-gain",
                        1
                    ],
                    "midpoints": [
                        94.5,
                        335,
                        113,
                        335,
                        186,
                        335,
                        186,
                        345
                    ],
                    "source": [
                        "mx-mic-gate-r",
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
                        "mx-mic-gate-l",
                        0
                    ],
                    "midpoints": [
                        39,
                        225,
                        52,
                        225,
                        52,
                        305
                    ],
                    "source": [
                        "mx-mic-l",
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
                        "mx-mic-gate-l",
                        1
                    ],
                    "midpoints": [
                        33.5,
                        300,
                        49,
                        300,
                        107,
                        300,
                        107,
                        305
                    ],
                    "order": 1,
                    "source": [
                        "mx-mic-line",
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
                        "mx-mic-gate-r",
                        1
                    ],
                    "midpoints": [
                        33.5,
                        300,
                        49,
                        300,
                        168,
                        300,
                        168,
                        305
                    ],
                    "order": 0,
                    "source": [
                        "mx-mic-line",
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
                        "mx-mic-line",
                        0
                    ],
                    "source": [
                        "mx-mic-msg",
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
                        "mx-mic-gate-r",
                        0
                    ],
                    "midpoints": [
                        85,
                        225,
                        113,
                        225,
                        113,
                        305
                    ],
                    "source": [
                        "mx-mic-r",
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
                        "mx-mute-zero",
                        0
                    ],
                    "source": [
                        "mx-mute-button",
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
                        "mx-file-enable",
                        0
                    ],
                    "midpoints": [
                        766.2070721387863,
                        300,
                        836,
                        300,
                        222,
                        300
                    ],
                    "source": [
                        "mx-mute-route",
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
                        "mx-grain-enable",
                        0
                    ],
                    "midpoints": [
                        791.7070721387863,
                        300,
                        906,
                        300,
                        408,
                        300
                    ],
                    "source": [
                        "mx-mute-route",
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
                        "mx-mic-enable",
                        0
                    ],
                    "midpoints": [
                        740.7070721387863,
                        300,
                        766,
                        300,
                        36,
                        300
                    ],
                    "source": [
                        "mx-mute-route",
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
                        "mx-mute-route",
                        0
                    ],
                    "source": [
                        "mx-mute-zero",
                        0
                    ],
                    "midpoints": [
                        740.7070721387863,
                        240,
                        749,
                        240,
                        766,
                        240,
                        766,
                        245
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
                        "mx-sum-l-2",
                        0
                    ],
                    "source": [
                        "mx-sum-l-1",
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
                        "mx-master-gain",
                        0
                    ],
                    "midpoints": [
                        679.5,
                        470,
                        688,
                        470,
                        817,
                        470,
                        817,
                        340
                    ],
                    "source": [
                        "mx-sum-l-2",
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
                        "mx-sum-r-2",
                        0
                    ],
                    "source": [
                        "mx-sum-r-1",
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
                        "mx-master-gain",
                        1
                    ],
                    "midpoints": [
                        729.5,
                        470,
                        738,
                        470,
                        871,
                        470,
                        871,
                        340
                    ],
                    "source": [
                        "mx-sum-r-2",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-986",
        "parameters": {
            "mx-file-gain": [
                "mixer_file_gain",
                "File Mix",
                0
            ],
            "mx-grain-gain": [
                "mixer_granular_gain",
                "Granular Mix",
                0
            ],
            "mx-master-gain": [
                "mixer_master_gain",
                "Input Master",
                0
            ],
            "mx-mic-gain": [
                "mixer_mic_gain",
                "Mic Mix",
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
                "name": "input_mixer_panel_v1.png",
                "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/assets/ui",
                "patcherrelativepath": "../../assets/ui",
                "type": "PNG",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}
