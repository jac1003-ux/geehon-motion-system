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
            444,
            114,
            772,
            448
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
                    "id": "f-bg",
                    "ignoreclick": 1,
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        855,
                        30,
                        520,
                        340
                    ],
                    "pic": "file_panel_v1.png",
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        0,
                        520,
                        340
                    ]
                }
            },
            {
                "box": {
                    "id": "f-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        14,
                        130,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        25.925926119089127,
                        7,
                        130,
                        20
                    ],
                    "text": "FILE INPUT"
                }
            },
            {
                "box": {
                    "id": "f-note",
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
                        25.925926119089127,
                        28,
                        260,
                        20
                    ],
                    "text": "drop / load / seek / loop / 20 ms ramp"
                }
            },
            {
                "box": {
                    "id": "f-enable",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        30,
                        82,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        26,
                        72,
                        24,
                        24
                    ],
                    "varname": "file_enable"
                }
            },
            {
                "box": {
                    "id": "f-enable-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        21,
                        123,
                        46,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        15.14814817160368,
                        103.62963020801544,
                        46,
                        20
                    ],
                    "text": "Enable"
                }
            },
            {
                "box": {
                    "id": "f-play",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        74,
                        82,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        70,
                        72,
                        24,
                        24
                    ],
                    "varname": "file_play"
                }
            },
            {
                "box": {
                    "id": "f-play-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        87,
                        123,
                        34,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        66.17592644691467,
                        103.62963020801544,
                        32,
                        20
                    ],
                    "text": "Play"
                }
            },
            {
                "box": {
                    "id": "f-loop",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        118,
                        82,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        114,
                        72,
                        24,
                        24
                    ],
                    "varname": "file_loop"
                }
            },
            {
                "box": {
                    "id": "f-loop-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        130,
                        123,
                        36,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        108.69907492399216,
                        103.62963020801544,
                        35,
                        20
                    ],
                    "text": "Loop"
                }
            },
            {
                "box": {
                    "decodemode": 0,
                    "id": "f-drop",
                    "maxclass": "live.drop",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        170,
                        76,
                        164,
                        36
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        170,
                        84,
                        164,
                        28
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "file_drop",
                            "parameter_modmode": 0,
                            "parameter_shortname": "file_drop",
                            "parameter_type": 4
                        }
                    },
                    "varname": "file_drop"
                }
            },
            {
                "box": {
                    "id": "f-load-button",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        359,
                        82,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        348,
                        86,
                        24,
                        24
                    ],
                    "varname": "file_load"
                }
            },
            {
                "box": {
                    "id": "f-load-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        350,
                        124,
                        44,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        353.5,
                        108,
                        35,
                        20
                    ],
                    "text": "Load"
                }
            },
            {
                "box": {
                    "id": "f-open",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "patching_rect": [
                        639.9999561309814,
                        28.96551525592804,
                        90,
                        22
                    ],
                    "text": "opendialog"
                }
            },
            {
                "box": {
                    "buffername": "#0_file_buffer",
                    "id": "f-waveform",
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
                        151,
                        424,
                        124
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        152,
                        412,
                        100
                    ],
                    "setmode": 1,
                    "varname": "file_waveform"
                }
            },
            {
                "box": {
                    "id": "f-name",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        28,
                        330,
                        245,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        28,
                        292,
                        242,
                        22
                    ],
                    "text": "No file loaded"
                }
            },
            {
                "box": {
                    "id": "f-time-current",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        298,
                        330,
                        52,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        298,
                        292,
                        52,
                        22
                    ],
                    "text": "00:00"
                }
            },
            {
                "box": {
                    "id": "f-time-separator",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        354,
                        285,
                        18,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        354,
                        293,
                        18,
                        20
                    ],
                    "text": "/"
                }
            },
            {
                "box": {
                    "id": "f-time-total",
                    "ignoreclick": 1,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        383,
                        285,
                        52,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        368,
                        292,
                        52,
                        22
                    ],
                    "text": "00:00"
                }
            },
            {
                "box": {
                    "id": "f-status-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        28,
                        295,
                        40,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        30,
                        286,
                        40,
                        20
                    ],
                    "text": "FILE"
                }
            },
            {
                "box": {
                    "id": "f-time-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        298,
                        295,
                        40,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        340,
                        309,
                        37,
                        20
                    ],
                    "text": "TIME"
                }
            },
            {
                "box": {
                    "id": "f-gain",
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
                        569.8629722595215,
                        150,
                        54,
                        190
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        465.5,
                        105.5,
                        28,
                        171
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_longname": "file_output_gain",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "File Input",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "file_output_gain"
                }
            },
            {
                "box": {
                    "id": "f-gain-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        461,
                        71,
                        45,
                        20
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        457,
                        76,
                        45,
                        20
                    ],
                    "text": "Output"
                }
            },
            {
                "box": {
                    "comment": "Enable 0/1",
                    "id": "f-ext-enable",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        571.2328351736069,
                        17.123297333717346,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Play 0/1",
                    "id": "f-ext-play",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        605,
                        17.123297333717346,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "p-File-control",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 12,
                    "outlettype": [
                        "",
                        "int",
                        "",
                        "",
                        "int",
                        "",
                        "int",
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
                            53,
                            473,
                            940,
                            603
                        ],
                        "gridsize": [
                            15,
                            15
                        ],
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "fc-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30,
                                        25,
                                        620,
                                        20
                                    ],
                                    "text": "File control: external state / local UI / file change / time display"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-ext-enable",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30,
                                        61,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-ui-enable",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        111,
                                        514,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-ext-play",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        242,
                                        61,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-ui-play",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        327,
                                        59,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-ui-loop",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        406,
                                        59,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-path",
                                    "index": 6,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        530,
                                        61,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-elapsed",
                                    "index": 7,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        680,
                                        61,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-duration",
                                    "index": 8,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        800,
                                        61,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-ext-enable-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30,
                                        116,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-enable-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        111,
                                        573,
                                        150,
                                        22
                                    ],
                                    "text": "s mt_file_enable_state"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-enable-receive",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30,
                                        171,
                                        150,
                                        22
                                    ],
                                    "text": "r mt_file_enable_state"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-enable-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        30,
                                        226,
                                        50,
                                        22
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-enable-set",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30,
                                        255,
                                        58,
                                        22
                                    ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-ext-play-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        242,
                                        116,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-ui-play-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        327,
                                        116,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-play-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        242,
                                        203,
                                        50,
                                        22
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-play-set",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        242,
                                        242,
                                        58,
                                        22
                                    ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-loop-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        406,
                                        116,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-loop-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        406,
                                        203,
                                        50,
                                        22
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-loop-set",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        406,
                                        242,
                                        58,
                                        22
                                    ],
                                    "text": "set $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-path-order",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        530,
                                        116,
                                        60,
                                        22
                                    ],
                                    "text": "t l b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-file-stop",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        601,
                                        147,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-seek-reset",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        550,
                                        147,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-path-fanout",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        530,
                                        226,
                                        50,
                                        22
                                    ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-strip-path",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        561,
                                        255,
                                        70,
                                        22
                                    ],
                                    "text": "strippath"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-name-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        561,
                                        284,
                                        90,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-elapsed-int",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        680,
                                        116,
                                        35,
                                        22
                                    ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-elapsed-parts",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        680,
                                        171,
                                        50,
                                        22
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-elapsed-min",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        680,
                                        226,
                                        45,
                                        22
                                    ],
                                    "text": "/ 60"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-elapsed-sec",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        736,
                                        226,
                                        45,
                                        22
                                    ],
                                    "text": "% 60"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-elapsed-pack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        680,
                                        255,
                                        60,
                                        22
                                    ],
                                    "text": "pak i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-elapsed-format",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        680,
                                        284,
                                        125,
                                        22
                                    ],
                                    "text": "sprintf %02ld:%02ld"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-elapsed-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        680,
                                        381,
                                        90,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-duration-int",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        800,
                                        116,
                                        35,
                                        22
                                    ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-duration-parts",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        800,
                                        171,
                                        50,
                                        22
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-duration-min",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        800,
                                        226,
                                        45,
                                        22
                                    ],
                                    "text": "/ 60"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-duration-sec",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        856,
                                        226,
                                        45,
                                        22
                                    ],
                                    "text": "% 60"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-duration-pack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        800,
                                        255,
                                        60,
                                        22
                                    ],
                                    "text": "pak i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-duration-format",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        815,
                                        284,
                                        125,
                                        22
                                    ],
                                    "text": "sprintf %02ld:%02ld"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-duration-set",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        800,
                                        381,
                                        90,
                                        22
                                    ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-loadbang",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        30,
                                        346,
                                        65,
                                        22
                                    ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-init-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 6,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        "bang",
                                        "bang",
                                        "bang",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        30,
                                        381,
                                        100,
                                        22
                                    ],
                                    "text": "t b b b b b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-init-enable",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        156,
                                        476,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-init-play",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        140,
                                        386,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-init-loop",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        124,
                                        431,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-init-gain",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        107,
                                        476,
                                        32,
                                        22
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-init-current",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        46,
                                        422,
                                        72,
                                        22
                                    ],
                                    "text": "set 00:00"
                                }
                            },
                            {
                                "box": {
                                    "id": "fc-init-total",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30,
                                        515,
                                        72,
                                        22
                                    ],
                                    "text": "set 00:00"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-enable-out",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        61,
                                        296,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-play-out",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        272,
                                        318,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-loop-out",
                                    "index": 7,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        437,
                                        318,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-path-out",
                                    "index": 8,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        530,
                                        318,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-seek-reset-out",
                                    "index": 9,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        550,
                                        182,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-enable-ui-out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30,
                                        296,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-play-ui-out",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        242,
                                        318,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-loop-ui-out",
                                    "index": 6,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        406,
                                        318,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-name-ui-out",
                                    "index": 10,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        561,
                                        318,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-current-ui-out",
                                    "index": 11,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        680,
                                        423,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-total-ui-out",
                                    "index": 12,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        800,
                                        423,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fc-gain-ui-out",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        62,
                                        468,
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
                                        "fc-duration-int",
                                        0
                                    ],
                                    "source": [
                                        "fc-duration",
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
                                        "fc-duration-set",
                                        0
                                    ],
                                    "source": [
                                        "fc-duration-format",
                                        0
                                    ],
                                    "midpoints": [
                                        824.5,
                                        345,
                                        878,
                                        345,
                                        845,
                                        345,
                                        845,
                                        381
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-duration-parts",
                                        0
                                    ],
                                    "source": [
                                        "fc-duration-int",
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
                                        "fc-duration-pack",
                                        0
                                    ],
                                    "source": [
                                        "fc-duration-min",
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
                                        "fc-duration-format",
                                        0
                                    ],
                                    "source": [
                                        "fc-duration-pack",
                                        0
                                    ],
                                    "midpoints": [
                                        809.5,
                                        280,
                                        830,
                                        280,
                                        878,
                                        280,
                                        878,
                                        284
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-duration-min",
                                        0
                                    ],
                                    "source": [
                                        "fc-duration-parts",
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
                                        "fc-duration-sec",
                                        0
                                    ],
                                    "source": [
                                        "fc-duration-parts",
                                        1
                                    ],
                                    "midpoints": [
                                        840.5,
                                        210,
                                        865.5,
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
                                        "fc-duration-pack",
                                        1
                                    ],
                                    "source": [
                                        "fc-duration-sec",
                                        0
                                    ],
                                    "midpoints": [
                                        865.5,
                                        250,
                                        879,
                                        250,
                                        890,
                                        250,
                                        890,
                                        255
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-total-ui-out",
                                        0
                                    ],
                                    "source": [
                                        "fc-duration-set",
                                        0
                                    ],
                                    "midpoints": [
                                        809.5,
                                        425,
                                        845,
                                        425,
                                        815,
                                        425
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-elapsed-int",
                                        0
                                    ],
                                    "source": [
                                        "fc-elapsed",
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
                                        "fc-elapsed-set",
                                        0
                                    ],
                                    "source": [
                                        "fc-elapsed-format",
                                        0
                                    ],
                                    "midpoints": [
                                        689.5,
                                        345,
                                        743,
                                        345,
                                        725,
                                        345,
                                        725,
                                        381
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-elapsed-parts",
                                        0
                                    ],
                                    "source": [
                                        "fc-elapsed-int",
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
                                        "fc-elapsed-pack",
                                        0
                                    ],
                                    "source": [
                                        "fc-elapsed-min",
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
                                        "fc-elapsed-format",
                                        0
                                    ],
                                    "source": [
                                        "fc-elapsed-pack",
                                        0
                                    ],
                                    "midpoints": [
                                        689.5,
                                        280,
                                        710,
                                        280,
                                        743,
                                        280,
                                        743,
                                        284
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-elapsed-min",
                                        0
                                    ],
                                    "source": [
                                        "fc-elapsed-parts",
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
                                        "fc-elapsed-sec",
                                        0
                                    ],
                                    "source": [
                                        "fc-elapsed-parts",
                                        1
                                    ],
                                    "midpoints": [
                                        720.5,
                                        210,
                                        745.5,
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
                                        "fc-elapsed-pack",
                                        1
                                    ],
                                    "source": [
                                        "fc-elapsed-sec",
                                        0
                                    ],
                                    "midpoints": [
                                        745.5,
                                        250,
                                        759,
                                        250,
                                        770,
                                        250,
                                        770,
                                        255
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-current-ui-out",
                                        0
                                    ],
                                    "source": [
                                        "fc-elapsed-set",
                                        0
                                    ],
                                    "midpoints": [
                                        689.5,
                                        425,
                                        725,
                                        425,
                                        695,
                                        425
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
                                        "fc-enable-trigger",
                                        0
                                    ],
                                    "source": [
                                        "fc-enable-receive",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        210,
                                        105,
                                        210,
                                        55,
                                        210,
                                        55,
                                        226
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
                                        "fc-enable-ui-out",
                                        0
                                    ],
                                    "source": [
                                        "fc-enable-set",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        280,
                                        59,
                                        280,
                                        45,
                                        280
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
                                        "fc-enable-out",
                                        0
                                    ],
                                    "source": [
                                        "fc-enable-trigger",
                                        1
                                    ],
                                    "midpoints": [
                                        70.5,
                                        280,
                                        105,
                                        280,
                                        76,
                                        280
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
                                        "fc-enable-set",
                                        0
                                    ],
                                    "source": [
                                        "fc-enable-trigger",
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
                                        "fc-ext-enable-clip",
                                        0
                                    ],
                                    "source": [
                                        "fc-ext-enable",
                                        0
                                    ],
                                    "midpoints": [
                                        45,
                                        105,
                                        65,
                                        105,
                                        65,
                                        116
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
                                        "fc-enable-trigger",
                                        0
                                    ],
                                    "source": [
                                        "fc-ext-enable-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        175,
                                        65,
                                        175,
                                        55,
                                        175,
                                        55,
                                        226
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
                                        "fc-ext-play-clip",
                                        0
                                    ],
                                    "source": [
                                        "fc-ext-play",
                                        0
                                    ],
                                    "midpoints": [
                                        257,
                                        105,
                                        277,
                                        105,
                                        277,
                                        116
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
                                        "fc-play-trigger",
                                        0
                                    ],
                                    "source": [
                                        "fc-ext-play-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        251.5,
                                        175,
                                        277,
                                        175,
                                        267,
                                        175,
                                        267,
                                        203
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
                                        "fc-play-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        610.5,
                                        175,
                                        617,
                                        175,
                                        267,
                                        175,
                                        267,
                                        203
                                    ],
                                    "source": [
                                        "fc-file-stop",
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
                                        "fc-current-ui-out",
                                        0
                                    ],
                                    "midpoints": [
                                        55.5,
                                        470,
                                        82,
                                        470,
                                        695,
                                        470
                                    ],
                                    "source": [
                                        "fc-init-current",
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
                                        "fc-enable-send",
                                        0
                                    ],
                                    "source": [
                                        "fc-init-enable",
                                        0
                                    ],
                                    "midpoints": [
                                        165.5,
                                        530,
                                        172,
                                        530,
                                        186,
                                        530,
                                        186,
                                        573
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-gain-ui-out",
                                        0
                                    ],
                                    "source": [
                                        "fc-init-gain",
                                        0
                                    ],
                                    "midpoints": [
                                        116.5,
                                        530,
                                        123,
                                        530,
                                        77,
                                        530
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
                                        "fc-loop-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        133.5,
                                        470,
                                        140,
                                        470,
                                        431,
                                        470,
                                        431,
                                        203
                                    ],
                                    "source": [
                                        "fc-init-loop",
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
                                        "fc-play-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        149.5,
                                        425,
                                        156,
                                        425,
                                        267,
                                        425,
                                        267,
                                        203
                                    ],
                                    "source": [
                                        "fc-init-play",
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
                                        "fc-total-ui-out",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        560,
                                        66,
                                        560,
                                        815,
                                        560
                                    ],
                                    "source": [
                                        "fc-init-total",
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
                                        "fc-init-current",
                                        0
                                    ],
                                    "source": [
                                        "fc-init-trigger",
                                        1
                                    ],
                                    "midpoints": [
                                        55.7,
                                        425,
                                        180,
                                        425,
                                        82,
                                        425,
                                        82,
                                        422
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-init-enable",
                                        0
                                    ],
                                    "source": [
                                        "fc-init-trigger",
                                        5
                                    ],
                                    "midpoints": [
                                        120.5,
                                        425,
                                        580,
                                        425,
                                        172,
                                        425,
                                        172,
                                        476
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-init-gain",
                                        0
                                    ],
                                    "source": [
                                        "fc-init-trigger",
                                        2
                                    ],
                                    "midpoints": [
                                        71.9,
                                        425,
                                        280,
                                        425,
                                        123,
                                        425,
                                        123,
                                        476
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-init-loop",
                                        0
                                    ],
                                    "source": [
                                        "fc-init-trigger",
                                        3
                                    ],
                                    "midpoints": [
                                        88.1,
                                        425,
                                        380,
                                        425,
                                        140,
                                        425,
                                        140,
                                        431
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-init-play",
                                        0
                                    ],
                                    "source": [
                                        "fc-init-trigger",
                                        4
                                    ],
                                    "midpoints": [
                                        104.3,
                                        425,
                                        480,
                                        425,
                                        156,
                                        425,
                                        156,
                                        386
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-init-total",
                                        0
                                    ],
                                    "source": [
                                        "fc-init-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        470,
                                        80,
                                        470,
                                        66,
                                        470,
                                        66,
                                        515
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-init-trigger",
                                        0
                                    ],
                                    "source": [
                                        "fc-loadbang",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        375,
                                        63,
                                        375,
                                        80,
                                        375,
                                        80,
                                        381
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
                                        "fc-loop-trigger",
                                        0
                                    ],
                                    "source": [
                                        "fc-loop-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        415.5,
                                        175,
                                        441,
                                        175,
                                        431,
                                        175,
                                        431,
                                        203
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
                                        "fc-loop-ui-out",
                                        0
                                    ],
                                    "source": [
                                        "fc-loop-set",
                                        0
                                    ],
                                    "midpoints": [
                                        415.5,
                                        280,
                                        435,
                                        280,
                                        421,
                                        280
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
                                        "fc-loop-out",
                                        0
                                    ],
                                    "source": [
                                        "fc-loop-trigger",
                                        1
                                    ],
                                    "midpoints": [
                                        446.5,
                                        280,
                                        481,
                                        280,
                                        452,
                                        280
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
                                        "fc-loop-set",
                                        0
                                    ],
                                    "source": [
                                        "fc-loop-trigger",
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
                                        "fc-name-ui-out",
                                        0
                                    ],
                                    "source": [
                                        "fc-name-set",
                                        0
                                    ],
                                    "midpoints": [
                                        570.5,
                                        310,
                                        606,
                                        310,
                                        576,
                                        310
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-path-order",
                                        0
                                    ],
                                    "source": [
                                        "fc-path",
                                        0
                                    ],
                                    "midpoints": [
                                        545,
                                        105,
                                        560,
                                        105,
                                        560,
                                        116
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-path-out",
                                        0
                                    ],
                                    "source": [
                                        "fc-path-fanout",
                                        0
                                    ],
                                    "midpoints": [
                                        539.5,
                                        280,
                                        555,
                                        280,
                                        545,
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
                                        "fc-strip-path",
                                        0
                                    ],
                                    "source": [
                                        "fc-path-fanout",
                                        1
                                    ],
                                    "midpoints": [
                                        570.5,
                                        250,
                                        605,
                                        250,
                                        596,
                                        250,
                                        596,
                                        255
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-file-stop",
                                        0
                                    ],
                                    "source": [
                                        "fc-path-order",
                                        2
                                    ],
                                    "midpoints": [
                                        580.5,
                                        145,
                                        680,
                                        145,
                                        617,
                                        145,
                                        617,
                                        147
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fc-path-fanout",
                                        0
                                    ],
                                    "source": [
                                        "fc-path-order",
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
                                        "fc-seek-reset",
                                        0
                                    ],
                                    "source": [
                                        "fc-path-order",
                                        1
                                    ],
                                    "midpoints": [
                                        560,
                                        145,
                                        620,
                                        145,
                                        566,
                                        145,
                                        566,
                                        147
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
                                        "fc-play-ui-out",
                                        0
                                    ],
                                    "source": [
                                        "fc-play-set",
                                        0
                                    ],
                                    "midpoints": [
                                        251.5,
                                        280,
                                        271,
                                        280,
                                        257,
                                        280
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
                                        "fc-play-out",
                                        0
                                    ],
                                    "source": [
                                        "fc-play-trigger",
                                        1
                                    ],
                                    "midpoints": [
                                        282.5,
                                        280,
                                        317,
                                        280,
                                        287,
                                        280
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
                                        "fc-play-set",
                                        0
                                    ],
                                    "source": [
                                        "fc-play-trigger",
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
                                        "fc-seek-reset-out",
                                        0
                                    ],
                                    "source": [
                                        "fc-seek-reset",
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
                                        "fc-name-set",
                                        0
                                    ],
                                    "source": [
                                        "fc-strip-path",
                                        0
                                    ],
                                    "midpoints": [
                                        570.5,
                                        280,
                                        596,
                                        280,
                                        606,
                                        280,
                                        606,
                                        284
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
                                        "fc-enable-send",
                                        0
                                    ],
                                    "source": [
                                        "fc-ui-enable",
                                        0
                                    ],
                                    "midpoints": [
                                        126,
                                        560,
                                        186,
                                        560,
                                        186,
                                        573
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
                                        "fc-loop-clip",
                                        0
                                    ],
                                    "source": [
                                        "fc-ui-loop",
                                        0
                                    ],
                                    "midpoints": [
                                        421,
                                        105,
                                        441,
                                        105,
                                        441,
                                        116
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
                                        "fc-ui-play-clip",
                                        0
                                    ],
                                    "source": [
                                        "fc-ui-play",
                                        0
                                    ],
                                    "midpoints": [
                                        342,
                                        105,
                                        362,
                                        105,
                                        362,
                                        116
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
                                        "fc-play-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        336.5,
                                        175,
                                        362,
                                        175,
                                        267,
                                        175,
                                        267,
                                        203
                                    ],
                                    "source": [
                                        "fc-ui-play-clip",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-298"
                    },
                    "patching_rect": [
                        571.2328351736069,
                        77.39726555347443,
                        115,
                        22
                    ],
                    "text": "p File_control"
                }
            },
            {
                "box": {
                    "id": "p-File-input",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
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
                            1211,
                            101,
                            654,
                            677
                        ],
                        "gridsize": [
                            15,
                            15
                        ],
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "fi-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30,
                                        25,
                                        760,
                                        20
                                    ],
                                    "text": "File DSP: #0 buffer -> groove transport -> waveform feedback -> 20 ms enable ramp -> L/R"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fi-enable",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        302.7397040128708,
                                        423.28764045238495,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fi-path",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        185,
                                        63,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fi-play",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        345,
                                        63,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fi-loop",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        65.95744633674622,
                                        252,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fi-seek",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        181,
                                        252,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-enable-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        302.7397040128708,
                                        499.9314715862274,
                                        55,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-enable-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        302.7397040128708,
                                        534.2465364933014,
                                        50,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-replace",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        185,
                                        108,
                                        120,
                                        22
                                    ],
                                    "text": "prepend replace"
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-buffer",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        185,
                                        158,
                                        225,
                                        22
                                    ],
                                    "text": "buffer~ #0_file_buffer 30000 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-info",
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
                                        391,
                                        217,
                                        160,
                                        22
                                    ],
                                    "text": "info~ #0_file_buffer"
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-duration",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        485,
                                        256,
                                        80,
                                        22
                                    ],
                                    "text": "f 30000."
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-duration-sec",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        485,
                                        301,
                                        70,
                                        22
                                    ],
                                    "text": "/ 1000."
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-play-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        345,
                                        108,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-play-sig",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        345,
                                        188,
                                        50,
                                        22
                                    ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-loop-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        65.95744633674622,
                                        301,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-loop-msg",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        65.95744633674622,
                                        349.9361698627472,
                                        90,
                                        22
                                    ],
                                    "text": "prepend loop"
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-seek-safe",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        181,
                                        301,
                                        245,
                                        22
                                    ],
                                    "text": "expr min(max(0.\\, $f1)\\, max(0.\\, $f2 - 1.))"
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-groove",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "signal",
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        181,
                                        390.41093051433563,
                                        190,
                                        22
                                    ],
                                    "text": "groove~ #0_file_buffer 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-progress-snap",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        352,
                                        427.28764045238495,
                                        95,
                                        22
                                    ],
                                    "text": "snapshot~ 33"
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-progress-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        352.05476891994476,
                                        457.53421330451965,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-progress-line",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        352,
                                        591.7807788848877,
                                        90,
                                        22
                                    ],
                                    "text": "prepend line"
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-elapsed-ms",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        367,
                                        508.9314715862274,
                                        55,
                                        22
                                    ],
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-elapsed-sec",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        458.780815243721,
                                        591.7807788848877,
                                        70,
                                        22
                                    ],
                                    "text": "/ 1000."
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-gate-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        181.56849932670593,
                                        591.7807788848877,
                                        55,
                                        22
                                    ],
                                    "text": "*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "fi-gate-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        266.5,
                                        591.7807788848877,
                                        55,
                                        22
                                    ],
                                    "text": "*~ 0."
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fi-out-l",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        181.56849932670593,
                                        628.7670775651932,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fi-out-r",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        266.5,
                                        628.7670775651932,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fi-out-playhead",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        352,
                                        628.7670775651932,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fi-out-elapsed",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        443.780815243721,
                                        628.7670775651932,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fi-out-duration",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        485,
                                        345.9361698627472,
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
                                        "fi-info",
                                        0
                                    ],
                                    "source": [
                                        "fi-buffer",
                                        1
                                    ],
                                    "midpoints": [
                                        400.5,
                                        200,
                                        523,
                                        200,
                                        471,
                                        200,
                                        471,
                                        217
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fi-duration-sec",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "fi-duration",
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
                                        "fi-elapsed-ms",
                                        1
                                    ],
                                    "midpoints": [
                                        494.5,
                                        300,
                                        525,
                                        300,
                                        450,
                                        300,
                                        450,
                                        508.9314715862274
                                    ],
                                    "order": 2,
                                    "source": [
                                        "fi-duration",
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
                                        "fi-seek-safe",
                                        1
                                    ],
                                    "midpoints": [
                                        494.5,
                                        300,
                                        525,
                                        300,
                                        549,
                                        300,
                                        549,
                                        301
                                    ],
                                    "order": 1,
                                    "source": [
                                        "fi-duration",
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
                                        "fi-out-duration",
                                        0
                                    ],
                                    "source": [
                                        "fi-duration-sec",
                                        0
                                    ],
                                    "midpoints": [
                                        494.5,
                                        335,
                                        520,
                                        335,
                                        500,
                                        335
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fi-elapsed-sec",
                                        0
                                    ],
                                    "midpoints": [
                                        376.5,
                                        555,
                                        395,
                                        555,
                                        494,
                                        555,
                                        494,
                                        591.7807788848877
                                    ],
                                    "order": 0,
                                    "source": [
                                        "fi-elapsed-ms",
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
                                        "fi-progress-line",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "fi-elapsed-ms",
                                        0
                                    ],
                                    "midpoints": [
                                        376.5,
                                        560,
                                        361.5,
                                        560
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fi-out-elapsed",
                                        0
                                    ],
                                    "source": [
                                        "fi-elapsed-sec",
                                        0
                                    ],
                                    "midpoints": [
                                        468.280815243721,
                                        620,
                                        494,
                                        620,
                                        459,
                                        620
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
                                        "fi-enable-msg",
                                        0
                                    ],
                                    "source": [
                                        "fi-enable",
                                        0
                                    ],
                                    "midpoints": [
                                        318,
                                        475,
                                        330,
                                        475,
                                        330,
                                        499.9314715862274
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
                                        "fi-gate-l",
                                        1
                                    ],
                                    "midpoints": [
                                        312.2397040128708,
                                        580,
                                        328,
                                        580,
                                        264,
                                        580,
                                        264,
                                        591.7807788848877
                                    ],
                                    "order": 1,
                                    "source": [
                                        "fi-enable-line",
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
                                        "fi-gate-r",
                                        1
                                    ],
                                    "order": 0,
                                    "source": [
                                        "fi-enable-line",
                                        0
                                    ],
                                    "midpoints": [
                                        312.2397040128708,
                                        580,
                                        328,
                                        580,
                                        349,
                                        580,
                                        349,
                                        591.7807788848877
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
                                        "fi-enable-line",
                                        0
                                    ],
                                    "source": [
                                        "fi-enable-msg",
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
                                        "fi-out-l",
                                        0
                                    ],
                                    "source": [
                                        "fi-gate-l",
                                        0
                                    ],
                                    "midpoints": [
                                        191.06849932670593,
                                        620,
                                        209,
                                        620,
                                        197,
                                        620
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
                                        "fi-out-r",
                                        0
                                    ],
                                    "source": [
                                        "fi-gate-r",
                                        0
                                    ],
                                    "midpoints": [
                                        276,
                                        620,
                                        294,
                                        620,
                                        282,
                                        620
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
                                        "fi-gate-l",
                                        0
                                    ],
                                    "source": [
                                        "fi-groove",
                                        0
                                    ],
                                    "midpoints": [
                                        190.5,
                                        500,
                                        276,
                                        500,
                                        209,
                                        500,
                                        209,
                                        591.7807788848877
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
                                        "fi-gate-r",
                                        0
                                    ],
                                    "source": [
                                        "fi-groove",
                                        1
                                    ],
                                    "midpoints": [
                                        276,
                                        500,
                                        466,
                                        500,
                                        294,
                                        500,
                                        294,
                                        591.7807788848877
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
                                        "fi-progress-snap",
                                        0
                                    ],
                                    "source": [
                                        "fi-groove",
                                        2
                                    ],
                                    "midpoints": [
                                        361.5,
                                        420,
                                        656,
                                        420,
                                        400,
                                        420,
                                        400,
                                        427.28764045238495
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fi-duration",
                                        0
                                    ],
                                    "source": [
                                        "fi-info",
                                        6
                                    ],
                                    "midpoints": [
                                        494.5,
                                        250,
                                        1431,
                                        250,
                                        525,
                                        250,
                                        525,
                                        256
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
                                        "fi-loop-clip",
                                        0
                                    ],
                                    "source": [
                                        "fi-loop",
                                        0
                                    ],
                                    "midpoints": [
                                        81,
                                        300,
                                        101,
                                        300,
                                        101,
                                        301
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
                                        "fi-loop-msg",
                                        0
                                    ],
                                    "source": [
                                        "fi-loop-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        75.45744633674622,
                                        335,
                                        101,
                                        335,
                                        111,
                                        335,
                                        111,
                                        349.9361698627472
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
                                        "fi-groove",
                                        0
                                    ],
                                    "midpoints": [
                                        75.45744633674622,
                                        380,
                                        111,
                                        380,
                                        276,
                                        380,
                                        276,
                                        390.41093051433563
                                    ],
                                    "source": [
                                        "fi-loop-msg",
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
                                        "fi-replace",
                                        0
                                    ],
                                    "source": [
                                        "fi-path",
                                        0
                                    ],
                                    "midpoints": [
                                        200,
                                        100,
                                        245,
                                        100,
                                        245,
                                        108
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
                                        "fi-play-clip",
                                        0
                                    ],
                                    "source": [
                                        "fi-play",
                                        0
                                    ],
                                    "midpoints": [
                                        360,
                                        100,
                                        380,
                                        100,
                                        380,
                                        108
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
                                        "fi-play-sig",
                                        0
                                    ],
                                    "source": [
                                        "fi-play-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        354.5,
                                        160,
                                        380,
                                        160,
                                        370,
                                        160,
                                        370,
                                        188
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
                                        "fi-groove",
                                        0
                                    ],
                                    "midpoints": [
                                        354.5,
                                        300,
                                        370,
                                        300,
                                        276,
                                        300,
                                        276,
                                        390.41093051433563
                                    ],
                                    "source": [
                                        "fi-play-sig",
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
                                        "fi-elapsed-ms",
                                        0
                                    ],
                                    "source": [
                                        "fi-progress-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        361.55476891994476,
                                        490,
                                        376.5,
                                        490
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fi-out-playhead",
                                        0
                                    ],
                                    "source": [
                                        "fi-progress-line",
                                        0
                                    ],
                                    "midpoints": [
                                        361.5,
                                        620,
                                        397,
                                        620,
                                        367,
                                        620
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fi-progress-clip",
                                        0
                                    ],
                                    "source": [
                                        "fi-progress-snap",
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
                                        "fi-buffer",
                                        0
                                    ],
                                    "source": [
                                        "fi-replace",
                                        0
                                    ],
                                    "midpoints": [
                                        194.5,
                                        145,
                                        245,
                                        145,
                                        298,
                                        145,
                                        298,
                                        158
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fi-seek-safe",
                                        0
                                    ],
                                    "source": [
                                        "fi-seek",
                                        0
                                    ],
                                    "midpoints": [
                                        196,
                                        300,
                                        304,
                                        300,
                                        304,
                                        301
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.62,
                                        0.24,
                                        1
                                    ],
                                    "destination": [
                                        "fi-groove",
                                        0
                                    ],
                                    "source": [
                                        "fi-seek-safe",
                                        0
                                    ],
                                    "midpoints": [
                                        190.5,
                                        355,
                                        304,
                                        355,
                                        276,
                                        355,
                                        276,
                                        390.41093051433563
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-300"
                    },
                    "patching_rect": [
                        571.2328351736069,
                        114.38356423377991,
                        115,
                        22
                    ],
                    "text": "p File_input"
                }
            },
            {
                "box": {
                    "comment": "File audio L",
                    "id": "f-out-l",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        569.8629722595215,
                        365.06847751140594,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "File audio R",
                    "id": "f-out-r",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        605,
                        365.06847751140594,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "File progress 0-1",
                    "id": "f-out-progress",
                    "index": 3,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        636,
                        365,
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
                        "f-out-progress",
                        0
                    ],
                    "source": [
                        "p-File-input",
                        2
                    ],
                    "midpoints": [
                        628.7328351736069,
                        160,
                        859,
                        160,
                        651,
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
                        "p-File-control",
                        5
                    ],
                    "midpoints": [
                        179.5,
                        130,
                        252,
                        130,
                        1204,
                        130,
                        1204,
                        77.39726555347443
                    ],
                    "source": [
                        "f-drop",
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
                        "p-File-control",
                        1
                    ],
                    "midpoints": [
                        42,
                        130,
                        744,
                        130,
                        744,
                        77.39726555347443
                    ],
                    "source": [
                        "f-enable",
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
                        "p-File-control",
                        0
                    ],
                    "source": [
                        "f-ext-enable",
                        0
                    ],
                    "midpoints": [
                        586,
                        65,
                        629,
                        65,
                        629,
                        77.39726555347443
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
                        "p-File-control",
                        2
                    ],
                    "source": [
                        "f-ext-play",
                        0
                    ],
                    "midpoints": [
                        614,
                        65,
                        859,
                        65,
                        859,
                        77.39726555347443
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
                        "f-out-l",
                        0
                    ],
                    "source": [
                        "f-gain",
                        0
                    ],
                    "midpoints": [
                        579.3629722595215,
                        355,
                        597,
                        355,
                        585,
                        355
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
                        "f-out-r",
                        0
                    ],
                    "midpoints": [
                        588.1129722595215,
                        355,
                        651,
                        355,
                        614,
                        355
                    ],
                    "source": [
                        "f-gain",
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
                        "f-open",
                        0
                    ],
                    "midpoints": [
                        371,
                        130,
                        685,
                        130,
                        685,
                        28.96551525592804
                    ],
                    "source": [
                        "f-load-button",
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
                        "p-File-control",
                        4
                    ],
                    "midpoints": [
                        130,
                        130,
                        1089,
                        130,
                        1089,
                        77.39726555347443
                    ],
                    "source": [
                        "f-loop",
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
                        "p-File-control",
                        5
                    ],
                    "midpoints": [
                        649.4999561309814,
                        65,
                        685,
                        65,
                        1204,
                        65,
                        1204,
                        77.39726555347443
                    ],
                    "source": [
                        "f-open",
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
                        "p-File-control",
                        3
                    ],
                    "midpoints": [
                        86,
                        130,
                        974,
                        130,
                        974,
                        77.39726555347443
                    ],
                    "source": [
                        "f-play",
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
                        "p-File-input",
                        1
                    ],
                    "midpoints": [
                        189.5,
                        300,
                        1078,
                        300,
                        744,
                        300,
                        744,
                        114.38356423377991
                    ],
                    "source": [
                        "f-waveform",
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
                        "f-enable",
                        0
                    ],
                    "midpoints": [
                        580.7328351736069,
                        130,
                        629,
                        130,
                        42,
                        130
                    ],
                    "source": [
                        "p-File-control",
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
                        "f-gain",
                        0
                    ],
                    "midpoints": [
                        598.1873806281524,
                        130,
                        859,
                        130,
                        597,
                        130,
                        597,
                        150
                    ],
                    "source": [
                        "p-File-control",
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
                        "f-loop",
                        0
                    ],
                    "midpoints": [
                        624.3691988099705,
                        130,
                        1204,
                        130,
                        130,
                        130
                    ],
                    "source": [
                        "p-File-control",
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
                        "f-name",
                        0
                    ],
                    "midpoints": [
                        659.2782897190614,
                        215,
                        1664,
                        215,
                        151,
                        215,
                        151,
                        330
                    ],
                    "source": [
                        "p-File-control",
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
                        "f-play",
                        0
                    ],
                    "midpoints": [
                        606.914653355425,
                        130,
                        974,
                        130,
                        86,
                        130
                    ],
                    "source": [
                        "p-File-control",
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
                        "f-time-current",
                        0
                    ],
                    "midpoints": [
                        668.0055624463341,
                        215,
                        1779,
                        215,
                        324,
                        215,
                        324,
                        330
                    ],
                    "source": [
                        "p-File-control",
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
                        "f-time-total",
                        0
                    ],
                    "midpoints": [
                        676.7328351736069,
                        190,
                        1894,
                        190,
                        409,
                        190,
                        409,
                        285
                    ],
                    "source": [
                        "p-File-control",
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
                        "p-File-input",
                        1
                    ],
                    "midpoints": [
                        650.5510169917886,
                        105,
                        1549,
                        105,
                        744,
                        105,
                        744,
                        114.38356423377991
                    ],
                    "source": [
                        "p-File-control",
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
                        "p-File-input",
                        2
                    ],
                    "midpoints": [
                        641.823744264516,
                        105,
                        1434,
                        105,
                        859,
                        105,
                        859,
                        114.38356423377991
                    ],
                    "source": [
                        "p-File-control",
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
                        "p-File-input",
                        0
                    ],
                    "midpoints": [
                        633.0964715372432,
                        105,
                        1319,
                        105,
                        629,
                        105,
                        629,
                        114.38356423377991
                    ],
                    "source": [
                        "p-File-control",
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
                        "p-File-input",
                        4
                    ],
                    "source": [
                        "p-File-control",
                        4
                    ],
                    "midpoints": [
                        615.6419260826978,
                        110,
                        676.7328351736069,
                        110
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
                        "p-File-input",
                        3
                    ],
                    "midpoints": [
                        589.4601079008796,
                        105,
                        744,
                        105,
                        974,
                        105,
                        974,
                        114.38356423377991
                    ],
                    "source": [
                        "p-File-control",
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
                        "f-gain",
                        1
                    ],
                    "midpoints": [
                        604.7328351736069,
                        130,
                        744,
                        130,
                        651,
                        130,
                        651,
                        150
                    ],
                    "source": [
                        "p-File-input",
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
                        "f-gain",
                        0
                    ],
                    "source": [
                        "p-File-input",
                        0
                    ],
                    "midpoints": [
                        580.7328351736069,
                        130,
                        629,
                        130,
                        597,
                        130,
                        597,
                        150
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "f-waveform",
                        0
                    ],
                    "midpoints": [
                        628.7328351736069,
                        160,
                        859,
                        160,
                        230,
                        160,
                        230,
                        151
                    ],
                    "source": [
                        "p-File-input",
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
                        "p-File-control",
                        7
                    ],
                    "source": [
                        "p-File-input",
                        4
                    ],
                    "midpoints": [
                        676.7328351736069,
                        160,
                        1089,
                        160,
                        1434,
                        160,
                        1434,
                        77.39726555347443
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.62,
                        0.24,
                        1
                    ],
                    "destination": [
                        "p-File-control",
                        6
                    ],
                    "midpoints": [
                        652.7328351736069,
                        160,
                        974,
                        160,
                        1319,
                        160,
                        1319,
                        77.39726555347443
                    ],
                    "source": [
                        "p-File-input",
                        3
                    ]
                }
            }
        ],
        "originid": "pat-296",
        "parameters": {
            "f-drop": [
                "file_drop",
                "file_drop",
                0
            ],
            "f-gain": [
                "file_output_gain",
                "File Input",
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
                "name": "file_panel_v1.png",
                "patcherrelativepath": ".",
                "type": "PNG",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}
