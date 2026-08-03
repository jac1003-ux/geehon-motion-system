{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 8,
            "minor": 6,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            80,
            80,
            1050,
            720
        ],
        "bglocked": 0,
        "openinpresentation": 0,
        "default_fontsize": 12,
        "default_fontface": 0,
        "default_fontname": "Arial",
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
        "toolbars_unpinned_last_save": 0,
        "tallnewobj": 0,
        "boxanimatetime": 200,
        "enablehscroll": 1,
        "enablevscroll": 1,
        "devicewidth": 0,
        "description": "Poly~ grain voice for mt_granular_synth.",
        "digest": "",
        "tags": "granular grain voice",
        "boxes": [
            {
                "box": {
                    "id": "gv-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        40,
                        80,
                        360,
                        22
                    ],
                    "text": "One grain voice for mt_granular_synth"
                }
            },
            {
                "box": {
                    "id": "gv-in",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        166,
                        45,
                        22
                    ],
                    "text": "in 1"
                }
            },
            {
                "box": {
                    "id": "gv-route",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        252,
                        80,
                        22
                    ],
                    "text": "route grain"
                }
            },
            {
                "box": {
                    "id": "gv-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        338,
                        45,
                        22
                    ],
                    "text": "t b l"
                }
            },
            {
                "box": {
                    "id": "gv-fire",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        424,
                        55,
                        22
                    ],
                    "text": "t b b b"
                }
            },
            {
                "box": {
                    "id": "gv-unpack",
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
                        160,
                        424,
                        125,
                        22
                    ],
                    "text": "unpack f f f f f"
                }
            },
            {
                "box": {
                    "id": "gv-start-store",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        40,
                        510,
                        35,
                        22
                    ],
                    "text": "f"
                }
            },
            {
                "box": {
                    "id": "gv-dur-store",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        160,
                        510,
                        35,
                        22
                    ],
                    "text": "f"
                }
            },
            {
                "box": {
                    "id": "gv-rate-store",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        280,
                        510,
                        35,
                        22
                    ],
                    "text": "f"
                }
            },
            {
                "box": {
                    "id": "gv-start-t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        175,
                        596,
                        45,
                        22
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "gv-end",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        682,
                        135,
                        22
                    ],
                    "text": "expr $f1 + ($f2 * $f3)"
                }
            },
            {
                "box": {
                    "id": "gv-playpack",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        768,
                        90,
                        22
                    ],
                    "text": "pack f f f"
                }
            },
            {
                "box": {
                    "id": "gv-playmsg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        854,
                        80,
                        22
                    ],
                    "text": "$1, $2 $3"
                }
            },
            {
                "box": {
                    "id": "gv-readline",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        40,
                        940,
                        45,
                        22
                    ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "gv-play",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        40,
                        1026,
                        160,
                        22
                    ],
                    "text": "play~ mt_granular_buffer"
                }
            },
            {
                "box": {
                    "id": "gv-envmsg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        596,
                        70,
                        22
                    ],
                    "text": "0, 1 $1"
                }
            },
            {
                "box": {
                    "id": "gv-envline",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        235,
                        682,
                        45,
                        22
                    ],
                    "text": "line~"
                }
            },
            {
                "box": {
                    "id": "gv-cos",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        195,
                        768,
                        45,
                        22
                    ],
                    "text": "cos~"
                }
            },
            {
                "box": {
                    "id": "gv-window-neg",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        175,
                        854,
                        60,
                        22
                    ],
                    "text": "*~ -0.5"
                }
            },
            {
                "box": {
                    "id": "gv-window",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        160,
                        940,
                        55,
                        22
                    ],
                    "text": "+~ 0.5"
                }
            },
            {
                "box": {
                    "id": "gv-window-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        40,
                        1112,
                        35,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "gv-amp-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        400,
                        510,
                        65,
                        22
                    ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "gv-amp-sig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        295,
                        596,
                        45,
                        22
                    ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "gv-ampmul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        40,
                        1198,
                        35,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "gv-pan-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        535,
                        510,
                        65,
                        22
                    ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "gv-pan-left",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        415,
                        596,
                        115,
                        22
                    ],
                    "text": "expr sqrt(1. - $f1)"
                }
            },
            {
                "box": {
                    "id": "gv-pan-right",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        590,
                        596,
                        90,
                        22
                    ],
                    "text": "expr sqrt($f1)"
                }
            },
            {
                "box": {
                    "id": "gv-left-sig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        355,
                        682,
                        45,
                        22
                    ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "gv-right-sig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        475,
                        682,
                        45,
                        22
                    ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "gv-left-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        40,
                        1284,
                        35,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "gv-right-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        160,
                        1284,
                        35,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "gv-out1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        40,
                        1370,
                        55,
                        22
                    ],
                    "text": "out~ 1"
                }
            },
            {
                "box": {
                    "id": "gv-out2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        160,
                        1370,
                        55,
                        22
                    ],
                    "text": "out~ 2"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "gv-in",
                        0
                    ],
                    "destination": [
                        "gv-route",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        220,
                        63,
                        220,
                        80,
                        220,
                        80,
                        252
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-route",
                        0
                    ],
                    "destination": [
                        "gv-trigger",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        305,
                        80,
                        305,
                        63,
                        305,
                        63,
                        338
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-trigger",
                        0
                    ],
                    "destination": [
                        "gv-fire",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-trigger",
                        1
                    ],
                    "destination": [
                        "gv-unpack",
                        0
                    ],
                    "midpoints": [
                        75.5,
                        390,
                        108,
                        390,
                        223,
                        390,
                        223,
                        424
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-fire",
                        0
                    ],
                    "destination": [
                        "gv-start-store",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        480,
                        68,
                        480,
                        58,
                        480,
                        58,
                        510
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-fire",
                        1
                    ],
                    "destination": [
                        "gv-dur-store",
                        0
                    ],
                    "midpoints": [
                        67.5,
                        480,
                        123,
                        480,
                        178,
                        480,
                        178,
                        510
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-fire",
                        2
                    ],
                    "destination": [
                        "gv-rate-store",
                        0
                    ],
                    "midpoints": [
                        85.5,
                        480,
                        178,
                        480,
                        298,
                        480,
                        298,
                        510
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-unpack",
                        0
                    ],
                    "destination": [
                        "gv-start-store",
                        1
                    ],
                    "midpoints": [
                        169.5,
                        480,
                        223,
                        480,
                        93,
                        480,
                        93,
                        510
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-unpack",
                        1
                    ],
                    "destination": [
                        "gv-dur-store",
                        1
                    ],
                    "midpoints": [
                        196,
                        480,
                        348,
                        480,
                        213,
                        480,
                        213,
                        510
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-unpack",
                        2
                    ],
                    "destination": [
                        "gv-rate-store",
                        1
                    ],
                    "midpoints": [
                        222.5,
                        480,
                        473,
                        480,
                        333,
                        480,
                        333,
                        510
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-unpack",
                        3
                    ],
                    "destination": [
                        "gv-pan-clip",
                        0
                    ],
                    "midpoints": [
                        249,
                        480,
                        598,
                        480,
                        568,
                        480,
                        568,
                        510
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-unpack",
                        4
                    ],
                    "destination": [
                        "gv-amp-clip",
                        0
                    ],
                    "midpoints": [
                        275.5,
                        480,
                        723,
                        480,
                        433,
                        480,
                        433,
                        510
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-start-store",
                        0
                    ],
                    "destination": [
                        "gv-start-t",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        560,
                        58,
                        560,
                        198,
                        560,
                        198,
                        596
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-start-t",
                        0
                    ],
                    "destination": [
                        "gv-playpack",
                        0
                    ],
                    "midpoints": [
                        184.5,
                        695,
                        198,
                        695,
                        85,
                        695,
                        85,
                        768
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-start-t",
                        1
                    ],
                    "destination": [
                        "gv-end",
                        0
                    ],
                    "midpoints": [
                        210.5,
                        650,
                        243,
                        650,
                        108,
                        650,
                        108,
                        682
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-dur-store",
                        0
                    ],
                    "destination": [
                        "gv-end",
                        1
                    ],
                    "midpoints": [
                        169.5,
                        560,
                        178,
                        560,
                        243,
                        560,
                        243,
                        682
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-dur-store",
                        0
                    ],
                    "destination": [
                        "gv-playpack",
                        2
                    ],
                    "midpoints": [
                        169.5,
                        560,
                        178,
                        560,
                        265,
                        560,
                        265,
                        768
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-dur-store",
                        0
                    ],
                    "destination": [
                        "gv-envmsg",
                        0
                    ],
                    "midpoints": [
                        169.5,
                        560,
                        178,
                        560,
                        75,
                        560,
                        75,
                        596
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-rate-store",
                        0
                    ],
                    "destination": [
                        "gv-end",
                        2
                    ],
                    "midpoints": [
                        289.5,
                        605,
                        298,
                        605,
                        378,
                        605,
                        378,
                        682
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-end",
                        0
                    ],
                    "destination": [
                        "gv-playpack",
                        1
                    ],
                    "midpoints": [
                        49.5,
                        735,
                        108,
                        735,
                        175,
                        735,
                        175,
                        768
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-playpack",
                        0
                    ],
                    "destination": [
                        "gv-playmsg",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-playmsg",
                        0
                    ],
                    "destination": [
                        "gv-readline",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        910,
                        80,
                        910,
                        63,
                        910,
                        63,
                        940
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-readline",
                        0
                    ],
                    "destination": [
                        "gv-play",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        995,
                        63,
                        995,
                        120,
                        995,
                        120,
                        1026
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-envmsg",
                        0
                    ],
                    "destination": [
                        "gv-envline",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        650,
                        75,
                        650,
                        258,
                        650,
                        258,
                        682
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-envline",
                        0
                    ],
                    "destination": [
                        "gv-cos",
                        0
                    ],
                    "midpoints": [
                        244.5,
                        735,
                        258,
                        735,
                        218,
                        735,
                        218,
                        768
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-cos",
                        0
                    ],
                    "destination": [
                        "gv-window-neg",
                        0
                    ],
                    "midpoints": [
                        204.5,
                        820,
                        218,
                        820,
                        205,
                        820,
                        205,
                        854
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-window-neg",
                        0
                    ],
                    "destination": [
                        "gv-window",
                        0
                    ],
                    "midpoints": [
                        184.5,
                        910,
                        205,
                        910,
                        188,
                        910,
                        188,
                        940
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-play",
                        0
                    ],
                    "destination": [
                        "gv-window-mul",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        1080,
                        120,
                        1080,
                        58,
                        1080,
                        58,
                        1112
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-window",
                        0
                    ],
                    "destination": [
                        "gv-window-mul",
                        1
                    ],
                    "midpoints": [
                        169.5,
                        1035,
                        188,
                        1035,
                        93,
                        1035,
                        93,
                        1112
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-amp-clip",
                        0
                    ],
                    "destination": [
                        "gv-amp-sig",
                        0
                    ],
                    "midpoints": [
                        409.5,
                        560,
                        433,
                        560,
                        318,
                        560,
                        318,
                        596
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-window-mul",
                        0
                    ],
                    "destination": [
                        "gv-ampmul",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-amp-sig",
                        0
                    ],
                    "destination": [
                        "gv-ampmul",
                        1
                    ],
                    "midpoints": [
                        304.5,
                        910,
                        318,
                        910,
                        93,
                        910,
                        93,
                        1198
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-pan-clip",
                        0
                    ],
                    "destination": [
                        "gv-pan-left",
                        0
                    ],
                    "midpoints": [
                        544.5,
                        560,
                        568,
                        560,
                        473,
                        560,
                        473,
                        596
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-pan-clip",
                        0
                    ],
                    "destination": [
                        "gv-pan-right",
                        0
                    ],
                    "midpoints": [
                        544.5,
                        560,
                        568,
                        560,
                        635,
                        560,
                        635,
                        596
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-pan-left",
                        0
                    ],
                    "destination": [
                        "gv-left-sig",
                        0
                    ],
                    "midpoints": [
                        424.5,
                        650,
                        473,
                        650,
                        378,
                        650,
                        378,
                        682
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-pan-right",
                        0
                    ],
                    "destination": [
                        "gv-right-sig",
                        0
                    ],
                    "midpoints": [
                        599.5,
                        650,
                        635,
                        650,
                        498,
                        650,
                        498,
                        682
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-ampmul",
                        0
                    ],
                    "destination": [
                        "gv-left-mul",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-left-sig",
                        0
                    ],
                    "destination": [
                        "gv-left-mul",
                        1
                    ],
                    "midpoints": [
                        364.5,
                        995,
                        378,
                        995,
                        93,
                        995,
                        93,
                        1284
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-ampmul",
                        0
                    ],
                    "destination": [
                        "gv-right-mul",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        1245,
                        58,
                        1245,
                        178,
                        1245,
                        178,
                        1284
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-right-sig",
                        0
                    ],
                    "destination": [
                        "gv-right-mul",
                        1
                    ],
                    "midpoints": [
                        484.5,
                        995,
                        498,
                        995,
                        213,
                        995,
                        213,
                        1284
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-left-mul",
                        0
                    ],
                    "destination": [
                        "gv-out1",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        1340,
                        58,
                        1340,
                        68,
                        1340,
                        68,
                        1370
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "gv-right-mul",
                        0
                    ],
                    "destination": [
                        "gv-out2",
                        0
                    ],
                    "midpoints": [
                        169.5,
                        1340,
                        178,
                        1340,
                        188,
                        1340,
                        188,
                        1370
                    ]
                }
            }
        ]
    }
}
