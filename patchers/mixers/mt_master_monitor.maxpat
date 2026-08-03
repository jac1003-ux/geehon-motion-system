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
            100,
            100,
            574,
            578
        ],
        "openrect": [
            100,
            100,
            574,
            578
        ],
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
                    "id": "mm-bg",
                    "ignoreclick": 1,
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "jit_matrix"
                    ],
                    "patching_rect": [
                        720,
                        30,
                        574,
                        578
                    ],
                    "pic": "master_monitor_panel_v1.png",
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        0,
                        574,
                        578
                    ]
                }
            },
            {
                "box": {
                    "comment": "Audition L",
                    "id": "mm-in-l",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        150,
                        603,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Audition R",
                    "id": "mm-in-r",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        193,
                        603,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "mm-gain",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "channels": 2,
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
                        150,
                        650,
                        62,
                        220
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        42,
                        134,
                        62,
                        318
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "master_monitor_gain",
                            "parameter_mmax": 6,
                            "parameter_mmin": -70,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Monitor Level",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "showname": 0,
                    "varname": "master_monitor_gain"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.91,
                        0.94,
                        0.92,
                        1
                    ],
                    "bgoncolor": [
                        0.95,
                        0.79,
                        0.3,
                        1
                    ],
                    "fontface": 1,
                    "fontsize": 13,
                    "id": "mm-mute",
                    "maxclass": "textbutton",
                    "mode": 1,
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        250,
                        654,
                        140,
                        34
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        316,
                        292,
                        226,
                        74
                    ],
                    "rounded": 8,
                    "text": "MUTE MONITOR",
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "texton": "MONITOR MUTED",
                    "textoncolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "varname": "master_monitor_mute"
                }
            },
            {
                "box": {
                    "id": "mm-mute-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        250,
                        700,
                        72,
                        22
                    ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "mm-mute-invert",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        334,
                        700,
                        42,
                        22
                    ],
                    "text": "== 0"
                }
            },
            {
                "box": {
                    "id": "mm-mute-message",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        388,
                        700,
                        54,
                        22
                    ],
                    "text": "$1 20"
                }
            },
            {
                "box": {
                    "id": "mm-mute-ramp",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        454,
                        700,
                        42,
                        22
                    ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "mm-mute-l",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        230,
                        770,
                        36,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "mm-mute-r",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        310,
                        770,
                        36,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "mm-meter-l",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        228.9999966621399,
                        860.0000358819962,
                        32,
                        318
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        158,
                        134,
                        32,
                        318
                    ]
                }
            },
            {
                "box": {
                    "id": "mm-meter-r",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        309,
                        860.0000358819962,
                        32,
                        318
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        220,
                        134,
                        32,
                        318
                    ]
                }
            },
            {
                "box": {
                    "id": "mm-peak-l",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        400,
                        770,
                        88,
                        22
                    ],
                    "text": "peakamp~ 100"
                }
            },
            {
                "box": {
                    "id": "mm-peak-r",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        500,
                        770,
                        88,
                        22
                    ],
                    "text": "peakamp~ 100"
                }
            },
            {
                "box": {
                    "id": "mm-atodb-l",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        400,
                        804,
                        44,
                        22
                    ],
                    "text": "atodb"
                }
            },
            {
                "box": {
                    "id": "mm-atodb-r",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        500,
                        804,
                        44,
                        22
                    ],
                    "text": "atodb"
                }
            },
            {
                "box": {
                    "id": "mm-peak-pak",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        400,
                        838,
                        70,
                        22
                    ],
                    "text": "pak 0. 0."
                }
            },
            {
                "box": {
                    "id": "mm-peak-max",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        400,
                        872,
                        61,
                        22
                    ],
                    "text": "maximum"
                }
            },
            {
                "box": {
                    "id": "mm-peak-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        400,
                        906,
                        76,
                        22
                    ],
                    "text": "clip -70. 6."
                }
            },
            {
                "box": {
                    "id": "mm-peak-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        400,
                        940,
                        78,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        1,
                        0.98,
                        0.91,
                        1
                    ],
                    "fontface": 1,
                    "fontsize": 24,
                    "format": 6,
                    "id": "mm-peak-display",
                    "ignoreclick": 1,
                    "maxclass": "flonum",
                    "numdecimalplaces": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        399,
                        972,
                        80,
                        35
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        340,
                        180,
                        178,
                        35
                    ],
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "varname": "master_monitor_peak"
                }
            },
            {
                "box": {
                    "comment": "Monitored L",
                    "id": "mm-out-l",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        229.9999966621399,
                        1215.2941683530807,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "Monitored R",
                    "id": "mm-out-r",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        310,
                        1215.2941683530807,
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
                        "mm-peak-pak",
                        0
                    ],
                    "midpoints": [
                        409.5,
                        830,
                        409.5,
                        830
                    ],
                    "source": [
                        "mm-atodb-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-peak-pak",
                        1
                    ],
                    "midpoints": [
                        509.5,
                        830,
                        460.5,
                        830
                    ],
                    "source": [
                        "mm-atodb-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-mute-l",
                        0
                    ],
                    "midpoints": [
                        159.5,
                        895,
                        239.5,
                        895
                    ],
                    "source": [
                        "mm-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-mute-r",
                        0
                    ],
                    "midpoints": [
                        170.25,
                        895,
                        319.5,
                        895
                    ],
                    "source": [
                        "mm-gain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-gain",
                        0
                    ],
                    "midpoints": [
                        159.5,
                        641.5,
                        159.5,
                        641.5
                    ],
                    "source": [
                        "mm-in-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-gain",
                        1
                    ],
                    "midpoints": [
                        202.5,
                        641.5,
                        202.5,
                        641.5
                    ],
                    "source": [
                        "mm-in-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-mute-invert",
                        0
                    ],
                    "midpoints": [
                        259.5,
                        700,
                        343.5,
                        700
                    ],
                    "source": [
                        "mm-mute",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-mute-message",
                        0
                    ],
                    "midpoints": [
                        343.5,
                        745,
                        397.5,
                        745
                    ],
                    "source": [
                        "mm-mute-invert",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-meter-l",
                        0
                    ],
                    "midpoints": [
                        239.5,
                        826.0000179409981,
                        238.4999966621399,
                        826.0000179409981
                    ],
                    "order": 2,
                    "source": [
                        "mm-mute-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-out-l",
                        0
                    ],
                    "midpoints": [
                        239.5,
                        901,
                        239.4999966621399,
                        901
                    ],
                    "order": 1,
                    "source": [
                        "mm-mute-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-peak-l",
                        0
                    ],
                    "midpoints": [
                        239.5,
                        795.375,
                        409.5,
                        795.375
                    ],
                    "order": 0,
                    "source": [
                        "mm-mute-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-mute",
                        0
                    ],
                    "midpoints": [
                        259.5,
                        745,
                        259.5,
                        745
                    ],
                    "source": [
                        "mm-mute-load",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-mute-ramp",
                        0
                    ],
                    "midpoints": [
                        397.5,
                        745,
                        463.5,
                        745
                    ],
                    "source": [
                        "mm-mute-message",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-meter-r",
                        0
                    ],
                    "midpoints": [
                        319.5,
                        826.0000179409981,
                        318.5,
                        826.0000179409981
                    ],
                    "order": 2,
                    "source": [
                        "mm-mute-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-out-r",
                        0
                    ],
                    "midpoints": [
                        319.5,
                        1003.6470841765404,
                        319.5,
                        1003.6470841765404
                    ],
                    "order": 1,
                    "source": [
                        "mm-mute-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-peak-r",
                        0
                    ],
                    "midpoints": [
                        319.5,
                        795.7265625,
                        509.5,
                        795.7265625
                    ],
                    "order": 0,
                    "source": [
                        "mm-mute-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-mute-l",
                        1
                    ],
                    "midpoints": [
                        463.5,
                        745,
                        256.5,
                        745
                    ],
                    "order": 1,
                    "source": [
                        "mm-mute-ramp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-mute-r",
                        1
                    ],
                    "midpoints": [
                        463.5,
                        745,
                        336.5,
                        745
                    ],
                    "order": 0,
                    "source": [
                        "mm-mute-ramp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-peak-set",
                        0
                    ],
                    "source": [
                        "mm-peak-clip",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-atodb-l",
                        0
                    ],
                    "midpoints": [
                        409.5,
                        800,
                        409.5,
                        800
                    ],
                    "source": [
                        "mm-peak-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-peak-clip",
                        0
                    ],
                    "midpoints": [
                        409.5,
                        895,
                        409.5,
                        895
                    ],
                    "source": [
                        "mm-peak-max",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-peak-max",
                        0
                    ],
                    "source": [
                        "mm-peak-pak",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-atodb-r",
                        0
                    ],
                    "midpoints": [
                        509.5,
                        800,
                        509.5,
                        800
                    ],
                    "source": [
                        "mm-peak-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mm-peak-display",
                        0
                    ],
                    "midpoints": [
                        409.5,
                        967,
                        408.5,
                        967
                    ],
                    "source": [
                        "mm-peak-set",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-236",
        "parameters": {
            "mm-gain": [
                "master_monitor_gain",
                "Monitor Level",
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
                "name": "master_monitor_panel_v1.png",
                "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/assets/ui",
                "patcherrelativepath": "../../assets/ui",
                "type": "PNG",
                "implicit": 1
            }
        ],
        "autosave": 0
    }
}
