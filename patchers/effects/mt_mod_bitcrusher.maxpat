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
            920,
            430
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
                        0.13,
                        0.25,
                        0.21,
                        1
                    ],
                    "id": "bc-header",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1080,
                        30,
                        760,
                        58
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        0,
                        760,
                        58
                    ]
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [
                        0.96,
                        0.97,
                        0.95,
                        1
                    ],
                    "border": 1,
                    "bordercolor": [
                        0.66,
                        0.74,
                        0.69,
                        1
                    ],
                    "id": "bc-body",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1080,
                        118,
                        760,
                        210
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        58,
                        760,
                        210
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 15,
                    "id": "bc-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        20,
                        360,
                        23
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        14,
                        360,
                        23
                    ],
                    "text": "BITCRUSHER",
                    "textcolor": [
                        0.97,
                        0.98,
                        0.96,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 9,
                    "id": "bc-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        61,
                        700,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        36,
                        650,
                        17
                    ],
                    "text": "SAMPLE-RATE REDUCTION / BIT QUANTIZATION / SATURATION",
                    "textcolor": [
                        0.72,
                        0.79,
                        0.75,
                        1
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "bc-in-l",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        24,
                        92,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "bc-in-r",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        70,
                        92,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "bc-in-enable",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        130,
                        92,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "bc-enable-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        130,
                        141,
                        50,
                        22
                    ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "bc-in-bits",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        190,
                        92,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "bc-in-rate",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        250,
                        92,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "bc-in-drive",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        310,
                        92,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "bc-enable",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        24,
                        150,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        82,
                        24,
                        24
                    ],
                    "varname": "bitcrusher_enable"
                }
            },
            {
                "box": {
                    "id": "bc-enable-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        54,
                        152,
                        62,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        54,
                        84,
                        62,
                        20
                    ],
                    "text": "Enable",
                    "textcolor": [
                        0.18,
                        0.27,
                        0.23,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "bc-bits-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        150,
                        176,
                        110,
                        20
                    ],
                    "text": "Bit Depth (bit)"
                }
            },
            {
                "box": {
                    "activeneedlecolor": [
                        0.15,
                        0.28,
                        0.23,
                        1
                    ],
                    "id": "bc-bits",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        150,
                        206,
                        64,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        142,
                        76,
                        64,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                12
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "bitcrusher_bits",
                            "parameter_mmax": 24,
                            "parameter_mmin": 2,
                            "parameter_modmode": 3,
                            "parameter_shortname": "BITS",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "bitcrusher_bits"
                }
            },
            {
                "box": {
                    "id": "bc-rate-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        270,
                        146,
                        130,
                        20
                    ],
                    "text": "Sample Rate (Hz)"
                }
            },
            {
                "box": {
                    "activeneedlecolor": [
                        0.15,
                        0.28,
                        0.23,
                        1
                    ],
                    "id": "bc-rate",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        270,
                        176,
                        72,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        270,
                        76,
                        72,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                12000
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "bitcrusher_rate_hz",
                            "parameter_mmax": 48000,
                            "parameter_mmin": 500,
                            "parameter_modmode": 3,
                            "parameter_shortname": "RATE Hz",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "bitcrusher_rate_hz"
                }
            },
            {
                "box": {
                    "id": "bc-drive-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        410,
                        146,
                        100,
                        20
                    ],
                    "text": "Drive (0-1)"
                }
            },
            {
                "box": {
                    "activeneedlecolor": [
                        0.15,
                        0.28,
                        0.23,
                        1
                    ],
                    "id": "bc-drive",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        410,
                        176,
                        64,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        410,
                        76,
                        64,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.15
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "bitcrusher_drive",
                            "parameter_mmax": 1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "DRIVE",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "bitcrusher_drive"
                }
            },
            {
                "box": {
                    "id": "bc-state",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        302,
                        195,
                        22
                    ],
                    "text": "s mt_bitcrusher_enable_state"
                }
            },
            {
                "box": {
                    "id": "bc-default-bits",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        150,
                        272,
                        90,
                        22
                    ],
                    "text": "loadmess 12"
                }
            },
            {
                "box": {
                    "id": "bc-default-rate",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        270,
                        242,
                        110,
                        22
                    ],
                    "text": "loadmess 12000."
                }
            },
            {
                "box": {
                    "id": "bc-default-drive",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        410,
                        242,
                        100,
                        22
                    ],
                    "text": "loadmess 0.15"
                }
            },
            {
                "box": {
                    "id": "bc-core",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 4,
                    "outlettype": [
                        "signal",
                        "signal",
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
                            120,
                            120,
                            1180,
                            720
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
                                    "id": "bci-l",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        30,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "bci-r",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        100,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "bci-enable",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        210,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "bci-bits",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        430,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "bci-rate",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        560,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "bci-drive",
                                    "index": 6,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        720,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-source-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30,
                                        290,
                                        42,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-source-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        100,
                                        290,
                                        42,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-bits-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        430,
                                        82,
                                        75,
                                        22
                                    ],
                                    "text": "clip 2 24"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-bits-step",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        430,
                                        122,
                                        205,
                                        22
                                    ],
                                    "text": "expr 2. / (pow(2.\\, $f1) - 1.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-rate-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        560,
                                        82,
                                        125,
                                        22
                                    ],
                                    "text": "clip 500. 48000."
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-rate-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        560,
                                        152,
                                        50,
                                        22
                                    ],
                                    "text": "t f b"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-dspstate",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "int",
                                        "float",
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        635,
                                        162,
                                        75,
                                        22
                                    ],
                                    "text": "dspstate~"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-rate-ratio",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        500,
                                        235,
                                        300,
                                        22
                                    ],
                                    "text": "expr min(1.\\, max(0.001\\, $f1 / max(1.\\, $f2)))"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-degrade-l",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30,
                                        345,
                                        105,
                                        22
                                    ],
                                    "text": "degrade~ 1. 24"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-degrade-r",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        160,
                                        345,
                                        105,
                                        22
                                    ],
                                    "text": "degrade~ 1. 24"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-drive-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        720,
                                        82,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-drive-scale",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        720,
                                        122,
                                        120,
                                        22
                                    ],
                                    "text": "scale 0. 1. 1. 8."
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-drive-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        720,
                                        162,
                                        62,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-drive-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        720,
                                        202,
                                        50,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-drive-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30,
                                        395,
                                        42,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-drive-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        160,
                                        395,
                                        42,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-sat-l",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30,
                                        435,
                                        55,
                                        22
                                    ],
                                    "text": "tanh~"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-sat-r",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        160,
                                        435,
                                        55,
                                        22
                                    ],
                                    "text": "tanh~"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-round-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30,
                                        475,
                                        88,
                                        22
                                    ],
                                    "text": "round~ 0.001"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-round-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        160,
                                        475,
                                        88,
                                        22
                                    ],
                                    "text": "round~ 0.001"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-enable-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        210,
                                        82,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-enable-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        210,
                                        122,
                                        62,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-wet-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        210,
                                        162,
                                        50,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-wet-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30,
                                        520,
                                        42,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "bc-wet-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        160,
                                        520,
                                        42,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "bco-l",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30,
                                        590,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "bco-r",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        160,
                                        590,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "bco-monitor-in",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        350,
                                        590,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "bco-monitor-wet",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        480,
                                        590,
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
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-bits-step",
                                        0
                                    ],
                                    "midpoints": [
                                        439.5,
                                        115,
                                        468,
                                        115,
                                        533,
                                        115,
                                        533,
                                        122
                                    ],
                                    "source": [
                                        "bc-bits-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-round-l",
                                        1
                                    ],
                                    "midpoints": [
                                        439.5,
                                        170,
                                        533,
                                        170,
                                        162,
                                        170,
                                        162,
                                        475
                                    ],
                                    "order": 1,
                                    "source": [
                                        "bc-bits-step",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-round-r",
                                        1
                                    ],
                                    "midpoints": [
                                        439.5,
                                        170,
                                        533,
                                        170,
                                        292,
                                        170,
                                        292,
                                        475
                                    ],
                                    "order": 0,
                                    "source": [
                                        "bc-bits-step",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-drive-l",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        380,
                                        83,
                                        380,
                                        51,
                                        380,
                                        51,
                                        395
                                    ],
                                    "source": [
                                        "bc-degrade-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-drive-r",
                                        0
                                    ],
                                    "midpoints": [
                                        169.5,
                                        380,
                                        213,
                                        380,
                                        181,
                                        380,
                                        181,
                                        395
                                    ],
                                    "source": [
                                        "bc-degrade-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-drive-scale",
                                        0
                                    ],
                                    "midpoints": [
                                        729.5,
                                        115,
                                        760,
                                        115,
                                        780,
                                        115,
                                        780,
                                        122
                                    ],
                                    "source": [
                                        "bc-drive-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-sat-l",
                                        0
                                    ],
                                    "source": [
                                        "bc-drive-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-drive-l",
                                        1
                                    ],
                                    "midpoints": [
                                        729.5,
                                        250,
                                        745,
                                        250,
                                        93,
                                        250,
                                        93,
                                        395
                                    ],
                                    "order": 1,
                                    "source": [
                                        "bc-drive-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-drive-r",
                                        1
                                    ],
                                    "midpoints": [
                                        729.5,
                                        250,
                                        745,
                                        250,
                                        223,
                                        250,
                                        223,
                                        395
                                    ],
                                    "order": 0,
                                    "source": [
                                        "bc-drive-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-drive-line",
                                        0
                                    ],
                                    "source": [
                                        "bc-drive-msg",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-sat-r",
                                        0
                                    ],
                                    "source": [
                                        "bc-drive-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-drive-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        729.5,
                                        155,
                                        780,
                                        155,
                                        751,
                                        155,
                                        751,
                                        162
                                    ],
                                    "source": [
                                        "bc-drive-scale",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-rate-ratio",
                                        1
                                    ],
                                    "midpoints": [
                                        663.1666666666666,
                                        205,
                                        748,
                                        205,
                                        950,
                                        205,
                                        950,
                                        235
                                    ],
                                    "source": [
                                        "bc-dspstate",
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
                                        "bc-enable-msg",
                                        0
                                    ],
                                    "source": [
                                        "bc-enable-clip",
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
                                        "bc-wet-line",
                                        0
                                    ],
                                    "source": [
                                        "bc-enable-msg",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-rate-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        569.5,
                                        130,
                                        623,
                                        130,
                                        585,
                                        130,
                                        585,
                                        152
                                    ],
                                    "source": [
                                        "bc-rate-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-degrade-l",
                                        1
                                    ],
                                    "midpoints": [
                                        509.5,
                                        280,
                                        650,
                                        280,
                                        188,
                                        280,
                                        188,
                                        345
                                    ],
                                    "order": 1,
                                    "source": [
                                        "bc-rate-ratio",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-degrade-r",
                                        1
                                    ],
                                    "midpoints": [
                                        509.5,
                                        280,
                                        650,
                                        280,
                                        318,
                                        280,
                                        318,
                                        345
                                    ],
                                    "order": 0,
                                    "source": [
                                        "bc-rate-ratio",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-dspstate",
                                        0
                                    ],
                                    "midpoints": [
                                        600.5,
                                        205,
                                        635,
                                        205,
                                        673,
                                        205,
                                        673,
                                        162
                                    ],
                                    "source": [
                                        "bc-rate-trigger",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-rate-ratio",
                                        0
                                    ],
                                    "midpoints": [
                                        569.5,
                                        205,
                                        585,
                                        205,
                                        650,
                                        205,
                                        650,
                                        235
                                    ],
                                    "source": [
                                        "bc-rate-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-wet-l",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        510,
                                        74,
                                        510,
                                        51,
                                        510,
                                        51,
                                        520
                                    ],
                                    "source": [
                                        "bc-round-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-wet-r",
                                        0
                                    ],
                                    "midpoints": [
                                        169.5,
                                        510,
                                        204,
                                        510,
                                        181,
                                        510,
                                        181,
                                        520
                                    ],
                                    "source": [
                                        "bc-round-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-round-l",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        465,
                                        58,
                                        465,
                                        74,
                                        465,
                                        74,
                                        475
                                    ],
                                    "source": [
                                        "bc-sat-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-round-r",
                                        0
                                    ],
                                    "midpoints": [
                                        169.5,
                                        465,
                                        188,
                                        465,
                                        204,
                                        465,
                                        204,
                                        475
                                    ],
                                    "source": [
                                        "bc-sat-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-degrade-l",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        335,
                                        51,
                                        335,
                                        83,
                                        335,
                                        83,
                                        345
                                    ],
                                    "order": 1,
                                    "source": [
                                        "bc-source-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bco-monitor-in",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        335,
                                        51,
                                        335,
                                        365,
                                        335
                                    ],
                                    "order": 0,
                                    "source": [
                                        "bc-source-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-degrade-r",
                                        0
                                    ],
                                    "midpoints": [
                                        109.5,
                                        335,
                                        121,
                                        335,
                                        213,
                                        335,
                                        213,
                                        345
                                    ],
                                    "source": [
                                        "bc-source-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bco-l",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "bc-wet-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bco-monitor-wet",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        565,
                                        51,
                                        565,
                                        495,
                                        565
                                    ],
                                    "order": 0,
                                    "source": [
                                        "bc-wet-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-wet-l",
                                        1
                                    ],
                                    "midpoints": [
                                        219.5,
                                        205,
                                        235,
                                        205,
                                        93,
                                        205,
                                        93,
                                        520
                                    ],
                                    "order": 1,
                                    "source": [
                                        "bc-wet-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-wet-r",
                                        1
                                    ],
                                    "midpoints": [
                                        219.5,
                                        205,
                                        235,
                                        205,
                                        223,
                                        205,
                                        223,
                                        520
                                    ],
                                    "order": 0,
                                    "source": [
                                        "bc-wet-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bco-r",
                                        0
                                    ],
                                    "source": [
                                        "bc-wet-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-bits-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        445,
                                        70,
                                        468,
                                        70,
                                        468,
                                        82
                                    ],
                                    "source": [
                                        "bci-bits",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-drive-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        735,
                                        70,
                                        760,
                                        70,
                                        760,
                                        82
                                    ],
                                    "source": [
                                        "bci-drive",
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
                                        "bc-enable-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        225,
                                        70,
                                        245,
                                        70,
                                        245,
                                        82
                                    ],
                                    "source": [
                                        "bci-enable",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-source-l",
                                        0
                                    ],
                                    "source": [
                                        "bci-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.62,
                                        0.86,
                                        0.34,
                                        1
                                    ],
                                    "destination": [
                                        "bc-source-r",
                                        0
                                    ],
                                    "source": [
                                        "bci-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        1,
                                        0.5,
                                        0,
                                        1
                                    ],
                                    "destination": [
                                        "bc-rate-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        575,
                                        70,
                                        623,
                                        70,
                                        623,
                                        82
                                    ],
                                    "source": [
                                        "bci-rate",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-1008"
                    },
                    "patching_rect": [
                        24,
                        337,
                        200,
                        22
                    ],
                    "text": "p Bitcrusher_core"
                }
            },
            {
                "box": {
                    "id": "bc-scope-in-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250,
                        281,
                        190,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        142,
                        146,
                        190,
                        20
                    ],
                    "text": "INPUT",
                    "textcolor": [
                        0.18,
                        0.27,
                        0.23,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.08,
                        0.12,
                        0.1,
                        1
                    ],
                    "id": "bc-scope-in",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        250,
                        307,
                        190,
                        78
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        142,
                        166,
                        190,
                        78
                    ]
                }
            },
            {
                "box": {
                    "id": "bc-scope-wet-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        470,
                        311,
                        190,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        360,
                        146,
                        190,
                        20
                    ],
                    "text": "CRUSHED",
                    "textcolor": [
                        0.18,
                        0.27,
                        0.23,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.08,
                        0.12,
                        0.1,
                        1
                    ],
                    "id": "bc-scope-wet",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        470,
                        337,
                        190,
                        78
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        360,
                        166,
                        190,
                        78
                    ]
                }
            },
            {
                "box": {
                    "id": "bc-gain",
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
                        610,
                        138,
                        58,
                        160
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        610,
                        66,
                        58,
                        150
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "bitcrusher_output_gain",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Bitcrusher Out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "bitcrusher_output_gain"
                }
            },
            {
                "box": {
                    "id": "bc-output-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        610,
                        112,
                        70,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        606,
                        222,
                        70,
                        20
                    ],
                    "text": "OUTPUT",
                    "textcolor": [
                        0.18,
                        0.27,
                        0.23,
                        1
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "bc-out-l",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        800,
                        292,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "bc-out-r",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        850,
                        292,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "bc-preset",
                    "items": [
                        "Lo-Fi Warm",
                        ",",
                        "Arcade Crunch",
                        ",",
                        "Broken Radio"
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
                        760,
                        20,
                        150,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        580,
                        14,
                        150,
                        22
                    ],
                    "varname": "bc_preset"
                }
            },
            {
                "box": {
                    "id": "bc-preset-js",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        760,
                        60,
                        194,
                        22
                    ],
                    "saved_object_attributes": {
                        "filename": "mt_module_presets.js",
                        "parameter_enable": 0
                    },
                    "text": "js mt_module_presets.js bitcrusher"
                }
            },
            {
                "box": {
                    "id": "bc-preset-unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "float",
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        760,
                        100,
                        170,
                        22
                    ],
                    "text": "unpack f f f"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "color": [
                        1,
                        0.5,
                        0,
                        1
                    ],
                    "destination": [
                        "bc-core",
                        3
                    ],
                    "midpoints": [
                        159.5,
                        285,
                        182,
                        285,
                        924,
                        285,
                        924,
                        337
                    ],
                    "source": [
                        "bc-bits",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.62,
                        0.86,
                        0.34,
                        1
                    ],
                    "destination": [
                        "bc-gain",
                        1
                    ],
                    "midpoints": [
                        93.83333333333334,
                        385,
                        324,
                        385,
                        697,
                        385,
                        697,
                        138
                    ],
                    "source": [
                        "bc-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.62,
                        0.86,
                        0.34,
                        1
                    ],
                    "destination": [
                        "bc-gain",
                        0
                    ],
                    "midpoints": [
                        33.5,
                        385,
                        124,
                        385,
                        639,
                        385,
                        639,
                        138
                    ],
                    "source": [
                        "bc-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.62,
                        0.86,
                        0.34,
                        1
                    ],
                    "destination": [
                        "bc-scope-in",
                        0
                    ],
                    "midpoints": [
                        154.16666666666669,
                        385,
                        524,
                        385,
                        345,
                        385,
                        345,
                        307
                    ],
                    "source": [
                        "bc-core",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.62,
                        0.86,
                        0.34,
                        1
                    ],
                    "destination": [
                        "bc-scope-wet",
                        0
                    ],
                    "midpoints": [
                        214.5,
                        385,
                        724,
                        385,
                        565,
                        385,
                        565,
                        337
                    ],
                    "source": [
                        "bc-core",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.5,
                        0,
                        1
                    ],
                    "destination": [
                        "bc-bits",
                        0
                    ],
                    "midpoints": [
                        159.5,
                        320,
                        195,
                        320,
                        182,
                        320,
                        182,
                        206
                    ],
                    "source": [
                        "bc-default-bits",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.5,
                        0,
                        1
                    ],
                    "destination": [
                        "bc-drive",
                        0
                    ],
                    "midpoints": [
                        419.5,
                        285,
                        460,
                        285,
                        442,
                        285,
                        442,
                        176
                    ],
                    "source": [
                        "bc-default-drive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.5,
                        0,
                        1
                    ],
                    "destination": [
                        "bc-rate",
                        0
                    ],
                    "midpoints": [
                        279.5,
                        285,
                        325,
                        285,
                        306,
                        285,
                        306,
                        176
                    ],
                    "source": [
                        "bc-default-rate",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.5,
                        0,
                        1
                    ],
                    "destination": [
                        "bc-core",
                        5
                    ],
                    "midpoints": [
                        419.5,
                        285,
                        442,
                        285,
                        1324,
                        285,
                        1324,
                        337
                    ],
                    "source": [
                        "bc-drive",
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
                        "bc-core",
                        2
                    ],
                    "midpoints": [
                        36,
                        195,
                        524,
                        195,
                        524,
                        337
                    ],
                    "order": 0,
                    "source": [
                        "bc-enable",
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
                        "bc-state",
                        0
                    ],
                    "midpoints": [
                        36,
                        195,
                        122,
                        195,
                        122,
                        302
                    ],
                    "order": 1,
                    "source": [
                        "bc-enable",
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
                        "bc-enable",
                        0
                    ],
                    "midpoints": [
                        139.5,
                        195,
                        155,
                        195,
                        36,
                        195
                    ],
                    "source": [
                        "bc-enable-set",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.62,
                        0.86,
                        0.34,
                        1
                    ],
                    "destination": [
                        "bc-out-l",
                        0
                    ],
                    "midpoints": [
                        619.5,
                        320,
                        639,
                        320,
                        815,
                        320
                    ],
                    "source": [
                        "bc-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.62,
                        0.86,
                        0.34,
                        1
                    ],
                    "destination": [
                        "bc-out-r",
                        0
                    ],
                    "midpoints": [
                        629.25,
                        320,
                        697,
                        320,
                        865,
                        320
                    ],
                    "source": [
                        "bc-gain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.5,
                        0,
                        1
                    ],
                    "destination": [
                        "bc-bits",
                        0
                    ],
                    "midpoints": [
                        205,
                        165,
                        182,
                        165,
                        182,
                        206
                    ],
                    "source": [
                        "bc-in-bits",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.5,
                        0,
                        1
                    ],
                    "destination": [
                        "bc-drive",
                        0
                    ],
                    "midpoints": [
                        325,
                        150,
                        442,
                        150,
                        442,
                        176
                    ],
                    "source": [
                        "bc-in-drive",
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
                        "bc-core",
                        2
                    ],
                    "midpoints": [
                        145,
                        150,
                        524,
                        150,
                        524,
                        337
                    ],
                    "order": 1,
                    "source": [
                        "bc-in-enable",
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
                        "bc-enable-set",
                        0
                    ],
                    "midpoints": [
                        145,
                        150,
                        155,
                        150,
                        155,
                        141
                    ],
                    "order": 0,
                    "source": [
                        "bc-in-enable",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.62,
                        0.86,
                        0.34,
                        1
                    ],
                    "destination": [
                        "bc-core",
                        0
                    ],
                    "midpoints": [
                        39,
                        230,
                        124,
                        230,
                        124,
                        337
                    ],
                    "source": [
                        "bc-in-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.62,
                        0.86,
                        0.34,
                        1
                    ],
                    "destination": [
                        "bc-core",
                        1
                    ],
                    "midpoints": [
                        85,
                        230,
                        324,
                        230,
                        324,
                        337
                    ],
                    "source": [
                        "bc-in-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.5,
                        0,
                        1
                    ],
                    "destination": [
                        "bc-rate",
                        0
                    ],
                    "midpoints": [
                        265,
                        150,
                        306,
                        150,
                        306,
                        176
                    ],
                    "source": [
                        "bc-in-rate",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "bc-preset-js",
                        0
                    ],
                    "midpoints": [
                        769.5,
                        50,
                        835,
                        50,
                        857,
                        50,
                        857,
                        60
                    ],
                    "source": [
                        "bc-preset",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "bc-preset-unpack",
                        0
                    ],
                    "midpoints": [
                        769.5,
                        90,
                        857,
                        90,
                        845,
                        90,
                        845,
                        100
                    ],
                    "source": [
                        "bc-preset-js",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "bc-bits",
                        0
                    ],
                    "midpoints": [
                        769.5,
                        165,
                        845,
                        165,
                        182,
                        165,
                        182,
                        206
                    ],
                    "source": [
                        "bc-preset-unpack",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "bc-drive",
                        0
                    ],
                    "midpoints": [
                        920.5,
                        150,
                        1185,
                        150,
                        442,
                        150,
                        442,
                        176
                    ],
                    "source": [
                        "bc-preset-unpack",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "bc-rate",
                        0
                    ],
                    "midpoints": [
                        845,
                        150,
                        1015,
                        150,
                        306,
                        150,
                        306,
                        176
                    ],
                    "source": [
                        "bc-preset-unpack",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        1,
                        0.5,
                        0,
                        1
                    ],
                    "destination": [
                        "bc-core",
                        4
                    ],
                    "midpoints": [
                        279.5,
                        285,
                        306,
                        285,
                        1124,
                        285,
                        1124,
                        337
                    ],
                    "source": [
                        "bc-rate",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-1006",
        "parameters": {
            "bc-bits": [
                "bitcrusher_bits",
                "BITS",
                0
            ],
            "bc-drive": [
                "bitcrusher_drive",
                "DRIVE",
                0
            ],
            "bc-gain": [
                "bitcrusher_output_gain",
                "Bitcrusher Out",
                0
            ],
            "bc-rate": [
                "bitcrusher_rate_hz",
                "RATE Hz",
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
                "name": "mt_module_presets.js",
                "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/patchers/effects",
                "patcherrelativepath": ".",
                "type": "TEXT",
                "implicit": 1
            }
        ],
        "autosave": 0,
        "bgcolor": [
            0.94,
            0.96,
            0.94,
            1
        ]
    }
}
