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
        "openrect": [
            80,
            80,
            1120,
            460
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
                    "id": "mb2-header",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1380,
                        30,
                        1100,
                        58
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        0,
                        1100,
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
                    "id": "mb2-body",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1380,
                        118,
                        1100,
                        342
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        58,
                        1100,
                        342
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 18,
                    "id": "mb2-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        14,
                        430,
                        27
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        14,
                        430,
                        27
                    ],
                    "text": "MULTIBAND FILTER",
                    "textcolor": [
                        0.94,
                        0.96,
                        0.94,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 9,
                    "id": "mb2-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        51,
                        780,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        36,
                        780,
                        17
                    ],
                    "text": "3-BAND SPECTRAL MOTION / FOCUS / DRIVE / WIDTH / PURE WET RETURN",
                    "textcolor": [
                        0.72,
                        0.8,
                        0.75,
                        1
                    ]
                }
            },
            {
                "box": {
                    "comment": "Audio L",
                    "id": "mb2-in-l",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        20,
                        430,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Audio R",
                    "id": "mb2-in-r",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        60,
                        430,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Enable 0/1",
                    "id": "mb2-in-enable",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        100,
                        430,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "mb2-enable-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        100,
                        466,
                        50,
                        22
                    ],
                    "text": "set $1"
                }
            },
            {
                "box": {
                    "comment": "Focus 0-1",
                    "id": "mb2-in-focus",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        140,
                        430,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Contrast 0-1",
                    "id": "mb2-in-contrast",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        180,
                        430,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Spread 0-1",
                    "id": "mb2-in-spread",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        220,
                        430,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "mb2-enable",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        510,
                        82,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        510,
                        76,
                        24,
                        24
                    ],
                    "varname": "multiband_filter_enable"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "mb2-enable-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        540,
                        84,
                        60,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        540,
                        78,
                        60,
                        20
                    ],
                    "text": "ENABLE"
                }
            },
            {
                "box": {
                    "id": "mb2-band-menu",
                    "items": [
                        "LOW",
                        ",",
                        "MID",
                        ",",
                        "HIGH"
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
                        630,
                        82,
                        120,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        630,
                        76,
                        120,
                        22
                    ],
                    "varname": "multiband_selected_band"
                }
            },
            {
                "box": {
                    "id": "mb2-mute",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        770,
                        82,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        770,
                        76,
                        24,
                        24
                    ],
                    "varname": "multiband_band_mute"
                }
            },
            {
                "box": {
                    "id": "mb2-mute-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        800,
                        114,
                        45,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        800,
                        78,
                        45,
                        20
                    ],
                    "text": "MUTE"
                }
            },
            {
                "box": {
                    "id": "mb2-solo",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        850,
                        82,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        850,
                        76,
                        24,
                        24
                    ],
                    "varname": "multiband_band_solo"
                }
            },
            {
                "box": {
                    "id": "mb2-solo-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        880,
                        84,
                        45,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        880,
                        78,
                        45,
                        20
                    ],
                    "text": "SOLO"
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
                    "id": "mb2-gain",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        510,
                        145,
                        70,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        510,
                        138,
                        70,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Selected Band Gain",
                            "parameter_mmax": 12,
                            "parameter_mmin": -24,
                            "parameter_modmode": 3,
                            "parameter_shortname": "GAIN dB",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mb2_gain"
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
                    "id": "mb2-drive",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        600,
                        145,
                        70,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        600,
                        138,
                        70,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Selected Band Drive",
                            "parameter_mmax": 18,
                            "parameter_modmode": 3,
                            "parameter_shortname": "DRIVE dB",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mb2_drive"
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
                    "id": "mb2-width",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        690,
                        145,
                        70,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        690,
                        138,
                        70,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                100
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Selected Band Width",
                            "parameter_mmax": 200,
                            "parameter_modmode": 0,
                            "parameter_shortname": "WIDTH",
                            "parameter_type": 1,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "mb2_width"
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
                    "id": "mb2-low-x",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        790,
                        145,
                        70,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        790,
                        138,
                        70,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                250
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Low Crossover",
                            "parameter_mmax": 1200,
                            "parameter_mmin": 80,
                            "parameter_modmode": 3,
                            "parameter_shortname": "LOW X Hz",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "mb2_low_x"
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
                    "id": "mb2-high-x",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        880,
                        145,
                        70,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        880,
                        138,
                        70,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                3500
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "High Crossover",
                            "parameter_mmax": 12000,
                            "parameter_mmin": 1200,
                            "parameter_modmode": 3,
                            "parameter_shortname": "HIGH X Hz",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "mb2_high_x"
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
                    "id": "mb2-focus",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        540,
                        255,
                        70,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        540,
                        250,
                        70,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                50
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Spectral Focus",
                            "parameter_mmax": 100,
                            "parameter_modmode": 0,
                            "parameter_shortname": "FOCUS",
                            "parameter_type": 1,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "mb2_focus"
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
                    "id": "mb2-contrast",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        650,
                        255,
                        70,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        650,
                        250,
                        70,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Spectral Contrast",
                            "parameter_mmax": 100,
                            "parameter_modmode": 0,
                            "parameter_shortname": "CONTRAST",
                            "parameter_type": 1,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "mb2_contrast"
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
                    "id": "mb2-spread",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        760,
                        255,
                        70,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        760,
                        250,
                        70,
                        48
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Spectral Spread",
                            "parameter_mmax": 100,
                            "parameter_modmode": 0,
                            "parameter_shortname": "SPREAD",
                            "parameter_type": 1,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "mb2_spread"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "mb2-macro-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        520,
                        225,
                        350,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        520,
                        220,
                        350,
                        20
                    ],
                    "text": "PERFORMANCE MACROS",
                    "textcolor": [
                        0.2,
                        0.31,
                        0.27,
                        1
                    ]
                }
            },
            {
                "box": {
                    "border": 0,
                    "filename": "mt_multiband_filter_visual.js",
                    "id": "mb2-visual",
                    "maxclass": "jsui",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        24,
                        82,
                        460,
                        260
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        76,
                        460,
                        292
                    ],
                    "varname": "multiband_filter_response"
                }
            },
            {
                "box": {
                    "id": "mb2-controller",
                    "maxclass": "newobj",
                    "numinlets": 11,
                    "numoutlets": 22,
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
                    "patching_rect": [
                        300,
                        470,
                        350,
                        22
                    ],
                    "saved_object_attributes": {
                        "filename": "mt_multiband_filter_controller.js",
                        "parameter_enable": 0
                    },
                    "text": "js mt_multiband_filter_controller.js"
                }
            },
            {
                "box": {
                    "id": "mb2-init",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        300,
                        500,
                        95,
                        22
                    ],
                    "text": "loadmess bang"
                }
            },
            {
                "box": {
                    "id": "mb2-state",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        20,
                        530,
                        220,
                        22
                    ],
                    "text": "s mt_multiband_filter_enable_state"
                }
            },
            {
                "box": {
                    "id": "mb2-focus-percent",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        100,
                        500,
                        55,
                        22
                    ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "id": "mb2-contrast-percent",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        160,
                        470,
                        55,
                        22
                    ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "id": "mb2-spread-percent",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        235,
                        470,
                        55,
                        22
                    ],
                    "text": "* 100."
                }
            },
            {
                "box": {
                    "id": "mb2-core",
                    "maxclass": "newobj",
                    "numinlets": 14,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
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
                            2260,
                            1110
                        ],
                        "gridsize": [
                            15,
                            15
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-l",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        40,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-r",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        160,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-enable",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "patching_rect": [
                                        280,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-low-x",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        400,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-high-x",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        520,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-low-gain",
                                    "index": 6,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        780,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-mid-gain",
                                    "index": 7,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        920,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-high-gain",
                                    "index": 8,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1060,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-low-drive",
                                    "index": 9,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1220,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-mid-drive",
                                    "index": 10,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1440,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-high-drive",
                                    "index": 11,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1660,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-low-width",
                                    "index": 12,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1880,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-mid-width",
                                    "index": 13,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2000,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-high-width",
                                    "index": 14,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2120,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-cross-low-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        10,
                                        145,
                                        90,
                                        22
                                    ],
                                    "text": "cross~ 250."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-cross-high-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        47.5,
                                        205,
                                        95,
                                        22
                                    ],
                                    "text": "cross~ 3500."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-cross-low-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        130,
                                        145,
                                        90,
                                        22
                                    ],
                                    "text": "cross~ 250."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-cross-high-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        167.5,
                                        205,
                                        95,
                                        22
                                    ],
                                    "text": "cross~ 3500."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-gain-dbtoa",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        766,
                                        120,
                                        58,
                                        22
                                    ],
                                    "text": "dbtoa"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-gain-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        769,
                                        155,
                                        52,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-gain-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        771,
                                        190,
                                        48,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-drive-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1199,
                                        120,
                                        72,
                                        22
                                    ],
                                    "text": "clip 0. 18."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-drive-dbtoa",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1164,
                                        155,
                                        58,
                                        22
                                    ],
                                    "text": "dbtoa"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-drive-pre-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1167,
                                        190,
                                        52,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-drive-pre-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        1169,
                                        225,
                                        48,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-drive-mix-div",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        1251,
                                        155,
                                        52,
                                        22
                                    ],
                                    "text": "/ 18."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-drive-mix-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1251,
                                        190,
                                        52,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-drive-mix-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        1253,
                                        225,
                                        48,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-one",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1312.5,
                                        190,
                                        55,
                                        22
                                    ],
                                    "text": "sig~ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-mix-inverse",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1321,
                                        225,
                                        38,
                                        22
                                    ],
                                    "text": "-~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-width-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1860,
                                        120,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0. 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-width-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1869,
                                        155,
                                        52,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-width-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        1871,
                                        190,
                                        48,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-l-dry",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        271,
                                        360,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-l-pre",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        346,
                                        360,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-l-sat",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        339,
                                        400,
                                        52,
                                        22
                                    ],
                                    "text": "tanh~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-l-wet",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        346,
                                        440,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-l-blend",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        271,
                                        480,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-l-gain",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        271,
                                        520,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-r-dry",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        491,
                                        360,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-r-pre",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        566,
                                        360,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-r-sat",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        559,
                                        400,
                                        52,
                                        22
                                    ],
                                    "text": "tanh~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-r-wet",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        566,
                                        440,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-r-blend",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        491,
                                        480,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-r-gain",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        491,
                                        520,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        291,
                                        590,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-sum-half",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        281,
                                        630,
                                        58,
                                        22
                                    ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-diff",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        396,
                                        590,
                                        38,
                                        22
                                    ],
                                    "text": "-~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-diff-half",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        386,
                                        630,
                                        58,
                                        22
                                    ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-side-width",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        396,
                                        670,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-out-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        291,
                                        710,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-out-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        396,
                                        710,
                                        38,
                                        22
                                    ],
                                    "text": "-~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-abs-l",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        527.5,
                                        590,
                                        45,
                                        22
                                    ],
                                    "text": "abs~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-abs-r",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        607.5,
                                        590,
                                        45,
                                        22
                                    ],
                                    "text": "abs~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-energy-sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        571,
                                        630,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-low-energy",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        561,
                                        670,
                                        58,
                                        22
                                    ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-gain-dbtoa",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        906,
                                        120,
                                        58,
                                        22
                                    ],
                                    "text": "dbtoa"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-gain-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        909,
                                        155,
                                        52,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-gain-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        911,
                                        190,
                                        48,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-drive-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1419,
                                        120,
                                        72,
                                        22
                                    ],
                                    "text": "clip 0. 18."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-drive-dbtoa",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1384,
                                        155,
                                        58,
                                        22
                                    ],
                                    "text": "dbtoa"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-drive-pre-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1387,
                                        190,
                                        52,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-drive-pre-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        1389,
                                        225,
                                        48,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-drive-mix-div",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        1471,
                                        155,
                                        52,
                                        22
                                    ],
                                    "text": "/ 18."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-drive-mix-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1471,
                                        190,
                                        52,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-drive-mix-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        1473,
                                        225,
                                        48,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-one",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1532.5,
                                        190,
                                        55,
                                        22
                                    ],
                                    "text": "sig~ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-mix-inverse",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1541,
                                        225,
                                        38,
                                        22
                                    ],
                                    "text": "-~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-width-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1980,
                                        120,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0. 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-width-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1989,
                                        155,
                                        52,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-width-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        1991,
                                        190,
                                        48,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-l-dry",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        901,
                                        360,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-l-pre",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        976,
                                        360,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-l-sat",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        969,
                                        400,
                                        52,
                                        22
                                    ],
                                    "text": "tanh~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-l-wet",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        976,
                                        440,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-l-blend",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        901,
                                        480,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-l-gain",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        901,
                                        520,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-r-dry",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1121,
                                        360,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-r-pre",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1196,
                                        360,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-r-sat",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1189,
                                        400,
                                        52,
                                        22
                                    ],
                                    "text": "tanh~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-r-wet",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1196,
                                        440,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-r-blend",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1121,
                                        480,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-r-gain",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1121,
                                        520,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        921,
                                        590,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-sum-half",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        911,
                                        630,
                                        58,
                                        22
                                    ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-diff",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1026,
                                        590,
                                        38,
                                        22
                                    ],
                                    "text": "-~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-diff-half",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1016,
                                        630,
                                        58,
                                        22
                                    ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-side-width",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1026,
                                        670,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-out-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        921,
                                        710,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-out-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1026,
                                        710,
                                        38,
                                        22
                                    ],
                                    "text": "-~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-abs-l",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1157.5,
                                        590,
                                        45,
                                        22
                                    ],
                                    "text": "abs~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-abs-r",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1237.5,
                                        590,
                                        45,
                                        22
                                    ],
                                    "text": "abs~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-energy-sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1201,
                                        630,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-mid-energy",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1191,
                                        670,
                                        58,
                                        22
                                    ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-gain-dbtoa",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1046,
                                        120,
                                        58,
                                        22
                                    ],
                                    "text": "dbtoa"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-gain-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1049,
                                        155,
                                        52,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-gain-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        1051,
                                        190,
                                        48,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-drive-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1639,
                                        120,
                                        72,
                                        22
                                    ],
                                    "text": "clip 0. 18."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-drive-dbtoa",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1604,
                                        155,
                                        58,
                                        22
                                    ],
                                    "text": "dbtoa"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-drive-pre-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1607,
                                        190,
                                        52,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-drive-pre-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        1609,
                                        225,
                                        48,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-drive-mix-div",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "float"
                                    ],
                                    "patching_rect": [
                                        1691,
                                        155,
                                        52,
                                        22
                                    ],
                                    "text": "/ 18."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-drive-mix-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1691,
                                        190,
                                        52,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-drive-mix-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        1693,
                                        225,
                                        48,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-one",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1752.5,
                                        190,
                                        55,
                                        22
                                    ],
                                    "text": "sig~ 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-mix-inverse",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1761,
                                        225,
                                        38,
                                        22
                                    ],
                                    "text": "-~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-width-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2100,
                                        120,
                                        70,
                                        22
                                    ],
                                    "text": "clip 0. 2."
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-width-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2109,
                                        155,
                                        52,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-width-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        2111,
                                        190,
                                        48,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-l-dry",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1531,
                                        360,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-l-pre",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1606,
                                        360,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-l-sat",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1599,
                                        400,
                                        52,
                                        22
                                    ],
                                    "text": "tanh~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-l-wet",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1606,
                                        440,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-l-blend",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1531,
                                        480,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-l-gain",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1531,
                                        520,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-r-dry",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1751,
                                        360,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-r-pre",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1826,
                                        360,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-r-sat",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1819,
                                        400,
                                        52,
                                        22
                                    ],
                                    "text": "tanh~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-r-wet",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1826,
                                        440,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-r-blend",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1751,
                                        480,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-r-gain",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1751,
                                        520,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1551,
                                        590,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-sum-half",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1541,
                                        630,
                                        58,
                                        22
                                    ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-diff",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1656,
                                        590,
                                        38,
                                        22
                                    ],
                                    "text": "-~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-diff-half",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1646,
                                        630,
                                        58,
                                        22
                                    ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-side-width",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1656,
                                        670,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-out-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1551,
                                        710,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-out-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1656,
                                        710,
                                        38,
                                        22
                                    ],
                                    "text": "-~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-abs-l",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1787.5,
                                        590,
                                        45,
                                        22
                                    ],
                                    "text": "abs~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-abs-r",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1867.5,
                                        590,
                                        45,
                                        22
                                    ],
                                    "text": "abs~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-energy-sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1831,
                                        630,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-high-energy",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        1821,
                                        670,
                                        58,
                                        22
                                    ],
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-sum-l-a",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        716,
                                        810,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-sum-l-b",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        716,
                                        855,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-sum-r-a",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        946,
                                        810,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-sum-r-b",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        946,
                                        855,
                                        38,
                                        22
                                    ],
                                    "text": "+~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-limit-l",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        682.5,
                                        900,
                                        105,
                                        22
                                    ],
                                    "text": "clip~ -0.98 0.98"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-limit-r",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        912.5,
                                        900,
                                        105,
                                        22
                                    ],
                                    "text": "clip~ -0.98 0.98"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-enable-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        262.5,
                                        145,
                                        65,
                                        22
                                    ],
                                    "text": "clip 0 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-enable-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        269,
                                        180,
                                        52,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-enable-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        271,
                                        215,
                                        48,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-gate-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        716,
                                        945,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "mb2c-gate-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        946,
                                        945,
                                        38,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-out-l",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        720,
                                        1010,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-out-r",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        950,
                                        1010,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-out-low-energy",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1180,
                                        1010,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-out-mid-energy",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1450,
                                        1010,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "mb2c-out-high-energy",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        1850,
                                        1010,
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
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-l-dry",
                                        0
                                    ],
                                    "midpoints": [
                                        136.5,
                                        315,
                                        1537,
                                        315
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-cross-high-l",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-l-pre",
                                        0
                                    ],
                                    "midpoints": [
                                        136.5,
                                        315,
                                        1612,
                                        315
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-cross-high-l",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-l-dry",
                                        0
                                    ],
                                    "midpoints": [
                                        53.5,
                                        315,
                                        907,
                                        315
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-cross-high-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-l-pre",
                                        0
                                    ],
                                    "midpoints": [
                                        53.5,
                                        315,
                                        982,
                                        315
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-cross-high-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-r-dry",
                                        0
                                    ],
                                    "midpoints": [
                                        256.5,
                                        315,
                                        1757,
                                        315
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-cross-high-r",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-r-pre",
                                        0
                                    ],
                                    "midpoints": [
                                        256.5,
                                        315,
                                        1832,
                                        315
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-cross-high-r",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-r-dry",
                                        0
                                    ],
                                    "midpoints": [
                                        173.5,
                                        315,
                                        1127,
                                        315
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-cross-high-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-r-pre",
                                        0
                                    ],
                                    "midpoints": [
                                        173.5,
                                        315,
                                        1202,
                                        315
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-cross-high-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-cross-high-l",
                                        0
                                    ],
                                    "midpoints": [
                                        94,
                                        185,
                                        53.5,
                                        185
                                    ],
                                    "source": [
                                        "mb2c-cross-low-l",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-l-dry",
                                        0
                                    ],
                                    "midpoints": [
                                        16,
                                        315,
                                        277,
                                        315
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-cross-low-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-l-pre",
                                        0
                                    ],
                                    "midpoints": [
                                        16,
                                        315,
                                        352,
                                        315
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-cross-low-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-cross-high-r",
                                        0
                                    ],
                                    "midpoints": [
                                        214,
                                        185,
                                        173.5,
                                        185
                                    ],
                                    "source": [
                                        "mb2c-cross-low-r",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-r-dry",
                                        0
                                    ],
                                    "midpoints": [
                                        136,
                                        315,
                                        497,
                                        315
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-cross-low-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-r-pre",
                                        0
                                    ],
                                    "midpoints": [
                                        136,
                                        315,
                                        572,
                                        315
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-cross-low-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-enable-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        295,
                                        90,
                                        268.5,
                                        90
                                    ],
                                    "source": [
                                        "mb2c-enable",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-enable-msg",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-enable-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        272,
                                        180,
                                        295,
                                        180,
                                        275,
                                        180
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-gate-l",
                                        1
                                    ],
                                    "midpoints": [
                                        277,
                                        305,
                                        748,
                                        305
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-enable-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-gate-r",
                                        1
                                    ],
                                    "midpoints": [
                                        277,
                                        305,
                                        978,
                                        305
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-enable-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-enable-line",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-enable-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        278.5,
                                        215,
                                        295,
                                        215,
                                        277,
                                        215
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-out-l",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-gate-l",
                                        0
                                    ],
                                    "midpoints": [
                                        725.5,
                                        990,
                                        735,
                                        990
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-out-r",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-gate-r",
                                        0
                                    ],
                                    "midpoints": [
                                        955.5,
                                        990,
                                        965,
                                        990
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-energy-sum",
                                        0
                                    ],
                                    "midpoints": [
                                        1797,
                                        625,
                                        1810,
                                        625,
                                        1837,
                                        625
                                    ],
                                    "source": [
                                        "mb2c-high-abs-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-energy-sum",
                                        1
                                    ],
                                    "midpoints": [
                                        1877,
                                        625,
                                        1890,
                                        625,
                                        1863,
                                        625
                                    ],
                                    "source": [
                                        "mb2c-high-abs-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-diff-half",
                                        0
                                    ],
                                    "midpoints": [
                                        1665.5,
                                        625,
                                        1675,
                                        625,
                                        1652,
                                        625
                                    ],
                                    "source": [
                                        "mb2c-high-diff",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-side-width",
                                        0
                                    ],
                                    "midpoints": [
                                        1655.5,
                                        665,
                                        1675,
                                        665,
                                        1662,
                                        665
                                    ],
                                    "source": [
                                        "mb2c-high-diff-half",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-drive-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1675,
                                        90,
                                        1645,
                                        90
                                    ],
                                    "source": [
                                        "mb2c-high-drive",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-drive-dbtoa",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-high-drive-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1648.5,
                                        155,
                                        1675,
                                        155,
                                        1633,
                                        155
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-drive-mix-div",
                                        0
                                    ],
                                    "midpoints": [
                                        1648.5,
                                        155,
                                        1675,
                                        155,
                                        1697,
                                        155
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-high-drive-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-drive-pre-msg",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-drive-dbtoa",
                                        0
                                    ],
                                    "midpoints": [
                                        1613.5,
                                        190,
                                        1633,
                                        190,
                                        1613,
                                        190
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-drive-mix-msg",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-drive-mix-div",
                                        0
                                    ],
                                    "midpoints": [
                                        1700.5,
                                        190,
                                        1717,
                                        190,
                                        1697,
                                        190
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-l-wet",
                                        1
                                    ],
                                    "midpoints": [
                                        1699,
                                        305,
                                        1638,
                                        305
                                    ],
                                    "order": 2,
                                    "source": [
                                        "mb2c-high-drive-mix-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-mix-inverse",
                                        1
                                    ],
                                    "midpoints": [
                                        1699,
                                        270,
                                        1793,
                                        270
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-high-drive-mix-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-r-wet",
                                        1
                                    ],
                                    "midpoints": [
                                        1699,
                                        305,
                                        1858,
                                        305
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-high-drive-mix-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-drive-mix-line",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-drive-mix-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        1700.5,
                                        225,
                                        1717,
                                        225,
                                        1699,
                                        225
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-l-pre",
                                        1
                                    ],
                                    "midpoints": [
                                        1615,
                                        305,
                                        1638,
                                        305
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-high-drive-pre-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-r-pre",
                                        1
                                    ],
                                    "midpoints": [
                                        1615,
                                        305,
                                        1858,
                                        305
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-high-drive-pre-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-drive-pre-line",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-drive-pre-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        1616.5,
                                        225,
                                        1633,
                                        225,
                                        1615,
                                        225
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-out-high-energy",
                                        0
                                    ],
                                    "midpoints": [
                                        1830.5,
                                        980,
                                        1850,
                                        980,
                                        1865,
                                        980
                                    ],
                                    "source": [
                                        "mb2c-high-energy",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-energy",
                                        0
                                    ],
                                    "midpoints": [
                                        1840.5,
                                        665,
                                        1850,
                                        665,
                                        1827,
                                        665
                                    ],
                                    "source": [
                                        "mb2c-high-energy-sum",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-gain-dbtoa",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-gain",
                                        0
                                    ],
                                    "midpoints": [
                                        1075,
                                        90,
                                        1055.5,
                                        90
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-gain-msg",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-gain-dbtoa",
                                        0
                                    ],
                                    "midpoints": [
                                        1055.5,
                                        155,
                                        1075,
                                        155,
                                        1055,
                                        155
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-l-gain",
                                        1
                                    ],
                                    "midpoints": [
                                        1057,
                                        305,
                                        1563,
                                        305
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-high-gain-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-r-gain",
                                        1
                                    ],
                                    "midpoints": [
                                        1057,
                                        305,
                                        1783,
                                        305
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-high-gain-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-gain-line",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-gain-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        1058.5,
                                        190,
                                        1075,
                                        190,
                                        1057,
                                        190
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-l-gain",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-l-blend",
                                        0
                                    ],
                                    "midpoints": [
                                        1540.5,
                                        515,
                                        1550,
                                        515,
                                        1537,
                                        515
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-l-blend",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-l-dry",
                                        0
                                    ],
                                    "midpoints": [
                                        1540.5,
                                        405,
                                        1550,
                                        405,
                                        1537,
                                        405
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-diff",
                                        0
                                    ],
                                    "midpoints": [
                                        1540.5,
                                        565,
                                        1550,
                                        565,
                                        1662,
                                        565
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-high-l-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-sum",
                                        0
                                    ],
                                    "midpoints": [
                                        1540.5,
                                        565,
                                        1550,
                                        565,
                                        1557,
                                        565
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-high-l-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-l-sat",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-l-pre",
                                        0
                                    ],
                                    "midpoints": [
                                        1615.5,
                                        390,
                                        1608.5,
                                        390
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-l-wet",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-l-sat",
                                        0
                                    ],
                                    "midpoints": [
                                        1608.5,
                                        435,
                                        1625,
                                        435,
                                        1612,
                                        435
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-l-blend",
                                        1
                                    ],
                                    "source": [
                                        "mb2c-high-l-wet",
                                        0
                                    ],
                                    "midpoints": [
                                        1615.5,
                                        475,
                                        1625,
                                        475,
                                        1563,
                                        475
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-l-dry",
                                        1
                                    ],
                                    "midpoints": [
                                        1770.5,
                                        270,
                                        1780,
                                        270,
                                        1563,
                                        270
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-high-mix-inverse",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-r-dry",
                                        1
                                    ],
                                    "midpoints": [
                                        1770.5,
                                        270,
                                        1780,
                                        270,
                                        1783,
                                        270
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-high-mix-inverse",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-mix-inverse",
                                        0
                                    ],
                                    "midpoints": [
                                        1762,
                                        225,
                                        1780,
                                        225,
                                        1767,
                                        225
                                    ],
                                    "source": [
                                        "mb2c-high-one",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-abs-l",
                                        0
                                    ],
                                    "midpoints": [
                                        1560.5,
                                        755,
                                        1570,
                                        755,
                                        1810,
                                        755,
                                        1810,
                                        590
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-high-out-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-sum-l-b",
                                        1
                                    ],
                                    "midpoints": [
                                        1560.5,
                                        770,
                                        1570,
                                        770,
                                        748,
                                        770
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-high-out-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-abs-r",
                                        0
                                    ],
                                    "midpoints": [
                                        1665.5,
                                        755,
                                        1675,
                                        755,
                                        1890,
                                        755,
                                        1890,
                                        590
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-high-out-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-sum-r-b",
                                        1
                                    ],
                                    "midpoints": [
                                        1665.5,
                                        770,
                                        1675,
                                        770,
                                        978,
                                        770
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-high-out-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-r-gain",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-r-blend",
                                        0
                                    ],
                                    "midpoints": [
                                        1760.5,
                                        515,
                                        1770,
                                        515,
                                        1757,
                                        515
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-r-blend",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-r-dry",
                                        0
                                    ],
                                    "midpoints": [
                                        1760.5,
                                        405,
                                        1770,
                                        405,
                                        1757,
                                        405
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-diff",
                                        1
                                    ],
                                    "midpoints": [
                                        1760.5,
                                        565,
                                        1770,
                                        565,
                                        1688,
                                        565
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-high-r-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-sum",
                                        1
                                    ],
                                    "midpoints": [
                                        1760.5,
                                        565,
                                        1770,
                                        565,
                                        1583,
                                        565
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-high-r-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-r-sat",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-r-pre",
                                        0
                                    ],
                                    "midpoints": [
                                        1835.5,
                                        390,
                                        1828.5,
                                        390
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-r-wet",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-r-sat",
                                        0
                                    ],
                                    "midpoints": [
                                        1828.5,
                                        435,
                                        1845,
                                        435,
                                        1832,
                                        435
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-r-blend",
                                        1
                                    ],
                                    "source": [
                                        "mb2c-high-r-wet",
                                        0
                                    ],
                                    "midpoints": [
                                        1835.5,
                                        475,
                                        1845,
                                        475,
                                        1783,
                                        475
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-out-l",
                                        1
                                    ],
                                    "midpoints": [
                                        1665.5,
                                        705,
                                        1675,
                                        705,
                                        1583,
                                        705
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-high-side-width",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-out-r",
                                        1
                                    ],
                                    "midpoints": [
                                        1665.5,
                                        705,
                                        1675,
                                        705,
                                        1688,
                                        705
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-high-side-width",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-sum-half",
                                        0
                                    ],
                                    "midpoints": [
                                        1560.5,
                                        625,
                                        1570,
                                        625,
                                        1547,
                                        625
                                    ],
                                    "source": [
                                        "mb2c-high-sum",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-out-l",
                                        0
                                    ],
                                    "midpoints": [
                                        1550.5,
                                        675,
                                        1570,
                                        675,
                                        1557,
                                        675
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-high-sum-half",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-out-r",
                                        0
                                    ],
                                    "midpoints": [
                                        1550.5,
                                        675,
                                        1570,
                                        675,
                                        1662,
                                        675
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-high-sum-half",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-width-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        2135,
                                        90,
                                        2106,
                                        90
                                    ],
                                    "source": [
                                        "mb2c-high-width",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-width-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        2109.5,
                                        155,
                                        2135,
                                        155,
                                        2115,
                                        155
                                    ],
                                    "source": [
                                        "mb2c-high-width-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-high-side-width",
                                        1
                                    ],
                                    "midpoints": [
                                        2117,
                                        305,
                                        1688,
                                        305
                                    ],
                                    "source": [
                                        "mb2c-high-width-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-high-width-line",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-high-width-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        2118.5,
                                        190,
                                        2135,
                                        190,
                                        2117,
                                        190
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-cross-high-l",
                                        1
                                    ],
                                    "midpoints": [
                                        535,
                                        90,
                                        136.5,
                                        90
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-high-x",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-cross-high-r",
                                        1
                                    ],
                                    "midpoints": [
                                        535,
                                        90,
                                        256.5,
                                        90
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-high-x",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-cross-low-l",
                                        0
                                    ],
                                    "midpoints": [
                                        55,
                                        90,
                                        16,
                                        90
                                    ],
                                    "source": [
                                        "mb2c-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-gate-l",
                                        0
                                    ],
                                    "midpoints": [
                                        692,
                                        935,
                                        735,
                                        935,
                                        722,
                                        935
                                    ],
                                    "source": [
                                        "mb2c-limit-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-gate-r",
                                        0
                                    ],
                                    "midpoints": [
                                        922,
                                        935,
                                        965,
                                        935,
                                        952,
                                        935
                                    ],
                                    "source": [
                                        "mb2c-limit-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-energy-sum",
                                        0
                                    ],
                                    "midpoints": [
                                        537,
                                        625,
                                        550,
                                        625,
                                        577,
                                        625
                                    ],
                                    "source": [
                                        "mb2c-low-abs-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-energy-sum",
                                        1
                                    ],
                                    "midpoints": [
                                        617,
                                        625,
                                        630,
                                        625,
                                        603,
                                        625
                                    ],
                                    "source": [
                                        "mb2c-low-abs-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-diff-half",
                                        0
                                    ],
                                    "midpoints": [
                                        405.5,
                                        625,
                                        415,
                                        625,
                                        392,
                                        625
                                    ],
                                    "source": [
                                        "mb2c-low-diff",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-side-width",
                                        0
                                    ],
                                    "midpoints": [
                                        395.5,
                                        665,
                                        415,
                                        665,
                                        402,
                                        665
                                    ],
                                    "source": [
                                        "mb2c-low-diff-half",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-drive-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1235,
                                        90,
                                        1205,
                                        90
                                    ],
                                    "source": [
                                        "mb2c-low-drive",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-drive-dbtoa",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-low-drive-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1208.5,
                                        155,
                                        1235,
                                        155,
                                        1193,
                                        155
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-drive-mix-div",
                                        0
                                    ],
                                    "midpoints": [
                                        1208.5,
                                        155,
                                        1235,
                                        155,
                                        1257,
                                        155
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-low-drive-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-drive-pre-msg",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-drive-dbtoa",
                                        0
                                    ],
                                    "midpoints": [
                                        1173.5,
                                        190,
                                        1193,
                                        190,
                                        1173,
                                        190
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-drive-mix-msg",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-drive-mix-div",
                                        0
                                    ],
                                    "midpoints": [
                                        1260.5,
                                        190,
                                        1277,
                                        190,
                                        1257,
                                        190
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-l-wet",
                                        1
                                    ],
                                    "midpoints": [
                                        1259,
                                        305,
                                        378,
                                        305
                                    ],
                                    "order": 2,
                                    "source": [
                                        "mb2c-low-drive-mix-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-mix-inverse",
                                        1
                                    ],
                                    "midpoints": [
                                        1259,
                                        270,
                                        1353,
                                        270
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-low-drive-mix-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-r-wet",
                                        1
                                    ],
                                    "midpoints": [
                                        1259,
                                        305,
                                        598,
                                        305
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-low-drive-mix-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-drive-mix-line",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-drive-mix-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        1260.5,
                                        225,
                                        1277,
                                        225,
                                        1259,
                                        225
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-l-pre",
                                        1
                                    ],
                                    "midpoints": [
                                        1175,
                                        305,
                                        378,
                                        305
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-low-drive-pre-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-r-pre",
                                        1
                                    ],
                                    "midpoints": [
                                        1175,
                                        305,
                                        598,
                                        305
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-low-drive-pre-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-drive-pre-line",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-drive-pre-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        1176.5,
                                        225,
                                        1193,
                                        225,
                                        1175,
                                        225
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-out-low-energy",
                                        0
                                    ],
                                    "midpoints": [
                                        570.5,
                                        980,
                                        590,
                                        980,
                                        1195,
                                        980
                                    ],
                                    "source": [
                                        "mb2c-low-energy",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-energy",
                                        0
                                    ],
                                    "midpoints": [
                                        580.5,
                                        665,
                                        590,
                                        665,
                                        567,
                                        665
                                    ],
                                    "source": [
                                        "mb2c-low-energy-sum",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-gain-dbtoa",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-gain",
                                        0
                                    ],
                                    "midpoints": [
                                        795,
                                        90,
                                        775.5,
                                        90
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-gain-msg",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-gain-dbtoa",
                                        0
                                    ],
                                    "midpoints": [
                                        775.5,
                                        155,
                                        795,
                                        155,
                                        775,
                                        155
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-l-gain",
                                        1
                                    ],
                                    "midpoints": [
                                        777,
                                        305,
                                        303,
                                        305
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-low-gain-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-r-gain",
                                        1
                                    ],
                                    "midpoints": [
                                        777,
                                        305,
                                        523,
                                        305
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-low-gain-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-gain-line",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-gain-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        778.5,
                                        190,
                                        795,
                                        190,
                                        777,
                                        190
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-l-gain",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-l-blend",
                                        0
                                    ],
                                    "midpoints": [
                                        280.5,
                                        515,
                                        290,
                                        515,
                                        277,
                                        515
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-l-blend",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-l-dry",
                                        0
                                    ],
                                    "midpoints": [
                                        280.5,
                                        405,
                                        290,
                                        405,
                                        277,
                                        405
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-diff",
                                        0
                                    ],
                                    "midpoints": [
                                        280.5,
                                        565,
                                        290,
                                        565,
                                        402,
                                        565
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-low-l-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-sum",
                                        0
                                    ],
                                    "midpoints": [
                                        280.5,
                                        565,
                                        290,
                                        565,
                                        297,
                                        565
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-low-l-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-l-sat",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-l-pre",
                                        0
                                    ],
                                    "midpoints": [
                                        355.5,
                                        390,
                                        348.5,
                                        390
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-l-wet",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-l-sat",
                                        0
                                    ],
                                    "midpoints": [
                                        348.5,
                                        435,
                                        365,
                                        435,
                                        352,
                                        435
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-l-blend",
                                        1
                                    ],
                                    "source": [
                                        "mb2c-low-l-wet",
                                        0
                                    ],
                                    "midpoints": [
                                        355.5,
                                        475,
                                        365,
                                        475,
                                        303,
                                        475
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-l-dry",
                                        1
                                    ],
                                    "midpoints": [
                                        1330.5,
                                        270,
                                        1340,
                                        270,
                                        303,
                                        270
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-low-mix-inverse",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-r-dry",
                                        1
                                    ],
                                    "midpoints": [
                                        1330.5,
                                        270,
                                        1340,
                                        270,
                                        523,
                                        270
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-low-mix-inverse",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-mix-inverse",
                                        0
                                    ],
                                    "midpoints": [
                                        1322,
                                        225,
                                        1340,
                                        225,
                                        1327,
                                        225
                                    ],
                                    "source": [
                                        "mb2c-low-one",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-abs-l",
                                        0
                                    ],
                                    "midpoints": [
                                        300.5,
                                        755,
                                        310,
                                        755,
                                        550,
                                        755,
                                        550,
                                        590
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-low-out-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-sum-l-a",
                                        0
                                    ],
                                    "midpoints": [
                                        300.5,
                                        770,
                                        310,
                                        770,
                                        722,
                                        770
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-low-out-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-abs-r",
                                        0
                                    ],
                                    "midpoints": [
                                        405.5,
                                        755,
                                        415,
                                        755,
                                        630,
                                        755,
                                        630,
                                        590
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-low-out-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-sum-r-a",
                                        0
                                    ],
                                    "midpoints": [
                                        405.5,
                                        770,
                                        415,
                                        770,
                                        952,
                                        770
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-low-out-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-r-gain",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-r-blend",
                                        0
                                    ],
                                    "midpoints": [
                                        500.5,
                                        515,
                                        510,
                                        515,
                                        497,
                                        515
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-r-blend",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-r-dry",
                                        0
                                    ],
                                    "midpoints": [
                                        500.5,
                                        405,
                                        510,
                                        405,
                                        497,
                                        405
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-diff",
                                        1
                                    ],
                                    "midpoints": [
                                        500.5,
                                        565,
                                        510,
                                        565,
                                        428,
                                        565
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-low-r-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-sum",
                                        1
                                    ],
                                    "midpoints": [
                                        500.5,
                                        565,
                                        510,
                                        565,
                                        323,
                                        565
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-low-r-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-r-sat",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-r-pre",
                                        0
                                    ],
                                    "midpoints": [
                                        575.5,
                                        390,
                                        568.5,
                                        390
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-r-wet",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-r-sat",
                                        0
                                    ],
                                    "midpoints": [
                                        568.5,
                                        435,
                                        585,
                                        435,
                                        572,
                                        435
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-r-blend",
                                        1
                                    ],
                                    "source": [
                                        "mb2c-low-r-wet",
                                        0
                                    ],
                                    "midpoints": [
                                        575.5,
                                        475,
                                        585,
                                        475,
                                        523,
                                        475
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-out-l",
                                        1
                                    ],
                                    "midpoints": [
                                        405.5,
                                        705,
                                        415,
                                        705,
                                        323,
                                        705
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-low-side-width",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-out-r",
                                        1
                                    ],
                                    "midpoints": [
                                        405.5,
                                        705,
                                        415,
                                        705,
                                        428,
                                        705
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-low-side-width",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-sum-half",
                                        0
                                    ],
                                    "midpoints": [
                                        300.5,
                                        625,
                                        310,
                                        625,
                                        287,
                                        625
                                    ],
                                    "source": [
                                        "mb2c-low-sum",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-out-l",
                                        0
                                    ],
                                    "midpoints": [
                                        290.5,
                                        675,
                                        310,
                                        675,
                                        297,
                                        675
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-low-sum-half",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-out-r",
                                        0
                                    ],
                                    "midpoints": [
                                        290.5,
                                        675,
                                        310,
                                        675,
                                        402,
                                        675
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-low-sum-half",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-width-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1895,
                                        90,
                                        1866,
                                        90
                                    ],
                                    "source": [
                                        "mb2c-low-width",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-width-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        1869.5,
                                        155,
                                        1895,
                                        155,
                                        1875,
                                        155
                                    ],
                                    "source": [
                                        "mb2c-low-width-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-low-side-width",
                                        1
                                    ],
                                    "midpoints": [
                                        1877,
                                        305,
                                        428,
                                        305
                                    ],
                                    "source": [
                                        "mb2c-low-width-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-low-width-line",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-low-width-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        1878.5,
                                        190,
                                        1895,
                                        190,
                                        1877,
                                        190
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-cross-low-l",
                                        1
                                    ],
                                    "midpoints": [
                                        415,
                                        90,
                                        94,
                                        90
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-low-x",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-cross-low-r",
                                        1
                                    ],
                                    "midpoints": [
                                        415,
                                        90,
                                        214,
                                        90
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-low-x",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-energy-sum",
                                        0
                                    ],
                                    "midpoints": [
                                        1167,
                                        625,
                                        1180,
                                        625,
                                        1207,
                                        625
                                    ],
                                    "source": [
                                        "mb2c-mid-abs-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-energy-sum",
                                        1
                                    ],
                                    "midpoints": [
                                        1247,
                                        625,
                                        1260,
                                        625,
                                        1233,
                                        625
                                    ],
                                    "source": [
                                        "mb2c-mid-abs-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-diff-half",
                                        0
                                    ],
                                    "midpoints": [
                                        1035.5,
                                        625,
                                        1045,
                                        625,
                                        1022,
                                        625
                                    ],
                                    "source": [
                                        "mb2c-mid-diff",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-side-width",
                                        0
                                    ],
                                    "midpoints": [
                                        1025.5,
                                        665,
                                        1045,
                                        665,
                                        1032,
                                        665
                                    ],
                                    "source": [
                                        "mb2c-mid-diff-half",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-drive-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1455,
                                        90,
                                        1425,
                                        90
                                    ],
                                    "source": [
                                        "mb2c-mid-drive",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-drive-dbtoa",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-mid-drive-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        1428.5,
                                        155,
                                        1455,
                                        155,
                                        1413,
                                        155
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-drive-mix-div",
                                        0
                                    ],
                                    "midpoints": [
                                        1428.5,
                                        155,
                                        1455,
                                        155,
                                        1477,
                                        155
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-mid-drive-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-drive-pre-msg",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-drive-dbtoa",
                                        0
                                    ],
                                    "midpoints": [
                                        1393.5,
                                        190,
                                        1413,
                                        190,
                                        1393,
                                        190
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-drive-mix-msg",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-drive-mix-div",
                                        0
                                    ],
                                    "midpoints": [
                                        1480.5,
                                        190,
                                        1497,
                                        190,
                                        1477,
                                        190
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-l-wet",
                                        1
                                    ],
                                    "midpoints": [
                                        1479,
                                        305,
                                        1008,
                                        305
                                    ],
                                    "order": 2,
                                    "source": [
                                        "mb2c-mid-drive-mix-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-mix-inverse",
                                        1
                                    ],
                                    "midpoints": [
                                        1479,
                                        270,
                                        1573,
                                        270
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-mid-drive-mix-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-r-wet",
                                        1
                                    ],
                                    "midpoints": [
                                        1479,
                                        305,
                                        1228,
                                        305
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-mid-drive-mix-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-drive-mix-line",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-drive-mix-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        1480.5,
                                        225,
                                        1497,
                                        225,
                                        1479,
                                        225
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-l-pre",
                                        1
                                    ],
                                    "midpoints": [
                                        1395,
                                        305,
                                        1008,
                                        305
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-mid-drive-pre-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-r-pre",
                                        1
                                    ],
                                    "midpoints": [
                                        1395,
                                        305,
                                        1228,
                                        305
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-mid-drive-pre-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-drive-pre-line",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-drive-pre-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        1396.5,
                                        225,
                                        1413,
                                        225,
                                        1395,
                                        225
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-out-mid-energy",
                                        0
                                    ],
                                    "midpoints": [
                                        1200.5,
                                        980,
                                        1220,
                                        980,
                                        1465,
                                        980
                                    ],
                                    "source": [
                                        "mb2c-mid-energy",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-energy",
                                        0
                                    ],
                                    "midpoints": [
                                        1210.5,
                                        665,
                                        1220,
                                        665,
                                        1197,
                                        665
                                    ],
                                    "source": [
                                        "mb2c-mid-energy-sum",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-gain-dbtoa",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-gain",
                                        0
                                    ],
                                    "midpoints": [
                                        935,
                                        90,
                                        915.5,
                                        90
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-gain-msg",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-gain-dbtoa",
                                        0
                                    ],
                                    "midpoints": [
                                        915.5,
                                        155,
                                        935,
                                        155,
                                        915,
                                        155
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-l-gain",
                                        1
                                    ],
                                    "midpoints": [
                                        917,
                                        305,
                                        933,
                                        305
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-mid-gain-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-r-gain",
                                        1
                                    ],
                                    "midpoints": [
                                        917,
                                        305,
                                        1153,
                                        305
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-mid-gain-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-gain-line",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-gain-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        918.5,
                                        190,
                                        935,
                                        190,
                                        917,
                                        190
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-l-gain",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-l-blend",
                                        0
                                    ],
                                    "midpoints": [
                                        910.5,
                                        515,
                                        920,
                                        515,
                                        907,
                                        515
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-l-blend",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-l-dry",
                                        0
                                    ],
                                    "midpoints": [
                                        910.5,
                                        405,
                                        920,
                                        405,
                                        907,
                                        405
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-diff",
                                        0
                                    ],
                                    "midpoints": [
                                        910.5,
                                        565,
                                        920,
                                        565,
                                        1032,
                                        565
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-mid-l-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-sum",
                                        0
                                    ],
                                    "midpoints": [
                                        910.5,
                                        565,
                                        920,
                                        565,
                                        927,
                                        565
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-mid-l-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-l-sat",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-l-pre",
                                        0
                                    ],
                                    "midpoints": [
                                        985.5,
                                        390,
                                        978.5,
                                        390
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-l-wet",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-l-sat",
                                        0
                                    ],
                                    "midpoints": [
                                        978.5,
                                        435,
                                        995,
                                        435,
                                        982,
                                        435
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-l-blend",
                                        1
                                    ],
                                    "source": [
                                        "mb2c-mid-l-wet",
                                        0
                                    ],
                                    "midpoints": [
                                        985.5,
                                        475,
                                        995,
                                        475,
                                        933,
                                        475
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-l-dry",
                                        1
                                    ],
                                    "midpoints": [
                                        1550.5,
                                        270,
                                        1560,
                                        270,
                                        933,
                                        270
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-mid-mix-inverse",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-r-dry",
                                        1
                                    ],
                                    "midpoints": [
                                        1550.5,
                                        270,
                                        1560,
                                        270,
                                        1153,
                                        270
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-mid-mix-inverse",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-mix-inverse",
                                        0
                                    ],
                                    "midpoints": [
                                        1542,
                                        225,
                                        1560,
                                        225,
                                        1547,
                                        225
                                    ],
                                    "source": [
                                        "mb2c-mid-one",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-abs-l",
                                        0
                                    ],
                                    "midpoints": [
                                        930.5,
                                        755,
                                        940,
                                        755,
                                        1180,
                                        755,
                                        1180,
                                        590
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-mid-out-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-sum-l-a",
                                        1
                                    ],
                                    "midpoints": [
                                        930.5,
                                        770,
                                        940,
                                        770,
                                        748,
                                        770
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-mid-out-l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-abs-r",
                                        0
                                    ],
                                    "midpoints": [
                                        1035.5,
                                        755,
                                        1045,
                                        755,
                                        1260,
                                        755,
                                        1260,
                                        590
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-mid-out-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-sum-r-a",
                                        1
                                    ],
                                    "midpoints": [
                                        1035.5,
                                        770,
                                        1045,
                                        770,
                                        978,
                                        770
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-mid-out-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-r-gain",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-r-blend",
                                        0
                                    ],
                                    "midpoints": [
                                        1130.5,
                                        515,
                                        1140,
                                        515,
                                        1127,
                                        515
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-r-blend",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-r-dry",
                                        0
                                    ],
                                    "midpoints": [
                                        1130.5,
                                        405,
                                        1140,
                                        405,
                                        1127,
                                        405
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-diff",
                                        1
                                    ],
                                    "midpoints": [
                                        1130.5,
                                        565,
                                        1140,
                                        565,
                                        1058,
                                        565
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-mid-r-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-sum",
                                        1
                                    ],
                                    "midpoints": [
                                        1130.5,
                                        565,
                                        1140,
                                        565,
                                        953,
                                        565
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-mid-r-gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-r-sat",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-r-pre",
                                        0
                                    ],
                                    "midpoints": [
                                        1205.5,
                                        390,
                                        1198.5,
                                        390
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-r-wet",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-r-sat",
                                        0
                                    ],
                                    "midpoints": [
                                        1198.5,
                                        435,
                                        1215,
                                        435,
                                        1202,
                                        435
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-r-blend",
                                        1
                                    ],
                                    "source": [
                                        "mb2c-mid-r-wet",
                                        0
                                    ],
                                    "midpoints": [
                                        1205.5,
                                        475,
                                        1215,
                                        475,
                                        1153,
                                        475
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-out-l",
                                        1
                                    ],
                                    "midpoints": [
                                        1035.5,
                                        705,
                                        1045,
                                        705,
                                        953,
                                        705
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-mid-side-width",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-out-r",
                                        1
                                    ],
                                    "midpoints": [
                                        1035.5,
                                        705,
                                        1045,
                                        705,
                                        1058,
                                        705
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-mid-side-width",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-sum-half",
                                        0
                                    ],
                                    "midpoints": [
                                        930.5,
                                        625,
                                        940,
                                        625,
                                        917,
                                        625
                                    ],
                                    "source": [
                                        "mb2c-mid-sum",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-out-l",
                                        0
                                    ],
                                    "midpoints": [
                                        920.5,
                                        675,
                                        940,
                                        675,
                                        927,
                                        675
                                    ],
                                    "order": 1,
                                    "source": [
                                        "mb2c-mid-sum-half",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-out-r",
                                        0
                                    ],
                                    "midpoints": [
                                        920.5,
                                        675,
                                        940,
                                        675,
                                        1032,
                                        675
                                    ],
                                    "order": 0,
                                    "source": [
                                        "mb2c-mid-sum-half",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-width-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        2015,
                                        90,
                                        1986,
                                        90
                                    ],
                                    "source": [
                                        "mb2c-mid-width",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-width-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        1989.5,
                                        155,
                                        2015,
                                        155,
                                        1995,
                                        155
                                    ],
                                    "source": [
                                        "mb2c-mid-width-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "color": [
                                        0.93,
                                        0.98,
                                        0.45,
                                        1
                                    ],
                                    "destination": [
                                        "mb2c-mid-side-width",
                                        1
                                    ],
                                    "midpoints": [
                                        1997,
                                        305,
                                        1058,
                                        305
                                    ],
                                    "source": [
                                        "mb2c-mid-width-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-mid-width-line",
                                        0
                                    ],
                                    "source": [
                                        "mb2c-mid-width-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        1998.5,
                                        190,
                                        2015,
                                        190,
                                        1997,
                                        190
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-cross-low-r",
                                        0
                                    ],
                                    "midpoints": [
                                        175,
                                        90,
                                        136,
                                        90
                                    ],
                                    "source": [
                                        "mb2c-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-sum-l-b",
                                        0
                                    ],
                                    "midpoints": [
                                        725.5,
                                        845,
                                        735,
                                        845,
                                        722,
                                        845
                                    ],
                                    "source": [
                                        "mb2c-sum-l-a",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-limit-l",
                                        0
                                    ],
                                    "midpoints": [
                                        725.5,
                                        890,
                                        735,
                                        890,
                                        688.5,
                                        890
                                    ],
                                    "source": [
                                        "mb2c-sum-l-b",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-sum-r-b",
                                        0
                                    ],
                                    "midpoints": [
                                        955.5,
                                        845,
                                        965,
                                        845,
                                        952,
                                        845
                                    ],
                                    "source": [
                                        "mb2c-sum-r-a",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "mb2c-limit-r",
                                        0
                                    ],
                                    "midpoints": [
                                        955.5,
                                        890,
                                        965,
                                        890,
                                        918.5,
                                        890
                                    ],
                                    "source": [
                                        "mb2c-sum-r-b",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-698",
                        "openrect": [
                            120,
                            120,
                            2260,
                            1110
                        ]
                    },
                    "patching_rect": [
                        20,
                        565,
                        220,
                        22
                    ],
                    "text": "p Multiband_filter_v2_core"
                }
            },
            {
                "box": {
                    "id": "mb2-snapshot-low",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        300,
                        550,
                        82,
                        22
                    ],
                    "text": "snapshot~ 33"
                }
            },
            {
                "box": {
                    "id": "mb2-snapshot-mid",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        390,
                        550,
                        82,
                        22
                    ],
                    "text": "snapshot~ 33"
                }
            },
            {
                "box": {
                    "id": "mb2-snapshot-high",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        480,
                        550,
                        82,
                        22
                    ],
                    "text": "snapshot~ 33"
                }
            },
            {
                "box": {
                    "id": "mb2-output-gain",
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
                        980,
                        138,
                        58,
                        160
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        980,
                        130,
                        58,
                        170
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "multiband_filter_output_gain",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "OUTPUT",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "multiband_filter_output_gain"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "mb2-output-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        976,
                        310,
                        70,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        976,
                        310,
                        70,
                        20
                    ],
                    "text": "OUTPUT"
                }
            },
            {
                "box": {
                    "comment": "Processed L",
                    "id": "mb2-out-l",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        980,
                        430,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Processed R",
                    "id": "mb2-out-r",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1020,
                        430,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "mb2-preset",
                    "items": [
                        "Warm Focus",
                        ",",
                        "Vocal Presence",
                        ",",
                        "Wide Motion"
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
                        1100,
                        20,
                        160,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        910,
                        14,
                        160,
                        22
                    ],
                    "varname": "mb2_preset"
                }
            },
            {
                "box": {
                    "id": "mb2-preset-message",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1100,
                        60,
                        95,
                        22
                    ],
                    "text": "prepend preset"
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
                        "mb2-controller",
                        0
                    ],
                    "midpoints": [
                        639.5,
                        400,
                        690,
                        400,
                        475,
                        400,
                        475,
                        470
                    ],
                    "source": [
                        "mb2-band-menu",
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
                        "mb2-controller",
                        7
                    ],
                    "midpoints": [
                        659.5,
                        400,
                        685,
                        400,
                        2925,
                        400,
                        2925,
                        470
                    ],
                    "source": [
                        "mb2-contrast",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.3,
                        0.65,
                        0.86,
                        1
                    ],
                    "destination": [
                        "mb2-contrast",
                        0
                    ],
                    "midpoints": [
                        169.5,
                        520,
                        659.5,
                        520
                    ],
                    "source": [
                        "mb2-contrast-percent",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-contrast",
                        0
                    ],
                    "midpoints": [
                        593.2142857142858,
                        520,
                        6775,
                        520,
                        685,
                        520,
                        685,
                        255
                    ],
                    "source": [
                        "mb2-controller",
                        18
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
                        "mb2-core",
                        4
                    ],
                    "midpoints": [
                        561.6904761904761,
                        520,
                        6075,
                        520,
                        1230,
                        520,
                        1230,
                        565
                    ],
                    "source": [
                        "mb2-controller",
                        16
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
                        "mb2-core",
                        3
                    ],
                    "midpoints": [
                        545.9285714285714,
                        520,
                        5725,
                        520,
                        1010,
                        520,
                        1010,
                        565
                    ],
                    "source": [
                        "mb2-controller",
                        15
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
                        "mb2-core",
                        13
                    ],
                    "midpoints": [
                        514.4047619047619,
                        520,
                        5025,
                        520,
                        3210,
                        520,
                        3210,
                        565
                    ],
                    "source": [
                        "mb2-controller",
                        13
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
                        "mb2-core",
                        12
                    ],
                    "midpoints": [
                        498.6428571428571,
                        520,
                        4675,
                        520,
                        2990,
                        520,
                        2990,
                        565
                    ],
                    "source": [
                        "mb2-controller",
                        12
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
                        "mb2-core",
                        11
                    ],
                    "midpoints": [
                        482.8809523809524,
                        520,
                        4325,
                        520,
                        2770,
                        520,
                        2770,
                        565
                    ],
                    "source": [
                        "mb2-controller",
                        11
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
                        "mb2-core",
                        10
                    ],
                    "midpoints": [
                        467.1190476190476,
                        520,
                        3975,
                        520,
                        2550,
                        520,
                        2550,
                        565
                    ],
                    "source": [
                        "mb2-controller",
                        10
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
                        "mb2-core",
                        9
                    ],
                    "midpoints": [
                        451.3571428571429,
                        520,
                        3625,
                        520,
                        2330,
                        520,
                        2330,
                        565
                    ],
                    "source": [
                        "mb2-controller",
                        9
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
                        "mb2-core",
                        8
                    ],
                    "midpoints": [
                        435.5952380952381,
                        520,
                        3275,
                        520,
                        2110,
                        520,
                        2110,
                        565
                    ],
                    "source": [
                        "mb2-controller",
                        8
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
                        "mb2-core",
                        7
                    ],
                    "midpoints": [
                        419.8333333333333,
                        520,
                        2925,
                        520,
                        1890,
                        520,
                        1890,
                        565
                    ],
                    "source": [
                        "mb2-controller",
                        7
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
                        "mb2-core",
                        6
                    ],
                    "midpoints": [
                        404.07142857142856,
                        520,
                        2575,
                        520,
                        1670,
                        520,
                        1670,
                        565
                    ],
                    "source": [
                        "mb2-controller",
                        6
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
                        "mb2-core",
                        5
                    ],
                    "midpoints": [
                        388.3095238095238,
                        520,
                        2225,
                        520,
                        1450,
                        520,
                        1450,
                        565
                    ],
                    "source": [
                        "mb2-controller",
                        5
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
                        "mb2-drive",
                        0
                    ],
                    "midpoints": [
                        325.26190476190476,
                        520,
                        825,
                        520,
                        635,
                        520,
                        635,
                        145
                    ],
                    "source": [
                        "mb2-controller",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-focus",
                        0
                    ],
                    "midpoints": [
                        577.452380952381,
                        520,
                        6425,
                        520,
                        575,
                        520,
                        575,
                        255
                    ],
                    "source": [
                        "mb2-controller",
                        17
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
                        "mb2-gain",
                        0
                    ],
                    "midpoints": [
                        309.5,
                        520,
                        475,
                        520,
                        545,
                        520,
                        545,
                        145
                    ],
                    "source": [
                        "mb2-controller",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-high-x",
                        0
                    ],
                    "midpoints": [
                        640.5,
                        520,
                        7825,
                        520,
                        915,
                        520,
                        915,
                        145
                    ],
                    "source": [
                        "mb2-controller",
                        21
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-low-x",
                        0
                    ],
                    "midpoints": [
                        624.7380952380952,
                        520,
                        7475,
                        520,
                        825,
                        520,
                        825,
                        145
                    ],
                    "source": [
                        "mb2-controller",
                        20
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
                        "mb2-mute",
                        0
                    ],
                    "midpoints": [
                        356.7857142857143,
                        520,
                        1525,
                        520,
                        782,
                        520
                    ],
                    "source": [
                        "mb2-controller",
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
                        "mb2-solo",
                        0
                    ],
                    "midpoints": [
                        372.54761904761904,
                        520,
                        1875,
                        520,
                        862,
                        520
                    ],
                    "source": [
                        "mb2-controller",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-spread",
                        0
                    ],
                    "midpoints": [
                        608.9761904761905,
                        520,
                        7125,
                        520,
                        795,
                        520,
                        795,
                        255
                    ],
                    "source": [
                        "mb2-controller",
                        19
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
                        "mb2-visual",
                        0
                    ],
                    "midpoints": [
                        530.1666666666666,
                        520,
                        5375,
                        520,
                        254,
                        520,
                        254,
                        82
                    ],
                    "source": [
                        "mb2-controller",
                        14
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
                        "mb2-width",
                        0
                    ],
                    "midpoints": [
                        341.0238095238095,
                        520,
                        1175,
                        520,
                        725,
                        520,
                        725,
                        145
                    ],
                    "source": [
                        "mb2-controller",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-output-gain",
                        1
                    ],
                    "midpoints": [
                        79.75,
                        600,
                        350,
                        600,
                        1067,
                        600,
                        1067,
                        138
                    ],
                    "source": [
                        "mb2-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-output-gain",
                        0
                    ],
                    "midpoints": [
                        29.5,
                        600,
                        130,
                        600,
                        1009,
                        600,
                        1009,
                        138
                    ],
                    "source": [
                        "mb2-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-snapshot-high",
                        0
                    ],
                    "midpoints": [
                        230.5,
                        600,
                        1010,
                        600,
                        521,
                        600,
                        521,
                        550
                    ],
                    "source": [
                        "mb2-core",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-snapshot-low",
                        0
                    ],
                    "midpoints": [
                        130,
                        600,
                        570,
                        600,
                        341,
                        600,
                        341,
                        550
                    ],
                    "source": [
                        "mb2-core",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-snapshot-mid",
                        0
                    ],
                    "midpoints": [
                        180.25,
                        600,
                        790,
                        600,
                        431,
                        600,
                        431,
                        550
                    ],
                    "source": [
                        "mb2-core",
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
                        "mb2-controller",
                        2
                    ],
                    "midpoints": [
                        609.5,
                        400,
                        635,
                        400,
                        1175,
                        400,
                        1175,
                        470
                    ],
                    "source": [
                        "mb2-drive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.3,
                        0.65,
                        0.86,
                        1
                    ],
                    "destination": [
                        "mb2-core",
                        2
                    ],
                    "midpoints": [
                        522,
                        520,
                        570,
                        520,
                        570,
                        565
                    ],
                    "order": 0,
                    "source": [
                        "mb2-enable",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.3,
                        0.65,
                        0.86,
                        1
                    ],
                    "destination": [
                        "mb2-state",
                        0
                    ],
                    "midpoints": [
                        519.5,
                        396.676025390625,
                        29.5,
                        396.676025390625
                    ],
                    "order": 1,
                    "source": [
                        "mb2-enable",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.3,
                        0.65,
                        0.86,
                        1
                    ],
                    "destination": [
                        "mb2-enable",
                        0
                    ],
                    "midpoints": [
                        109.5,
                        519.132080078125,
                        519.5,
                        519.132080078125
                    ],
                    "source": [
                        "mb2-enable-set",
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
                        "mb2-controller",
                        6
                    ],
                    "midpoints": [
                        549.5,
                        400,
                        575,
                        400,
                        2575,
                        400,
                        2575,
                        470
                    ],
                    "source": [
                        "mb2-focus",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.3,
                        0.65,
                        0.86,
                        1
                    ],
                    "destination": [
                        "mb2-focus",
                        0
                    ],
                    "midpoints": [
                        109.5,
                        520,
                        549.5,
                        520
                    ],
                    "source": [
                        "mb2-focus-percent",
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
                        "mb2-controller",
                        1
                    ],
                    "midpoints": [
                        519.5,
                        400,
                        545,
                        400,
                        825,
                        400,
                        825,
                        470
                    ],
                    "source": [
                        "mb2-gain",
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
                        "mb2-controller",
                        10
                    ],
                    "midpoints": [
                        889.5,
                        400,
                        915,
                        400,
                        3975,
                        400,
                        3975,
                        470
                    ],
                    "source": [
                        "mb2-high-x",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.3,
                        0.65,
                        0.86,
                        1
                    ],
                    "destination": [
                        "mb2-contrast-percent",
                        0
                    ],
                    "source": [
                        "mb2-in-contrast",
                        0
                    ],
                    "midpoints": [
                        195,
                        470,
                        169.5,
                        470
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.3,
                        0.65,
                        0.86,
                        1
                    ],
                    "destination": [
                        "mb2-core",
                        2
                    ],
                    "midpoints": [
                        115,
                        520,
                        570,
                        520,
                        570,
                        565
                    ],
                    "order": 1,
                    "source": [
                        "mb2-in-enable",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.3,
                        0.65,
                        0.86,
                        1
                    ],
                    "destination": [
                        "mb2-enable-set",
                        0
                    ],
                    "midpoints": [
                        109.5,
                        490,
                        109.5,
                        490
                    ],
                    "order": 0,
                    "source": [
                        "mb2-in-enable",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.3,
                        0.65,
                        0.86,
                        1
                    ],
                    "destination": [
                        "mb2-focus-percent",
                        0
                    ],
                    "midpoints": [
                        149.5,
                        465,
                        109.5,
                        465
                    ],
                    "source": [
                        "mb2-in-focus",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-core",
                        0
                    ],
                    "midpoints": [
                        35,
                        520,
                        130,
                        520,
                        130,
                        565
                    ],
                    "source": [
                        "mb2-in-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-core",
                        1
                    ],
                    "midpoints": [
                        75,
                        520,
                        350,
                        520,
                        350,
                        565
                    ],
                    "source": [
                        "mb2-in-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.3,
                        0.65,
                        0.86,
                        1
                    ],
                    "destination": [
                        "mb2-spread-percent",
                        0
                    ],
                    "midpoints": [
                        229.5,
                        465,
                        229.5,
                        465,
                        229.5,
                        470
                    ],
                    "source": [
                        "mb2-in-spread",
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
                        "mb2-controller",
                        0
                    ],
                    "midpoints": [
                        309.5,
                        400,
                        348,
                        400,
                        475,
                        400,
                        475,
                        470
                    ],
                    "source": [
                        "mb2-init",
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
                        "mb2-controller",
                        9
                    ],
                    "midpoints": [
                        799.5,
                        400,
                        825,
                        400,
                        3625,
                        400,
                        3625,
                        470
                    ],
                    "source": [
                        "mb2-low-x",
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
                        "mb2-controller",
                        4
                    ],
                    "midpoints": [
                        782,
                        400,
                        1875,
                        400,
                        1875,
                        470
                    ],
                    "source": [
                        "mb2-mute",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-out-l",
                        0
                    ],
                    "midpoints": [
                        989.5,
                        365,
                        989.5,
                        365
                    ],
                    "source": [
                        "mb2-output-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-out-r",
                        0
                    ],
                    "midpoints": [
                        999.25,
                        365,
                        1029.5,
                        365
                    ],
                    "source": [
                        "mb2-output-gain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-preset-message",
                        0
                    ],
                    "midpoints": [
                        1109.5,
                        50,
                        1109.5,
                        50
                    ],
                    "source": [
                        "mb2-preset",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mb2-controller",
                        0
                    ],
                    "midpoints": [
                        1109.5,
                        400,
                        1148,
                        400,
                        475,
                        400,
                        475,
                        470
                    ],
                    "source": [
                        "mb2-preset-message",
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
                        "mb2-visual",
                        3
                    ],
                    "midpoints": [
                        489.5,
                        600,
                        521,
                        600,
                        1634,
                        600,
                        1634,
                        82
                    ],
                    "source": [
                        "mb2-snapshot-high",
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
                        "mb2-visual",
                        1
                    ],
                    "midpoints": [
                        309.5,
                        600,
                        341,
                        600,
                        714,
                        600,
                        714,
                        82
                    ],
                    "source": [
                        "mb2-snapshot-low",
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
                        "mb2-visual",
                        2
                    ],
                    "midpoints": [
                        399.5,
                        600,
                        431,
                        600,
                        1174,
                        600,
                        1174,
                        82
                    ],
                    "source": [
                        "mb2-snapshot-mid",
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
                        "mb2-controller",
                        5
                    ],
                    "midpoints": [
                        862,
                        400,
                        2225,
                        400,
                        2225,
                        470
                    ],
                    "source": [
                        "mb2-solo",
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
                        "mb2-controller",
                        8
                    ],
                    "midpoints": [
                        769.5,
                        400,
                        795,
                        400,
                        3275,
                        400,
                        3275,
                        470
                    ],
                    "source": [
                        "mb2-spread",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.3,
                        0.65,
                        0.86,
                        1
                    ],
                    "destination": [
                        "mb2-spread",
                        0
                    ],
                    "midpoints": [
                        244.5,
                        520,
                        229.5,
                        520,
                        769.5,
                        520
                    ],
                    "source": [
                        "mb2-spread-percent",
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
                        "mb2-controller",
                        3
                    ],
                    "midpoints": [
                        699.5,
                        400,
                        725,
                        400,
                        1525,
                        400,
                        1525,
                        470
                    ],
                    "source": [
                        "mb2-width",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-696",
        "parameters": {
            "mb2-contrast": [
                "Spectral Contrast",
                "CONTRAST",
                0
            ],
            "mb2-drive": [
                "Selected Band Drive",
                "DRIVE dB",
                0
            ],
            "mb2-focus": [
                "Spectral Focus",
                "FOCUS",
                0
            ],
            "mb2-gain": [
                "Selected Band Gain",
                "GAIN dB",
                0
            ],
            "mb2-high-x": [
                "High Crossover",
                "HIGH X Hz",
                0
            ],
            "mb2-low-x": [
                "Low Crossover",
                "LOW X Hz",
                0
            ],
            "mb2-output-gain": [
                "multiband_filter_output_gain",
                "OUTPUT",
                0
            ],
            "mb2-spread": [
                "Spectral Spread",
                "SPREAD",
                0
            ],
            "mb2-width": [
                "Selected Band Width",
                "WIDTH",
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
                "name": "mt_multiband_filter_controller.js",
                "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/patchers/effects",
                "patcherrelativepath": ".",
                "type": "TEXT",
                "implicit": 1
            },
            {
                "name": "mt_multiband_filter_visual.js",
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
