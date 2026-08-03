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
            1030,
            440
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
                    "id": "fd-header",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1170,
                        30,
                        850,
                        58
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        0,
                        850,
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
                    "id": "fd-body",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1170,
                        118,
                        850,
                        210
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        58,
                        850,
                        210
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 15,
                    "id": "fd-title",
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
                        420,
                        23
                    ],
                    "text": "FEEDBACK DELAY",
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
                    "id": "fd-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        61,
                        720,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        36,
                        700,
                        17
                    ],
                    "text": "FILTERED REPEATS / STEREO OFFSET / BOUNDED FEEDBACK",
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
                    "id": "fd-in-l",
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
                    "id": "fd-in-r",
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
                    "id": "fd-in-enable",
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
                    "id": "fd-enable-set",
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
                    "id": "fd-in-time",
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
                    "id": "fd-in-feedback",
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
                    "id": "fd-in-damping",
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
                    "comment": "",
                    "id": "fd-in-stereo",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        370,
                        92,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "fd-enable",
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
                    "varname": "delay_enable"
                }
            },
            {
                "box": {
                    "id": "fd-enable-label",
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
                    "id": "fd-time-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        145,
                        176,
                        90,
                        20
                    ],
                    "text": "Time (ms)"
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
                    "id": "fd-time",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        145,
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
                                375
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "delay_time_ms",
                            "parameter_mmax": 1000,
                            "parameter_mmin": 20,
                            "parameter_modmode": 3,
                            "parameter_shortname": "TIME ms",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "delay_time_ms"
                }
            },
            {
                "box": {
                    "id": "fd-feedback-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        255,
                        146,
                        135,
                        20
                    ],
                    "text": "Feedback (0-0.88)"
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
                    "id": "fd-feedback",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        255,
                        176,
                        64,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        254,
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
                                0.35
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "delay_feedback",
                            "parameter_mmax": 0.88,
                            "parameter_modmode": 3,
                            "parameter_shortname": "FEEDBACK",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "delay_feedback"
                }
            },
            {
                "box": {
                    "id": "fd-damping-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        405,
                        146,
                        110,
                        20
                    ],
                    "text": "Damping (Hz)"
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
                    "id": "fd-damping",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        405,
                        176,
                        72,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        402,
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
                                6000
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "delay_damping_hz",
                            "parameter_mmax": 16000,
                            "parameter_mmin": 500,
                            "parameter_modmode": 3,
                            "parameter_shortname": "DAMP Hz",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "delay_damping_hz"
                }
            },
            {
                "box": {
                    "id": "fd-stereo-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        535,
                        146,
                        135,
                        20
                    ],
                    "text": "Stereo Offset (ms)"
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
                    "id": "fd-stereo",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        535,
                        176,
                        64,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        528,
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
                                18
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "delay_stereo_offset_ms",
                            "parameter_mmax": 80,
                            "parameter_modmode": 3,
                            "parameter_shortname": "STEREO ms",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "delay_stereo_offset_ms"
                }
            },
            {
                "box": {
                    "id": "fd-state",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        24,
                        302,
                        220,
                        22
                    ],
                    "text": "s mt_feedback_delay_enable_state"
                }
            },
            {
                "box": {
                    "id": "fd-default-time",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        145,
                        272,
                        105,
                        22
                    ],
                    "text": "loadmess 375."
                }
            },
            {
                "box": {
                    "id": "fd-default-feedback",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        255,
                        242,
                        100,
                        22
                    ],
                    "text": "loadmess 0.35"
                }
            },
            {
                "box": {
                    "id": "fd-default-damping",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        405,
                        242,
                        110,
                        22
                    ],
                    "text": "loadmess 6000."
                }
            },
            {
                "box": {
                    "id": "fd-default-stereo",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        535,
                        242,
                        95,
                        22
                    ],
                    "text": "loadmess 18."
                }
            },
            {
                "box": {
                    "id": "fd-core",
                    "maxclass": "newobj",
                    "numinlets": 7,
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
                            120,
                            120,
                            1260,
                            800
                        ],
                        "gridsize": [
                            15,
                            15
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fdi-l",
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
                                    "id": "fdi-r",
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
                                    "id": "fdi-enable",
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
                                    "id": "fdi-time",
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
                                    "id": "fdi-feedback",
                                    "index": 5,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        570,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fdi-damping",
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
                                    "comment": "",
                                    "id": "fdi-stereo",
                                    "index": 7,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        860,
                                        30,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-source-l",
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
                                    "id": "fd-source-r",
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
                                    "id": "fd-time-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        430,
                                        82,
                                        110,
                                        22
                                    ],
                                    "text": "clip 20. 1000."
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-time-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "float",
                                        "float"
                                    ],
                                    "patching_rect": [
                                        430,
                                        122,
                                        50,
                                        22
                                    ],
                                    "text": "t f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-time-msg-l",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        430,
                                        165,
                                        62,
                                        22
                                    ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-time-line-l",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        430,
                                        205,
                                        50,
                                        22
                                    ],
                                    "text": "slide~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-stereo-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        860,
                                        82,
                                        90,
                                        22
                                    ],
                                    "text": "clip 0. 80."
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-time-pack-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        500,
                                        122,
                                        75,
                                        22
                                    ],
                                    "text": "pak 0. 0."
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-time-sum-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        500,
                                        190,
                                        180,
                                        22
                                    ],
                                    "text": "expr min(1080.\\, $f1 + $f2)"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-time-msg-r",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        520,
                                        220,
                                        62,
                                        22
                                    ],
                                    "text": "sig~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-time-line-r",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        520,
                                        260,
                                        50,
                                        22
                                    ],
                                    "text": "slide~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-smooth-ms",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        700,
                                        202,
                                        85,
                                        22
                                    ],
                                    "text": "loadmess 20."
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-smooth-samps",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "float"
                                    ],
                                    "patching_rect": [
                                        715,
                                        242,
                                        85,
                                        22
                                    ],
                                    "text": "mstosamps~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-tapin-l",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "tapconnect"
                                    ],
                                    "patching_rect": [
                                        30,
                                        350,
                                        90,
                                        22
                                    ],
                                    "text": "tapin~ 2000"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-tapin-r",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "tapconnect"
                                    ],
                                    "patching_rect": [
                                        160,
                                        350,
                                        90,
                                        22
                                    ],
                                    "text": "tapin~ 2000"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-tapout-l",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30,
                                        395,
                                        95,
                                        22
                                    ],
                                    "text": "tapout~ 375"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-tapout-r",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        160,
                                        395,
                                        95,
                                        22
                                    ],
                                    "text": "tapout~ 393"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-damping-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        720,
                                        82,
                                        125,
                                        22
                                    ],
                                    "text": "clip 500. 16000."
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-filter-l",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "signal",
                                        "signal",
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        300,
                                        395,
                                        110,
                                        22
                                    ],
                                    "text": "svf~ 6000 0.2"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-filter-r",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "signal",
                                        "signal",
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        440,
                                        395,
                                        110,
                                        22
                                    ],
                                    "text": "svf~ 6000 0.2"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-feedback-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        570,
                                        82,
                                        100,
                                        22
                                    ],
                                    "text": "clip 0. 0.88"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-feedback-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        585,
                                        122,
                                        62,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-feedback-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        570,
                                        151,
                                        50,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-feedback-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        300,
                                        445,
                                        42,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-feedback-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        440,
                                        445,
                                        42,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-feedback-enable-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        300,
                                        485,
                                        42,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-feedback-enable-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        440,
                                        485,
                                        42,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-feedback-safe-l",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        300,
                                        525,
                                        55,
                                        22
                                    ],
                                    "text": "tanh~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-feedback-safe-r",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        440,
                                        525,
                                        55,
                                        22
                                    ],
                                    "text": "tanh~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-enable-clip",
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
                                    "id": "fd-enable-trigger",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "int",
                                        "int"
                                    ],
                                    "patching_rect": [
                                        210,
                                        122,
                                        50,
                                        22
                                    ],
                                    "text": "t i i"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-enable-msg",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        210,
                                        162,
                                        62,
                                        22
                                    ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-wet-line",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        210,
                                        202,
                                        50,
                                        22
                                    ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-disable-select",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        ""
                                    ],
                                    "patching_rect": [
                                        650,
                                        232,
                                        50,
                                        22
                                    ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-clear",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        650,
                                        272,
                                        50,
                                        22
                                    ],
                                    "text": "clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-wet-safe-l",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30,
                                        445,
                                        55,
                                        22
                                    ],
                                    "text": "tanh~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-wet-safe-r",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        160,
                                        445,
                                        55,
                                        22
                                    ],
                                    "text": "tanh~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-wet-l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30,
                                        575,
                                        42,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "fd-wet-r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        160,
                                        575,
                                        42,
                                        22
                                    ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fdo-l",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30,
                                        640,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "fdo-r",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        160,
                                        640,
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
                                        "fd-tapin-l",
                                        0
                                    ],
                                    "midpoints": [
                                        659.5,
                                        322.57421875,
                                        39.5,
                                        322.57421875
                                    ],
                                    "order": 1,
                                    "source": [
                                        "fd-clear",
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
                                        "fd-tapin-r",
                                        0
                                    ],
                                    "midpoints": [
                                        659.5,
                                        320.91796875,
                                        169.5,
                                        320.91796875
                                    ],
                                    "order": 0,
                                    "source": [
                                        "fd-clear",
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
                                        "fd-filter-l",
                                        1
                                    ],
                                    "midpoints": [
                                        729.5,
                                        115.3359375,
                                        355,
                                        115.3359375
                                    ],
                                    "order": 1,
                                    "source": [
                                        "fd-damping-clip",
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
                                        "fd-filter-r",
                                        1
                                    ],
                                    "midpoints": [
                                        729.5,
                                        115.109375,
                                        495,
                                        115.109375
                                    ],
                                    "order": 0,
                                    "source": [
                                        "fd-damping-clip",
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
                                        "fd-clear",
                                        0
                                    ],
                                    "source": [
                                        "fd-disable-select",
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
                                        "fd-enable-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        219.5,
                                        115,
                                        219.5,
                                        115
                                    ],
                                    "source": [
                                        "fd-enable-clip",
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
                                        "fd-wet-line",
                                        0
                                    ],
                                    "source": [
                                        "fd-enable-msg",
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
                                        "fd-disable-select",
                                        0
                                    ],
                                    "midpoints": [
                                        250.5,
                                        202.09375,
                                        659.5,
                                        202.09375
                                    ],
                                    "source": [
                                        "fd-enable-trigger",
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
                                        "fd-enable-msg",
                                        0
                                    ],
                                    "source": [
                                        "fd-enable-trigger",
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
                                        "fd-feedback-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        579.5,
                                        115,
                                        579.5,
                                        115,
                                        579.5,
                                        122
                                    ],
                                    "source": [
                                        "fd-feedback-clip",
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
                                        "fd-feedback-safe-l",
                                        0
                                    ],
                                    "source": [
                                        "fd-feedback-enable-l",
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
                                        "fd-feedback-safe-r",
                                        0
                                    ],
                                    "source": [
                                        "fd-feedback-enable-r",
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
                                        "fd-feedback-enable-l",
                                        0
                                    ],
                                    "source": [
                                        "fd-feedback-l",
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
                                        "fd-feedback-l",
                                        1
                                    ],
                                    "midpoints": [
                                        579.5,
                                        321.25,
                                        332.5,
                                        321.25
                                    ],
                                    "order": 1,
                                    "source": [
                                        "fd-feedback-line",
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
                                        "fd-feedback-r",
                                        1
                                    ],
                                    "midpoints": [
                                        579.5,
                                        322.87109375,
                                        472.5,
                                        322.87109375
                                    ],
                                    "order": 0,
                                    "source": [
                                        "fd-feedback-line",
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
                                        "fd-feedback-line",
                                        0
                                    ],
                                    "source": [
                                        "fd-feedback-msg",
                                        0
                                    ],
                                    "midpoints": [
                                        594.5,
                                        150,
                                        579.5,
                                        150
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
                                        "fd-feedback-enable-r",
                                        0
                                    ],
                                    "source": [
                                        "fd-feedback-r",
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
                                        "fd-tapin-l",
                                        0
                                    ],
                                    "midpoints": [
                                        309.5,
                                        570,
                                        39.5,
                                        570
                                    ],
                                    "source": [
                                        "fd-feedback-safe-l",
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
                                        "fd-tapin-r",
                                        0
                                    ],
                                    "midpoints": [
                                        449.5,
                                        570,
                                        169.5,
                                        570
                                    ],
                                    "source": [
                                        "fd-feedback-safe-r",
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
                                        "fd-feedback-l",
                                        0
                                    ],
                                    "midpoints": [
                                        309.5,
                                        440,
                                        309.5,
                                        440
                                    ],
                                    "source": [
                                        "fd-filter-l",
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
                                        "fd-feedback-r",
                                        0
                                    ],
                                    "midpoints": [
                                        449.5,
                                        440,
                                        449.5,
                                        440
                                    ],
                                    "source": [
                                        "fd-filter-r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "fd-smooth-samps",
                                        0
                                    ],
                                    "source": [
                                        "fd-smooth-ms",
                                        0
                                    ],
                                    "midpoints": [
                                        709.5,
                                        230,
                                        724.5,
                                        230
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "fd-time-line-l",
                                        2
                                    ],
                                    "midpoints": [
                                        724.5,
                                        320.421875,
                                        709.5,
                                        320.421875,
                                        470.5,
                                        320.421875
                                    ],
                                    "order": 2,
                                    "source": [
                                        "fd-smooth-samps",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "fd-time-line-l",
                                        1
                                    ],
                                    "midpoints": [
                                        724.5,
                                        321.98828125,
                                        709.5,
                                        321.98828125,
                                        455,
                                        321.98828125
                                    ],
                                    "order": 3,
                                    "source": [
                                        "fd-smooth-samps",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "fd-time-line-r",
                                        2
                                    ],
                                    "midpoints": [
                                        724.5,
                                        320.9140625,
                                        709.5,
                                        320.9140625,
                                        560.5,
                                        320.9140625
                                    ],
                                    "order": 0,
                                    "source": [
                                        "fd-smooth-samps",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "fd-time-line-r",
                                        1
                                    ],
                                    "midpoints": [
                                        724.5,
                                        321.5,
                                        709.5,
                                        321.5,
                                        545,
                                        321.5
                                    ],
                                    "order": 1,
                                    "source": [
                                        "fd-smooth-samps",
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
                                        "fd-tapin-l",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        330,
                                        39.5,
                                        330
                                    ],
                                    "source": [
                                        "fd-source-l",
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
                                        "fd-tapin-r",
                                        0
                                    ],
                                    "midpoints": [
                                        109.5,
                                        321.79296875,
                                        169.5,
                                        321.79296875
                                    ],
                                    "source": [
                                        "fd-source-r",
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
                                        "fd-time-pack-r",
                                        1
                                    ],
                                    "midpoints": [
                                        869.5,
                                        115,
                                        565.5,
                                        115
                                    ],
                                    "source": [
                                        "fd-stereo-clip",
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
                                        "fd-tapout-l",
                                        0
                                    ],
                                    "source": [
                                        "fd-tapin-l",
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
                                        "fd-tapout-r",
                                        0
                                    ],
                                    "source": [
                                        "fd-tapin-r",
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
                                        "fd-filter-l",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        440,
                                        309.5,
                                        440
                                    ],
                                    "order": 0,
                                    "source": [
                                        "fd-tapout-l",
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
                                        "fd-wet-safe-l",
                                        0
                                    ],
                                    "midpoints": [
                                        39.5,
                                        440,
                                        39.5,
                                        440
                                    ],
                                    "order": 1,
                                    "source": [
                                        "fd-tapout-l",
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
                                        "fd-filter-r",
                                        0
                                    ],
                                    "midpoints": [
                                        169.5,
                                        439.2421875,
                                        449.5,
                                        439.2421875
                                    ],
                                    "order": 0,
                                    "source": [
                                        "fd-tapout-r",
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
                                        "fd-wet-safe-r",
                                        0
                                    ],
                                    "midpoints": [
                                        169.5,
                                        440,
                                        169.5,
                                        440
                                    ],
                                    "order": 1,
                                    "source": [
                                        "fd-tapout-r",
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
                                        "fd-time-trigger",
                                        0
                                    ],
                                    "midpoints": [
                                        439.5,
                                        115,
                                        439.5,
                                        115
                                    ],
                                    "source": [
                                        "fd-time-clip",
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
                                        "fd-tapout-l",
                                        0
                                    ],
                                    "midpoints": [
                                        439.5,
                                        321.59375,
                                        39.5,
                                        321.59375
                                    ],
                                    "source": [
                                        "fd-time-line-l",
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
                                        "fd-tapout-r",
                                        0
                                    ],
                                    "midpoints": [
                                        529.5,
                                        323.13671875,
                                        169.5,
                                        323.13671875
                                    ],
                                    "source": [
                                        "fd-time-line-r",
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
                                        "fd-time-line-l",
                                        0
                                    ],
                                    "source": [
                                        "fd-time-msg-l",
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
                                        "fd-time-line-r",
                                        0
                                    ],
                                    "source": [
                                        "fd-time-msg-r",
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
                                        "fd-time-sum-r",
                                        0
                                    ],
                                    "midpoints": [
                                        509.5,
                                        155,
                                        509.5,
                                        155
                                    ],
                                    "source": [
                                        "fd-time-pack-r",
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
                                        "fd-time-msg-r",
                                        0
                                    ],
                                    "midpoints": [
                                        509.5,
                                        202.66015625,
                                        529.5,
                                        202.66015625
                                    ],
                                    "source": [
                                        "fd-time-sum-r",
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
                                        "fd-time-msg-l",
                                        0
                                    ],
                                    "source": [
                                        "fd-time-trigger",
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
                                        "fd-time-pack-r",
                                        0
                                    ],
                                    "midpoints": [
                                        470.5,
                                        115.625,
                                        509.5,
                                        115.625
                                    ],
                                    "source": [
                                        "fd-time-trigger",
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
                                        "fdo-l",
                                        0
                                    ],
                                    "source": [
                                        "fd-wet-l",
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
                                        "fd-feedback-enable-l",
                                        1
                                    ],
                                    "midpoints": [
                                        219.5,
                                        322.44921875,
                                        332.5,
                                        322.44921875
                                    ],
                                    "order": 1,
                                    "source": [
                                        "fd-wet-line",
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
                                        "fd-feedback-enable-r",
                                        1
                                    ],
                                    "midpoints": [
                                        219.5,
                                        323.2265625,
                                        472.5,
                                        323.2265625
                                    ],
                                    "order": 0,
                                    "source": [
                                        "fd-wet-line",
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
                                        "fd-wet-l",
                                        1
                                    ],
                                    "midpoints": [
                                        219.5,
                                        322.26953125,
                                        62.5,
                                        322.26953125
                                    ],
                                    "order": 3,
                                    "source": [
                                        "fd-wet-line",
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
                                        "fd-wet-r",
                                        1
                                    ],
                                    "midpoints": [
                                        219.5,
                                        321.6796875,
                                        192.5,
                                        321.6796875
                                    ],
                                    "order": 2,
                                    "source": [
                                        "fd-wet-line",
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
                                        "fdo-r",
                                        0
                                    ],
                                    "source": [
                                        "fd-wet-r",
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
                                        "fd-wet-l",
                                        0
                                    ],
                                    "source": [
                                        "fd-wet-safe-l",
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
                                        "fd-wet-r",
                                        0
                                    ],
                                    "source": [
                                        "fd-wet-safe-r",
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
                                        "fd-damping-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        729.5,
                                        70,
                                        729.5,
                                        70
                                    ],
                                    "source": [
                                        "fdi-damping",
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
                                        "fd-enable-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        219.5,
                                        70,
                                        219.5,
                                        70
                                    ],
                                    "source": [
                                        "fdi-enable",
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
                                        "fd-feedback-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        579.5,
                                        70,
                                        579.5,
                                        70
                                    ],
                                    "source": [
                                        "fdi-feedback",
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
                                        "fd-source-l",
                                        0
                                    ],
                                    "source": [
                                        "fdi-l",
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
                                        "fd-source-r",
                                        0
                                    ],
                                    "source": [
                                        "fdi-r",
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
                                        "fd-stereo-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        869.5,
                                        70,
                                        869.5,
                                        70
                                    ],
                                    "source": [
                                        "fdi-stereo",
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
                                        "fd-time-clip",
                                        0
                                    ],
                                    "midpoints": [
                                        439.5,
                                        70,
                                        439.5,
                                        70
                                    ],
                                    "source": [
                                        "fdi-time",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-724"
                    },
                    "patching_rect": [
                        24,
                        337,
                        175,
                        22
                    ],
                    "text": "p Feedback_delay_core"
                }
            },
            {
                "box": {
                    "id": "fd-gain",
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
                        730,
                        138,
                        58,
                        160
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        700,
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
                            "parameter_longname": "delay_output_gain",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Delay Out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "delay_output_gain"
                }
            },
            {
                "box": {
                    "id": "fd-output-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        730,
                        112,
                        70,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        696,
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
                    "id": "fd-out-l",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        910,
                        292,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "fd-out-r",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        960,
                        292,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "fd-preset",
                    "items": [
                        "Slap Echo",
                        ",",
                        "Tape Trail",
                        ",",
                        "Space Repeat"
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
                        850,
                        20,
                        155,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        655,
                        14,
                        155,
                        22
                    ],
                    "varname": "fd_preset"
                }
            },
            {
                "box": {
                    "id": "fd-preset-js",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        850,
                        60,
                        190,
                        22
                    ],
                    "saved_object_attributes": {
                        "filename": "mt_module_presets.js",
                        "parameter_enable": 0
                    },
                    "text": "js mt_module_presets.js delay"
                }
            },
            {
                "box": {
                    "id": "fd-preset-unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "float",
                        "float",
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        850,
                        100,
                        170,
                        22
                    ],
                    "text": "unpack f f f f"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "color": [
                        0.62,
                        0.86,
                        0.34,
                        1
                    ],
                    "destination": [
                        "fd-gain",
                        1
                    ],
                    "midpoints": [
                        189.5,
                        340,
                        778.5,
                        340
                    ],
                    "source": [
                        "fd-core",
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
                        "fd-gain",
                        0
                    ],
                    "midpoints": [
                        33.5,
                        340,
                        739.5,
                        340
                    ],
                    "source": [
                        "fd-core",
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
                        "fd-core",
                        5
                    ],
                    "midpoints": [
                        414.5,
                        255,
                        167.21428571428572,
                        255
                    ],
                    "source": [
                        "fd-damping",
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
                        "fd-damping",
                        0
                    ],
                    "midpoints": [
                        414.5,
                        255,
                        414.5,
                        255
                    ],
                    "source": [
                        "fd-default-damping",
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
                        "fd-feedback",
                        0
                    ],
                    "midpoints": [
                        264.5,
                        255,
                        264.5,
                        255
                    ],
                    "source": [
                        "fd-default-feedback",
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
                        "fd-stereo",
                        0
                    ],
                    "midpoints": [
                        544.5,
                        255,
                        544.5,
                        255
                    ],
                    "source": [
                        "fd-default-stereo",
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
                        "fd-time",
                        0
                    ],
                    "midpoints": [
                        154.5,
                        255,
                        154.5,
                        255
                    ],
                    "source": [
                        "fd-default-time",
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
                        "fd-core",
                        2
                    ],
                    "midpoints": [
                        33.5,
                        205,
                        78.07142857142857,
                        205,
                        78.07142857142857,
                        337
                    ],
                    "order": 0,
                    "source": [
                        "fd-enable",
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
                        "fd-state",
                        0
                    ],
                    "midpoints": [
                        33.5,
                        205,
                        33.5,
                        205
                    ],
                    "order": 1,
                    "source": [
                        "fd-enable",
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
                        "fd-enable",
                        0
                    ],
                    "midpoints": [
                        139.5,
                        140,
                        33.5,
                        140
                    ],
                    "source": [
                        "fd-enable-set",
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
                        "fd-core",
                        4
                    ],
                    "midpoints": [
                        264.5,
                        255,
                        144.92857142857144,
                        255,
                        144.92857142857144,
                        337
                    ],
                    "source": [
                        "fd-feedback",
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
                        "fd-out-l",
                        0
                    ],
                    "midpoints": [
                        739.5,
                        325,
                        919.5,
                        325
                    ],
                    "source": [
                        "fd-gain",
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
                        "fd-out-r",
                        0
                    ],
                    "midpoints": [
                        749.25,
                        325,
                        969.5,
                        325
                    ],
                    "source": [
                        "fd-gain",
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
                        "fd-damping",
                        0
                    ],
                    "midpoints": [
                        319.5,
                        140,
                        414.5,
                        140
                    ],
                    "source": [
                        "fd-in-damping",
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
                        "fd-core",
                        2
                    ],
                    "midpoints": [
                        139.5,
                        140,
                        78.07142857142857,
                        140,
                        78.07142857142857,
                        337
                    ],
                    "order": 1,
                    "source": [
                        "fd-in-enable",
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
                        "fd-enable-set",
                        0
                    ],
                    "midpoints": [
                        139.5,
                        140,
                        139.5,
                        140
                    ],
                    "order": 0,
                    "source": [
                        "fd-in-enable",
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
                        "fd-feedback",
                        0
                    ],
                    "midpoints": [
                        259.5,
                        140,
                        264.5,
                        140
                    ],
                    "source": [
                        "fd-in-feedback",
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
                        "fd-core",
                        0
                    ],
                    "midpoints": [
                        33.5,
                        205,
                        33.5,
                        205
                    ],
                    "source": [
                        "fd-in-l",
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
                        "fd-core",
                        1
                    ],
                    "midpoints": [
                        79.5,
                        205,
                        55.785714285714285,
                        205
                    ],
                    "source": [
                        "fd-in-r",
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
                        "fd-stereo",
                        0
                    ],
                    "midpoints": [
                        379.5,
                        140,
                        544.5,
                        140
                    ],
                    "source": [
                        "fd-in-stereo",
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
                        "fd-time",
                        0
                    ],
                    "midpoints": [
                        199.5,
                        140,
                        154.5,
                        140
                    ],
                    "source": [
                        "fd-in-time",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fd-preset-js",
                        0
                    ],
                    "midpoints": [
                        859.5,
                        50,
                        859.5,
                        50
                    ],
                    "source": [
                        "fd-preset",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fd-preset-unpack",
                        0
                    ],
                    "midpoints": [
                        859.5,
                        90,
                        859.5,
                        90
                    ],
                    "source": [
                        "fd-preset-js",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fd-damping",
                        0
                    ],
                    "midpoints": [
                        960.1666666666666,
                        140,
                        414.5,
                        140
                    ],
                    "source": [
                        "fd-preset-unpack",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fd-feedback",
                        0
                    ],
                    "midpoints": [
                        909.8333333333334,
                        140,
                        264.5,
                        140
                    ],
                    "source": [
                        "fd-preset-unpack",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fd-stereo",
                        0
                    ],
                    "midpoints": [
                        1010.5,
                        140,
                        544.5,
                        140
                    ],
                    "source": [
                        "fd-preset-unpack",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "fd-time",
                        0
                    ],
                    "midpoints": [
                        859.5,
                        140,
                        154.5,
                        140
                    ],
                    "source": [
                        "fd-preset-unpack",
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
                        "fd-core",
                        6
                    ],
                    "midpoints": [
                        544.5,
                        255,
                        189.5,
                        255
                    ],
                    "source": [
                        "fd-stereo",
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
                        "fd-core",
                        3
                    ],
                    "midpoints": [
                        154.5,
                        255,
                        122.64285714285714,
                        255,
                        122.64285714285714,
                        337
                    ],
                    "source": [
                        "fd-time",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-722",
        "parameters": {
            "fd-damping": [
                "delay_damping_hz",
                "DAMP Hz",
                0
            ],
            "fd-feedback": [
                "delay_feedback",
                "FEEDBACK",
                0
            ],
            "fd-gain": [
                "delay_output_gain",
                "Delay Out",
                0
            ],
            "fd-stereo": [
                "delay_stereo_offset_ms",
                "STEREO ms",
                0
            ],
            "fd-time": [
                "delay_time_ms",
                "TIME ms",
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
