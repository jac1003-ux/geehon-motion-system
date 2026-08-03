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
            122,
            1200,
            920
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
                    "id": "g-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        13,
                        190,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        24,
                        5.5,
                        190,
                        20
                    ],
                    "text": "GRANULAR INPUT"
                }
            },
            {
                "box": {
                    "id": "g-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        50,
                        260,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        24,
                        27.5,
                        260,
                        20
                    ],
                    "text": "record / load / shape / perform"
                }
            },
            {
                "box": {
                    "id": "g-enable",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        30,
                        78,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        41,
                        70,
                        24,
                        24
                    ],
                    "varname": "granular_enable"
                }
            },
            {
                "box": {
                    "id": "g-enable-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        21,
                        120,
                        48,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        21.300000477582216,
                        46.75,
                        46,
                        20
                    ],
                    "text": "Enable"
                }
            },
            {
                "box": {
                    "id": "g-record",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        104,
                        78,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        123,
                        70,
                        24,
                        24
                    ],
                    "varname": "granular_record"
                }
            },
            {
                "box": {
                    "id": "g-record-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        82,
                        120,
                        72,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        81.45226129889488,
                        46.75,
                        69.095478951931,
                        20
                    ],
                    "text": "Record Mic"
                }
            },
            {
                "box": {
                    "id": "g-play",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        190,
                        78,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        225,
                        70,
                        24,
                        24
                    ],
                    "varname": "granular_play"
                }
            },
            {
                "box": {
                    "id": "g-play-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        165,
                        120,
                        82,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        176.51864652335644,
                        46.75,
                        74.12060469388962,
                        20
                    ],
                    "text": "Play Texture"
                }
            },
            {
                "box": {
                    "decodemode": 0,
                    "id": "g-drop",
                    "maxclass": "live.drop",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        274,
                        87,
                        128,
                        36
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        296,
                        70,
                        132,
                        34
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "granular_drop",
                            "parameter_modmode": 0,
                            "parameter_shortname": "granular_drop",
                            "parameter_type": 4
                        }
                    },
                    "varname": "granular_drop"
                }
            },
            {
                "box": {
                    "id": "g-drop-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        293,
                        135,
                        88,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        320.875,
                        46.75,
                        79,
                        20
                    ],
                    "text": "Drop Sample"
                }
            },
            {
                "box": {
                    "id": "g-load",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        425,
                        78,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        449,
                        75,
                        24,
                        24
                    ],
                    "varname": "granular_load"
                }
            },
            {
                "box": {
                    "id": "g-load-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        417,
                        120,
                        42,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        441.5,
                        46.75,
                        36.5,
                        20
                    ],
                    "text": "Load"
                }
            },
            {
                "box": {
                    "id": "g-open",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "patching_rect": [
                        1142,
                        146,
                        90,
                        22
                    ],
                    "text": "opendialog"
                }
            },
            {
                "box": {
                    "id": "g-preset",
                    "items": [
                        "Safe Cloud",
                        ",",
                        "Frozen Pad",
                        ",",
                        "Rhythmic Dust"
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
                        484,
                        79,
                        130,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        506,
                        79,
                        114,
                        22
                    ],
                    "varname": "granular_preset"
                }
            },
            {
                "box": {
                    "id": "g-preset-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        522,
                        120,
                        50,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        541.125,
                        46.75,
                        43,
                        20
                    ],
                    "text": "Preset"
                }
            },
            {
                "box": {
                    "buffername": "mt_granular_buffer",
                    "id": "g-waveform",
                    "maxclass": "waveform~",
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [
                        "float",
                        "float",
                        "float",
                        "float",
                        "list",
                        ""
                    ],
                    "patching_rect": [
                        18,
                        162,
                        620,
                        160
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        145,
                        606,
                        138
                    ],
                    "setmode": 1,
                    "varname": "granular_waveform"
                }
            },
            {
                "box": {
                    "id": "g-file",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        24,
                        370,
                        225,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        312,
                        230,
                        22
                    ],
                    "text": "No material"
                }
            },
            {
                "box": {
                    "id": "g-status",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        268,
                        370,
                        140,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        264,
                        312,
                        170,
                        22
                    ],
                    "text": "Idle"
                }
            },
            {
                "box": {
                    "id": "g-duration",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        450,
                        370,
                        74,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        444,
                        312,
                        186,
                        22
                    ],
                    "text": "00:00"
                }
            },
            {
                "box": {
                    "id": "g-file-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        339,
                        70,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        23,
                        290.28572726249695,
                        70,
                        20
                    ],
                    "text": "MATERIAL"
                }
            },
            {
                "box": {
                    "id": "g-status-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        268,
                        339,
                        55,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        264.00001180171967,
                        290.28572726249695,
                        55,
                        20
                    ],
                    "text": "STATUS"
                }
            },
            {
                "box": {
                    "id": "g-duration-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        450,
                        339,
                        45,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        444.85716274380684,
                        290.28572726249695,
                        45,
                        20
                    ],
                    "text": "TIME"
                }
            },
            {
                "box": {
                    "id": "g-gain",
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
                        1068,
                        284.88371074199677,
                        54,
                        210
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        660.8888938128948,
                        112.00000083446503,
                        34,
                        230
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_longname": "granular_output_gain",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Granular Input",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "granular_output_gain"
                }
            },
            {
                "box": {
                    "id": "g-gain-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        662,
                        80,
                        48,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        654.8888936415315,
                        76.75,
                        46.00000034272671,
                        20
                    ],
                    "text": "Output"
                }
            },
            {
                "box": {
                    "comment": "Enable 0/1",
                    "id": "g-ext-enable",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1061,
                        127,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "p-Granular-control",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 18,
                    "outlettype": [
                        "int",
                        "int",
                        "int",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "float",
                        "float",
                        "float",
                        "float",
                        "float",
                        "float",
                        "float"
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
                            1120,
                            800
                        ],
                        "gridsize": [
                            15,
                            15
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "gc-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30,
                                        25,
                                        760,
                                        20
                                    ],
                                    "text": "Granular control: linked enable / material state / presets / status formatting"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-ext-enable",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-ui-enable",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        120,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-record",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        210,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-play",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        300,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-path",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        390,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-preset",
                                    "index": 6,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        500,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-duration",
                                    "index": 7,
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
                                    "id": "gc-ext-enable-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30,
                                        130,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-enable-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        120,
                                        584,
                                        180,
                                        22
                                    ],
                                    "text": "s mt_granular_enable_state"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-enable-receive",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30,
                                        180,
                                        180,
                                        22
                                    ],
                                    "text": "r mt_granular_enable_state"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-enable-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        30,
                                        230,
                                        50,
                                        22
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-enable-set",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30,
                                        275,
                                        58,
                                        22
                                    ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-record-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        210,
                                        130,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-record-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        210,
                                        423,
                                        50,
                                        22
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-record-set",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        210,
                                        504,
                                        58,
                                        22
                                    ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-record-status",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        241,
                                        464,
                                        60,
                                        22
                                    ],
                                    "text": "sel 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-status-idle",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        241,
                                        544,
                                        62,
                                        22
                                    ],
                                    "text": "set Idle"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-status-recording",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        316,
                                        529,
                                        92,
                                        22
                                    ],
                                    "text": "set Recording"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-play-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        390,
                                        130,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-play-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        390,
                                        449,
                                        50,
                                        22
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-play-set",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        390,
                                        489,
                                        58,
                                        22
                                    ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-path-order",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        500,
                                        130,
                                        58,
                                        22
                                    ],
                                    "text": "t l b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-path-stop-record",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        539,
                                        210,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-path-stop-play",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        519.5,
                                        180,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-path-fanout",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        500,
                                        245,
                                        55,
                                        22
                                    ],
                                    "text": "t l l b"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-strip-path",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        518,
                                        280,
                                        70,
                                        22
                                    ],
                                    "text": "strippath"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-file-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        518,
                                        344,
                                        90,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-status-loaded",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        536,
                                        309,
                                        78,
                                        22
                                    ],
                                    "text": "set Loaded"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-preset-select",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        760,
                                        130,
                                        60,
                                        22
                                    ],
                                    "text": "sel 0 1 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-safe-values",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        760,
                                        180,
                                        166,
                                        22
                                    ],
                                    "text": "90 28 129.370483 0 57.6 -32 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-frozen-values",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        945,
                                        180,
                                        165,
                                        22
                                    ],
                                    "text": "95 56 280.117862 0 6.4 -32 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-rhythmic-values",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1100,
                                        210,
                                        150,
                                        22
                                    ],
                                    "text": "70 72 45 7 180 -36 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-param-unpack",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 7,
                                    "outlettype": [
                                        "float",
                                        "float",
                                        "float",
                                        "float",
                                        "float",
                                        "float",
                                        "float"
                                    ],
                                    "patching_rect": [
                                        760,
                                        638,
                                        170,
                                        22
                                    ],
                                    "text": "unpack f f f f f f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-duration-sec",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        625,
                                        329,
                                        70,
                                        22
                                    ],
                                    "text": "/ 1000."
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-duration-int",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        610,
                                        384,
                                        35,
                                        22
                                    ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-duration-parts",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        610,
                                        424,
                                        50,
                                        22
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-duration-min",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        610,
                                        464,
                                        45,
                                        22
                                    ],
                                    "text": "/ 60"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-duration-rem",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        666,
                                        449,
                                        45,
                                        22
                                    ],
                                    "text": "% 60"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-duration-pack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        610,
                                        504,
                                        60,
                                        22
                                    ],
                                    "text": "pak i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-duration-format",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        610,
                                        544,
                                        125,
                                        22
                                    ],
                                    "text": "sprintf %02ld:%02ld"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-duration-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        610,
                                        584,
                                        90,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-loadbang",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        30,
                                        309,
                                        65,
                                        22
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-init-trigger",
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
                                        30,
                                        349,
                                        135,
                                        22
                                    ],
                                    "text": "t b b b b b b b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-init-enable",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        161,
                                        399,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-init-record",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        129,
                                        429,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-init-play",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        112,
                                        399,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-init-file",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        96,
                                        468,
                                        100,
                                        22
                                    ],
                                    "text": "set No material"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-init-status",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        34,
                                        402,
                                        62,
                                        22
                                    ],
                                    "text": "set Idle"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-init-duration",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        33,
                                        435,
                                        76,
                                        22
                                    ],
                                    "text": "set 00:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-init-gain",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        46,
                                        489,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "gc-init-params",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30,
                                        528,
                                        166,
                                        22
                                    ],
                                    "text": "90 28 129.370483 0 57.6 -32 0"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-enable-out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-record-out",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        85,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-play-out",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        140,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-path-out",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        195,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-enable-ui",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        250,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-record-ui",
                                    "index": 6,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        305,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-play-ui",
                                    "index": 7,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        360,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-file-ui",
                                    "index": 8,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        415,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-status-ui",
                                    "index": 9,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        470,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-duration-ui",
                                    "index": 10,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        525,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-gain-ui",
                                    "index": 11,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        580,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-wet-ui",
                                    "index": 12,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        635,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-density-ui",
                                    "index": 13,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        690,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-size-ui",
                                    "index": 14,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        745,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-pitch-ui",
                                    "index": 15,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        800,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-spray-ui",
                                    "index": 16,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        854,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-amp-ui",
                                    "index": 17,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        910,
                                        700,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gc-makeup-ui",
                                    "index": 18,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        965,
                                        700,
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
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "gc-duration-sec",
                                        0
                                    ],
                                    "source": [
                                        "gc-duration",
                                        0
                                    ],
                                    "midpoints": [
                                        625,
                                        220,
                                        660,
                                        220,
                                        660,
                                        329
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
                                        "gc-param-unpack",
                                        0
                                    ],
                                    "source": [
                                        "gc-rhythmic-values",
                                        0
                                    ],
                                    "midpoints": [
                                        1109.5,
                                        430,
                                        1175,
                                        430,
                                        845,
                                        430,
                                        845,
                                        638
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
                                        "gc-duration-set",
                                        0
                                    ],
                                    "source": [
                                        "gc-duration-format",
                                        0
                                    ],
                                    "midpoints": [
                                        619.5,
                                        600,
                                        673,
                                        600,
                                        655,
                                        600,
                                        655,
                                        584
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
                                        "gc-rhythmic-values",
                                        0
                                    ],
                                    "midpoints": [
                                        796.8333333333334,
                                        185,
                                        910,
                                        185,
                                        1175,
                                        185,
                                        1175,
                                        210
                                    ],
                                    "source": [
                                        "gc-preset-select",
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
                                        "gc-duration-parts",
                                        0
                                    ],
                                    "source": [
                                        "gc-duration-int",
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
                                        "gc-duration-pack",
                                        0
                                    ],
                                    "source": [
                                        "gc-duration-min",
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
                                        "gc-duration-format",
                                        0
                                    ],
                                    "source": [
                                        "gc-duration-pack",
                                        0
                                    ],
                                    "midpoints": [
                                        619.5,
                                        535,
                                        640,
                                        535,
                                        673,
                                        535,
                                        673,
                                        544
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
                                        "gc-duration-min",
                                        0
                                    ],
                                    "source": [
                                        "gc-duration-parts",
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
                                        "gc-duration-rem",
                                        0
                                    ],
                                    "source": [
                                        "gc-duration-parts",
                                        1
                                    ],
                                    "midpoints": [
                                        650.5,
                                        450,
                                        675.5,
                                        450
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
                                        "gc-duration-pack",
                                        1
                                    ],
                                    "source": [
                                        "gc-duration-rem",
                                        0
                                    ],
                                    "midpoints": [
                                        675.5,
                                        490,
                                        689,
                                        490,
                                        700,
                                        490,
                                        700,
                                        504
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
                                        "gc-duration-int",
                                        0
                                    ],
                                    "source": [
                                        "gc-duration-sec",
                                        0
                                    ],
                                    "midpoints": [
                                        634.5,
                                        370,
                                        660,
                                        370,
                                        628,
                                        370,
                                        628,
                                        384
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
                                        "gc-duration-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        619.5,
                                        655,
                                        655,
                                        655,
                                        540,
                                        655
                                    ],
                                    "source": [
                                        "gc-duration-set",
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
                                        "gc-enable-trigger",
                                        0
                                    ],
                                    "source": [
                                        "gc-enable-receive",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        220,
                                        120,
                                        220,
                                        55,
                                        220,
                                        55,
                                        230
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
                                        "gc-enable-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        490,
                                        59,
                                        490,
                                        265,
                                        490
                                    ],
                                    "source": [
                                        "gc-enable-set",
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
                                        "gc-enable-out",
                                        0
                                    ],
                                    "midpoints": [
                                        70.5,
                                        490,
                                        105,
                                        490,
                                        45,
                                        490
                                    ],
                                    "source": [
                                        "gc-enable-trigger",
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
                                        "gc-enable-set",
                                        0
                                    ],
                                    "source": [
                                        "gc-enable-trigger",
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
                                        "gc-ext-enable-clip",
                                        0
                                    ],
                                    "source": [
                                        "gc-ext-enable",
                                        0
                                    ],
                                    "midpoints": [
                                        45,
                                        120,
                                        65,
                                        120,
                                        65,
                                        130
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
                                        "gc-enable-trigger",
                                        0
                                    ],
                                    "source": [
                                        "gc-ext-enable-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        185,
                                        65,
                                        185,
                                        55,
                                        185,
                                        55,
                                        230
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
                                        "gc-file-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        527.5,
                                        535,
                                        563,
                                        535,
                                        430,
                                        535
                                    ],
                                    "source": [
                                        "gc-file-set",
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
                                        "gc-param-unpack",
                                        0
                                    ],
                                    "midpoints": [
                                        954.5,
                                        430,
                                        1028,
                                        430,
                                        845,
                                        430,
                                        845,
                                        638
                                    ],
                                    "source": [
                                        "gc-frozen-values",
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
                                        "gc-duration-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        42.5,
                                        600,
                                        71,
                                        600,
                                        540,
                                        600
                                    ],
                                    "source": [
                                        "gc-init-duration",
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
                                        "gc-enable-send",
                                        0
                                    ],
                                    "midpoints": [
                                        170.5,
                                        490,
                                        177,
                                        490,
                                        210,
                                        490,
                                        210,
                                        584
                                    ],
                                    "source": [
                                        "gc-init-enable",
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
                                        "gc-file-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        105.5,
                                        600,
                                        146,
                                        600,
                                        430,
                                        600
                                    ],
                                    "source": [
                                        "gc-init-file",
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
                                        "gc-gain-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        55.5,
                                        600,
                                        62,
                                        600,
                                        595,
                                        600
                                    ],
                                    "source": [
                                        "gc-init-gain",
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
                                        "gc-param-unpack",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        600,
                                        113,
                                        600,
                                        845,
                                        600,
                                        845,
                                        638
                                    ],
                                    "source": [
                                        "gc-init-params",
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
                                        "gc-play-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        121.5,
                                        430,
                                        128,
                                        430,
                                        415,
                                        430,
                                        415,
                                        449
                                    ],
                                    "source": [
                                        "gc-init-play",
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
                                        "gc-record-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        138.5,
                                        490,
                                        145,
                                        490,
                                        235,
                                        490,
                                        235,
                                        423
                                    ],
                                    "source": [
                                        "gc-init-record",
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
                                        "gc-status-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        43.5,
                                        600,
                                        65,
                                        600,
                                        485,
                                        600
                                    ],
                                    "source": [
                                        "gc-init-status",
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
                                        "gc-init-duration",
                                        0
                                    ],
                                    "source": [
                                        "gc-init-trigger",
                                        2
                                    ],
                                    "midpoints": [
                                        72.64285714285714,
                                        390,
                                        368,
                                        390,
                                        71,
                                        390,
                                        71,
                                        435
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
                                        "gc-init-enable",
                                        0
                                    ],
                                    "source": [
                                        "gc-init-trigger",
                                        7
                                    ],
                                    "midpoints": [
                                        155.5,
                                        390,
                                        1043,
                                        390,
                                        177,
                                        390,
                                        177,
                                        399
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
                                        "gc-init-file",
                                        0
                                    ],
                                    "source": [
                                        "gc-init-trigger",
                                        4
                                    ],
                                    "midpoints": [
                                        105.78571428571429,
                                        430,
                                        638,
                                        430,
                                        146,
                                        430,
                                        146,
                                        468
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
                                        "gc-init-gain",
                                        0
                                    ],
                                    "source": [
                                        "gc-init-trigger",
                                        1
                                    ],
                                    "midpoints": [
                                        56.07142857142857,
                                        430,
                                        233,
                                        430,
                                        62,
                                        430,
                                        62,
                                        489
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
                                        "gc-init-params",
                                        0
                                    ],
                                    "source": [
                                        "gc-init-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        450,
                                        98,
                                        450,
                                        113,
                                        450,
                                        113,
                                        528
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
                                        "gc-init-play",
                                        0
                                    ],
                                    "source": [
                                        "gc-init-trigger",
                                        5
                                    ],
                                    "midpoints": [
                                        122.35714285714286,
                                        390,
                                        773,
                                        390,
                                        128,
                                        390,
                                        128,
                                        399
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
                                        "gc-init-record",
                                        0
                                    ],
                                    "source": [
                                        "gc-init-trigger",
                                        6
                                    ],
                                    "midpoints": [
                                        138.92857142857144,
                                        390,
                                        908,
                                        390,
                                        145,
                                        390,
                                        145,
                                        429
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
                                        "gc-init-status",
                                        0
                                    ],
                                    "source": [
                                        "gc-init-trigger",
                                        3
                                    ],
                                    "midpoints": [
                                        89.21428571428572,
                                        390,
                                        503,
                                        390,
                                        65,
                                        390,
                                        65,
                                        402
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
                                        "gc-init-trigger",
                                        0
                                    ],
                                    "source": [
                                        "gc-loadbang",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        335,
                                        63,
                                        335,
                                        98,
                                        335,
                                        98,
                                        349
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
                                        "gc-amp-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        895.3333333333334,
                                        680,
                                        1695,
                                        680,
                                        925,
                                        680
                                    ],
                                    "source": [
                                        "gc-param-unpack",
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
                                        "gc-density-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        794.6666666666666,
                                        680,
                                        1015,
                                        680,
                                        705,
                                        680
                                    ],
                                    "source": [
                                        "gc-param-unpack",
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
                                        "gc-makeup-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        920.5,
                                        680,
                                        1865,
                                        680,
                                        980,
                                        680
                                    ],
                                    "source": [
                                        "gc-param-unpack",
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
                                        "gc-pitch-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        845,
                                        680,
                                        1355,
                                        680,
                                        815,
                                        680
                                    ],
                                    "source": [
                                        "gc-param-unpack",
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
                                        "gc-size-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        819.8333333333334,
                                        680,
                                        1185,
                                        680,
                                        760,
                                        680
                                    ],
                                    "source": [
                                        "gc-param-unpack",
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
                                        "gc-spray-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        870.1666666666666,
                                        680,
                                        1525,
                                        680,
                                        869,
                                        680
                                    ],
                                    "source": [
                                        "gc-param-unpack",
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
                                        "gc-wet-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        769.5,
                                        680,
                                        845,
                                        680,
                                        650,
                                        680
                                    ],
                                    "source": [
                                        "gc-param-unpack",
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
                                        "gc-path-order",
                                        0
                                    ],
                                    "midpoints": [
                                        405,
                                        120,
                                        529,
                                        120,
                                        529,
                                        130
                                    ],
                                    "source": [
                                        "gc-path",
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
                                        "gc-path-out",
                                        0
                                    ],
                                    "midpoints": [
                                        509.5,
                                        490,
                                        528,
                                        490,
                                        210,
                                        490
                                    ],
                                    "source": [
                                        "gc-path-fanout",
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
                                        "gc-status-loaded",
                                        0
                                    ],
                                    "source": [
                                        "gc-path-fanout",
                                        2
                                    ],
                                    "midpoints": [
                                        545.5,
                                        285,
                                        638,
                                        285,
                                        575,
                                        285,
                                        575,
                                        309
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
                                        "gc-strip-path",
                                        0
                                    ],
                                    "source": [
                                        "gc-path-fanout",
                                        1
                                    ],
                                    "midpoints": [
                                        527.5,
                                        285,
                                        583,
                                        285,
                                        553,
                                        285,
                                        553,
                                        280
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
                                        "gc-path-fanout",
                                        0
                                    ],
                                    "source": [
                                        "gc-path-order",
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
                                        "gc-path-stop-play",
                                        0
                                    ],
                                    "source": [
                                        "gc-path-order",
                                        1
                                    ],
                                    "midpoints": [
                                        529,
                                        165,
                                        587,
                                        165,
                                        536,
                                        165,
                                        536,
                                        180
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
                                        "gc-path-stop-record",
                                        0
                                    ],
                                    "source": [
                                        "gc-path-order",
                                        2
                                    ],
                                    "midpoints": [
                                        548.5,
                                        185,
                                        645,
                                        185,
                                        555,
                                        185,
                                        555,
                                        210
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
                                        "gc-play-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        529,
                                        335,
                                        536,
                                        335,
                                        415,
                                        335,
                                        415,
                                        449
                                    ],
                                    "source": [
                                        "gc-path-stop-play",
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
                                        "gc-record-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        548.5,
                                        335,
                                        555,
                                        335,
                                        235,
                                        335,
                                        235,
                                        423
                                    ],
                                    "source": [
                                        "gc-path-stop-record",
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
                                        "gc-play-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        315,
                                        120,
                                        425,
                                        120,
                                        425,
                                        130
                                    ],
                                    "source": [
                                        "gc-play",
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
                                        "gc-play-trigger",
                                        0
                                    ],
                                    "source": [
                                        "gc-play-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        399.5,
                                        285,
                                        425,
                                        285,
                                        415,
                                        285,
                                        415,
                                        449
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
                                        "gc-play-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        399.5,
                                        600,
                                        419,
                                        600,
                                        375,
                                        600
                                    ],
                                    "source": [
                                        "gc-play-set",
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
                                        "gc-play-out",
                                        0
                                    ],
                                    "midpoints": [
                                        430.5,
                                        600,
                                        465,
                                        600,
                                        155,
                                        600
                                    ],
                                    "source": [
                                        "gc-play-trigger",
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
                                        "gc-play-set",
                                        0
                                    ],
                                    "source": [
                                        "gc-play-trigger",
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
                                        "gc-preset-select",
                                        0
                                    ],
                                    "midpoints": [
                                        515,
                                        120,
                                        790,
                                        120,
                                        790,
                                        130
                                    ],
                                    "source": [
                                        "gc-preset",
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
                                        "gc-frozen-values",
                                        0
                                    ],
                                    "midpoints": [
                                        783.1666666666666,
                                        165,
                                        850,
                                        165,
                                        1028,
                                        165,
                                        1028,
                                        180
                                    ],
                                    "source": [
                                        "gc-preset-select",
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
                                        "gc-safe-values",
                                        0
                                    ],
                                    "source": [
                                        "gc-preset-select",
                                        0
                                    ],
                                    "midpoints": [
                                        769.5,
                                        165,
                                        790,
                                        165,
                                        843,
                                        165,
                                        843,
                                        180
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
                                        "gc-record-clip",
                                        0
                                    ],
                                    "source": [
                                        "gc-record",
                                        0
                                    ],
                                    "midpoints": [
                                        225,
                                        120,
                                        245,
                                        120,
                                        245,
                                        130
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
                                        "gc-record-trigger",
                                        0
                                    ],
                                    "source": [
                                        "gc-record-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        219.5,
                                        285,
                                        245,
                                        285,
                                        235,
                                        285,
                                        235,
                                        423
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
                                        "gc-record-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        219.5,
                                        600,
                                        239,
                                        600,
                                        320,
                                        600
                                    ],
                                    "source": [
                                        "gc-record-set",
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
                                        "gc-status-idle",
                                        0
                                    ],
                                    "source": [
                                        "gc-record-status",
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
                                        "gc-status-recording",
                                        0
                                    ],
                                    "midpoints": [
                                        271,
                                        490,
                                        331,
                                        490,
                                        362,
                                        490,
                                        362,
                                        529
                                    ],
                                    "source": [
                                        "gc-record-status",
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
                                        "gc-record-out",
                                        0
                                    ],
                                    "midpoints": [
                                        250.5,
                                        490,
                                        285,
                                        490,
                                        100,
                                        490
                                    ],
                                    "order": 1,
                                    "source": [
                                        "gc-record-trigger",
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
                                        "gc-record-set",
                                        0
                                    ],
                                    "source": [
                                        "gc-record-trigger",
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
                                        "gc-record-status",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "gc-record-trigger",
                                        1
                                    ],
                                    "midpoints": [
                                        250.5,
                                        490,
                                        285,
                                        490,
                                        271,
                                        490,
                                        271,
                                        464
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
                                        "gc-param-unpack",
                                        0
                                    ],
                                    "source": [
                                        "gc-safe-values",
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
                                        "gc-status-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        250.5,
                                        600,
                                        272,
                                        600,
                                        485,
                                        600
                                    ],
                                    "source": [
                                        "gc-status-idle",
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
                                        "gc-status-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        545.5,
                                        490,
                                        575,
                                        490,
                                        485,
                                        490
                                    ],
                                    "source": [
                                        "gc-status-loaded",
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
                                        "gc-status-ui",
                                        0
                                    ],
                                    "midpoints": [
                                        325.5,
                                        600,
                                        362,
                                        600,
                                        485,
                                        600
                                    ],
                                    "source": [
                                        "gc-status-recording",
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
                                        "gc-file-set",
                                        0
                                    ],
                                    "source": [
                                        "gc-strip-path",
                                        0
                                    ],
                                    "midpoints": [
                                        527.5,
                                        335,
                                        553,
                                        335,
                                        563,
                                        335,
                                        563,
                                        344
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
                                        "gc-enable-send",
                                        0
                                    ],
                                    "source": [
                                        "gc-ui-enable",
                                        0
                                    ],
                                    "midpoints": [
                                        135,
                                        335,
                                        210,
                                        335,
                                        210,
                                        584
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-6"
                    },
                    "patching_rect": [
                        1061,
                        192,
                        140,
                        22
                    ],
                    "text": "p Granular_control"
                }
            },
            {
                "box": {
                    "id": "p-Granular-input",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [
                        "signal",
                        "signal",
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
                            860,
                            610
                        ],
                        "gridsize": [
                            15,
                            15
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "gi-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30,
                                        25,
                                        820,
                                        20
                                    ],
                                    "text": "Granular DSP: mic record / sample replace -> synth -> position -> 20 ms enable ramp -> L/R"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gi-enable",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        176,
                                        270,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gi-record",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        140,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gi-play",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        532,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gi-path",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        360,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gi-position",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        640,
                                        384,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-enable-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        176,
                                        319,
                                        55,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-enable-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        176,
                                        354,
                                        50,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-adc",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        140,
                                        135,
                                        65,
                                        22
                                    ],
                                    "text": "adc~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-record-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        140,
                                        180,
                                        150,
                                        22
                                    ],
                                    "text": "s mt_granular_record"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-play-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        532,
                                        130,
                                        140,
                                        22
                                    ],
                                    "text": "s mt_granular_play"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-replace",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        360,
                                        130,
                                        120,
                                        22
                                    ],
                                    "text": "prepend replace"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-load-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        360,
                                        180,
                                        50,
                                        22
                                    ],
                                    "text": "t b l"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-load-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        430,
                                        225,
                                        175,
                                        22
                                    ],
                                    "text": "s mt_granular_load_sample"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-info-delay",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        360,
                                        225,
                                        60,
                                        22
                                    ],
                                    "text": "del 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-info",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 10,
                                    "outlettype": [
                                        "float",
                                        "list",
                                        "float",
                                        "float",
                                        "float",
                                        "float",
                                        "float",
                                        "",
                                        "int",
                                        ""
                                    ],
                                    "patching_rect": [
                                        360,
                                        260,
                                        180,
                                        22
                                    ],
                                    "text": "info~ mt_granular_buffer"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-duration",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        467.3333333333333,
                                        296,
                                        115,
                                        22
                                    ],
                                    "text": "clip 1. 600000."
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-duration-store",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        758,
                                        354,
                                        80,
                                        22
                                    ],
                                    "text": "f 30000."
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-total-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        506,
                                        349,
                                        175,
                                        22
                                    ],
                                    "text": "s mt_granular_total_ms"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-position-safe",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        532,
                                        424,
                                        245,
                                        22
                                    ],
                                    "text": "expr min(max(0.\\, $f1)\\, max(0.\\, $f2 - 1.))"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-position-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        532,
                                        465,
                                        165,
                                        22
                                    ],
                                    "text": "s mt_granular_position"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-position-receive",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        352.11268067359924,
                                        424,
                                        165,
                                        22
                                    ],
                                    "text": "r mt_granular_position"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-position-line",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        352.11268067359924,
                                        465,
                                        90,
                                        22
                                    ],
                                    "text": "prepend line"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-synth",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        140,
                                        225,
                                        135,
                                        22
                                    ],
                                    "text": "mt_granular_synth"
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-gate-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        140,
                                        410,
                                        55,
                                        22
                                    ],
                                    "text": "*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "gi-gate-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        256,
                                        410,
                                        55,
                                        22
                                    ],
                                    "text": "*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gi-out-l",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        140,
                                        510,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gi-out-r",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        256,
                                        510,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gi-duration-out",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        467.3333333333333,
                                        510,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gi-position-out",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        352.11268067359924,
                                        510,
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
                                        "gi-synth",
                                        0
                                    ],
                                    "source": [
                                        "gi-adc",
                                        0
                                    ],
                                    "midpoints": [
                                        149.5,
                                        190,
                                        173,
                                        190,
                                        208,
                                        190,
                                        208,
                                        225
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
                                        "gi-duration-out",
                                        0
                                    ],
                                    "order": 2,
                                    "source": [
                                        "gi-duration",
                                        0
                                    ],
                                    "midpoints": [
                                        476.8333333333333,
                                        345,
                                        525,
                                        345,
                                        482,
                                        345
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
                                        "gi-duration-store",
                                        0
                                    ],
                                    "midpoints": [
                                        476.8333333333333,
                                        345,
                                        525,
                                        345,
                                        798,
                                        345,
                                        798,
                                        354
                                    ],
                                    "order": 0,
                                    "source": [
                                        "gi-duration",
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
                                        "gi-total-send",
                                        0
                                    ],
                                    "midpoints": [
                                        476.8333333333333,
                                        345,
                                        525,
                                        345,
                                        594,
                                        345,
                                        594,
                                        349
                                    ],
                                    "order": 1,
                                    "source": [
                                        "gi-duration",
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
                                        "gi-position-safe",
                                        1
                                    ],
                                    "source": [
                                        "gi-duration-store",
                                        0
                                    ],
                                    "midpoints": [
                                        767.5,
                                        400,
                                        798,
                                        400,
                                        900,
                                        400,
                                        900,
                                        424
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
                                        "gi-enable-msg",
                                        0
                                    ],
                                    "source": [
                                        "gi-enable",
                                        0
                                    ],
                                    "midpoints": [
                                        191,
                                        310,
                                        204,
                                        310,
                                        204,
                                        319
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
                                        "gi-gate-l",
                                        1
                                    ],
                                    "order": 1,
                                    "source": [
                                        "gi-enable-line",
                                        0
                                    ],
                                    "midpoints": [
                                        185.5,
                                        400,
                                        201,
                                        400,
                                        223,
                                        400,
                                        223,
                                        410
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
                                        "gi-gate-r",
                                        1
                                    ],
                                    "midpoints": [
                                        185.5,
                                        400,
                                        201,
                                        400,
                                        339,
                                        400,
                                        339,
                                        410
                                    ],
                                    "order": 0,
                                    "source": [
                                        "gi-enable-line",
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
                                        "gi-enable-line",
                                        0
                                    ],
                                    "source": [
                                        "gi-enable-msg",
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
                                        "gi-out-l",
                                        0
                                    ],
                                    "source": [
                                        "gi-gate-l",
                                        0
                                    ],
                                    "midpoints": [
                                        149.5,
                                        470,
                                        168,
                                        470,
                                        155,
                                        470
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
                                        "gi-out-r",
                                        0
                                    ],
                                    "source": [
                                        "gi-gate-r",
                                        0
                                    ],
                                    "midpoints": [
                                        265.5,
                                        470,
                                        284,
                                        470,
                                        271,
                                        470
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
                                        "gi-duration",
                                        0
                                    ],
                                    "source": [
                                        "gi-info",
                                        6
                                    ],
                                    "midpoints": [
                                        476.8333333333333,
                                        290,
                                        1530,
                                        290,
                                        525,
                                        290,
                                        525,
                                        296
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
                                        "gi-info",
                                        0
                                    ],
                                    "source": [
                                        "gi-info-delay",
                                        0
                                    ],
                                    "midpoints": [
                                        369.5,
                                        255,
                                        390,
                                        255,
                                        450,
                                        255,
                                        450,
                                        260
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
                                        "gi-info-delay",
                                        0
                                    ],
                                    "source": [
                                        "gi-load-trigger",
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
                                        "gi-load-send",
                                        0
                                    ],
                                    "midpoints": [
                                        400.5,
                                        215,
                                        435,
                                        215,
                                        518,
                                        215,
                                        518,
                                        225
                                    ],
                                    "source": [
                                        "gi-load-trigger",
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
                                        "gi-replace",
                                        0
                                    ],
                                    "source": [
                                        "gi-path",
                                        0
                                    ],
                                    "midpoints": [
                                        375,
                                        120,
                                        420,
                                        120,
                                        420,
                                        130
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
                                        "gi-play-send",
                                        0
                                    ],
                                    "source": [
                                        "gi-play",
                                        0
                                    ],
                                    "midpoints": [
                                        547,
                                        120,
                                        602,
                                        120,
                                        602,
                                        130
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
                                        "gi-position-safe",
                                        0
                                    ],
                                    "source": [
                                        "gi-position",
                                        0
                                    ],
                                    "midpoints": [
                                        655,
                                        420,
                                        541.5,
                                        420
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
                                        "gi-position-out",
                                        0
                                    ],
                                    "source": [
                                        "gi-position-line",
                                        0
                                    ],
                                    "midpoints": [
                                        361.61268067359924,
                                        500,
                                        397,
                                        500,
                                        367,
                                        500
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
                                        "gi-position-line",
                                        0
                                    ],
                                    "source": [
                                        "gi-position-receive",
                                        0
                                    ],
                                    "midpoints": [
                                        361.61268067359924,
                                        455,
                                        435,
                                        455,
                                        397,
                                        455,
                                        397,
                                        465
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
                                        "gi-position-send",
                                        0
                                    ],
                                    "source": [
                                        "gi-position-safe",
                                        0
                                    ],
                                    "midpoints": [
                                        541.5,
                                        455,
                                        655,
                                        455,
                                        615,
                                        455,
                                        615,
                                        465
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
                                        "gi-record-send",
                                        0
                                    ],
                                    "source": [
                                        "gi-record",
                                        0
                                    ],
                                    "midpoints": [
                                        155,
                                        145,
                                        215,
                                        145,
                                        215,
                                        180
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
                                        "gi-load-trigger",
                                        0
                                    ],
                                    "source": [
                                        "gi-replace",
                                        0
                                    ],
                                    "midpoints": [
                                        369.5,
                                        165,
                                        420,
                                        165,
                                        385,
                                        165,
                                        385,
                                        180
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
                                        "gi-gate-l",
                                        0
                                    ],
                                    "source": [
                                        "gi-synth",
                                        0
                                    ],
                                    "midpoints": [
                                        149.5,
                                        330,
                                        208,
                                        330,
                                        168,
                                        330,
                                        168,
                                        410
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
                                        "gi-gate-r",
                                        0
                                    ],
                                    "source": [
                                        "gi-synth",
                                        1
                                    ],
                                    "midpoints": [
                                        265.5,
                                        330,
                                        343,
                                        330,
                                        284,
                                        330,
                                        284,
                                        410
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-8"
                    },
                    "patching_rect": [
                        1068,
                        242,
                        130,
                        22
                    ],
                    "text": "p Granular_input"
                }
            },
            {
                "box": {
                    "id": "p-Granular-params",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 0,
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
                            1420,
                            300
                        ],
                        "gridsize": [
                            15,
                            15
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "gp-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30,
                                        25,
                                        620,
                                        20
                                    ],
                                    "text": "Granular parameters: commercial display units -> existing engine units"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gp-wet-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gp-wet-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30,
                                        190,
                                        110,
                                        22
                                    ],
                                    "text": "s mt_granular_wet"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gp-density-in",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        230,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gp-density-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        230,
                                        135,
                                        127,
                                        22
                                    ],
                                    "text": "s mt_granular_density"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gp-size-in",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        400,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gp-size-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        400,
                                        190,
                                        166,
                                        22
                                    ],
                                    "text": "s mt_granular_grain_size_pct"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gp-pitch-in",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        660,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gp-pitch-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        660,
                                        135,
                                        114,
                                        22
                                    ],
                                    "text": "s mt_granular_pitch"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gp-spray-in",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        820,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gp-spray-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        820,
                                        190,
                                        141,
                                        22
                                    ],
                                    "text": "s mt_granular_spray_pct"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gp-amp-in",
                                    "index": 6,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1060,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gp-amp-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1060,
                                        135,
                                        132,
                                        22
                                    ],
                                    "text": "s mt_granular_amp_db"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gp-makeup-in",
                                    "index": 7,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1240,
                                        80,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gp-makeup-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1240,
                                        135,
                                        142,
                                        22
                                    ],
                                    "text": "s mt_granular_output_db"
                                }
                            },
                            {
                                "box": {
                                    "id": "gp-wet-convert",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30,
                                        135,
                                        190,
                                        22
                                    ],
                                    "text": "expr $f1 / 100."
                                }
                            },
                            {
                                "box": {
                                    "id": "gp-size-convert",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        400,
                                        135,
                                        240,
                                        22
                                    ],
                                    "text": "expr 100. * log($f1 / 20.) / log(25.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "gp-spray-convert",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        820,
                                        135,
                                        210,
                                        22
                                    ],
                                    "text": "expr 100. * sqrt($f1 / 1000.)"
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
                                        "gp-amp-send",
                                        0
                                    ],
                                    "source": [
                                        "gp-amp-in",
                                        0
                                    ],
                                    "midpoints": [
                                        1075,
                                        125,
                                        1126,
                                        125,
                                        1126,
                                        135
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
                                        "gp-density-send",
                                        0
                                    ],
                                    "source": [
                                        "gp-density-in",
                                        0
                                    ],
                                    "midpoints": [
                                        245,
                                        125,
                                        294,
                                        125,
                                        294,
                                        135
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
                                        "gp-makeup-send",
                                        0
                                    ],
                                    "source": [
                                        "gp-makeup-in",
                                        0
                                    ],
                                    "midpoints": [
                                        1255,
                                        125,
                                        1311,
                                        125,
                                        1311,
                                        135
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
                                        "gp-pitch-send",
                                        0
                                    ],
                                    "source": [
                                        "gp-pitch-in",
                                        0
                                    ],
                                    "midpoints": [
                                        675,
                                        125,
                                        717,
                                        125,
                                        717,
                                        135
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
                                        "gp-size-send",
                                        0
                                    ],
                                    "source": [
                                        "gp-size-convert",
                                        0
                                    ],
                                    "midpoints": [
                                        409.5,
                                        175,
                                        520,
                                        175,
                                        483,
                                        175,
                                        483,
                                        190
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
                                        "gp-size-convert",
                                        0
                                    ],
                                    "source": [
                                        "gp-size-in",
                                        0
                                    ],
                                    "midpoints": [
                                        415,
                                        125,
                                        520,
                                        125,
                                        520,
                                        135
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
                                        "gp-spray-send",
                                        0
                                    ],
                                    "source": [
                                        "gp-spray-convert",
                                        0
                                    ],
                                    "midpoints": [
                                        829.5,
                                        175,
                                        925,
                                        175,
                                        891,
                                        175,
                                        891,
                                        190
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
                                        "gp-spray-convert",
                                        0
                                    ],
                                    "source": [
                                        "gp-spray-in",
                                        0
                                    ],
                                    "midpoints": [
                                        835,
                                        125,
                                        925,
                                        125,
                                        925,
                                        135
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
                                        "gp-wet-send",
                                        0
                                    ],
                                    "source": [
                                        "gp-wet-convert",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        175,
                                        125,
                                        175,
                                        85,
                                        175,
                                        85,
                                        190
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
                                        "gp-wet-convert",
                                        0
                                    ],
                                    "source": [
                                        "gp-wet-in",
                                        0
                                    ],
                                    "midpoints": [
                                        45,
                                        125,
                                        125,
                                        125,
                                        125,
                                        135
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-44"
                    },
                    "patching_rect": [
                        30,
                        525,
                        135,
                        22
                    ],
                    "text": "p Granular_params"
                }
            },
            {
                "box": {
                    "comment": "Granular audio L",
                    "id": "g-out-l",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1068,
                        531.3953298330307,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Granular audio R",
                    "id": "g-out-r",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1107.5348823070526,
                        531.3953298330307,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "g-wet-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        16,
                        402,
                        84,
                        18
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        16,
                        342,
                        84,
                        18
                    ],
                    "text": "Wet (%)",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "frames": 64,
                    "id": "g-wet-dial",
                    "maxclass": "pictctrl",
                    "mode": 2,
                    "multiplier": 1,
                    "name": "granular_knob_v1.png",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        36,
                        435,
                        44,
                        44
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        36,
                        365,
                        44,
                        44
                    ],
                    "range": 255,
                    "trackhorizontal": 1,
                    "tracking": 1,
                    "trackvertical": 1,
                    "varname": "granular_wet"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-wet-value",
                    "maxclass": "flonum",
                    "maximum": 100,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        90,
                        467,
                        56,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        30,
                        406,
                        56,
                        22
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "g-density-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        105,
                        342,
                        84,
                        18
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        105,
                        342,
                        84,
                        18
                    ],
                    "text": "Density (gr/s)",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "frames": 64,
                    "id": "g-density-dial",
                    "maxclass": "pictctrl",
                    "mode": 2,
                    "multiplier": 1,
                    "name": "granular_knob_v1.png",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        125,
                        405,
                        44,
                        44
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        125,
                        365,
                        44,
                        44
                    ],
                    "range": 255,
                    "trackhorizontal": 1,
                    "tracking": 1,
                    "trackvertical": 1,
                    "varname": "granular_density"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-density-value",
                    "maxclass": "flonum",
                    "maximum": 80,
                    "minimum": 1,
                    "numdecimalplaces": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        119,
                        497,
                        56,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        119,
                        406,
                        56,
                        22
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "g-size-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        194,
                        402,
                        84,
                        18
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        194,
                        342,
                        84,
                        18
                    ],
                    "text": "Size (ms)",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "frames": 64,
                    "id": "g-size-dial",
                    "maxclass": "pictctrl",
                    "mode": 2,
                    "multiplier": 1,
                    "name": "granular_knob_v1.png",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        214,
                        435,
                        44,
                        44
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        214,
                        365,
                        44,
                        44
                    ],
                    "range": 255,
                    "trackhorizontal": 1,
                    "tracking": 1,
                    "trackvertical": 1,
                    "varname": "granular_grain_size"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-size-value",
                    "maxclass": "flonum",
                    "maximum": 500,
                    "minimum": 20,
                    "numdecimalplaces": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        268,
                        467,
                        56,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        208,
                        406,
                        56,
                        22
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "g-pitch-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        343,
                        342,
                        84,
                        18
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        283,
                        342,
                        84,
                        18
                    ],
                    "text": "Pitch (st)",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "frames": 64,
                    "id": "g-pitch-dial",
                    "maxclass": "pictctrl",
                    "mode": 2,
                    "multiplier": 1,
                    "name": "granular_knob_v1.png",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        303,
                        405,
                        44,
                        44
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        303,
                        365,
                        44,
                        44
                    ],
                    "range": 255,
                    "trackhorizontal": 1,
                    "tracking": 1,
                    "trackvertical": 1,
                    "varname": "granular_pitch"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-pitch-value",
                    "maxclass": "flonum",
                    "maximum": 24,
                    "minimum": -24,
                    "numdecimalplaces": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        297,
                        497,
                        56,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        297,
                        406,
                        56,
                        22
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "g-spray-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        372,
                        402,
                        84,
                        18
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        372,
                        342,
                        84,
                        18
                    ],
                    "text": "Spray (ms)",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "frames": 64,
                    "id": "g-spray-dial",
                    "maxclass": "pictctrl",
                    "mode": 2,
                    "multiplier": 1,
                    "name": "granular_knob_v1.png",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        392,
                        435,
                        44,
                        44
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        392,
                        365,
                        44,
                        44
                    ],
                    "range": 255,
                    "trackhorizontal": 1,
                    "tracking": 1,
                    "trackvertical": 1,
                    "varname": "granular_spray"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-spray-value",
                    "maxclass": "flonum",
                    "maximum": 1000,
                    "minimum": 0,
                    "numdecimalplaces": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        446,
                        467,
                        56,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        386,
                        406,
                        56,
                        22
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "g-amp-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        506,
                        342,
                        84,
                        18
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        461,
                        342,
                        84,
                        18
                    ],
                    "text": "Grain Amp (dB)",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "frames": 64,
                    "id": "g-amp-dial",
                    "maxclass": "pictctrl",
                    "mode": 2,
                    "multiplier": 1,
                    "name": "granular_knob_gain_v1.png",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        481,
                        405,
                        44,
                        44
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        481,
                        365,
                        44,
                        44
                    ],
                    "range": 255,
                    "trackhorizontal": 1,
                    "tracking": 1,
                    "trackvertical": 1,
                    "varname": "granular_grain_amp"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-amp-value",
                    "maxclass": "flonum",
                    "maximum": -3,
                    "minimum": -60,
                    "numdecimalplaces": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        535,
                        467,
                        56,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        475,
                        406,
                        56,
                        22
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 10,
                    "id": "g-makeup-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        550,
                        372,
                        92,
                        18
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        550,
                        342,
                        92,
                        18
                    ],
                    "text": "Texture Gain (dB)",
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "frames": 64,
                    "id": "g-makeup-dial",
                    "maxclass": "pictctrl",
                    "mode": 2,
                    "multiplier": 1,
                    "name": "granular_knob_gain_v1.png",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        570,
                        405,
                        44,
                        44
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        570,
                        365,
                        44,
                        44
                    ],
                    "range": 255,
                    "trackhorizontal": 1,
                    "tracking": 1,
                    "trackvertical": 1,
                    "varname": "granular_makeup"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-makeup-value",
                    "maxclass": "flonum",
                    "maximum": 12,
                    "minimum": -60,
                    "numdecimalplaces": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        624,
                        407,
                        56,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        564,
                        406,
                        56,
                        22
                    ]
                }
            },
            {
                "box": {
                    "autofit": 1,
                    "background": 1,
                    "forceaspect": 1,
                    "id": "g-bg",
                    "ignoreclick": 1,
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        1365,
                        30,
                        720,
                        440
                    ],
                    "pic": "granular_panel_v1.png",
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        0,
                        720,
                        440
                    ]
                }
            },
            {
                "box": {
                    "id": "p-Granular-knob-map",
                    "maxclass": "newobj",
                    "numinlets": 14,
                    "numoutlets": 14,
                    "outlettype": [
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
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
                            34,
                            173,
                            1732,
                            590
                        ],
                        "gridsize": [
                            15,
                            15
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "gkm-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        25,
                                        20,
                                        820,
                                        20
                                    ],
                                    "text": "Granular knob map: pictctrl range 255 outputs 0-254; set paths do not output"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-wet-raw-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
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
                                    "id": "gkm-wet-value-in",
                                    "index": 8,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1000,
                                        250,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-wet-raw-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        25,
                                        115,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0 254"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-wet-to-value",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        25,
                                        160,
                                        125,
                                        22
                                    ],
                                    "text": "scale 0 254 0. 100."
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-wet-value-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1000,
                                        295,
                                        100,
                                        22
                                    ],
                                    "text": "clip 0. 100."
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-wet-to-raw",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1000,
                                        340,
                                        125,
                                        22
                                    ],
                                    "text": "scale 0. 100. 0 254"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-wet-raw-int",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        1000,
                                        385,
                                        35,
                                        22
                                    ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-wet-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1000,
                                        430,
                                        90,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-wet-value-out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        25,
                                        500,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-wet-set-out",
                                    "index": 8,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1000,
                                        500,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-density-raw-in",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        160,
                                        70,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-density-value-in",
                                    "index": 9,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1135,
                                        250,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-density-raw-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        160,
                                        115,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0 254"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-density-to-value",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        160,
                                        160,
                                        125,
                                        22
                                    ],
                                    "text": "scale 0 254 1. 80."
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-density-value-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1135,
                                        295,
                                        100,
                                        22
                                    ],
                                    "text": "clip 1. 80."
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-density-to-raw",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1135,
                                        340,
                                        125,
                                        22
                                    ],
                                    "text": "scale 1. 80. 0 254"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-density-raw-int",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        1135,
                                        385,
                                        35,
                                        22
                                    ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-density-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1135,
                                        430,
                                        90,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-density-value-out",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        160,
                                        500,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-density-set-out",
                                    "index": 9,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1135,
                                        500,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-size-raw-in",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        295,
                                        70,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-size-value-in",
                                    "index": 10,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1270,
                                        250,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-size-raw-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        295,
                                        115,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0 254"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-size-to-value",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        295,
                                        160,
                                        167,
                                        22
                                    ],
                                    "text": "expr 20. * pow(25.\\, $f1 / 254.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-size-value-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1270,
                                        295,
                                        100,
                                        22
                                    ],
                                    "text": "clip 20. 500."
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-size-to-raw",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1270,
                                        340,
                                        188,
                                        22
                                    ],
                                    "text": "expr 254. * log($f1 / 20.) / log(25.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-size-raw-int",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        1270,
                                        385,
                                        35,
                                        22
                                    ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-size-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1270,
                                        430,
                                        90,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-size-value-out",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        295,
                                        500,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-size-set-out",
                                    "index": 10,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1270,
                                        500,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-pitch-raw-in",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        430,
                                        70,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-pitch-value-in",
                                    "index": 11,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1405,
                                        250,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-pitch-raw-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        430,
                                        115,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0 254"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-pitch-to-value",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        430,
                                        190,
                                        125,
                                        22
                                    ],
                                    "text": "scale 0 254 -24. 24."
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-pitch-value-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1405,
                                        295,
                                        100,
                                        22
                                    ],
                                    "text": "clip -24. 24."
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-pitch-to-raw",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1405,
                                        370,
                                        125,
                                        22
                                    ],
                                    "text": "scale -24. 24. 0 254"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-pitch-raw-int",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        1405,
                                        400,
                                        35,
                                        22
                                    ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-pitch-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1405,
                                        430,
                                        90,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-pitch-value-out",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        430,
                                        500,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-pitch-set-out",
                                    "index": 11,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1405,
                                        500,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-spray-raw-in",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        565,
                                        70,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-spray-value-in",
                                    "index": 12,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1540,
                                        250,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-spray-raw-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        565,
                                        115,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0 254"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-spray-to-value",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        565,
                                        160,
                                        173,
                                        22
                                    ],
                                    "text": "expr pow($f1 / 254.\\, 2.) * 1000."
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-spray-value-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1540,
                                        295,
                                        100,
                                        22
                                    ],
                                    "text": "clip 0. 1000."
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-spray-to-raw",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1540,
                                        340,
                                        155,
                                        22
                                    ],
                                    "text": "expr 254. * sqrt($f1 / 1000.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-spray-raw-int",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        1540,
                                        385,
                                        35,
                                        22
                                    ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-spray-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1540,
                                        430,
                                        90,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-spray-value-out",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        565,
                                        500,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-spray-set-out",
                                    "index": 12,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1540,
                                        500,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-amp-raw-in",
                                    "index": 6,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        700,
                                        70,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-amp-value-in",
                                    "index": 13,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1675,
                                        250,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-amp-raw-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        700,
                                        115,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0 254"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-amp-to-value",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        700,
                                        190,
                                        125,
                                        22
                                    ],
                                    "text": "scale 0 254 -60. -3."
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-amp-value-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1675,
                                        295,
                                        100,
                                        22
                                    ],
                                    "text": "clip -60. -3."
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-amp-to-raw",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1675,
                                        370,
                                        125,
                                        22
                                    ],
                                    "text": "scale -60. -3. 0 254"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-amp-raw-int",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        1675,
                                        400,
                                        35,
                                        22
                                    ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-amp-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1675,
                                        430,
                                        90,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-amp-value-out",
                                    "index": 6,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        700,
                                        500,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-amp-set-out",
                                    "index": 13,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1675,
                                        500,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-makeup-raw-in",
                                    "index": 7,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        835,
                                        70,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-makeup-value-in",
                                    "index": 14,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1810,
                                        250,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-makeup-raw-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        835,
                                        115,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0 254"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-makeup-to-value",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        835,
                                        160,
                                        125,
                                        22
                                    ],
                                    "text": "scale 0 254 -60. 12."
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-makeup-value-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1810,
                                        295,
                                        100,
                                        22
                                    ],
                                    "text": "clip -60. 12."
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-makeup-to-raw",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1810,
                                        340,
                                        125,
                                        22
                                    ],
                                    "text": "scale -60. 12. 0 254"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-makeup-raw-int",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        1810,
                                        385,
                                        35,
                                        22
                                    ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "gkm-makeup-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1810,
                                        430,
                                        90,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-makeup-value-out",
                                    "index": 7,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        835,
                                        500,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "gkm-makeup-set-out",
                                    "index": 14,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1810,
                                        500,
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
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "gkm-amp-to-value",
                                        0
                                    ],
                                    "source": [
                                        "gkm-amp-raw-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        709.5,
                                        165,
                                        740,
                                        165,
                                        763,
                                        165,
                                        763,
                                        190
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
                                        "gkm-amp-raw-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-amp-raw-in",
                                        0
                                    ],
                                    "midpoints": [
                                        715,
                                        110,
                                        740,
                                        110,
                                        740,
                                        115
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
                                        "gkm-amp-set",
                                        0
                                    ],
                                    "source": [
                                        "gkm-amp-raw-int",
                                        0
                                    ],
                                    "midpoints": [
                                        1684.5,
                                        420,
                                        1693,
                                        420,
                                        1720,
                                        420,
                                        1720,
                                        430
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
                                        "gkm-amp-set-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-amp-set",
                                        0
                                    ],
                                    "midpoints": [
                                        1684.5,
                                        475,
                                        1720,
                                        475,
                                        1690,
                                        475
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
                                        "gkm-amp-raw-int",
                                        0
                                    ],
                                    "source": [
                                        "gkm-amp-to-raw",
                                        0
                                    ],
                                    "midpoints": [
                                        1684.5,
                                        395,
                                        1738,
                                        395,
                                        1693,
                                        395,
                                        1693,
                                        400
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
                                        "gkm-amp-value-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-amp-to-value",
                                        0
                                    ],
                                    "midpoints": [
                                        709.5,
                                        340,
                                        763,
                                        340,
                                        715,
                                        340
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
                                        "gkm-amp-to-raw",
                                        0
                                    ],
                                    "source": [
                                        "gkm-amp-value-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1684.5,
                                        340,
                                        1725,
                                        340,
                                        1738,
                                        340,
                                        1738,
                                        370
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
                                        "gkm-amp-value-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-amp-value-in",
                                        0
                                    ],
                                    "midpoints": [
                                        1690,
                                        290,
                                        1725,
                                        290,
                                        1725,
                                        295
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
                                        "gkm-density-to-value",
                                        0
                                    ],
                                    "source": [
                                        "gkm-density-raw-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        169.5,
                                        150,
                                        200,
                                        150,
                                        223,
                                        150,
                                        223,
                                        160
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
                                        "gkm-density-raw-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-density-raw-in",
                                        0
                                    ],
                                    "midpoints": [
                                        175,
                                        110,
                                        200,
                                        110,
                                        200,
                                        115
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
                                        "gkm-density-set",
                                        0
                                    ],
                                    "source": [
                                        "gkm-density-raw-int",
                                        0
                                    ],
                                    "midpoints": [
                                        1144.5,
                                        420,
                                        1153,
                                        420,
                                        1180,
                                        420,
                                        1180,
                                        430
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
                                        "gkm-density-set-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-density-set",
                                        0
                                    ],
                                    "midpoints": [
                                        1144.5,
                                        475,
                                        1180,
                                        475,
                                        1150,
                                        475
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
                                        "gkm-density-raw-int",
                                        0
                                    ],
                                    "source": [
                                        "gkm-density-to-raw",
                                        0
                                    ],
                                    "midpoints": [
                                        1144.5,
                                        375,
                                        1198,
                                        375,
                                        1153,
                                        375,
                                        1153,
                                        385
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
                                        "gkm-density-value-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-density-to-value",
                                        0
                                    ],
                                    "midpoints": [
                                        169.5,
                                        340,
                                        223,
                                        340,
                                        175,
                                        340
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
                                        "gkm-density-to-raw",
                                        0
                                    ],
                                    "source": [
                                        "gkm-density-value-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1144.5,
                                        340,
                                        1185,
                                        340,
                                        1198,
                                        340
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
                                        "gkm-density-value-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-density-value-in",
                                        0
                                    ],
                                    "midpoints": [
                                        1150,
                                        290,
                                        1185,
                                        290,
                                        1185,
                                        295
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
                                        "gkm-makeup-to-value",
                                        0
                                    ],
                                    "source": [
                                        "gkm-makeup-raw-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        844.5,
                                        150,
                                        875,
                                        150,
                                        898,
                                        150,
                                        898,
                                        160
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
                                        "gkm-makeup-raw-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-makeup-raw-in",
                                        0
                                    ],
                                    "midpoints": [
                                        850,
                                        110,
                                        875,
                                        110,
                                        875,
                                        115
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
                                        "gkm-makeup-set",
                                        0
                                    ],
                                    "source": [
                                        "gkm-makeup-raw-int",
                                        0
                                    ],
                                    "midpoints": [
                                        1819.5,
                                        420,
                                        1828,
                                        420,
                                        1855,
                                        420,
                                        1855,
                                        430
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
                                        "gkm-makeup-set-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-makeup-set",
                                        0
                                    ],
                                    "midpoints": [
                                        1819.5,
                                        475,
                                        1855,
                                        475,
                                        1825,
                                        475
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
                                        "gkm-makeup-raw-int",
                                        0
                                    ],
                                    "source": [
                                        "gkm-makeup-to-raw",
                                        0
                                    ],
                                    "midpoints": [
                                        1819.5,
                                        375,
                                        1873,
                                        375,
                                        1828,
                                        375,
                                        1828,
                                        385
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
                                        "gkm-makeup-value-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-makeup-to-value",
                                        0
                                    ],
                                    "midpoints": [
                                        844.5,
                                        340,
                                        898,
                                        340,
                                        850,
                                        340
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
                                        "gkm-makeup-to-raw",
                                        0
                                    ],
                                    "source": [
                                        "gkm-makeup-value-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1819.5,
                                        340,
                                        1860,
                                        340,
                                        1873,
                                        340
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
                                        "gkm-makeup-value-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-makeup-value-in",
                                        0
                                    ],
                                    "midpoints": [
                                        1825,
                                        290,
                                        1860,
                                        290,
                                        1860,
                                        295
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
                                        "gkm-pitch-to-value",
                                        0
                                    ],
                                    "source": [
                                        "gkm-pitch-raw-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        439.5,
                                        165,
                                        470,
                                        165,
                                        493,
                                        165,
                                        493,
                                        190
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
                                        "gkm-pitch-raw-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-pitch-raw-in",
                                        0
                                    ],
                                    "midpoints": [
                                        445,
                                        110,
                                        470,
                                        110,
                                        470,
                                        115
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
                                        "gkm-pitch-set",
                                        0
                                    ],
                                    "source": [
                                        "gkm-pitch-raw-int",
                                        0
                                    ],
                                    "midpoints": [
                                        1414.5,
                                        420,
                                        1423,
                                        420,
                                        1450,
                                        420,
                                        1450,
                                        430
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
                                        "gkm-pitch-set-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-pitch-set",
                                        0
                                    ],
                                    "midpoints": [
                                        1414.5,
                                        475,
                                        1450,
                                        475,
                                        1420,
                                        475
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
                                        "gkm-pitch-raw-int",
                                        0
                                    ],
                                    "source": [
                                        "gkm-pitch-to-raw",
                                        0
                                    ],
                                    "midpoints": [
                                        1414.5,
                                        395,
                                        1468,
                                        395,
                                        1423,
                                        395,
                                        1423,
                                        400
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
                                        "gkm-pitch-value-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-pitch-to-value",
                                        0
                                    ],
                                    "midpoints": [
                                        439.5,
                                        340,
                                        493,
                                        340,
                                        445,
                                        340
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
                                        "gkm-pitch-to-raw",
                                        0
                                    ],
                                    "source": [
                                        "gkm-pitch-value-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1414.5,
                                        340,
                                        1455,
                                        340,
                                        1468,
                                        340,
                                        1468,
                                        370
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
                                        "gkm-pitch-value-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-pitch-value-in",
                                        0
                                    ],
                                    "midpoints": [
                                        1420,
                                        290,
                                        1455,
                                        290,
                                        1455,
                                        295
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
                                        "gkm-size-to-value",
                                        0
                                    ],
                                    "source": [
                                        "gkm-size-raw-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        304.5,
                                        150,
                                        335,
                                        150,
                                        379,
                                        150,
                                        379,
                                        160
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
                                        "gkm-size-raw-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-size-raw-in",
                                        0
                                    ],
                                    "midpoints": [
                                        310,
                                        110,
                                        335,
                                        110,
                                        335,
                                        115
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
                                        "gkm-size-set",
                                        0
                                    ],
                                    "source": [
                                        "gkm-size-raw-int",
                                        0
                                    ],
                                    "midpoints": [
                                        1279.5,
                                        420,
                                        1288,
                                        420,
                                        1315,
                                        420,
                                        1315,
                                        430
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
                                        "gkm-size-set-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-size-set",
                                        0
                                    ],
                                    "midpoints": [
                                        1279.5,
                                        475,
                                        1315,
                                        475,
                                        1285,
                                        475
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
                                        "gkm-size-raw-int",
                                        0
                                    ],
                                    "source": [
                                        "gkm-size-to-raw",
                                        0
                                    ],
                                    "midpoints": [
                                        1279.5,
                                        375,
                                        1364,
                                        375,
                                        1288,
                                        375,
                                        1288,
                                        385
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
                                        "gkm-size-value-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-size-to-value",
                                        0
                                    ],
                                    "midpoints": [
                                        304.5,
                                        340,
                                        379,
                                        340,
                                        310,
                                        340
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
                                        "gkm-size-to-raw",
                                        0
                                    ],
                                    "source": [
                                        "gkm-size-value-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1279.5,
                                        340,
                                        1320,
                                        340,
                                        1364,
                                        340
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
                                        "gkm-size-value-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-size-value-in",
                                        0
                                    ],
                                    "midpoints": [
                                        1285,
                                        290,
                                        1320,
                                        290,
                                        1320,
                                        295
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
                                        "gkm-spray-to-value",
                                        0
                                    ],
                                    "source": [
                                        "gkm-spray-raw-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        574.5,
                                        150,
                                        605,
                                        150,
                                        652,
                                        150,
                                        652,
                                        160
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
                                        "gkm-spray-raw-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-spray-raw-in",
                                        0
                                    ],
                                    "midpoints": [
                                        580,
                                        110,
                                        605,
                                        110,
                                        605,
                                        115
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
                                        "gkm-spray-set",
                                        0
                                    ],
                                    "source": [
                                        "gkm-spray-raw-int",
                                        0
                                    ],
                                    "midpoints": [
                                        1549.5,
                                        420,
                                        1558,
                                        420,
                                        1585,
                                        420,
                                        1585,
                                        430
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
                                        "gkm-spray-set-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-spray-set",
                                        0
                                    ],
                                    "midpoints": [
                                        1549.5,
                                        475,
                                        1585,
                                        475,
                                        1555,
                                        475
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
                                        "gkm-spray-raw-int",
                                        0
                                    ],
                                    "source": [
                                        "gkm-spray-to-raw",
                                        0
                                    ],
                                    "midpoints": [
                                        1549.5,
                                        375,
                                        1618,
                                        375,
                                        1558,
                                        375,
                                        1558,
                                        385
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
                                        "gkm-spray-value-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-spray-to-value",
                                        0
                                    ],
                                    "midpoints": [
                                        574.5,
                                        340,
                                        652,
                                        340,
                                        580,
                                        340
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
                                        "gkm-spray-to-raw",
                                        0
                                    ],
                                    "source": [
                                        "gkm-spray-value-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1549.5,
                                        340,
                                        1590,
                                        340,
                                        1618,
                                        340
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
                                        "gkm-spray-value-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-spray-value-in",
                                        0
                                    ],
                                    "midpoints": [
                                        1555,
                                        290,
                                        1590,
                                        290,
                                        1590,
                                        295
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
                                        "gkm-wet-to-value",
                                        0
                                    ],
                                    "source": [
                                        "gkm-wet-raw-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        34.5,
                                        150,
                                        65,
                                        150,
                                        88,
                                        150,
                                        88,
                                        160
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
                                        "gkm-wet-raw-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-wet-raw-in",
                                        0
                                    ],
                                    "midpoints": [
                                        40,
                                        110,
                                        65,
                                        110,
                                        65,
                                        115
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
                                        "gkm-wet-set",
                                        0
                                    ],
                                    "source": [
                                        "gkm-wet-raw-int",
                                        0
                                    ],
                                    "midpoints": [
                                        1009.5,
                                        420,
                                        1018,
                                        420,
                                        1045,
                                        420,
                                        1045,
                                        430
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
                                        "gkm-wet-set-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-wet-set",
                                        0
                                    ],
                                    "midpoints": [
                                        1009.5,
                                        475,
                                        1045,
                                        475,
                                        1015,
                                        475
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
                                        "gkm-wet-raw-int",
                                        0
                                    ],
                                    "source": [
                                        "gkm-wet-to-raw",
                                        0
                                    ],
                                    "midpoints": [
                                        1009.5,
                                        375,
                                        1063,
                                        375,
                                        1018,
                                        375,
                                        1018,
                                        385
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
                                        "gkm-wet-value-out",
                                        0
                                    ],
                                    "source": [
                                        "gkm-wet-to-value",
                                        0
                                    ],
                                    "midpoints": [
                                        34.5,
                                        340,
                                        88,
                                        340,
                                        40,
                                        340
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
                                        "gkm-wet-to-raw",
                                        0
                                    ],
                                    "source": [
                                        "gkm-wet-value-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1009.5,
                                        340,
                                        1050,
                                        340,
                                        1063,
                                        340
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
                                        "gkm-wet-value-clip",
                                        0
                                    ],
                                    "source": [
                                        "gkm-wet-value-in",
                                        0
                                    ],
                                    "midpoints": [
                                        1015,
                                        290,
                                        1050,
                                        290,
                                        1050,
                                        295
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-46"
                    },
                    "patching_rect": [
                        877,
                        360,
                        165,
                        22
                    ],
                    "text": "p Granular_knob_map"
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
                        "p-Granular-knob-map",
                        5
                    ],
                    "midpoints": [
                        490.5,
                        475,
                        503,
                        475,
                        1785,
                        475,
                        1785,
                        360
                    ],
                    "source": [
                        "g-amp-dial",
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
                        "p-Granular-knob-map",
                        12
                    ],
                    "midpoints": [
                        544.5,
                        510,
                        563,
                        510,
                        2940,
                        510,
                        2940,
                        360
                    ],
                    "order": 0,
                    "source": [
                        "g-amp-value",
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
                        "p-Granular-params",
                        5
                    ],
                    "midpoints": [
                        544.5,
                        510,
                        563,
                        510,
                        773,
                        510,
                        773,
                        525
                    ],
                    "order": 1,
                    "source": [
                        "g-amp-value",
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
                        "p-Granular-knob-map",
                        1
                    ],
                    "midpoints": [
                        134.5,
                        475,
                        147,
                        475,
                        1125,
                        475,
                        1125,
                        360
                    ],
                    "source": [
                        "g-density-dial",
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
                        "p-Granular-knob-map",
                        8
                    ],
                    "midpoints": [
                        128.5,
                        545,
                        147,
                        545,
                        2280,
                        545,
                        2280,
                        360
                    ],
                    "order": 0,
                    "source": [
                        "g-density-value",
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
                        "p-Granular-params",
                        1
                    ],
                    "midpoints": [
                        128.5,
                        545,
                        147,
                        545,
                        233,
                        545,
                        233,
                        525
                    ],
                    "order": 1,
                    "source": [
                        "g-density-value",
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
                        "p-Granular-control",
                        4
                    ],
                    "midpoints": [
                        283.5,
                        150,
                        338,
                        150,
                        1691,
                        150,
                        1691,
                        192
                    ],
                    "source": [
                        "g-drop",
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
                        "p-Granular-control",
                        1
                    ],
                    "midpoints": [
                        42,
                        150,
                        1271,
                        150,
                        1271,
                        192
                    ],
                    "source": [
                        "g-enable",
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
                        "p-Granular-control",
                        0
                    ],
                    "source": [
                        "g-ext-enable",
                        0
                    ],
                    "midpoints": [
                        1076,
                        175,
                        1131,
                        175,
                        1131,
                        192
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
                        "g-out-l",
                        0
                    ],
                    "source": [
                        "g-gain",
                        0
                    ],
                    "midpoints": [
                        1077.5,
                        510,
                        1095,
                        510,
                        1083,
                        510
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
                        "g-out-r",
                        0
                    ],
                    "midpoints": [
                        1086.25,
                        510,
                        1149,
                        510,
                        1123,
                        510
                    ],
                    "source": [
                        "g-gain",
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
                        "g-open",
                        0
                    ],
                    "midpoints": [
                        437,
                        125,
                        1187,
                        125,
                        1187,
                        146
                    ],
                    "source": [
                        "g-load",
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
                        "p-Granular-knob-map",
                        6
                    ],
                    "midpoints": [
                        579.5,
                        475,
                        592,
                        475,
                        1950,
                        475,
                        1950,
                        360
                    ],
                    "source": [
                        "g-makeup-dial",
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
                        "p-Granular-knob-map",
                        13
                    ],
                    "midpoints": [
                        633.5,
                        455,
                        652,
                        455,
                        3105,
                        455,
                        3105,
                        360
                    ],
                    "order": 0,
                    "source": [
                        "g-makeup-value",
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
                        "p-Granular-params",
                        6
                    ],
                    "midpoints": [
                        633.5,
                        455,
                        652,
                        455,
                        908,
                        455,
                        908,
                        525
                    ],
                    "order": 1,
                    "source": [
                        "g-makeup-value",
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
                        "p-Granular-control",
                        4
                    ],
                    "source": [
                        "g-open",
                        0
                    ],
                    "midpoints": [
                        1151.5,
                        175,
                        1187,
                        175,
                        1691,
                        175,
                        1691,
                        192
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
                        "p-Granular-knob-map",
                        3
                    ],
                    "midpoints": [
                        312.5,
                        475,
                        325,
                        475,
                        1455,
                        475,
                        1455,
                        360
                    ],
                    "source": [
                        "g-pitch-dial",
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
                        "p-Granular-knob-map",
                        10
                    ],
                    "midpoints": [
                        306.5,
                        545,
                        325,
                        545,
                        2610,
                        545,
                        2610,
                        360
                    ],
                    "order": 0,
                    "source": [
                        "g-pitch-value",
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
                        "p-Granular-params",
                        3
                    ],
                    "midpoints": [
                        306.5,
                        545,
                        325,
                        545,
                        503,
                        545,
                        503,
                        525
                    ],
                    "order": 1,
                    "source": [
                        "g-pitch-value",
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
                        "p-Granular-control",
                        3
                    ],
                    "midpoints": [
                        202,
                        150,
                        1551,
                        150,
                        1551,
                        192
                    ],
                    "source": [
                        "g-play",
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
                        "p-Granular-control",
                        5
                    ],
                    "midpoints": [
                        493.5,
                        150,
                        549,
                        150,
                        1831,
                        150,
                        1831,
                        192
                    ],
                    "source": [
                        "g-preset",
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
                        "p-Granular-control",
                        2
                    ],
                    "midpoints": [
                        116,
                        150,
                        1411,
                        150,
                        1411,
                        192
                    ],
                    "source": [
                        "g-record",
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
                        "p-Granular-knob-map",
                        2
                    ],
                    "midpoints": [
                        223.5,
                        510,
                        236,
                        510,
                        1290,
                        510,
                        1290,
                        360
                    ],
                    "source": [
                        "g-size-dial",
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
                        "p-Granular-knob-map",
                        9
                    ],
                    "midpoints": [
                        277.5,
                        510,
                        296,
                        510,
                        2445,
                        510,
                        2445,
                        360
                    ],
                    "order": 0,
                    "source": [
                        "g-size-value",
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
                        "p-Granular-params",
                        2
                    ],
                    "midpoints": [
                        277.5,
                        510,
                        296,
                        510,
                        368,
                        510,
                        368,
                        525
                    ],
                    "order": 1,
                    "source": [
                        "g-size-value",
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
                        "p-Granular-knob-map",
                        4
                    ],
                    "midpoints": [
                        401.5,
                        510,
                        414,
                        510,
                        1620,
                        510,
                        1620,
                        360
                    ],
                    "source": [
                        "g-spray-dial",
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
                        "p-Granular-knob-map",
                        11
                    ],
                    "midpoints": [
                        455.5,
                        510,
                        474,
                        510,
                        2775,
                        510,
                        2775,
                        360
                    ],
                    "order": 0,
                    "source": [
                        "g-spray-value",
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
                        "p-Granular-params",
                        4
                    ],
                    "midpoints": [
                        455.5,
                        510,
                        474,
                        510,
                        638,
                        510,
                        638,
                        525
                    ],
                    "order": 1,
                    "source": [
                        "g-spray-value",
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
                        "p-Granular-input",
                        4
                    ],
                    "midpoints": [
                        267.9,
                        345,
                        1568,
                        345,
                        1653,
                        345,
                        1653,
                        242
                    ],
                    "source": [
                        "g-waveform",
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
                        "p-Granular-knob-map",
                        0
                    ],
                    "midpoints": [
                        45.5,
                        510,
                        58,
                        510,
                        960,
                        510,
                        960,
                        360
                    ],
                    "source": [
                        "g-wet-dial",
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
                        "p-Granular-knob-map",
                        7
                    ],
                    "midpoints": [
                        99.5,
                        510,
                        118,
                        510,
                        2115,
                        510,
                        2115,
                        360
                    ],
                    "order": 0,
                    "source": [
                        "g-wet-value",
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
                        "p-Granular-params",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "g-wet-value",
                        0
                    ],
                    "midpoints": [
                        99.5,
                        510,
                        118,
                        510,
                        98,
                        510,
                        98,
                        525
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
                        "g-amp-value",
                        0
                    ],
                    "midpoints": [
                        1184.3823529411766,
                        345,
                        3371,
                        345,
                        563,
                        345,
                        563,
                        467
                    ],
                    "source": [
                        "p-Granular-control",
                        16
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
                        "g-density-value",
                        0
                    ],
                    "midpoints": [
                        1155.9117647058824,
                        345,
                        2811,
                        345,
                        147,
                        345,
                        147,
                        497
                    ],
                    "source": [
                        "p-Granular-control",
                        12
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
                        "g-duration",
                        0
                    ],
                    "midpoints": [
                        1134.5588235294117,
                        290,
                        2391,
                        290,
                        487,
                        290,
                        487,
                        370
                    ],
                    "source": [
                        "p-Granular-control",
                        9
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
                        "g-enable",
                        0
                    ],
                    "midpoints": [
                        1098.9705882352941,
                        235,
                        1691,
                        235,
                        42,
                        235
                    ],
                    "source": [
                        "p-Granular-control",
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
                        "g-file",
                        0
                    ],
                    "midpoints": [
                        1120.3235294117646,
                        290,
                        2111,
                        290,
                        137,
                        290,
                        137,
                        370
                    ],
                    "source": [
                        "p-Granular-control",
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
                        "g-gain",
                        0
                    ],
                    "midpoints": [
                        1141.6764705882354,
                        235,
                        2531,
                        235,
                        1095,
                        235,
                        1095,
                        284.88371074199677
                    ],
                    "source": [
                        "p-Granular-control",
                        10
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
                        "g-makeup-value",
                        0
                    ],
                    "midpoints": [
                        1191.5,
                        310,
                        3511,
                        310,
                        652,
                        310,
                        652,
                        407
                    ],
                    "source": [
                        "p-Granular-control",
                        17
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
                        "g-pitch-value",
                        0
                    ],
                    "midpoints": [
                        1170.1470588235295,
                        345,
                        3091,
                        345,
                        325,
                        345,
                        325,
                        497
                    ],
                    "source": [
                        "p-Granular-control",
                        14
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
                        "g-play",
                        0
                    ],
                    "midpoints": [
                        1113.2058823529412,
                        235,
                        1971,
                        235,
                        202,
                        235
                    ],
                    "source": [
                        "p-Granular-control",
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
                        "g-record",
                        0
                    ],
                    "midpoints": [
                        1106.0882352941176,
                        235,
                        1831,
                        235,
                        116,
                        235
                    ],
                    "source": [
                        "p-Granular-control",
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
                        "g-size-value",
                        0
                    ],
                    "midpoints": [
                        1163.0294117647059,
                        345,
                        2951,
                        345,
                        296,
                        345,
                        296,
                        467
                    ],
                    "source": [
                        "p-Granular-control",
                        13
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
                        "g-spray-value",
                        0
                    ],
                    "midpoints": [
                        1177.264705882353,
                        345,
                        3231,
                        345,
                        474,
                        345,
                        474,
                        467
                    ],
                    "source": [
                        "p-Granular-control",
                        15
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
                        "g-status",
                        0
                    ],
                    "midpoints": [
                        1127.4411764705883,
                        290,
                        2251,
                        290,
                        338,
                        290,
                        338,
                        370
                    ],
                    "source": [
                        "p-Granular-control",
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
                        "g-wet-value",
                        0
                    ],
                    "midpoints": [
                        1148.7941176470588,
                        345,
                        2671,
                        345,
                        118,
                        345,
                        118,
                        467
                    ],
                    "source": [
                        "p-Granular-control",
                        11
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
                        "p-Granular-input",
                        2
                    ],
                    "midpoints": [
                        1091.8529411764705,
                        235,
                        1551,
                        235,
                        1393,
                        235,
                        1393,
                        242
                    ],
                    "source": [
                        "p-Granular-control",
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
                        "p-Granular-input",
                        3
                    ],
                    "midpoints": [
                        1084.735294117647,
                        235,
                        1411,
                        235,
                        1523,
                        235,
                        1523,
                        242
                    ],
                    "source": [
                        "p-Granular-control",
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
                        "p-Granular-input",
                        0
                    ],
                    "source": [
                        "p-Granular-control",
                        1
                    ],
                    "midpoints": [
                        1077.6176470588234,
                        235,
                        1271,
                        235,
                        1133,
                        235,
                        1133,
                        242
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
                        "p-Granular-input",
                        1
                    ],
                    "midpoints": [
                        1070.5,
                        235,
                        1131,
                        235,
                        1263,
                        235,
                        1263,
                        242
                    ],
                    "source": [
                        "p-Granular-control",
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
                        "g-gain",
                        1
                    ],
                    "midpoints": [
                        1114.5,
                        275,
                        1263,
                        275,
                        1149,
                        275,
                        1149,
                        284.88371074199677
                    ],
                    "source": [
                        "p-Granular-input",
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
                        "g-gain",
                        0
                    ],
                    "source": [
                        "p-Granular-input",
                        0
                    ],
                    "midpoints": [
                        1077.5,
                        275,
                        1133,
                        275,
                        1095,
                        275,
                        1095,
                        284.88371074199677
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
                        "g-waveform",
                        0
                    ],
                    "midpoints": [
                        1151.5,
                        290,
                        1393,
                        290,
                        328,
                        290,
                        328,
                        162
                    ],
                    "source": [
                        "p-Granular-input",
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
                        "p-Granular-control",
                        6
                    ],
                    "source": [
                        "p-Granular-input",
                        3
                    ],
                    "midpoints": [
                        1188.5,
                        290,
                        1523,
                        290,
                        1971,
                        290,
                        1971,
                        192
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
                        "g-amp-dial",
                        0
                    ],
                    "midpoints": [
                        1021.2692307692307,
                        400,
                        2940,
                        400,
                        503,
                        400,
                        503,
                        405
                    ],
                    "source": [
                        "p-Granular-knob-map",
                        12
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
                        "g-amp-value",
                        0
                    ],
                    "midpoints": [
                        942.6538461538462,
                        425,
                        1785,
                        425,
                        563,
                        425,
                        563,
                        467
                    ],
                    "source": [
                        "p-Granular-knob-map",
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
                        "g-density-dial",
                        0
                    ],
                    "midpoints": [
                        976.3461538461538,
                        400,
                        2280,
                        400,
                        147,
                        400,
                        147,
                        405
                    ],
                    "source": [
                        "p-Granular-knob-map",
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
                        "g-density-value",
                        0
                    ],
                    "midpoints": [
                        897.7307692307693,
                        440,
                        1125,
                        440,
                        147,
                        440,
                        147,
                        497
                    ],
                    "source": [
                        "p-Granular-knob-map",
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
                        "g-makeup-dial",
                        0
                    ],
                    "midpoints": [
                        1032.5,
                        400,
                        3105,
                        400,
                        592,
                        400,
                        592,
                        405
                    ],
                    "source": [
                        "p-Granular-knob-map",
                        13
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
                        "g-makeup-value",
                        0
                    ],
                    "midpoints": [
                        953.8846153846154,
                        400,
                        1950,
                        400,
                        652,
                        400,
                        652,
                        407
                    ],
                    "source": [
                        "p-Granular-knob-map",
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
                        "g-pitch-dial",
                        0
                    ],
                    "midpoints": [
                        998.8076923076923,
                        400,
                        2610,
                        400,
                        325,
                        400,
                        325,
                        405
                    ],
                    "source": [
                        "p-Granular-knob-map",
                        10
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
                        "g-pitch-value",
                        0
                    ],
                    "midpoints": [
                        920.1923076923077,
                        440,
                        1455,
                        440,
                        325,
                        440,
                        325,
                        497
                    ],
                    "source": [
                        "p-Granular-knob-map",
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
                        "g-size-dial",
                        0
                    ],
                    "midpoints": [
                        987.5769230769231,
                        400,
                        2445,
                        400,
                        236,
                        400,
                        236,
                        435
                    ],
                    "source": [
                        "p-Granular-knob-map",
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
                        "g-size-value",
                        0
                    ],
                    "midpoints": [
                        908.9615384615385,
                        425,
                        1290,
                        425,
                        296,
                        425,
                        296,
                        467
                    ],
                    "source": [
                        "p-Granular-knob-map",
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
                        "g-spray-dial",
                        0
                    ],
                    "midpoints": [
                        1010.0384615384615,
                        400,
                        2775,
                        400,
                        414,
                        400,
                        414,
                        435
                    ],
                    "source": [
                        "p-Granular-knob-map",
                        11
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
                        "g-spray-value",
                        0
                    ],
                    "midpoints": [
                        931.4230769230769,
                        425,
                        1620,
                        425,
                        474,
                        425,
                        474,
                        467
                    ],
                    "source": [
                        "p-Granular-knob-map",
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
                        "g-wet-dial",
                        0
                    ],
                    "midpoints": [
                        965.1153846153846,
                        400,
                        2115,
                        400,
                        58,
                        400,
                        58,
                        435
                    ],
                    "source": [
                        "p-Granular-knob-map",
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
                        "g-wet-value",
                        0
                    ],
                    "midpoints": [
                        886.5,
                        425,
                        960,
                        425,
                        118,
                        425,
                        118,
                        467
                    ],
                    "source": [
                        "p-Granular-knob-map",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-4",
        "parameters": {
            "g-drop": [
                "granular_drop",
                "granular_drop",
                0
            ],
            "g-gain": [
                "granular_output_gain",
                "Granular Input",
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
                "name": "granular_knob_v1.png",
                "patcherrelativepath": ".",
                "type": "PNG",
                "implicit": 1
            },
            {
                "name": "granular_knob_gain_v1.png",
                "patcherrelativepath": ".",
                "type": "PNG",
                "implicit": 1
            },
            {
                "name": "granular_panel_v1.png",
                "patcherrelativepath": ".",
                "type": "PNG",
                "implicit": 1
            },
            {
                "name": "mt_grain_voice.maxpat",
                "patcherrelativepath": ".",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "mt_granular_synth.maxpat",
                "patcherrelativepath": ".",
                "type": "JSON",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}
