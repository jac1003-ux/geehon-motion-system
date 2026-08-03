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
            1020,
            440
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
                    "background": 1,
                    "bgcolor": [
                        0.13,
                        0.25,
                        0.21,
                        1
                    ],
                    "id": "vm-header",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1020,
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
                    "id": "vm-body",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1020,
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
                    "id": "vm-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        20,
                        420,
                        23
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        14,
                        360,
                        23
                    ],
                    "text": "VOCODER",
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
                    "id": "vm-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        63,
                        780,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        36,
                        650,
                        17
                    ],
                    "text": "SPECTRAL VOICE / HYBRID CARRIER / SMOOTH DRY-WET",
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
                    "id": "vm-in-l",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        24,
                        100,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "vm-in-r",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        84,
                        100,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "vm-ext-enable",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        170,
                        95,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "vm-ext-wet",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        235,
                        95,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "vm-ext-tone",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        300,
                        95,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "vm-ext-noise",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        365,
                        95,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "vm-ext-smooth",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        430,
                        95,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "vm-ext-bright",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        495,
                        95,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "vm-enable",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        24,
                        155,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        82,
                        24,
                        24
                    ]
                }
            },
            {
                "box": {
                    "id": "vm-enable-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        56,
                        157,
                        70,
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
                        0.22,
                        0.32,
                        0.28,
                        1
                    ]
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
                    "id": "vm-wet",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        155,
                        200,
                        62,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        424,
                        82,
                        64,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.7
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "vocoder_dry_wet",
                            "parameter_mmax": 1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "DRY/WET",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "vocoder_dry_wet"
                }
            },
            {
                "box": {
                    "fontsize": 9,
                    "id": "vm-wet-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        155,
                        177,
                        80,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        416,
                        154,
                        80,
                        17
                    ],
                    "text": "DRY / WET",
                    "textcolor": [
                        0.38,
                        0.5,
                        0.44,
                        1
                    ],
                    "textjustification": 1
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
                    "id": "vm-tone",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        245,
                        155,
                        62,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        220,
                        82,
                        64,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.35
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "vocoder_carrier_tone",
                            "parameter_mmax": 1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "TONE",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "vocoder_carrier_tone"
                }
            },
            {
                "box": {
                    "fontsize": 9,
                    "id": "vm-tone-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        245,
                        132,
                        100,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        212,
                        154,
                        90,
                        17
                    ],
                    "text": "Y · CARRIER TONE",
                    "textcolor": [
                        0.64,
                        0.48,
                        0.05,
                        1
                    ],
                    "textjustification": 1
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
                    "id": "vm-noise",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        355,
                        155,
                        62,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        314,
                        82,
                        64,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.25
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "vocoder_noise_mix",
                            "parameter_mmax": 1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "NOISE",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "vocoder_noise_mix"
                }
            },
            {
                "box": {
                    "fontsize": 9,
                    "id": "vm-noise-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        355,
                        132,
                        95,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        304,
                        154,
                        100,
                        17
                    ],
                    "text": "PINCH · NOISE MIX",
                    "textcolor": [
                        0.64,
                        0.48,
                        0.05,
                        1
                    ],
                    "textjustification": 1
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
                    "id": "vm-smooth",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        455,
                        155,
                        62,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        534,
                        82,
                        64,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.35
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "vocoder_spectral_smooth",
                            "parameter_mmax": 1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "SMOOTH",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "vocoder_spectral_smooth"
                }
            },
            {
                "box": {
                    "fontsize": 9,
                    "id": "vm-smooth-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        470,
                        132,
                        120,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        516,
                        154,
                        104,
                        17
                    ],
                    "text": "SPECTRAL SMOOTH",
                    "textcolor": [
                        0.38,
                        0.5,
                        0.44,
                        1
                    ],
                    "textjustification": 1
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
                    "id": "vm-bright",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        580,
                        185,
                        62,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        126,
                        82,
                        64,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.65
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "vocoder_brightness",
                            "parameter_mmax": 1,
                            "parameter_modmode": 3,
                            "parameter_shortname": "BRIGHT",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "vocoder_brightness"
                }
            },
            {
                "box": {
                    "fontsize": 9,
                    "id": "vm-bright-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        580,
                        162,
                        95,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        108,
                        154,
                        100,
                        17
                    ],
                    "text": "X · BRIGHTNESS",
                    "textcolor": [
                        0.64,
                        0.48,
                        0.05,
                        1
                    ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "id": "p-Vocoder-core",
                    "maxclass": "newobj",
                    "numinlets": 8,
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
                            134,
                            101,
                            1040,
                            941
                        ],
                        "gridsize": [
                            15,
                            15
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "vc-title",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        35,
                                        25,
                                        980,
                                        20
                                    ],
                                    "text": "Vocoder_core: L/R input -> mono modulator, internal hybrid carrier -> pfft spectral transfer -> smoothed dry/wet bypass"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "vc-in-l",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        35,
                                        90,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "vc-in-r",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        115,
                                        90,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "vc-enable",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        210,
                                        90,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "vc-wet",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        390,
                                        90,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "vc-tone",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        485,
                                        90,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "vc-noise",
                                    "index": 6,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        580,
                                        90,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "vc-smooth",
                                    "index": 7,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        675,
                                        90,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "vc-bright",
                                    "index": 8,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        790,
                                        90,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-enable-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        210,
                                        135,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-enable-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        210,
                                        170,
                                        55,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-enable-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        210,
                                        205,
                                        50,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-wet-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        390,
                                        135,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-wet-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        390,
                                        170,
                                        55,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-wet-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        390,
                                        205,
                                        50,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-tone-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        485,
                                        135,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-tone-map",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        485,
                                        170,
                                        150,
                                        22
                                    ],
                                    "text": "scale 0. 1. 70. 360."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-tone-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        485,
                                        205,
                                        55,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-tone-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        485,
                                        240,
                                        50,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-noise-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        580,
                                        135,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-noise-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        580,
                                        200,
                                        55,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-noise-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        580,
                                        235,
                                        50,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-smooth-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        675,
                                        135,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-smooth-map",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        675,
                                        170,
                                        145,
                                        22
                                    ],
                                    "text": "scale 0. 1. 1. 80."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-smooth-int",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        675,
                                        205,
                                        35,
                                        22
                                    ],
                                    "text": "i"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-smooth-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        675,
                                        240,
                                        90,
                                        22
                                    ],
                                    "text": "slide $1 $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-smooth-send",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        675,
                                        305,
                                        150,
                                        22
                                    ],
                                    "text": "s #0_vocoder_smooth"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-bright-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        790,
                                        135,
                                        80,
                                        22
                                    ],
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-bright-map",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        790,
                                        200,
                                        160,
                                        22
                                    ],
                                    "text": "scale 0. 1. 500. 9500."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-bright-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        790,
                                        235,
                                        55,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-bright-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        790,
                                        270,
                                        50,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-input-sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        35,
                                        165,
                                        35,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-input-mono",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        35,
                                        210,
                                        60,
                                        22
                                    ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-mod-sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        35,
                                        515,
                                        35,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-dry-l-sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        115,
                                        515,
                                        35,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-dry-r-sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        195,
                                        515,
                                        35,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-tone-mid",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        485,
                                        300,
                                        60,
                                        22
                                    ],
                                    "text": "*~ 1.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-tone-high",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        565,
                                        300,
                                        65,
                                        22
                                    ],
                                    "text": "*~ 2.01"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-car-base",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        485,
                                        345,
                                        65,
                                        22
                                    ],
                                    "text": "phasor~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-car-mid",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        565,
                                        345,
                                        65,
                                        22
                                    ],
                                    "text": "phasor~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-car-high",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        645,
                                        345,
                                        65,
                                        22
                                    ],
                                    "text": "phasor~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-base-scale",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        485,
                                        390,
                                        55,
                                        22
                                    ],
                                    "text": "*~ 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-base-offset",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        485,
                                        435,
                                        55,
                                        22
                                    ],
                                    "text": "-~ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-mid-scale",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        565,
                                        390,
                                        55,
                                        22
                                    ],
                                    "text": "*~ 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-mid-offset",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        565,
                                        435,
                                        55,
                                        22
                                    ],
                                    "text": "-~ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-high-scale",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        645,
                                        390,
                                        55,
                                        22
                                    ],
                                    "text": "*~ 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-high-offset",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        645,
                                        435,
                                        55,
                                        22
                                    ],
                                    "text": "-~ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-car-sum-a",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        525,
                                        485,
                                        35,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-car-sum-b",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        565,
                                        535,
                                        35,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-car-tonal-level",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        565,
                                        585,
                                        65,
                                        22
                                    ],
                                    "text": "*~ 0.18"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-car-noise",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        735,
                                        345,
                                        60,
                                        22
                                    ],
                                    "text": "noise~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-car-noise-level",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        735,
                                        390,
                                        65,
                                        22
                                    ],
                                    "text": "*~ 0.25"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-one-noise",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        645,
                                        585,
                                        60,
                                        22
                                    ],
                                    "text": "sig~ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-noise-inv",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        645,
                                        635,
                                        35,
                                        22
                                    ],
                                    "text": "-~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-tonal-mix",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        565,
                                        690,
                                        35,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-noise-mix",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        735,
                                        690,
                                        35,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-car-mix",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        650,
                                        745,
                                        35,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-car-filter",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        650,
                                        795,
                                        125,
                                        22
                                    ],
                                    "text": "lores~ 5000 0.35"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-pfft",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        35,
                                        610,
                                        325,
                                        22
                                    ],
                                    "text": "pfft~ mt_vocoder_pfft 1024 4 args #0_vocoder_smooth"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-pfft-makeup",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        35,
                                        670,
                                        55,
                                        22
                                    ],
                                    "text": "*~ 3."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-pfft-safe",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        35,
                                        720,
                                        85,
                                        22
                                    ],
                                    "text": "clip~ -1. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-effective-wet",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        390,
                                        265,
                                        35,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-one-wet",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        397.5,
                                        401,
                                        60,
                                        22
                                    ],
                                    "text": "sig~ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-dry-amount",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        397.5,
                                        429,
                                        35,
                                        22
                                    ],
                                    "text": "-~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-dry-gain-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        115,
                                        795,
                                        35,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-wet-gain-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        175,
                                        795,
                                        35,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-outmix-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        145,
                                        850,
                                        35,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-dry-gain-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        245,
                                        795,
                                        35,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-wet-gain-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        305,
                                        795,
                                        35,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "vc-outmix-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        275,
                                        850,
                                        35,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "vc-out-l",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        145,
                                        920,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "vc-out-r",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        275,
                                        920,
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
                                        "vc-car-sum-a",
                                        0
                                    ],
                                    "midpoints": [
                                        494.5,
                                        475,
                                        534.5,
                                        475
                                    ],
                                    "source": [
                                        "vc-base-offset",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-base-offset",
                                        0
                                    ],
                                    "source": [
                                        "vc-base-scale",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-bright-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        799.5,
                                        130,
                                        799.5,
                                        130
                                    ],
                                    "source": [
                                        "vc-bright",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-bright-map",
                                        0
                                    ],
                                    "midpoints": [
                                        799.5,
                                        165,
                                        799.5,
                                        165
                                    ],
                                    "source": [
                                        "vc-bright-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-car-filter",
                                        1
                                    ],
                                    "midpoints": [
                                        799.5,
                                        525,
                                        712.5,
                                        525
                                    ],
                                    "source": [
                                        "vc-bright-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-bright-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        799.5,
                                        200,
                                        799.5,
                                        200
                                    ],
                                    "source": [
                                        "vc-bright-map",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-bright-line",
                                        0
                                    ],
                                    "source": [
                                        "vc-bright-msg",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-base-scale",
                                        0
                                    ],
                                    "source": [
                                        "vc-car-base",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-pfft",
                                        1
                                    ],
                                    "midpoints": [
                                        659.5,
                                        835,
                                        350.5,
                                        835
                                    ],
                                    "source": [
                                        "vc-car-filter",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-high-scale",
                                        0
                                    ],
                                    "source": [
                                        "vc-car-high",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-mid-scale",
                                        0
                                    ],
                                    "source": [
                                        "vc-car-mid",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-car-filter",
                                        0
                                    ],
                                    "midpoints": [
                                        659.5,
                                        770,
                                        659.5,
                                        770
                                    ],
                                    "source": [
                                        "vc-car-mix",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-car-noise-level",
                                        0
                                    ],
                                    "source": [
                                        "vc-car-noise",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-noise-mix",
                                        0
                                    ],
                                    "midpoints": [
                                        744.5,
                                        550,
                                        744.5,
                                        550
                                    ],
                                    "source": [
                                        "vc-car-noise-level",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-car-sum-b",
                                        0
                                    ],
                                    "midpoints": [
                                        534.5,
                                        525,
                                        574.5,
                                        525
                                    ],
                                    "source": [
                                        "vc-car-sum-a",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-car-tonal-level",
                                        0
                                    ],
                                    "midpoints": [
                                        574.5,
                                        570,
                                        574.5,
                                        570
                                    ],
                                    "source": [
                                        "vc-car-sum-b",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-tonal-mix",
                                        0
                                    ],
                                    "midpoints": [
                                        574.5,
                                        650,
                                        574.5,
                                        650
                                    ],
                                    "source": [
                                        "vc-car-tonal-level",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-dry-gain-l",
                                        1
                                    ],
                                    "midpoints": [
                                        407,
                                        475,
                                        140.5,
                                        475
                                    ],
                                    "order": 1,
                                    "source": [
                                        "vc-dry-amount",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-dry-gain-r",
                                        1
                                    ],
                                    "midpoints": [
                                        407,
                                        475,
                                        270.5,
                                        475
                                    ],
                                    "order": 0,
                                    "source": [
                                        "vc-dry-amount",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-outmix-l",
                                        0
                                    ],
                                    "midpoints": [
                                        124.5,
                                        835,
                                        154.5,
                                        835
                                    ],
                                    "source": [
                                        "vc-dry-gain-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-outmix-r",
                                        0
                                    ],
                                    "midpoints": [
                                        254.5,
                                        835,
                                        284.5,
                                        835
                                    ],
                                    "source": [
                                        "vc-dry-gain-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-dry-gain-l",
                                        0
                                    ],
                                    "source": [
                                        "vc-dry-l-sum",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-dry-gain-r",
                                        0
                                    ],
                                    "midpoints": [
                                        204.5,
                                        670,
                                        254.5,
                                        670
                                    ],
                                    "source": [
                                        "vc-dry-r-sum",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-dry-amount",
                                        1
                                    ],
                                    "midpoints": [
                                        399.5,
                                        310,
                                        423,
                                        310
                                    ],
                                    "order": 0,
                                    "source": [
                                        "vc-effective-wet",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-wet-gain-l",
                                        1
                                    ],
                                    "midpoints": [
                                        399.5,
                                        310,
                                        200.5,
                                        310
                                    ],
                                    "order": 2,
                                    "source": [
                                        "vc-effective-wet",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-wet-gain-r",
                                        1
                                    ],
                                    "midpoints": [
                                        399.5,
                                        310,
                                        330.5,
                                        310
                                    ],
                                    "order": 1,
                                    "source": [
                                        "vc-effective-wet",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-enable-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        219.5,
                                        130,
                                        219.5,
                                        130
                                    ],
                                    "source": [
                                        "vc-enable",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-enable-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        219.5,
                                        165,
                                        219.5,
                                        165
                                    ],
                                    "source": [
                                        "vc-enable-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-effective-wet",
                                        1
                                    ],
                                    "midpoints": [
                                        219.5,
                                        245,
                                        415.5,
                                        245
                                    ],
                                    "source": [
                                        "vc-enable-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-enable-line",
                                        0
                                    ],
                                    "source": [
                                        "vc-enable-msg",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-car-sum-b",
                                        1
                                    ],
                                    "midpoints": [
                                        654.5,
                                        495,
                                        590.5,
                                        495
                                    ],
                                    "source": [
                                        "vc-high-offset",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-high-offset",
                                        0
                                    ],
                                    "source": [
                                        "vc-high-scale",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-dry-l-sum",
                                        0
                                    ],
                                    "midpoints": [
                                        44.5,
                                        145,
                                        124.5,
                                        145
                                    ],
                                    "order": 0,
                                    "source": [
                                        "vc-in-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-input-sum",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "vc-in-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-dry-r-sum",
                                        0
                                    ],
                                    "midpoints": [
                                        124.5,
                                        145,
                                        204.5,
                                        145
                                    ],
                                    "order": 0,
                                    "source": [
                                        "vc-in-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-input-sum",
                                        1
                                    ],
                                    "midpoints": [
                                        124.5,
                                        145,
                                        60.5,
                                        145
                                    ],
                                    "order": 1,
                                    "source": [
                                        "vc-in-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-mod-sum",
                                        0
                                    ],
                                    "midpoints": [
                                        44.5,
                                        375,
                                        44.5,
                                        375
                                    ],
                                    "source": [
                                        "vc-input-mono",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-input-mono",
                                        0
                                    ],
                                    "midpoints": [
                                        44.5,
                                        200,
                                        44.5,
                                        200
                                    ],
                                    "source": [
                                        "vc-input-sum",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-car-sum-a",
                                        1
                                    ],
                                    "midpoints": [
                                        574.5,
                                        475,
                                        550.5,
                                        475
                                    ],
                                    "source": [
                                        "vc-mid-offset",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-mid-offset",
                                        0
                                    ],
                                    "source": [
                                        "vc-mid-scale",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-pfft",
                                        0
                                    ],
                                    "midpoints": [
                                        44.5,
                                        570,
                                        44.5,
                                        570
                                    ],
                                    "source": [
                                        "vc-mod-sum",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-noise-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        589.5,
                                        130,
                                        589.5,
                                        130
                                    ],
                                    "source": [
                                        "vc-noise",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-noise-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        589.5,
                                        165,
                                        589.5,
                                        165
                                    ],
                                    "source": [
                                        "vc-noise-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-tonal-mix",
                                        1
                                    ],
                                    "midpoints": [
                                        654.5,
                                        670,
                                        590.5,
                                        670
                                    ],
                                    "source": [
                                        "vc-noise-inv",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-noise-inv",
                                        1
                                    ],
                                    "midpoints": [
                                        589.5,
                                        245,
                                        670.5,
                                        245
                                    ],
                                    "order": 1,
                                    "source": [
                                        "vc-noise-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-noise-mix",
                                        1
                                    ],
                                    "midpoints": [
                                        589.5,
                                        245,
                                        760.5,
                                        245
                                    ],
                                    "order": 0,
                                    "source": [
                                        "vc-noise-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-car-mix",
                                        1
                                    ],
                                    "midpoints": [
                                        744.5,
                                        730,
                                        675.5,
                                        730
                                    ],
                                    "source": [
                                        "vc-noise-mix",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-noise-line",
                                        0
                                    ],
                                    "source": [
                                        "vc-noise-msg",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-noise-inv",
                                        0
                                    ],
                                    "midpoints": [
                                        654.5,
                                        620,
                                        654.5,
                                        620
                                    ],
                                    "source": [
                                        "vc-one-noise",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-dry-amount",
                                        0
                                    ],
                                    "midpoints": [
                                        407,
                                        425,
                                        407,
                                        425
                                    ],
                                    "source": [
                                        "vc-one-wet",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-out-l",
                                        0
                                    ],
                                    "source": [
                                        "vc-outmix-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-out-r",
                                        0
                                    ],
                                    "source": [
                                        "vc-outmix-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-pfft-makeup",
                                        0
                                    ],
                                    "midpoints": [
                                        44.5,
                                        650,
                                        44.5,
                                        650
                                    ],
                                    "source": [
                                        "vc-pfft",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-pfft-safe",
                                        0
                                    ],
                                    "midpoints": [
                                        44.5,
                                        705,
                                        44.5,
                                        705
                                    ],
                                    "source": [
                                        "vc-pfft-makeup",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-wet-gain-l",
                                        0
                                    ],
                                    "midpoints": [
                                        44.5,
                                        770,
                                        184.5,
                                        770
                                    ],
                                    "order": 1,
                                    "source": [
                                        "vc-pfft-safe",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-wet-gain-r",
                                        0
                                    ],
                                    "midpoints": [
                                        44.5,
                                        770,
                                        314.5,
                                        770
                                    ],
                                    "order": 0,
                                    "source": [
                                        "vc-pfft-safe",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-smooth-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        684.5,
                                        130,
                                        684.5,
                                        130
                                    ],
                                    "source": [
                                        "vc-smooth",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-smooth-map",
                                        0
                                    ],
                                    "midpoints": [
                                        684.5,
                                        165,
                                        684.5,
                                        165
                                    ],
                                    "source": [
                                        "vc-smooth-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-smooth-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        684.5,
                                        245,
                                        684.5,
                                        245
                                    ],
                                    "source": [
                                        "vc-smooth-int",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-smooth-int",
                                        0
                                    ],
                                    "midpoints": [
                                        684.5,
                                        200,
                                        684.5,
                                        200
                                    ],
                                    "source": [
                                        "vc-smooth-map",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-smooth-send",
                                        0
                                    ],
                                    "midpoints": [
                                        684.5,
                                        270,
                                        684.5,
                                        270
                                    ],
                                    "source": [
                                        "vc-smooth-msg",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-car-mix",
                                        0
                                    ],
                                    "midpoints": [
                                        574.5,
                                        730,
                                        659.5,
                                        730
                                    ],
                                    "source": [
                                        "vc-tonal-mix",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-tone-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        494.5,
                                        130,
                                        494.5,
                                        130
                                    ],
                                    "source": [
                                        "vc-tone",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-tone-map",
                                        0
                                    ],
                                    "midpoints": [
                                        494.5,
                                        165,
                                        494.5,
                                        165
                                    ],
                                    "source": [
                                        "vc-tone-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-car-high",
                                        0
                                    ],
                                    "midpoints": [
                                        574.5,
                                        335,
                                        654.5,
                                        335
                                    ],
                                    "source": [
                                        "vc-tone-high",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-car-base",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "vc-tone-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-tone-high",
                                        0
                                    ],
                                    "midpoints": [
                                        494.5,
                                        285,
                                        574.5,
                                        285
                                    ],
                                    "order": 0,
                                    "source": [
                                        "vc-tone-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-tone-mid",
                                        0
                                    ],
                                    "order": 2,
                                    "source": [
                                        "vc-tone-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-tone-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        494.5,
                                        200,
                                        494.5,
                                        200
                                    ],
                                    "source": [
                                        "vc-tone-map",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-car-mid",
                                        0
                                    ],
                                    "midpoints": [
                                        494.5,
                                        335,
                                        574.5,
                                        335
                                    ],
                                    "source": [
                                        "vc-tone-mid",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-tone-line",
                                        0
                                    ],
                                    "source": [
                                        "vc-tone-msg",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-wet-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        399.5,
                                        130,
                                        399.5,
                                        130
                                    ],
                                    "source": [
                                        "vc-wet",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-wet-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        399.5,
                                        165,
                                        399.5,
                                        165
                                    ],
                                    "source": [
                                        "vc-wet-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-outmix-l",
                                        1
                                    ],
                                    "midpoints": [
                                        184.5,
                                        833.5,
                                        170.5,
                                        833.5
                                    ],
                                    "source": [
                                        "vc-wet-gain-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-outmix-r",
                                        1
                                    ],
                                    "midpoints": [
                                        314.5,
                                        833.5,
                                        300.5,
                                        833.5
                                    ],
                                    "source": [
                                        "vc-wet-gain-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-effective-wet",
                                        0
                                    ],
                                    "source": [
                                        "vc-wet-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "vc-wet-line",
                                        0
                                    ],
                                    "source": [
                                        "vc-wet-msg",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-992"
                    },
                    "patching_rect": [
                        24,
                        330,
                        155,
                        22
                    ],
                    "text": "p Vocoder_core"
                }
            },
            {
                "box": {
                    "id": "vm-gain",
                    "inactivecoldcolor": [
                        0.08,
                        0.1,
                        0.09,
                        0
                    ],
                    "inactivewarmcolor": [
                        0.08,
                        0.1,
                        0.09,
                        0
                    ],
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
                        690,
                        160,
                        54,
                        150
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        646,
                        64,
                        54,
                        132
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Vocoder Out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "vocoder_output_gain"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "vm-out-l",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        690,
                        349,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "vm-out-r",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        740,
                        349,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "vm-out-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        670,
                        389,
                        170,
                        20
                    ],
                    "text": "out 1/2: audio L/R"
                }
            },
            {
                "box": {
                    "id": "vm-wet-default",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        155,
                        265,
                        95,
                        22
                    ],
                    "text": "loadmess 0.7"
                }
            },
            {
                "box": {
                    "id": "vm-tone-default",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        245,
                        220,
                        95,
                        22
                    ],
                    "text": "loadmess 0.35"
                }
            },
            {
                "box": {
                    "id": "vm-noise-default",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        355,
                        220,
                        95,
                        22
                    ],
                    "text": "loadmess 0.25"
                }
            },
            {
                "box": {
                    "id": "vm-smooth-default",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        470,
                        220,
                        95,
                        22
                    ],
                    "text": "loadmess 0.35"
                }
            },
            {
                "box": {
                    "id": "vm-bright-default",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        580,
                        250,
                        95,
                        22
                    ],
                    "text": "loadmess 0.65"
                }
            },
            {
                "box": {
                    "id": "vm-enable-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        170,
                        145,
                        60,
                        22
                    ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "id": "vm-enable-state-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        170,
                        295,
                        180,
                        22
                    ],
                    "text": "s mt_vocoder_enable_state"
                }
            },
            {
                "box": {
                    "id": "vm-gain-active-state",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        365,
                        250,
                        170,
                        22
                    ],
                    "text": "r mt_vocoder_enable_state"
                }
            },
            {
                "box": {
                    "id": "vm-gain-active",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        365,
                        285,
                        100,
                        22
                    ],
                    "text": "prepend active"
                }
            },
            {
                "box": {
                    "id": "vm-preset",
                    "items": [
                        "Clear Robot",
                        ",",
                        "Air Choir",
                        ",",
                        "Breath Machine"
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
                        700,
                        20,
                        145,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        500,
                        8,
                        135,
                        22
                    ],
                    "varname": "vm_preset"
                }
            },
            {
                "box": {
                    "id": "vm-preset-js",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        700,
                        90,
                        190,
                        22
                    ],
                    "saved_object_attributes": {
                        "filename": "mt_module_presets.js",
                        "parameter_enable": 0
                    },
                    "text": "js mt_module_presets.js vocoder"
                }
            },
            {
                "box": {
                    "id": "vm-preset-unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "float",
                        "float",
                        "float",
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        700,
                        130,
                        170,
                        22
                    ],
                    "text": "unpack f f f f f"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "vm-gain",
                        1
                    ],
                    "midpoints": [
                        169.5,
                        330,
                        734.5,
                        330
                    ],
                    "source": [
                        "p-Vocoder-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-gain",
                        0
                    ],
                    "midpoints": [
                        33.5,
                        330,
                        699.5,
                        330
                    ],
                    "source": [
                        "p-Vocoder-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-Vocoder-core",
                        7
                    ],
                    "midpoints": [
                        589.5,
                        230,
                        169.5,
                        230
                    ],
                    "source": [
                        "vm-bright",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-bright",
                        0
                    ],
                    "midpoints": [
                        589.5,
                        255,
                        589.5,
                        255
                    ],
                    "source": [
                        "vm-bright-default",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-Vocoder-core",
                        2
                    ],
                    "midpoints": [
                        33.5,
                        229.30078125,
                        67.5,
                        229.30078125
                    ],
                    "order": 1,
                    "source": [
                        "vm-enable",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-enable-state-send",
                        0
                    ],
                    "midpoints": [
                        33.5,
                        230.05859375,
                        179.5,
                        230.05859375
                    ],
                    "order": 0,
                    "source": [
                        "vm-enable",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-enable",
                        0
                    ],
                    "midpoints": [
                        179.5,
                        140.4609375,
                        33.5,
                        140.4609375
                    ],
                    "source": [
                        "vm-enable-set",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-bright",
                        0
                    ],
                    "midpoints": [
                        504.5,
                        140,
                        589.5,
                        140
                    ],
                    "source": [
                        "vm-ext-bright",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-Vocoder-core",
                        2
                    ],
                    "midpoints": [
                        179.5,
                        229.453125,
                        67.5,
                        229.453125
                    ],
                    "order": 1,
                    "source": [
                        "vm-ext-enable",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-enable-set",
                        0
                    ],
                    "midpoints": [
                        179.5,
                        140,
                        179.5,
                        140
                    ],
                    "order": 0,
                    "source": [
                        "vm-ext-enable",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-noise",
                        0
                    ],
                    "source": [
                        "vm-ext-noise",
                        0
                    ],
                    "midpoints": [
                        380,
                        140,
                        364.5,
                        140
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-smooth",
                        0
                    ],
                    "midpoints": [
                        439.5,
                        140,
                        464.5,
                        140
                    ],
                    "source": [
                        "vm-ext-smooth",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-tone",
                        0
                    ],
                    "midpoints": [
                        309.5,
                        140,
                        254.5,
                        140
                    ],
                    "source": [
                        "vm-ext-tone",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-wet",
                        0
                    ],
                    "midpoints": [
                        244.5,
                        140,
                        164.5,
                        140
                    ],
                    "source": [
                        "vm-ext-wet",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-out-l",
                        0
                    ],
                    "midpoints": [
                        699.5,
                        295,
                        699.5,
                        295
                    ],
                    "source": [
                        "vm-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-out-r",
                        0
                    ],
                    "midpoints": [
                        708.25,
                        331.46875,
                        749.5,
                        331.46875
                    ],
                    "source": [
                        "vm-gain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-gain",
                        0
                    ],
                    "midpoints": [
                        374.5,
                        331.16796875,
                        699.5,
                        331.16796875
                    ],
                    "source": [
                        "vm-gain-active",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-gain-active",
                        0
                    ],
                    "midpoints": [
                        374.5,
                        255,
                        374.5,
                        255
                    ],
                    "source": [
                        "vm-gain-active-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-Vocoder-core",
                        0
                    ],
                    "midpoints": [
                        33.5,
                        205,
                        33.5,
                        205
                    ],
                    "source": [
                        "vm-in-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-Vocoder-core",
                        1
                    ],
                    "midpoints": [
                        93.5,
                        229.828125,
                        50.5,
                        229.828125
                    ],
                    "source": [
                        "vm-in-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-Vocoder-core",
                        5
                    ],
                    "midpoints": [
                        364.5,
                        230,
                        135.5,
                        230
                    ],
                    "source": [
                        "vm-noise",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-noise",
                        0
                    ],
                    "midpoints": [
                        364.5,
                        255,
                        364.5,
                        255
                    ],
                    "source": [
                        "vm-noise-default",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-preset-js",
                        0
                    ],
                    "midpoints": [
                        709.5,
                        50,
                        709.5,
                        50
                    ],
                    "source": [
                        "vm-preset",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-preset-unpack",
                        0
                    ],
                    "midpoints": [
                        709.5,
                        90,
                        709.5,
                        90
                    ],
                    "source": [
                        "vm-preset-js",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-bright",
                        0
                    ],
                    "midpoints": [
                        860.5,
                        140,
                        589.5,
                        140
                    ],
                    "source": [
                        "vm-preset-unpack",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-noise",
                        0
                    ],
                    "midpoints": [
                        785,
                        140,
                        364.5,
                        140
                    ],
                    "source": [
                        "vm-preset-unpack",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-smooth",
                        0
                    ],
                    "midpoints": [
                        822.75,
                        140,
                        464.5,
                        140
                    ],
                    "source": [
                        "vm-preset-unpack",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-tone",
                        0
                    ],
                    "midpoints": [
                        747.25,
                        140,
                        254.5,
                        140
                    ],
                    "source": [
                        "vm-preset-unpack",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-wet",
                        0
                    ],
                    "midpoints": [
                        709.5,
                        138.77734375,
                        164.5,
                        138.77734375
                    ],
                    "source": [
                        "vm-preset-unpack",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-Vocoder-core",
                        6
                    ],
                    "midpoints": [
                        464.5,
                        230,
                        152.5,
                        230
                    ],
                    "source": [
                        "vm-smooth",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-smooth",
                        0
                    ],
                    "midpoints": [
                        479.5,
                        255,
                        464.5,
                        255,
                        464.5,
                        255
                    ],
                    "source": [
                        "vm-smooth-default",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-Vocoder-core",
                        4
                    ],
                    "midpoints": [
                        254.5,
                        230,
                        118.5,
                        230,
                        118.5,
                        330
                    ],
                    "source": [
                        "vm-tone",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-tone",
                        0
                    ],
                    "midpoints": [
                        254.5,
                        255,
                        254.5,
                        255
                    ],
                    "source": [
                        "vm-tone-default",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "p-Vocoder-core",
                        3
                    ],
                    "midpoints": [
                        164.5,
                        230,
                        101.5,
                        230,
                        101.5,
                        330
                    ],
                    "source": [
                        "vm-wet",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vm-wet",
                        0
                    ],
                    "midpoints": [
                        164.5,
                        255,
                        164.5,
                        255
                    ],
                    "source": [
                        "vm-wet-default",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-990",
        "parameters": {
            "vm-bright": [
                "vocoder_brightness",
                "BRIGHT",
                0
            ],
            "vm-gain": [
                "live.gain~",
                "Vocoder Out",
                0
            ],
            "vm-noise": [
                "vocoder_noise_mix",
                "NOISE",
                0
            ],
            "vm-smooth": [
                "vocoder_spectral_smooth",
                "SMOOTH",
                0
            ],
            "vm-tone": [
                "vocoder_carrier_tone",
                "TONE",
                0
            ],
            "vm-wet": [
                "vocoder_dry_wet",
                "DRY/WET",
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
            },
            {
                "name": "mt_vocoder_pfft.maxpat",
                "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/patchers/dsp",
                "patcherrelativepath": "../dsp",
                "type": "JSON",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}
