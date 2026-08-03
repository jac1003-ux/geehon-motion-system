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
            520
        ],
        "gridsize": [
            15,
            15
        ],
        "boxes": [
            {
                "box": {
                    "id": "vp-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        35,
                        25,
                        720,
                        20
                    ],
                    "text": "mt_vocoder_pfft: spectral envelope transfer. Modulator amplitude shapes internal carrier phase."
                }
            },
            {
                "box": {
                    "id": "vp-mod-in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        55,
                        90,
                        70,
                        22
                    ],
                    "text": "fftin~ 1"
                }
            },
            {
                "box": {
                    "id": "vp-carrier-in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        265,
                        90,
                        70,
                        22
                    ],
                    "text": "fftin~ 2"
                }
            },
            {
                "box": {
                    "id": "vp-mod-pol",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        55,
                        155,
                        75,
                        22
                    ],
                    "text": "cartopol~"
                }
            },
            {
                "box": {
                    "id": "vp-carrier-pol",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        265,
                        155,
                        75,
                        22
                    ],
                    "text": "cartopol~"
                }
            },
            {
                "box": {
                    "id": "vp-smooth-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        445,
                        90,
                        55,
                        22
                    ],
                    "text": "r #1"
                }
            },
            {
                "box": {
                    "id": "vp-smooth-default",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        515,
                        90,
                        145,
                        22
                    ],
                    "text": "loadmess slide 12 12"
                }
            },
            {
                "box": {
                    "id": "vp-amp-smooth",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        55,
                        235,
                        95,
                        22
                    ],
                    "text": "vectral~ 512"
                }
            },
            {
                "box": {
                    "id": "vp-amp-makeup",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        55,
                        300,
                        55,
                        22
                    ],
                    "text": "*~ 2.5"
                }
            },
            {
                "box": {
                    "id": "vp-amp-limit",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        55,
                        350,
                        80,
                        22
                    ],
                    "text": "clip~ 0. 6."
                }
            },
            {
                "box": {
                    "id": "vp-poltocar",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        265,
                        350,
                        75,
                        22
                    ],
                    "text": "poltocar~"
                }
            },
            {
                "box": {
                    "id": "vp-fftout",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        265,
                        420,
                        75,
                        22
                    ],
                    "text": "fftout~ 1"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "vp-poltocar",
                        0
                    ],
                    "midpoints": [
                        64.5,
                        395,
                        95,
                        395,
                        303,
                        395,
                        303,
                        350
                    ],
                    "source": [
                        "vp-amp-limit",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-amp-limit",
                        0
                    ],
                    "midpoints": [
                        64.5,
                        335,
                        83,
                        335,
                        95,
                        335,
                        95,
                        350
                    ],
                    "source": [
                        "vp-amp-makeup",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-amp-makeup",
                        0
                    ],
                    "midpoints": [
                        64.5,
                        280,
                        103,
                        280,
                        83,
                        280,
                        83,
                        300
                    ],
                    "source": [
                        "vp-amp-smooth",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-carrier-pol",
                        1
                    ],
                    "source": [
                        "vp-carrier-in",
                        1
                    ],
                    "midpoints": [
                        300,
                        130,
                        330.5,
                        130
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-carrier-pol",
                        0
                    ],
                    "source": [
                        "vp-carrier-in",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-poltocar",
                        1
                    ],
                    "source": [
                        "vp-carrier-pol",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-amp-smooth",
                        1
                    ],
                    "midpoints": [
                        115.5,
                        135,
                        230,
                        135,
                        198,
                        135,
                        198,
                        235
                    ],
                    "order": 0,
                    "source": [
                        "vp-mod-in",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-amp-smooth",
                        0
                    ],
                    "midpoints": [
                        115.5,
                        135,
                        230,
                        135,
                        103,
                        135,
                        103,
                        235
                    ],
                    "order": 1,
                    "source": [
                        "vp-mod-in",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-mod-pol",
                        1
                    ],
                    "source": [
                        "vp-mod-in",
                        1
                    ],
                    "midpoints": [
                        90,
                        130,
                        120.5,
                        130
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-mod-pol",
                        0
                    ],
                    "source": [
                        "vp-mod-in",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-amp-smooth",
                        2
                    ],
                    "midpoints": [
                        64.5,
                        205,
                        93,
                        205,
                        293,
                        205,
                        293,
                        235
                    ],
                    "source": [
                        "vp-mod-pol",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-fftout",
                        1
                    ],
                    "source": [
                        "vp-poltocar",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-fftout",
                        0
                    ],
                    "source": [
                        "vp-poltocar",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-amp-smooth",
                        0
                    ],
                    "midpoints": [
                        524.5,
                        175,
                        588,
                        175,
                        103,
                        175,
                        103,
                        235
                    ],
                    "source": [
                        "vp-smooth-default",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "vp-amp-smooth",
                        0
                    ],
                    "midpoints": [
                        454.5,
                        175,
                        473,
                        175,
                        103,
                        175,
                        103,
                        235
                    ],
                    "source": [
                        "vp-smooth-r",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-1002",
        "dependency_cache": [],
        "autosave": 0
    }
}
