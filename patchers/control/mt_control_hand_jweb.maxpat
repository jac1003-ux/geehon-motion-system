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
      420
    ],
    "gridsize": [
      15,
      15
    ],
    "description": "Camera hand control source with selectable free hand and tracking-valid safety output.",
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
            40,
            80,
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
            130,
            560,
            420
          ],
          "rendermode": 1,
          "presentation": 1,
          "presentation_rect": [
            12,
            50,
            774,
            358
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
            220,
            95,
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
            300,
            97,
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
            430,
            95,
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
            565,
            97,
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
            620,
            130,
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
            865,
            130,
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
            1005,
            132,
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
            3410,
            80,
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
            620,
            290,
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
            705,
            292,
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
            620,
            325,
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
            705,
            327,
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
            820,
            290,
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
            905,
            292,
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
            820,
            325,
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
            905,
            327,
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
                    35,
                    293,
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
                    207,
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
                    210,
                    293,
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
                    379,
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
                    35,
                    465,
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
                    35,
                    551,
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
                    230,
                    551,
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
                    425,
                    551,
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
                    620,
                    551,
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
                    35,
                    637,
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
                    35,
                    723,
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
                    305,
                    809,
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
                    170,
                    637,
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
                    170,
                    723,
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
                    425,
                    809,
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
                    305,
                    637,
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
                    305,
                    723,
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
                    35,
                    809,
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
                    35,
                    895,
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
                    460,
                    637,
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
                    780,
                    723,
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
                    170,
                    809,
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
                    155,
                    895,
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
                    121,
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
                    290,
                    35,
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
                    865,
                    35,
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
                    637,
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
                    1080,
                    35,
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
                    895,
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
                    1255,
                    35,
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
                    895,
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
                    1430,
                    35,
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
                    981,
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
                    1605,
                    35,
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
                    981,
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
                    170,
                    35,
                    230,
                    20
                  ],
                  "numinlets": 1,
                  "numoutlets": 0,
                  "text": "in 2: free hand 0 Right / 1 Left"
                }
              },
              {
                "box": {
                  "id": "hp-hand-control-core-in-side",
                  "maxclass": "inlet",
                  "patching_rect": [
                    170,
                    121,
                    30,
                    30
                  ],
                  "comment": "free hand: 0 Right / 1 Left",
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
                    230,
                    121,
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
                    230,
                    164,
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
                    230,
                    422,
                    82,
                    22
                  ],
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "selector 2"
                }
              },
              {
                "box": {
                  "id": "hp-selected-trigger",
                  "maxclass": "newobj",
                  "patching_rect": [
                    230,
                    465,
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
                    355,
                    422,
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
                    355,
                    465,
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
                    445,
                    422,
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
                    445,
                    465,
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
                    1540,
                    70,
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
                    981,
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
            890,
            166,
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
            2095,
            80,
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
            1075,
            80,
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
            716.999997138977,
            614.4092375040054,
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
            716.999997138977,
            639.2499998807907,
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
            1330,
            80,
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
            716.999997138977,
            689.568467259407,
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
            716.999997138977,
            714.4092296361923,
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
            1585,
            80,
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
            716.999997138977,
            764.7276970148087,
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
            716.999997138977,
            789.5684593915939,
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
            1840,
            80,
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
            716.999997138977,
            839.2499841451645,
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
            716.999997138977,
            864.7276891469955,
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
            40,
            682,
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
            160,
            682,
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
            280,
            682,
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
            400,
            682,
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
            995,
            590,
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
            40,
            166,
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
            130,
            590,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            552,
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
            580,
            166,
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
            260,
            592,
            150,
            20
          ],
          "text": "Mirror view",
          "presentation": 1,
          "presentation_rect": [
            580,
            14,
            52,
            18
          ]
        }
      },
      {
        "box": {
          "id": "hj-handflip-load",
          "maxclass": "newobj",
          "patching_rect": [
            175,
            166,
            80,
            22
          ],
          "text": "loadmess 1"
        }
      },
      {
        "box": {
          "id": "hj-handflip-toggle",
          "maxclass": "toggle",
          "patching_rect": [
            130,
            625,
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
            735,
            166,
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
            260,
            627,
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
            310,
            166,
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
            40,
            252,
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
            445,
            166,
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
            195,
            252,
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
            1300,
            95,
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
            1300,
            130,
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
            1300,
            165,
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
            1300,
            200,
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
            1300,
            235,
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
            1300,
            270,
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
            1300,
            305,
            85,
            22
          ],
          "text": "prepend url"
        }
      },
      {
        "box": {
          "id": "hj-free-hand-label",
          "maxclass": "comment",
          "patching_rect": [
            620,
            200,
            90,
            20
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Free Hand",
          "presentation": 1,
          "presentation_rect": [
            638,
            14,
            68,
            18
          ]
        }
      },
      {
        "box": {
          "id": "hj-free-hand-menu",
          "maxclass": "umenu",
          "patching_rect": [
            620,
            225,
            150,
            22
          ],
          "items": [
            "Right",
            ",",
            "Left"
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "presentation": 1,
          "presentation_rect": [
            708,
            12,
            78,
            22
          ],
          "varname": "free_hand_selector"
        }
      },
      {
        "box": {
          "id": "hj-free-hand-default",
          "maxclass": "newobj",
          "patching_rect": [
            790,
            225,
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
            620,
            370,
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
            655,
            372,
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
            520,
            682,
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
            "hj-free-hand-menu",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "hj-free-hand-menu",
            0
          ],
          "destination": [
            "th-hand-control",
            1
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
