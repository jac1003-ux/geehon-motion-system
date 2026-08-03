{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            100,
            100,
            560,
            450
        ],
        "openrect": [
            100,
            100,
            560,
            450
        ],
        "openinpresentation": 1,
        "default_fontname": "Arial",
        "default_fontsize": 12,
        "default_fontface": 0,
        "default_fontcolor": [
            0,
            0,
            0,
            1
        ],
        "gridonopen": 1,
        "gridsize": [
            15,
            15
        ],
        "gridsnaponopen": 1,
        "objectsnaponopen": 1,
        "statusbarvisible": 2,
        "toolbarvisible": 1,
        "lefttoolbarpinned": 0,
        "toptoolbarpinned": 0,
        "righttoolbarpinned": 0,
        "bottomtoolbarpinned": 0,
        "boxes": [
            {
                "box": {
                    "id": "fxm-bg",
                    "maxclass": "fpic",
                    "patching_rect": [
                        1095,
                        30,
                        560,
                        450
                    ],
                    "autofit": 1,
                    "background": 1,
                    "forceaspect": 1,
                    "ignoreclick": 1,
                    "pic": "fx_output_mixer_panel_v1.png",
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        0,
                        560,
                        450
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-vocoder-current",
                    "maxclass": "textbutton",
                    "patching_rect": [
                        50,
                        120,
                        92,
                        20
                    ],
                    "bgcolor": [
                        0.9,
                        0.92,
                        0.9,
                        1
                    ],
                    "bgoncolor": [
                        0.95,
                        0.7,
                        0.15,
                        1
                    ],
                    "fontsize": 9,
                    "fontface": 1,
                    "ignoreclick": 1,
                    "mode": 1,
                    "rounded": 8,
                    "text": "",
                    "textcolor": [
                        0.48,
                        0.53,
                        0.5,
                        1
                    ],
                    "texton": "CURRENT",
                    "textoncolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        50,
                        120,
                        92,
                        20
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-vocoder-gain",
                    "maxclass": "live.gain~",
                    "patching_rect": [
                        68,
                        158,
                        54,
                        210
                    ],
                    "channels": 2,
                    "metering": 0,
                    "numinlets": 2,
                    "numoutlets": 5,
                    "parameter_enable": 1,
                    "showname": 0,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Vocoder Trim",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "fx_output_vocoder_gain",
                    "presentation": 1,
                    "presentation_rect": [
                        68,
                        150,
                        54,
                        214
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-vocoder-readout",
                    "maxclass": "live.numbox",
                    "patching_rect": [
                        54,
                        378,
                        82,
                        24
                    ],
                    "ignoreclick": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 0,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Vocoder Trim",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "fx_output_vocoder_readout",
                    "presentation": 1,
                    "presentation_rect": [
                        54,
                        378,
                        82,
                        24
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-vocoder-in",
                    "maxclass": "inlet",
                    "patching_rect": [
                        40,
                        500,
                        30,
                        30
                    ],
                    "index": 1,
                    "comment": "Vocoder Output Gain feedback dB"
                }
            },
            {
                "box": {
                    "id": "fxm-vocoder-feedback",
                    "maxclass": "newobj",
                    "patching_rect": [
                        40,
                        544,
                        42,
                        22
                    ],
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-vocoder-feedback-set",
                    "maxclass": "newobj",
                    "patching_rect": [
                        40,
                        578,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "fxm-vocoder-write",
                    "maxclass": "newobj",
                    "patching_rect": [
                        40,
                        620,
                        42,
                        22
                    ],
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-vocoder-readout-set",
                    "maxclass": "newobj",
                    "patching_rect": [
                        40,
                        654,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "fxm-vocoder-out",
                    "maxclass": "outlet",
                    "patching_rect": [
                        40,
                        698,
                        30,
                        30
                    ],
                    "index": 1,
                    "comment": "Vocoder Output Gain control dB"
                }
            },
            {
                "box": {
                    "id": "fxm-bitcrusher-current",
                    "maxclass": "textbutton",
                    "patching_rect": [
                        180,
                        120,
                        92,
                        20
                    ],
                    "bgcolor": [
                        0.9,
                        0.92,
                        0.9,
                        1
                    ],
                    "bgoncolor": [
                        0.95,
                        0.7,
                        0.15,
                        1
                    ],
                    "fontsize": 9,
                    "fontface": 1,
                    "ignoreclick": 1,
                    "mode": 1,
                    "rounded": 8,
                    "text": "",
                    "textcolor": [
                        0.48,
                        0.53,
                        0.5,
                        1
                    ],
                    "texton": "CURRENT",
                    "textoncolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        180,
                        120,
                        92,
                        20
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-bitcrusher-gain",
                    "maxclass": "live.gain~",
                    "patching_rect": [
                        198,
                        158,
                        54,
                        210
                    ],
                    "channels": 2,
                    "metering": 0,
                    "numinlets": 2,
                    "numoutlets": 5,
                    "parameter_enable": 1,
                    "showname": 0,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Bitcrusher Trim",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "fx_output_bitcrusher_gain",
                    "presentation": 1,
                    "presentation_rect": [
                        198,
                        150,
                        54,
                        214
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-bitcrusher-readout",
                    "maxclass": "live.numbox",
                    "patching_rect": [
                        184,
                        378,
                        82,
                        24
                    ],
                    "ignoreclick": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 0,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Bitcrusher Trim",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "fx_output_bitcrusher_readout",
                    "presentation": 1,
                    "presentation_rect": [
                        184,
                        378,
                        82,
                        24
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-bitcrusher-in",
                    "maxclass": "inlet",
                    "patching_rect": [
                        140,
                        500,
                        30,
                        30
                    ],
                    "index": 2,
                    "comment": "Bitcrusher Output Gain feedback dB"
                }
            },
            {
                "box": {
                    "id": "fxm-bitcrusher-feedback",
                    "maxclass": "newobj",
                    "patching_rect": [
                        140,
                        544,
                        42,
                        22
                    ],
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-bitcrusher-feedback-set",
                    "maxclass": "newobj",
                    "patching_rect": [
                        140,
                        578,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "fxm-bitcrusher-write",
                    "maxclass": "newobj",
                    "patching_rect": [
                        140,
                        620,
                        42,
                        22
                    ],
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-bitcrusher-readout-set",
                    "maxclass": "newobj",
                    "patching_rect": [
                        140,
                        654,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "fxm-bitcrusher-out",
                    "maxclass": "outlet",
                    "patching_rect": [
                        140,
                        698,
                        30,
                        30
                    ],
                    "index": 2,
                    "comment": "Bitcrusher Output Gain control dB"
                }
            },
            {
                "box": {
                    "id": "fxm-multiband-current",
                    "maxclass": "textbutton",
                    "patching_rect": [
                        310,
                        120,
                        92,
                        20
                    ],
                    "bgcolor": [
                        0.9,
                        0.92,
                        0.9,
                        1
                    ],
                    "bgoncolor": [
                        0.95,
                        0.7,
                        0.15,
                        1
                    ],
                    "fontsize": 9,
                    "fontface": 1,
                    "ignoreclick": 1,
                    "mode": 1,
                    "rounded": 8,
                    "text": "",
                    "textcolor": [
                        0.48,
                        0.53,
                        0.5,
                        1
                    ],
                    "texton": "CURRENT",
                    "textoncolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        310,
                        120,
                        92,
                        20
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-multiband-gain",
                    "maxclass": "live.gain~",
                    "patching_rect": [
                        328,
                        158,
                        54,
                        210
                    ],
                    "channels": 2,
                    "metering": 0,
                    "numinlets": 2,
                    "numoutlets": 5,
                    "parameter_enable": 1,
                    "showname": 0,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Multiband Trim",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "fx_output_multiband_gain",
                    "presentation": 1,
                    "presentation_rect": [
                        328,
                        150,
                        54,
                        214
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-multiband-readout",
                    "maxclass": "live.numbox",
                    "patching_rect": [
                        314,
                        378,
                        82,
                        24
                    ],
                    "ignoreclick": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 0,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Multiband Trim",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "fx_output_multiband_readout",
                    "presentation": 1,
                    "presentation_rect": [
                        314,
                        378,
                        82,
                        24
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-multiband-in",
                    "maxclass": "inlet",
                    "patching_rect": [
                        240,
                        500,
                        30,
                        30
                    ],
                    "index": 3,
                    "comment": "Multiband Output Gain feedback dB"
                }
            },
            {
                "box": {
                    "id": "fxm-multiband-feedback",
                    "maxclass": "newobj",
                    "patching_rect": [
                        240,
                        544,
                        42,
                        22
                    ],
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-multiband-feedback-set",
                    "maxclass": "newobj",
                    "patching_rect": [
                        240,
                        578,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "fxm-multiband-write",
                    "maxclass": "newobj",
                    "patching_rect": [
                        240,
                        620,
                        42,
                        22
                    ],
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-multiband-readout-set",
                    "maxclass": "newobj",
                    "patching_rect": [
                        240,
                        654,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "fxm-multiband-out",
                    "maxclass": "outlet",
                    "patching_rect": [
                        240,
                        698,
                        30,
                        30
                    ],
                    "index": 3,
                    "comment": "Multiband Output Gain control dB"
                }
            },
            {
                "box": {
                    "id": "fxm-delay-current",
                    "maxclass": "textbutton",
                    "patching_rect": [
                        440,
                        120,
                        92,
                        20
                    ],
                    "bgcolor": [
                        0.9,
                        0.92,
                        0.9,
                        1
                    ],
                    "bgoncolor": [
                        0.95,
                        0.7,
                        0.15,
                        1
                    ],
                    "fontsize": 9,
                    "fontface": 1,
                    "ignoreclick": 1,
                    "mode": 1,
                    "rounded": 8,
                    "text": "",
                    "textcolor": [
                        0.48,
                        0.53,
                        0.5,
                        1
                    ],
                    "texton": "CURRENT",
                    "textoncolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        440,
                        120,
                        92,
                        20
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-delay-gain",
                    "maxclass": "live.gain~",
                    "patching_rect": [
                        458,
                        158,
                        54,
                        210
                    ],
                    "channels": 2,
                    "metering": 0,
                    "numinlets": 2,
                    "numoutlets": 5,
                    "parameter_enable": 1,
                    "showname": 0,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Delay Trim",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "fx_output_delay_gain",
                    "presentation": 1,
                    "presentation_rect": [
                        458,
                        150,
                        54,
                        214
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-delay-readout",
                    "maxclass": "live.numbox",
                    "patching_rect": [
                        444,
                        378,
                        82,
                        24
                    ],
                    "ignoreclick": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 0,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Delay Trim",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "fx_output_delay_readout",
                    "presentation": 1,
                    "presentation_rect": [
                        444,
                        378,
                        82,
                        24
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-delay-in",
                    "maxclass": "inlet",
                    "patching_rect": [
                        340,
                        500,
                        30,
                        30
                    ],
                    "index": 4,
                    "comment": "Feedback Delay Output Gain feedback dB"
                }
            },
            {
                "box": {
                    "id": "fxm-delay-feedback",
                    "maxclass": "newobj",
                    "patching_rect": [
                        340,
                        544,
                        42,
                        22
                    ],
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-delay-feedback-set",
                    "maxclass": "newobj",
                    "patching_rect": [
                        340,
                        578,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "fxm-delay-write",
                    "maxclass": "newobj",
                    "patching_rect": [
                        340,
                        620,
                        42,
                        22
                    ],
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-delay-readout-set",
                    "maxclass": "newobj",
                    "patching_rect": [
                        340,
                        654,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "fxm-delay-out",
                    "maxclass": "outlet",
                    "patching_rect": [
                        340,
                        698,
                        30,
                        30
                    ],
                    "index": 4,
                    "comment": "Feedback Delay Output Gain control dB"
                }
            },
            {
                "box": {
                    "id": "fxm-target-in",
                    "maxclass": "inlet",
                    "patching_rect": [
                        500,
                        500,
                        30,
                        30
                    ],
                    "index": 5,
                    "comment": "Current target index 0-3"
                }
            },
            {
                "box": {
                    "id": "fxm-target-clip",
                    "maxclass": "newobj",
                    "patching_rect": [
                        500,
                        544,
                        58,
                        22
                    ],
                    "text": "clip 0 3"
                }
            },
            {
                "box": {
                    "id": "fxm-target-trigger",
                    "maxclass": "newobj",
                    "patching_rect": [
                        500,
                        578,
                        72,
                        22
                    ],
                    "text": "t i i i i",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "int",
                        "int",
                        "int",
                        "int"
                    ]
                }
            },
            {
                "box": {
                    "id": "fxm-target-load",
                    "maxclass": "newobj",
                    "patching_rect": [
                        600,
                        500,
                        72,
                        22
                    ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "fxm-vocoder-is-current",
                    "maxclass": "newobj",
                    "patching_rect": [
                        500,
                        622,
                        48,
                        22
                    ],
                    "text": "== 0"
                }
            },
            {
                "box": {
                    "id": "fxm-vocoder-current-set",
                    "maxclass": "newobj",
                    "patching_rect": [
                        500,
                        656,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "fxm-bitcrusher-is-current",
                    "maxclass": "newobj",
                    "patching_rect": [
                        572,
                        622,
                        48,
                        22
                    ],
                    "text": "== 1"
                }
            },
            {
                "box": {
                    "id": "fxm-bitcrusher-current-set",
                    "maxclass": "newobj",
                    "patching_rect": [
                        587,
                        656,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "fxm-multiband-is-current",
                    "maxclass": "newobj",
                    "patching_rect": [
                        644,
                        622,
                        48,
                        22
                    ],
                    "text": "== 2"
                }
            },
            {
                "box": {
                    "id": "fxm-multiband-current-set",
                    "maxclass": "newobj",
                    "patching_rect": [
                        644,
                        686,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "fxm-delay-is-current",
                    "maxclass": "newobj",
                    "patching_rect": [
                        716,
                        622,
                        48,
                        22
                    ],
                    "text": "== 3"
                }
            },
            {
                "box": {
                    "id": "fxm-delay-current-set",
                    "maxclass": "newobj",
                    "patching_rect": [
                        716,
                        656,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "fxm-vocoder-monitor-l",
                    "maxclass": "inlet",
                    "patching_rect": [
                        600,
                        760,
                        30,
                        30
                    ],
                    "index": 6,
                    "comment": "Vocoder stage monitor L"
                }
            },
            {
                "box": {
                    "id": "fxm-vocoder-monitor-r",
                    "maxclass": "inlet",
                    "patching_rect": [
                        642,
                        760,
                        30,
                        30
                    ],
                    "index": 7,
                    "comment": "Vocoder stage monitor R"
                }
            },
            {
                "box": {
                    "id": "fxm-bitcrusher-monitor-l",
                    "maxclass": "inlet",
                    "patching_rect": [
                        700,
                        760,
                        30,
                        30
                    ],
                    "index": 8,
                    "comment": "Bitcrusher stage monitor L"
                }
            },
            {
                "box": {
                    "id": "fxm-bitcrusher-monitor-r",
                    "maxclass": "inlet",
                    "patching_rect": [
                        742,
                        760,
                        30,
                        30
                    ],
                    "index": 9,
                    "comment": "Bitcrusher stage monitor R"
                }
            },
            {
                "box": {
                    "id": "fxm-multiband-monitor-l",
                    "maxclass": "inlet",
                    "patching_rect": [
                        800,
                        760,
                        30,
                        30
                    ],
                    "index": 10,
                    "comment": "Multiband stage monitor L"
                }
            },
            {
                "box": {
                    "id": "fxm-multiband-monitor-r",
                    "maxclass": "inlet",
                    "patching_rect": [
                        842,
                        760,
                        30,
                        30
                    ],
                    "index": 11,
                    "comment": "Multiband stage monitor R"
                }
            },
            {
                "box": {
                    "id": "fxm-delay-monitor-l",
                    "maxclass": "inlet",
                    "patching_rect": [
                        900,
                        760,
                        30,
                        30
                    ],
                    "index": 12,
                    "comment": "Feedback Delay stage monitor L"
                }
            },
            {
                "box": {
                    "id": "fxm-delay-monitor-r",
                    "maxclass": "inlet",
                    "patching_rect": [
                        942,
                        760,
                        30,
                        30
                    ],
                    "index": 13,
                    "comment": "Feedback Delay stage monitor R"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "fxm-vocoder-in",
                        0
                    ],
                    "destination": [
                        "fxm-vocoder-feedback",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-vocoder-feedback",
                        1
                    ],
                    "destination": [
                        "fxm-vocoder-feedback-set",
                        0
                    ],
                    "midpoints": [
                        72.5,
                        570,
                        103,
                        570,
                        78,
                        570,
                        78,
                        578
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-vocoder-feedback-set",
                        0
                    ],
                    "destination": [
                        "fxm-vocoder-gain",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        615,
                        78,
                        615,
                        95,
                        615,
                        95,
                        158
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-vocoder-feedback",
                        0
                    ],
                    "destination": [
                        "fxm-vocoder-readout-set",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        615,
                        61,
                        615,
                        78,
                        615,
                        78,
                        654
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-vocoder-gain",
                        2
                    ],
                    "destination": [
                        "fxm-vocoder-write",
                        0
                    ],
                    "midpoints": [
                        95,
                        495,
                        203,
                        495,
                        61,
                        495,
                        61,
                        620
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-vocoder-write",
                        1
                    ],
                    "destination": [
                        "fxm-vocoder-out",
                        0
                    ],
                    "midpoints": [
                        72.5,
                        670,
                        103,
                        670,
                        55,
                        670
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-vocoder-write",
                        0
                    ],
                    "destination": [
                        "fxm-vocoder-readout-set",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        650,
                        61,
                        650,
                        78,
                        650,
                        78,
                        654
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-vocoder-readout-set",
                        0
                    ],
                    "destination": [
                        "fxm-vocoder-readout",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        700,
                        78,
                        700,
                        95,
                        700,
                        95,
                        378
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-bitcrusher-in",
                        0
                    ],
                    "destination": [
                        "fxm-bitcrusher-feedback",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-bitcrusher-feedback",
                        1
                    ],
                    "destination": [
                        "fxm-bitcrusher-feedback-set",
                        0
                    ],
                    "midpoints": [
                        172.5,
                        570,
                        203,
                        570,
                        178,
                        570,
                        178,
                        578
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-bitcrusher-feedback-set",
                        0
                    ],
                    "destination": [
                        "fxm-bitcrusher-gain",
                        0
                    ],
                    "midpoints": [
                        149.5,
                        615,
                        178,
                        615,
                        225,
                        615,
                        225,
                        158
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-bitcrusher-feedback",
                        0
                    ],
                    "destination": [
                        "fxm-bitcrusher-readout-set",
                        0
                    ],
                    "midpoints": [
                        149.5,
                        615,
                        161,
                        615,
                        178,
                        615,
                        178,
                        654
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-bitcrusher-gain",
                        2
                    ],
                    "destination": [
                        "fxm-bitcrusher-write",
                        0
                    ],
                    "midpoints": [
                        225,
                        495,
                        333,
                        495,
                        161,
                        495,
                        161,
                        620
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-bitcrusher-write",
                        1
                    ],
                    "destination": [
                        "fxm-bitcrusher-out",
                        0
                    ],
                    "midpoints": [
                        172.5,
                        670,
                        203,
                        670,
                        155,
                        670
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-bitcrusher-write",
                        0
                    ],
                    "destination": [
                        "fxm-bitcrusher-readout-set",
                        0
                    ],
                    "midpoints": [
                        149.5,
                        650,
                        161,
                        650,
                        178,
                        650,
                        178,
                        654
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-bitcrusher-readout-set",
                        0
                    ],
                    "destination": [
                        "fxm-bitcrusher-readout",
                        0
                    ],
                    "midpoints": [
                        149.5,
                        700,
                        178,
                        700,
                        225,
                        700,
                        225,
                        378
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-multiband-in",
                        0
                    ],
                    "destination": [
                        "fxm-multiband-feedback",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-multiband-feedback",
                        1
                    ],
                    "destination": [
                        "fxm-multiband-feedback-set",
                        0
                    ],
                    "midpoints": [
                        272.5,
                        570,
                        303,
                        570,
                        278,
                        570,
                        278,
                        578
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-multiband-feedback-set",
                        0
                    ],
                    "destination": [
                        "fxm-multiband-gain",
                        0
                    ],
                    "midpoints": [
                        249.5,
                        615,
                        278,
                        615,
                        355,
                        615,
                        355,
                        158
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-multiband-feedback",
                        0
                    ],
                    "destination": [
                        "fxm-multiband-readout-set",
                        0
                    ],
                    "midpoints": [
                        249.5,
                        615,
                        261,
                        615,
                        278,
                        615,
                        278,
                        654
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-multiband-gain",
                        2
                    ],
                    "destination": [
                        "fxm-multiband-write",
                        0
                    ],
                    "midpoints": [
                        355,
                        495,
                        463,
                        495,
                        261,
                        495,
                        261,
                        620
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-multiband-write",
                        1
                    ],
                    "destination": [
                        "fxm-multiband-out",
                        0
                    ],
                    "midpoints": [
                        272.5,
                        670,
                        303,
                        670,
                        255,
                        670
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-multiband-write",
                        0
                    ],
                    "destination": [
                        "fxm-multiband-readout-set",
                        0
                    ],
                    "midpoints": [
                        249.5,
                        650,
                        261,
                        650,
                        278,
                        650,
                        278,
                        654
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-multiband-readout-set",
                        0
                    ],
                    "destination": [
                        "fxm-multiband-readout",
                        0
                    ],
                    "midpoints": [
                        249.5,
                        700,
                        278,
                        700,
                        355,
                        700,
                        355,
                        378
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-delay-in",
                        0
                    ],
                    "destination": [
                        "fxm-delay-feedback",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-delay-feedback",
                        1
                    ],
                    "destination": [
                        "fxm-delay-feedback-set",
                        0
                    ],
                    "midpoints": [
                        372.5,
                        570,
                        403,
                        570,
                        378,
                        570,
                        378,
                        578
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-delay-feedback-set",
                        0
                    ],
                    "destination": [
                        "fxm-delay-gain",
                        0
                    ],
                    "midpoints": [
                        349.5,
                        615,
                        378,
                        615,
                        485,
                        615,
                        485,
                        158
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-delay-feedback",
                        0
                    ],
                    "destination": [
                        "fxm-delay-readout-set",
                        0
                    ],
                    "midpoints": [
                        349.5,
                        615,
                        361,
                        615,
                        378,
                        615,
                        378,
                        654
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-delay-gain",
                        2
                    ],
                    "destination": [
                        "fxm-delay-write",
                        0
                    ],
                    "midpoints": [
                        485,
                        495,
                        593,
                        495,
                        361,
                        495,
                        361,
                        620
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-delay-write",
                        1
                    ],
                    "destination": [
                        "fxm-delay-out",
                        0
                    ],
                    "midpoints": [
                        372.5,
                        670,
                        403,
                        670,
                        355,
                        670
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-delay-write",
                        0
                    ],
                    "destination": [
                        "fxm-delay-readout-set",
                        0
                    ],
                    "midpoints": [
                        349.5,
                        650,
                        361,
                        650,
                        378,
                        650,
                        378,
                        654
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-delay-readout-set",
                        0
                    ],
                    "destination": [
                        "fxm-delay-readout",
                        0
                    ],
                    "midpoints": [
                        349.5,
                        700,
                        378,
                        700,
                        485,
                        700,
                        485,
                        378
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-target-trigger",
                        3
                    ],
                    "destination": [
                        "fxm-vocoder-is-current",
                        0
                    ],
                    "midpoints": [
                        562.5,
                        615,
                        752,
                        615,
                        524,
                        615,
                        524,
                        622
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-vocoder-is-current",
                        0
                    ],
                    "destination": [
                        "fxm-vocoder-current-set",
                        0
                    ],
                    "midpoints": [
                        509.5,
                        650,
                        524,
                        650,
                        538,
                        650,
                        538,
                        656
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-vocoder-current-set",
                        0
                    ],
                    "destination": [
                        "fxm-vocoder-current",
                        0
                    ],
                    "midpoints": [
                        509.5,
                        700,
                        538,
                        700,
                        96,
                        700,
                        96,
                        120
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-target-trigger",
                        2
                    ],
                    "destination": [
                        "fxm-bitcrusher-is-current",
                        0
                    ],
                    "midpoints": [
                        544.8333333333334,
                        615,
                        680,
                        615,
                        596,
                        615,
                        596,
                        622
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-bitcrusher-is-current",
                        0
                    ],
                    "destination": [
                        "fxm-bitcrusher-current-set",
                        0
                    ],
                    "midpoints": [
                        581.5,
                        650,
                        596,
                        650,
                        625,
                        650,
                        625,
                        656
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-bitcrusher-current-set",
                        0
                    ],
                    "destination": [
                        "fxm-bitcrusher-current",
                        0
                    ],
                    "midpoints": [
                        596.5,
                        700,
                        625,
                        700,
                        226,
                        700,
                        226,
                        120
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-target-trigger",
                        1
                    ],
                    "destination": [
                        "fxm-multiband-is-current",
                        0
                    ],
                    "midpoints": [
                        527.1666666666666,
                        615,
                        608,
                        615,
                        668,
                        615,
                        668,
                        622
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-multiband-is-current",
                        0
                    ],
                    "destination": [
                        "fxm-multiband-current-set",
                        0
                    ],
                    "midpoints": [
                        653.5,
                        670,
                        668,
                        670,
                        682,
                        670,
                        682,
                        686
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-multiband-current-set",
                        0
                    ],
                    "destination": [
                        "fxm-multiband-current",
                        0
                    ],
                    "midpoints": [
                        653.5,
                        735,
                        682,
                        735,
                        356,
                        735,
                        356,
                        120
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-target-trigger",
                        0
                    ],
                    "destination": [
                        "fxm-delay-is-current",
                        0
                    ],
                    "midpoints": [
                        509.5,
                        615,
                        536,
                        615,
                        740,
                        615,
                        740,
                        622
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-delay-is-current",
                        0
                    ],
                    "destination": [
                        "fxm-delay-current-set",
                        0
                    ],
                    "midpoints": [
                        725.5,
                        650,
                        740,
                        650,
                        754,
                        650,
                        754,
                        656
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-delay-current-set",
                        0
                    ],
                    "destination": [
                        "fxm-delay-current",
                        0
                    ],
                    "midpoints": [
                        725.5,
                        700,
                        754,
                        700,
                        486,
                        700,
                        486,
                        120
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-target-in",
                        0
                    ],
                    "destination": [
                        "fxm-target-clip",
                        0
                    ],
                    "midpoints": [
                        515,
                        535,
                        529,
                        535,
                        529,
                        544
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-target-load",
                        0
                    ],
                    "destination": [
                        "fxm-target-clip",
                        0
                    ],
                    "midpoints": [
                        609.5,
                        535,
                        636,
                        535,
                        529,
                        535,
                        529,
                        544
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-target-clip",
                        0
                    ],
                    "destination": [
                        "fxm-target-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-vocoder-monitor-l",
                        0
                    ],
                    "destination": [
                        "fxm-vocoder-gain",
                        0
                    ],
                    "midpoints": [
                        615,
                        815,
                        95,
                        815,
                        95,
                        158
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-vocoder-monitor-r",
                        0
                    ],
                    "destination": [
                        "fxm-vocoder-gain",
                        1
                    ],
                    "midpoints": [
                        657,
                        815,
                        149,
                        815,
                        149,
                        158
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-bitcrusher-monitor-l",
                        0
                    ],
                    "destination": [
                        "fxm-bitcrusher-gain",
                        0
                    ],
                    "midpoints": [
                        715,
                        815,
                        225,
                        815,
                        225,
                        158
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-bitcrusher-monitor-r",
                        0
                    ],
                    "destination": [
                        "fxm-bitcrusher-gain",
                        1
                    ],
                    "midpoints": [
                        757,
                        815,
                        279,
                        815,
                        279,
                        158
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-multiband-monitor-l",
                        0
                    ],
                    "destination": [
                        "fxm-multiband-gain",
                        0
                    ],
                    "midpoints": [
                        815,
                        815,
                        355,
                        815,
                        355,
                        158
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-multiband-monitor-r",
                        0
                    ],
                    "destination": [
                        "fxm-multiband-gain",
                        1
                    ],
                    "midpoints": [
                        857,
                        815,
                        409,
                        815,
                        409,
                        158
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-delay-monitor-l",
                        0
                    ],
                    "destination": [
                        "fxm-delay-gain",
                        0
                    ],
                    "midpoints": [
                        915,
                        815,
                        485,
                        815,
                        485,
                        158
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "fxm-delay-monitor-r",
                        0
                    ],
                    "destination": [
                        "fxm-delay-gain",
                        1
                    ],
                    "midpoints": [
                        957,
                        815,
                        539,
                        815,
                        539,
                        158
                    ]
                }
            }
        ],
        "dependency_cache": [
            {
                "name": "fx_output_mixer_panel_v1.png",
                "bootpath": ".",
                "patcherrelativepath": ".",
                "type": "PNG",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}
