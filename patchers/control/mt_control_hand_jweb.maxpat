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
            80,
            80,
            798,
            486
        ],
        "gridsize": [
            15,
            15
        ],
        "description": "Camera hand control source with fixed physical-right parameter output and tracking-valid safety.",
        "tags": "check teacher hand control template modular jweb pror vst mapping",
        "boxes": [
            {
                "box": {
                    "id": "th-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        35,
                        25,
                        820,
                        23
                    ],
                    "text": "MT Control Hand Jweb - camera hand control source",
                    "presentation": 0,
                    "presentation_rect": [
                        8,
                        8,
                        360,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "th-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        35,
                        60,
                        980,
                        23
                    ],
                    "text": "Camera hand tracking outputs hand X, hand Y, pinch distance, palm width, and Tracking Valid."
                }
            },
            {
                "box": {
                    "disablefind": 0,
                    "id": "hp-jweb",
                    "maxclass": "jweb",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        35,
                        285,
                        560,
                        420
                    ],
                    "rendermode": 1,
                    "presentation": 1,
                    "presentation_rect": [
                        12,
                        50,
                        774,
                        424
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-jweb-reload",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        35,
                        110,
                        70,
                        22
                    ],
                    "text": "reload",
                    "presentation": 1,
                    "presentation_rect": [
                        12,
                        12,
                        60,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-jweb-reload-text",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        115,
                        112,
                        120,
                        20
                    ],
                    "text": "Reload Webcam",
                    "presentation": 0,
                    "presentation_rect": [
                        84,
                        38,
                        80,
                        20
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-jweb-devices",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        35,
                        145,
                        125,
                        22
                    ],
                    "text": "get_mediadevices",
                    "presentation": 1,
                    "presentation_rect": [
                        80,
                        12,
                        112,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-jweb-devices-text",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        170,
                        147,
                        105,
                        20
                    ],
                    "text": "List Cameras",
                    "presentation": 0,
                    "presentation_rect": [
                        290,
                        38,
                        86,
                        20
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-camera-menu",
                    "items": [
                        "FaceTime高清相机 (3A71:F4B5)",
                        "“Not Found404”的相机"
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
                        35,
                        180,
                        230,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        200,
                        12,
                        214,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-camera-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        275,
                        180,
                        130,
                        22
                    ],
                    "text": "set_mediadevice $1",
                    "presentation": 1,
                    "presentation_rect": [
                        422,
                        12,
                        120,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-camera-set-text",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        415,
                        182,
                        100,
                        20
                    ],
                    "text": "Set Camera",
                    "presentation": 0,
                    "presentation_rect": [
                        352,
                        66,
                        74,
                        20
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-hand-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        700,
                        830,
                        520,
                        23
                    ],
                    "text": "Hand normalized sources：0-1 数值输出，供用户确认手部识别是否稳定。"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "hp-hand-x-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        119,
                        930,
                        70,
                        22
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        425,
                        104,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-hand-x-text",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        119,
                        1017,
                        70,
                        20
                    ],
                    "text": "Hand X",
                    "presentation": 0,
                    "presentation_rect": [
                        494,
                        106,
                        64,
                        20
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "hp-hand-y-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        203,
                        1020,
                        70,
                        22
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        425,
                        136,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-hand-y-text",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        98,
                        1047,
                        70,
                        20
                    ],
                    "text": "Hand Y",
                    "presentation": 0,
                    "presentation_rect": [
                        494,
                        138,
                        64,
                        20
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "hp-pinch-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        287,
                        1020,
                        70,
                        22
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        425,
                        168,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-pinch-text",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        287,
                        1062,
                        120,
                        20
                    ],
                    "text": "Pinch Distance",
                    "presentation": 0,
                    "presentation_rect": [
                        494,
                        170,
                        104,
                        20
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "hp-palm-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        371,
                        1020,
                        70,
                        22
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        425,
                        200,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-palm-text",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        461,
                        1032,
                        100,
                        20
                    ],
                    "text": "Palm Width",
                    "presentation": 0,
                    "presentation_rect": [
                        494,
                        202,
                        88,
                        20
                    ]
                }
            },
            {
                "box": {
                    "id": "th-hand-control",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 6,
                    "outlettype": [
                        "",
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
                            34,
                            101,
                            1732,
                            956
                        ],
                        "gridsize": [
                            15,
                            15
                        ],
                        "description": "Hand_control core internals: parses jweb updates, smooths hand values, maps external slot controls, and emits generic parameter messages.",
                        "tags": "teacher hand control core jweb parsing vst parameter mapping",
                        "boxes": [
                            {
                                "box": {
                                    "id": "hp-camera-append",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        260,
                                        185,
                                        110,
                                        22
                                    ],
                                    "text": "prepend append"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-jweb-route",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        35,
                                        130,
                                        190,
                                        22
                                    ],
                                    "text": "route update mediadevices error"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-dict",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [
                                        "dictionary",
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        35,
                                        185,
                                        155,
                                        22
                                    ],
                                    "saved_object_attributes": {
                                        "embed": 0,
                                        "legacy": 1,
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0
                                    },
                                    "text": "dict hands_landmarkdict"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-right",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        35,
                                        240,
                                        165,
                                        22
                                    ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack Left: Right:"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-points",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        260,
                                        410,
                                        370,
                                        22
                                    ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack wrist: thumb_tip: index_finger_tip: pinky_finger_mcp:"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-wrist",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        530,
                                        465,
                                        125,
                                        22
                                    ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack x: y: z:"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-thumb",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        395,
                                        465,
                                        125,
                                        22
                                    ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack x: y: z:"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-index",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        155,
                                        465,
                                        125,
                                        22
                                    ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack x: y: z:"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-pinky",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        635,
                                        495,
                                        125,
                                        22
                                    ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack x: y: z:"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-x-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        155,
                                        550,
                                        75,
                                        22
                                    ],
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-x-pack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        155,
                                        600,
                                        75,
                                        22
                                    ],
                                    "text": "pack f 80"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-x-line",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        155,
                                        650,
                                        45,
                                        22
                                    ],
                                    "text": "line"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-y-clip",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        275,
                                        550,
                                        75,
                                        22
                                    ],
                                    "text": "clip 0. 1."
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-y-pack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        275,
                                        600,
                                        75,
                                        22
                                    ],
                                    "text": "pack f 80"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-y-line",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        275,
                                        650,
                                        45,
                                        22
                                    ],
                                    "text": "line"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-pinch-pak",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        395,
                                        550,
                                        90,
                                        22
                                    ],
                                    "text": "pak f f f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-pinch-map",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        395,
                                        600,
                                        420,
                                        22
                                    ],
                                    "text": "expr min(1.\\, sqrt(pow($f1-$f3\\, 2.) + pow($f2-$f4\\, 2.)) * 3.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-pinch-pack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        395,
                                        655,
                                        75,
                                        22
                                    ],
                                    "text": "pack f 80"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-pinch-line",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        395,
                                        710,
                                        45,
                                        22
                                    ],
                                    "text": "line"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-palm-pak",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        515,
                                        550,
                                        90,
                                        22
                                    ],
                                    "text": "pak f f f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-palm-map",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        530,
                                        845,
                                        420,
                                        22
                                    ],
                                    "text": "expr min(1.\\, sqrt(pow($f1-$f3\\, 2.) + pow($f2-$f4\\, 2.)) * 4.)"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-palm-pack",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        515,
                                        885,
                                        75,
                                        22
                                    ],
                                    "text": "pack f 80"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-palm-line",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        "bang"
                                    ],
                                    "patching_rect": [
                                        515,
                                        940,
                                        45,
                                        22
                                    ],
                                    "text": "line"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-control-core-in-jweb-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        35,
                                        35,
                                        185,
                                        20
                                    ],
                                    "text": "in: jweb update stream"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "hp-hand-control-core-in-jweb",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        35,
                                        75,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-control-core-values-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        480,
                                        65,
                                        520,
                                        23
                                    ],
                                    "text": "out: camera list / hand_x / hand_y / pinch / palm / tracking_valid"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-control-core-out-camera-append-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        35,
                                        345,
                                        159,
                                        20
                                    ],
                                    "text": "out 1: camera menu append"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "hp-hand-control-core-out-camera-append",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        35,
                                        295,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-control-core-out-hand-x-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        155,
                                        770,
                                        120,
                                        20
                                    ],
                                    "text": "out 2: hand_x 0-1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "hp-hand-control-core-out-hand-x",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        155,
                                        720,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-control-core-out-hand-y-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        230,
                                        800,
                                        120,
                                        20
                                    ],
                                    "text": "out 3: hand_y 0-1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "hp-hand-control-core-out-hand-y",
                                    "index": 3,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        275,
                                        720,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-control-core-out-pinch-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        395,
                                        825,
                                        120,
                                        20
                                    ],
                                    "text": "out 4: pinch 0-1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "hp-hand-control-core-out-pinch",
                                    "index": 4,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        395,
                                        775,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-control-core-out-palm-label",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        515,
                                        1055,
                                        120,
                                        20
                                    ],
                                    "text": "out 5: palm 0-1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "hp-hand-control-core-out-palm",
                                    "index": 5,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        515,
                                        1005,
                                        30,
                                        30
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-control-core-in-side-label",
                                    "maxclass": "comment",
                                    "patching_rect": [
                                        260,
                                        35,
                                        230,
                                        20
                                    ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "text": "in 2: tracker slot 0 Right / 1 Left"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-control-core-in-side",
                                    "maxclass": "inlet",
                                    "patching_rect": [
                                        260,
                                        75,
                                        30,
                                        30
                                    ],
                                    "comment": "tracker slot: 0 Right / 1 Left",
                                    "index": 2,
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-select-trigger",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        260,
                                        130,
                                        65,
                                        22
                                    ],
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "text": "t i b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-select-plus",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        260,
                                        215,
                                        40,
                                        22
                                    ],
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "+ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-selector",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        260,
                                        300,
                                        82,
                                        22
                                    ],
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "switch 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-selected-trigger",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        260,
                                        355,
                                        78,
                                        22
                                    ],
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "text": "t l b b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-tracking-stop",
                                    "maxclass": "message",
                                    "patching_rect": [
                                        635,
                                        700,
                                        40,
                                        22
                                    ],
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "stop"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-tracking-delay",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        635,
                                        750,
                                        70,
                                        22
                                    ],
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "delay 250"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-tracking-one",
                                    "maxclass": "message",
                                    "patching_rect": [
                                        635,
                                        810,
                                        32,
                                        22
                                    ],
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-tracking-zero",
                                    "maxclass": "message",
                                    "patching_rect": [
                                        635,
                                        880,
                                        32,
                                        22
                                    ],
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-control-core-out-tracking-label",
                                    "maxclass": "comment",
                                    "patching_rect": [
                                        650,
                                        1055,
                                        175,
                                        20
                                    ],
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "text": "out 6: tracking valid 0/1"
                                }
                            },
                            {
                                "box": {
                                    "id": "hp-hand-control-core-out-tracking",
                                    "maxclass": "outlet",
                                    "patching_rect": [
                                        635,
                                        1005,
                                        30,
                                        30
                                    ],
                                    "comment": "tracking valid 0/1",
                                    "index": 6,
                                    "numinlets": 1,
                                    "numoutlets": 0
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-hand-control-core-out-camera-append",
                                        0
                                    ],
                                    "source": [
                                        "hp-camera-append",
                                        0
                                    ],
                                    "midpoints": [
                                        269.5,
                                        222,
                                        315,
                                        222,
                                        50,
                                        222
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-jweb-route",
                                        0
                                    ],
                                    "source": [
                                        "hp-hand-control-core-in-jweb",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-right",
                                        0
                                    ],
                                    "source": [
                                        "hp-hand-dict",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-hand-x-pack",
                                        0
                                    ],
                                    "source": [
                                        "hp-hand-x-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-hand-control-core-out-hand-x",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "hp-hand-x-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-hand-x-line",
                                        0
                                    ],
                                    "source": [
                                        "hp-hand-x-pack",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-hand-y-pack",
                                        0
                                    ],
                                    "source": [
                                        "hp-hand-y-clip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-hand-control-core-out-hand-y",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "hp-hand-y-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-hand-y-line",
                                        0
                                    ],
                                    "source": [
                                        "hp-hand-y-pack",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-hand-x-clip",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "hp-index",
                                        0
                                    ],
                                    "midpoints": [
                                        164.5,
                                        502,
                                        217.5,
                                        502,
                                        192.5,
                                        502,
                                        192.5,
                                        550
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-hand-y-clip",
                                        0
                                    ],
                                    "order": 1,
                                    "source": [
                                        "hp-index",
                                        1
                                    ],
                                    "midpoints": [
                                        199.83333333333334,
                                        502,
                                        217.5,
                                        502,
                                        312.5,
                                        502,
                                        312.5,
                                        550
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-pinch-pak",
                                        3
                                    ],
                                    "order": 0,
                                    "source": [
                                        "hp-index",
                                        1
                                    ],
                                    "midpoints": [
                                        199.83333333333334,
                                        502,
                                        217.5,
                                        502,
                                        440,
                                        502,
                                        440,
                                        550
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-pinch-pak",
                                        2
                                    ],
                                    "order": 0,
                                    "source": [
                                        "hp-index",
                                        0
                                    ],
                                    "midpoints": [
                                        164.5,
                                        502,
                                        217.5,
                                        502,
                                        440,
                                        502,
                                        440,
                                        550
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-camera-append",
                                        0
                                    ],
                                    "source": [
                                        "hp-jweb-route",
                                        1
                                    ],
                                    "midpoints": [
                                        101.5,
                                        167,
                                        130,
                                        167,
                                        315,
                                        167,
                                        315,
                                        185
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-hand-dict",
                                        0
                                    ],
                                    "source": [
                                        "hp-jweb-route",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-hand-control-core-out-palm",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "hp-palm-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-palm-pack",
                                        0
                                    ],
                                    "source": [
                                        "hp-palm-map",
                                        0
                                    ],
                                    "midpoints": [
                                        539.5,
                                        880,
                                        524.5,
                                        880
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-palm-line",
                                        0
                                    ],
                                    "source": [
                                        "hp-palm-pack",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-palm-map",
                                        0
                                    ],
                                    "source": [
                                        "hp-palm-pak",
                                        0
                                    ],
                                    "midpoints": [
                                        524.5,
                                        710,
                                        539.5,
                                        710
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-hand-control-core-out-pinch",
                                        0
                                    ],
                                    "order": 0,
                                    "source": [
                                        "hp-pinch-line",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-pinch-pack",
                                        0
                                    ],
                                    "source": [
                                        "hp-pinch-map",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-pinch-line",
                                        0
                                    ],
                                    "source": [
                                        "hp-pinch-pack",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-pinch-map",
                                        0
                                    ],
                                    "source": [
                                        "hp-pinch-pak",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-palm-pak",
                                        3
                                    ],
                                    "source": [
                                        "hp-pinky",
                                        1
                                    ],
                                    "midpoints": [
                                        679.8333333333334,
                                        502,
                                        697.5,
                                        502,
                                        560,
                                        502,
                                        560,
                                        550
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-palm-pak",
                                        2
                                    ],
                                    "source": [
                                        "hp-pinky",
                                        0
                                    ],
                                    "midpoints": [
                                        644.5,
                                        502,
                                        697.5,
                                        502,
                                        560,
                                        502,
                                        560,
                                        550
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-index",
                                        0
                                    ],
                                    "source": [
                                        "hp-points",
                                        2
                                    ],
                                    "midpoints": [
                                        445,
                                        447,
                                        217.5,
                                        447,
                                        217.5,
                                        465
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-pinky",
                                        0
                                    ],
                                    "source": [
                                        "hp-points",
                                        3
                                    ],
                                    "midpoints": [
                                        532.75,
                                        447,
                                        445,
                                        447,
                                        697.5,
                                        447,
                                        697.5,
                                        495
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-thumb",
                                        0
                                    ],
                                    "source": [
                                        "hp-points",
                                        1
                                    ],
                                    "midpoints": [
                                        357.25,
                                        447,
                                        445,
                                        447,
                                        457.5,
                                        447,
                                        457.5,
                                        465
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-wrist",
                                        0
                                    ],
                                    "source": [
                                        "hp-points",
                                        0
                                    ],
                                    "midpoints": [
                                        269.5,
                                        447,
                                        445,
                                        447,
                                        577.5,
                                        447,
                                        577.5,
                                        465
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-pinch-pak",
                                        1
                                    ],
                                    "source": [
                                        "hp-thumb",
                                        1
                                    ],
                                    "midpoints": [
                                        439.8333333333333,
                                        502,
                                        457.5,
                                        502,
                                        440,
                                        502,
                                        440,
                                        550
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-pinch-pak",
                                        0
                                    ],
                                    "source": [
                                        "hp-thumb",
                                        0
                                    ],
                                    "midpoints": [
                                        404.5,
                                        502,
                                        457.5,
                                        502,
                                        440,
                                        502,
                                        440,
                                        550
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-palm-pak",
                                        1
                                    ],
                                    "source": [
                                        "hp-wrist",
                                        1
                                    ],
                                    "midpoints": [
                                        577.5,
                                        502,
                                        560,
                                        502,
                                        560,
                                        550
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "hp-palm-pak",
                                        0
                                    ],
                                    "source": [
                                        "hp-wrist",
                                        0
                                    ],
                                    "midpoints": [
                                        539.5,
                                        502,
                                        577.5,
                                        502,
                                        560,
                                        502,
                                        560,
                                        550
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-hand-control-core-in-side",
                                        0
                                    ],
                                    "destination": [
                                        "hp-hand-select-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-hand-select-trigger",
                                        0
                                    ],
                                    "destination": [
                                        "hp-hand-select-plus",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-hand-select-trigger",
                                        2
                                    ],
                                    "destination": [
                                        "hp-tracking-stop",
                                        0
                                    ],
                                    "midpoints": [
                                        315.5,
                                        167,
                                        292.5,
                                        167,
                                        655,
                                        167,
                                        655,
                                        700
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-hand-select-trigger",
                                        1
                                    ],
                                    "destination": [
                                        "hp-tracking-zero",
                                        0
                                    ],
                                    "midpoints": [
                                        292.5,
                                        167,
                                        651,
                                        167,
                                        651,
                                        880
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-hand-select-plus",
                                        0
                                    ],
                                    "destination": [
                                        "hp-hand-selector",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-right",
                                        1
                                    ],
                                    "destination": [
                                        "hp-hand-selector",
                                        1
                                    ],
                                    "midpoints": [
                                        117.5,
                                        277,
                                        301,
                                        277
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-right",
                                        0
                                    ],
                                    "destination": [
                                        "hp-hand-selector",
                                        2
                                    ],
                                    "midpoints": [
                                        44.5,
                                        277,
                                        117.5,
                                        277,
                                        301,
                                        277,
                                        301,
                                        300
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-hand-selector",
                                        0
                                    ],
                                    "destination": [
                                        "hp-selected-trigger",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-selected-trigger",
                                        3
                                    ],
                                    "destination": [
                                        "hp-tracking-stop",
                                        0
                                    ],
                                    "midpoints": [
                                        328.5,
                                        392,
                                        299,
                                        392,
                                        655,
                                        392,
                                        655,
                                        700
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-selected-trigger",
                                        2
                                    ],
                                    "destination": [
                                        "hp-tracking-one",
                                        0
                                    ],
                                    "midpoints": [
                                        308.8333333333333,
                                        392,
                                        299,
                                        392,
                                        651,
                                        392,
                                        651,
                                        810
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-selected-trigger",
                                        1
                                    ],
                                    "destination": [
                                        "hp-tracking-delay",
                                        0
                                    ],
                                    "midpoints": [
                                        289.1666666666667,
                                        392,
                                        299,
                                        392,
                                        670,
                                        392,
                                        670,
                                        750
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-selected-trigger",
                                        0
                                    ],
                                    "destination": [
                                        "hp-points",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-tracking-stop",
                                        0
                                    ],
                                    "destination": [
                                        "hp-tracking-delay",
                                        0
                                    ],
                                    "midpoints": [
                                        644.5,
                                        737,
                                        655,
                                        737,
                                        670,
                                        737,
                                        670,
                                        750
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-tracking-delay",
                                        0
                                    ],
                                    "destination": [
                                        "hp-tracking-zero",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-tracking-one",
                                        0
                                    ],
                                    "destination": [
                                        "hp-hand-control-core-out-tracking",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "hp-tracking-zero",
                                        0
                                    ],
                                    "destination": [
                                        "hp-hand-control-core-out-tracking",
                                        0
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-472"
                    },
                    "patching_rect": [
                        35,
                        780,
                        420,
                        22
                    ],
                    "saved_object_attributes": {
                        "description": "Hand_control core internals: parses jweb updates, smooths hand values, maps external slot controls, and emits generic parameter messages.",
                        "tags": "teacher hand control core jweb parsing vst parameter mapping"
                    },
                    "text": "p Hand_control"
                }
            },
            {
                "box": {
                    "id": "th-test-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        700,
                        865,
                        1260,
                        23
                    ],
                    "text": "Test: select the free hand, reload camera, then confirm four 0-1 values plus Tracking Valid."
                }
            },
            {
                "box": {
                    "id": "hp-slot1-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        100,
                        830,
                        190,
                        20
                    ],
                    "text": "Slot 1 - Hand X"
                }
            },
            {
                "box": {
                    "id": "hp-slot1-mapped-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        119,
                        900,
                        120,
                        20
                    ],
                    "text": "slot1 hand_x",
                    "presentation": 0,
                    "presentation_rect": [
                        494,
                        252,
                        100,
                        20
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "hp-slot1-mapped-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        104,
                        865,
                        75,
                        22
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        425,
                        250,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-slot2-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        185,
                        860,
                        190,
                        20
                    ],
                    "text": "Slot 2 - Hand Y"
                }
            },
            {
                "box": {
                    "id": "hp-slot2-mapped-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        248,
                        900,
                        120,
                        20
                    ],
                    "text": "slot2 hand_y",
                    "presentation": 0,
                    "presentation_rect": [
                        494,
                        284,
                        100,
                        20
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "hp-slot2-mapped-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        203,
                        940,
                        75,
                        22
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        425,
                        282,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-slot3-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        300,
                        830,
                        190,
                        20
                    ],
                    "text": "Slot 3 - Pinch Distance"
                }
            },
            {
                "box": {
                    "id": "hp-slot3-mapped-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        287,
                        930,
                        120,
                        20
                    ],
                    "text": "slot3 pinch",
                    "presentation": 0,
                    "presentation_rect": [
                        494,
                        316,
                        100,
                        20
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "hp-slot3-mapped-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        287,
                        745,
                        75,
                        22
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        425,
                        314,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "hp-slot4-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        385,
                        860,
                        190,
                        20
                    ],
                    "text": "Slot 4 - Palm Width"
                }
            },
            {
                "box": {
                    "id": "hp-slot4-mapped-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        416,
                        900,
                        120,
                        20
                    ],
                    "text": "slot4 palm",
                    "presentation": 0,
                    "presentation_rect": [
                        494,
                        348,
                        100,
                        20
                    ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "hp-slot4-mapped-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        431,
                        940,
                        75,
                        22
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        425,
                        346,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "hj-out-slot1",
                    "maxclass": "outlet",
                    "patching_rect": [
                        119,
                        980,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "hj-out-slot2",
                    "maxclass": "outlet",
                    "patching_rect": [
                        203,
                        980,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "hj-out-slot3",
                    "maxclass": "outlet",
                    "patching_rect": [
                        287,
                        980,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "hj-out-slot4",
                    "maxclass": "outlet",
                    "patching_rect": [
                        371,
                        980,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "hj-out-label",
                    "maxclass": "comment",
                    "patching_rect": [
                        700,
                        900,
                        240,
                        20
                    ],
                    "text": "out 1-5: hand_x / hand_y / pinch / palm / tracking valid",
                    "presentation": 0,
                    "presentation_rect": [
                        8,
                        410,
                        400,
                        20
                    ]
                }
            },
            {
                "box": {
                    "id": "hj-mirror-load",
                    "maxclass": "newobj",
                    "patching_rect": [
                        650,
                        110,
                        80,
                        22
                    ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "hj-mirror-toggle",
                    "maxclass": "toggle",
                    "patching_rect": [
                        650,
                        145,
                        24,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        548,
                        12,
                        22,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "hj-mirror-msg",
                    "maxclass": "message",
                    "patching_rect": [
                        650,
                        210,
                        85,
                        22
                    ],
                    "text": "flip_image $1"
                }
            },
            {
                "box": {
                    "id": "hj-mirror-label",
                    "maxclass": "comment",
                    "patching_rect": [
                        685,
                        177,
                        150,
                        20
                    ],
                    "text": "Mirror",
                    "presentation": 1,
                    "presentation_rect": [
                        578,
                        14,
                        48,
                        18
                    ]
                }
            },
            {
                "box": {
                    "id": "hj-handflip-load",
                    "maxclass": "newobj",
                    "patching_rect": [
                        770,
                        110,
                        80,
                        22
                    ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "hj-handflip-toggle",
                    "maxclass": "toggle",
                    "patching_rect": [
                        770,
                        145,
                        24,
                        24
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        425,
                        428,
                        24,
                        24
                    ]
                }
            },
            {
                "box": {
                    "id": "hj-handflip-msg",
                    "maxclass": "message",
                    "patching_rect": [
                        770,
                        210,
                        90,
                        22
                    ],
                    "text": "flip_hands $1"
                }
            },
            {
                "box": {
                    "id": "hj-handflip-label",
                    "maxclass": "comment",
                    "patching_rect": [
                        805,
                        147,
                        180,
                        20
                    ],
                    "text": "Fix Left/Right label",
                    "presentation": 0,
                    "presentation_rect": [
                        455,
                        430,
                        145,
                        20
                    ]
                }
            },
            {
                "box": {
                    "id": "hj-draw-image-load",
                    "maxclass": "newobj",
                    "patching_rect": [
                        900,
                        110,
                        80,
                        22
                    ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "hj-draw-image-msg",
                    "maxclass": "message",
                    "patching_rect": [
                        900,
                        180,
                        95,
                        22
                    ],
                    "text": "draw_image $1"
                }
            },
            {
                "box": {
                    "id": "hj-draw-hands-load",
                    "maxclass": "newobj",
                    "patching_rect": [
                        1020,
                        110,
                        80,
                        22
                    ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "hj-draw-hands-msg",
                    "maxclass": "message",
                    "patching_rect": [
                        1020,
                        180,
                        95,
                        22
                    ],
                    "text": "draw_hands $1"
                }
            },
            {
                "box": {
                    "id": "hp-path-note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180,
                        60,
                        520,
                        22
                    ],
                    "text": "Portable startup: resolve the local hand tracker from the Max Project root."
                }
            },
            {
                "box": {
                    "id": "hp-path-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        1180,
                        110,
                        70,
                        22
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "hp-path-project",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180,
                        145,
                        350,
                        22
                    ],
                    "text": "Project:/web/hand-landmarker/jweb-hands-landmarker.html"
                }
            },
            {
                "box": {
                    "id": "hp-path-absolute",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180,
                        180,
                        95,
                        22
                    ],
                    "text": "absolutepath"
                }
            },
            {
                "box": {
                    "id": "hp-path-fileurl",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180,
                        215,
                        105,
                        22
                    ],
                    "text": "sprintf file://%s"
                }
            },
            {
                "box": {
                    "id": "hp-path-symbol",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180,
                        250,
                        145,
                        22
                    ],
                    "text": "tosymbol @separator \" \""
                }
            },
            {
                "box": {
                    "id": "hp-path-url",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1180,
                        285,
                        85,
                        22
                    ],
                    "text": "prepend url"
                }
            },
            {
                "box": {
                    "id": "hj-free-hand-default",
                    "maxclass": "newobj",
                    "patching_rect": [
                        170,
                        730,
                        78,
                        22
                    ],
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "hj-tracking-toggle",
                    "maxclass": "toggle",
                    "patching_rect": [
                        515,
                        975,
                        24,
                        24
                    ],
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "presentation": 0,
                    "presentation_rect": [
                        425,
                        232,
                        24,
                        24
                    ],
                    "varname": "hand_tracking_valid"
                }
            },
            {
                "box": {
                    "id": "hj-tracking-label",
                    "maxclass": "comment",
                    "patching_rect": [
                        515,
                        942,
                        120,
                        20
                    ],
                    "numinlets": 1,
                    "numoutlets": 0,
                    "text": "Tracking Valid",
                    "presentation": 0,
                    "presentation_rect": [
                        455,
                        234,
                        120,
                        20
                    ]
                }
            },
            {
                "box": {
                    "id": "hj-out-tracking",
                    "maxclass": "outlet",
                    "patching_rect": [
                        455,
                        980,
                        30,
                        30
                    ],
                    "comment": "tracking valid 0/1",
                    "index": 5,
                    "numinlets": 1,
                    "numoutlets": 0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "hp-camera-set",
                        0
                    ],
                    "source": [
                        "hp-camera-menu",
                        1
                    ],
                    "midpoints": [
                        150,
                        165,
                        340,
                        165,
                        340,
                        180
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "hp-jweb",
                        0
                    ],
                    "source": [
                        "hp-camera-set",
                        0
                    ],
                    "midpoints": [
                        284.5,
                        217,
                        340,
                        217,
                        315,
                        217,
                        315,
                        285
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "th-hand-control",
                        0
                    ],
                    "source": [
                        "hp-jweb",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "hp-jweb",
                        0
                    ],
                    "source": [
                        "hp-jweb-devices",
                        0
                    ],
                    "midpoints": [
                        44.5,
                        182,
                        97.5,
                        182,
                        315,
                        182,
                        315,
                        285
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "hp-jweb",
                        0
                    ],
                    "source": [
                        "hp-jweb-reload",
                        0
                    ],
                    "midpoints": [
                        44.5,
                        147,
                        70,
                        147,
                        315,
                        147,
                        315,
                        285
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hj-mirror-load",
                        0
                    ],
                    "destination": [
                        "hj-mirror-toggle",
                        0
                    ],
                    "midpoints": [
                        659.5,
                        147,
                        690,
                        147,
                        662,
                        147
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hj-mirror-toggle",
                        0
                    ],
                    "destination": [
                        "hj-mirror-msg",
                        0
                    ],
                    "midpoints": [
                        662,
                        184,
                        692.5,
                        184,
                        692.5,
                        210
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hj-mirror-msg",
                        0
                    ],
                    "destination": [
                        "hp-jweb",
                        0
                    ],
                    "midpoints": [
                        659.5,
                        217,
                        692.5,
                        217,
                        315,
                        217,
                        315,
                        285
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hj-handflip-load",
                        0
                    ],
                    "destination": [
                        "hj-handflip-toggle",
                        0
                    ],
                    "midpoints": [
                        779.5,
                        147,
                        810,
                        147,
                        782,
                        147
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hj-handflip-toggle",
                        0
                    ],
                    "destination": [
                        "hj-handflip-msg",
                        0
                    ],
                    "midpoints": [
                        782,
                        184,
                        815,
                        184,
                        815,
                        210
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hj-handflip-msg",
                        0
                    ],
                    "destination": [
                        "hp-jweb",
                        0
                    ],
                    "midpoints": [
                        779.5,
                        217,
                        815,
                        217,
                        315,
                        217,
                        315,
                        285
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hj-draw-image-load",
                        0
                    ],
                    "destination": [
                        "hj-draw-image-msg",
                        0
                    ],
                    "midpoints": [
                        909.5,
                        147,
                        940,
                        147,
                        947.5,
                        147,
                        947.5,
                        180
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hj-draw-image-msg",
                        0
                    ],
                    "destination": [
                        "hp-jweb",
                        0
                    ],
                    "midpoints": [
                        909.5,
                        217,
                        947.5,
                        217,
                        315,
                        217,
                        315,
                        285
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hj-draw-hands-load",
                        0
                    ],
                    "destination": [
                        "hj-draw-hands-msg",
                        0
                    ],
                    "midpoints": [
                        1029.5,
                        147,
                        1060,
                        147,
                        1067.5,
                        147,
                        1067.5,
                        180
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hj-draw-hands-msg",
                        0
                    ],
                    "destination": [
                        "hp-jweb",
                        0
                    ],
                    "midpoints": [
                        1029.5,
                        217,
                        1067.5,
                        217,
                        315,
                        217,
                        315,
                        285
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        0
                    ],
                    "destination": [
                        "hp-camera-menu",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        1
                    ],
                    "destination": [
                        "hp-hand-x-num",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        2
                    ],
                    "destination": [
                        "hp-hand-y-num",
                        0
                    ],
                    "midpoints": [
                        204.9,
                        910,
                        212.5,
                        910
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        3
                    ],
                    "destination": [
                        "hp-pinch-num",
                        0
                    ],
                    "midpoints": [
                        285.1,
                        910,
                        296.5,
                        910
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        4
                    ],
                    "destination": [
                        "hp-palm-num",
                        0
                    ],
                    "midpoints": [
                        365.3,
                        910,
                        380.5,
                        910
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        1
                    ],
                    "destination": [
                        "hp-slot1-mapped-num",
                        0
                    ],
                    "midpoints": [
                        124.7,
                        830,
                        113.5,
                        830
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        2
                    ],
                    "destination": [
                        "hp-slot2-mapped-num",
                        0
                    ],
                    "midpoints": [
                        204.9,
                        870,
                        212.5,
                        870
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        3
                    ],
                    "destination": [
                        "hp-slot3-mapped-num",
                        0
                    ],
                    "midpoints": [
                        285.1,
                        770,
                        296.5,
                        770
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        4
                    ],
                    "destination": [
                        "hp-slot4-mapped-num",
                        0
                    ],
                    "midpoints": [
                        365.3,
                        870,
                        440.5,
                        870
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        1
                    ],
                    "destination": [
                        "hj-out-slot1",
                        0
                    ],
                    "midpoints": [
                        124.7,
                        890,
                        134,
                        890
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        2
                    ],
                    "destination": [
                        "hj-out-slot2",
                        0
                    ],
                    "midpoints": [
                        204.9,
                        890,
                        218,
                        890
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        3
                    ],
                    "destination": [
                        "hj-out-slot3",
                        0
                    ],
                    "midpoints": [
                        285.1,
                        890,
                        302,
                        890
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        4
                    ],
                    "destination": [
                        "hj-out-slot4",
                        0
                    ],
                    "midpoints": [
                        365.3,
                        890,
                        386,
                        890
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hp-path-load",
                        0
                    ],
                    "destination": [
                        "hp-path-project",
                        0
                    ],
                    "color": [
                        0.302,
                        0.651,
                        1,
                        1
                    ],
                    "midpoints": [
                        1189.5,
                        147,
                        1215,
                        147,
                        1355,
                        147,
                        1355,
                        145
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hp-path-project",
                        0
                    ],
                    "destination": [
                        "hp-path-absolute",
                        0
                    ],
                    "color": [
                        0.302,
                        0.651,
                        1,
                        1
                    ],
                    "midpoints": [
                        1189.5,
                        182,
                        1355,
                        182,
                        1227.5,
                        182,
                        1227.5,
                        180
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hp-path-absolute",
                        0
                    ],
                    "destination": [
                        "hp-path-fileurl",
                        0
                    ],
                    "color": [
                        0.302,
                        0.651,
                        1,
                        1
                    ],
                    "midpoints": [
                        1189.5,
                        217,
                        1227.5,
                        217,
                        1232.5,
                        217,
                        1232.5,
                        215
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hp-path-fileurl",
                        0
                    ],
                    "destination": [
                        "hp-path-symbol",
                        0
                    ],
                    "color": [
                        0.302,
                        0.651,
                        1,
                        1
                    ],
                    "midpoints": [
                        1189.5,
                        252,
                        1232.5,
                        252,
                        1252.5,
                        252,
                        1252.5,
                        250
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hp-path-symbol",
                        0
                    ],
                    "destination": [
                        "hp-path-url",
                        0
                    ],
                    "color": [
                        0.302,
                        0.651,
                        1,
                        1
                    ],
                    "midpoints": [
                        1189.5,
                        287,
                        1252.5,
                        287,
                        1222.5,
                        287,
                        1222.5,
                        285
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hp-path-url",
                        0
                    ],
                    "destination": [
                        "hp-jweb",
                        0
                    ],
                    "color": [
                        0.302,
                        0.651,
                        1,
                        1
                    ],
                    "midpoints": [
                        1189.5,
                        270,
                        1222.5,
                        270,
                        315,
                        270,
                        315,
                        285
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "hj-free-hand-default",
                        0
                    ],
                    "destination": [
                        "th-hand-control",
                        1
                    ],
                    "midpoints": [
                        179.5,
                        770,
                        445.5,
                        770
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        5
                    ],
                    "destination": [
                        "hj-tracking-toggle",
                        0
                    ],
                    "midpoints": [
                        445.5,
                        890,
                        524.5,
                        890
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "th-hand-control",
                        5
                    ],
                    "destination": [
                        "hj-out-tracking",
                        0
                    ],
                    "midpoints": [
                        445.5,
                        890,
                        470,
                        890
                    ]
                }
            }
        ],
        "originid": "pat-470",
        "dependency_cache": [],
        "autosave": 0,
        "openinpresentation": 1,
        "bglocked": 1,
        "locked_bgcolor": [
            0.949,
            0.969,
            0.953,
            1
        ],
        "bgcolor": [
            0.949,
            0.969,
            0.953,
            1
        ]
    }
}
