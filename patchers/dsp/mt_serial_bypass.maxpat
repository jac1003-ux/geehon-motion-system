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
            120,
            120,
            620,
            360
        ],
        "gridsize": [
            15,
            15
        ],
        "boxes": [
            {
                "box": {
                    "comment": "dry L",
                    "id": "sb-dry-l",
                    "index": 0,
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
                    "comment": "dry R",
                    "id": "sb-dry-r",
                    "index": 0,
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
                    "comment": "wet L",
                    "id": "sb-wet-l",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        170,
                        30,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "wet R",
                    "id": "sb-wet-r",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        261,
                        30,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "enable",
                    "id": "sb-enable",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        420,
                        30,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "sb-enable-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        420,
                        82,
                        72,
                        22
                    ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "sb-enable-msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        420,
                        122,
                        52,
                        22
                    ],
                    "text": "$1 20"
                }
            },
            {
                "box": {
                    "id": "sb-enable-line",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        420,
                        162,
                        45,
                        22
                    ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "sb-dry-inverse",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        500,
                        162,
                        55,
                        22
                    ],
                    "text": "!-~ 1."
                }
            },
            {
                "box": {
                    "id": "sb-dry-gain-l",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30,
                        214,
                        40,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "sb-dry-gain-r",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        100,
                        214,
                        40,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "sb-sum-l",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        90,
                        264,
                        40,
                        22
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "sb-sum-r",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        240,
                        264,
                        40,
                        22
                    ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "comment": "serial L",
                    "id": "sb-out-l",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        90,
                        310,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "serial R",
                    "id": "sb-out-r",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        240,
                        310,
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
                        "sb-sum-l",
                        0
                    ],
                    "midpoints": [
                        39.5,
                        250,
                        99.5,
                        250
                    ],
                    "source": [
                        "sb-dry-gain-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "sb-sum-r",
                        0
                    ],
                    "midpoints": [
                        109.5,
                        250,
                        249.5,
                        250
                    ],
                    "source": [
                        "sb-dry-gain-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "sb-dry-gain-l",
                        1
                    ],
                    "midpoints": [
                        509.5,
                        210,
                        60.5,
                        210
                    ],
                    "order": 1,
                    "source": [
                        "sb-dry-inverse",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "sb-dry-gain-r",
                        1
                    ],
                    "midpoints": [
                        509.5,
                        210,
                        130.5,
                        210
                    ],
                    "order": 0,
                    "source": [
                        "sb-dry-inverse",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "sb-dry-gain-l",
                        0
                    ],
                    "source": [
                        "sb-dry-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "sb-dry-gain-r",
                        0
                    ],
                    "source": [
                        "sb-dry-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "sb-enable-clip",
                        0
                    ],
                    "midpoints": [
                        429.5,
                        70,
                        429.5,
                        70
                    ],
                    "source": [
                        "sb-enable",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "sb-enable-msg",
                        0
                    ],
                    "midpoints": [
                        429.5,
                        115,
                        429.5,
                        115
                    ],
                    "source": [
                        "sb-enable-clip",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "sb-dry-inverse",
                        0
                    ],
                    "midpoints": [
                        429.5,
                        210,
                        509.5,
                        210
                    ],
                    "source": [
                        "sb-enable-line",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "sb-enable-line",
                        0
                    ],
                    "source": [
                        "sb-enable-msg",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "sb-out-l",
                        0
                    ],
                    "source": [
                        "sb-sum-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "sb-out-r",
                        0
                    ],
                    "source": [
                        "sb-sum-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "sb-sum-l",
                        1
                    ],
                    "midpoints": [
                        185,
                        160,
                        124.5,
                        160,
                        120.5,
                        160
                    ],
                    "source": [
                        "sb-wet-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "sb-sum-r",
                        1
                    ],
                    "midpoints": [
                        270.5,
                        160,
                        270.5,
                        160
                    ],
                    "source": [
                        "sb-wet-r",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-242",
        "dependency_cache": [],
        "autosave": 0
    }
}
