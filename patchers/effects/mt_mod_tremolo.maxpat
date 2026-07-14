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
      1160,
      480
    ],
    "bglocked": 1,
    "openinpresentation": 1,
    "default_fontsize": 12,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [
      15,
      15
    ],
    "boxes": [
      {
        "box": {
          "id": "tm-title",
          "maxclass": "comment",
          "patching_rect": [
            24,
            20,
            420,
            24
          ],
          "text": "MT Mod Tremolo - stereo mod effect",
          "presentation": 1,
          "presentation_rect": [
            12,
            8,
            350,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tm-note",
          "maxclass": "comment",
          "patching_rect": [
            24,
            48,
            900,
            22
          ],
          "text": "Inspired by 16_pan_tremolo: multi-shape stereo LFO, polarity-selectable mod outs, safe depth-scaled tremolo, direct monitor."
        }
      },
      {
        "box": {
          "id": "tm-in-l",
          "maxclass": "inlet",
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
          "id": "tm-in-r",
          "maxclass": "inlet",
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
          "id": "tm-ext-enable",
          "maxclass": "inlet",
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
          "id": "tm-ext-shape",
          "maxclass": "inlet",
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
          "id": "tm-ext-polarity",
          "maxclass": "inlet",
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
          "id": "tm-ext-rate",
          "maxclass": "inlet",
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
          "id": "tm-ext-depth",
          "maxclass": "inlet",
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
          "id": "tm-ext-stereo",
          "maxclass": "inlet",
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
          "id": "tm-ext-smooth",
          "maxclass": "inlet",
          "patching_rect": [
            560,
            95,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "tm-enable",
          "maxclass": "toggle",
          "patching_rect": [
            24,
            155,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            12,
            44,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "tm-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            56,
            157,
            70,
            22
          ],
          "text": "Enable",
          "presentation": 1,
          "presentation_rect": [
            44,
            46,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tm-test",
          "maxclass": "toggle",
          "patching_rect": [
            24,
            205,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            12,
            86,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "tm-test-label",
          "maxclass": "comment",
          "patching_rect": [
            56,
            207,
            85,
            22
          ],
          "text": "Test Input",
          "presentation": 1,
          "presentation_rect": [
            44,
            88,
            78,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tm-shape",
          "maxclass": "live.menu",
          "patching_rect": [
            170,
            155,
            112,
            15
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "sine",
                "up",
                "down",
                "triangle",
                "square",
                "s&h"
              ],
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_mmax": 5,
              "parameter_modmode": 0,
              "parameter_shortname": "Shape",
              "parameter_type": 2
            }
          },
          "presentation": 1,
          "presentation_rect": [
            136,
            66,
            112,
            15
          ]
        }
      },
      {
        "box": {
          "id": "tm-shape-label",
          "maxclass": "comment",
          "patching_rect": [
            170,
            132,
            90,
            22
          ],
          "text": "Shape",
          "presentation": 1,
          "presentation_rect": [
            136,
            42,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tm-polarity",
          "maxclass": "live.text",
          "patching_rect": [
            305,
            155,
            78,
            15
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "parameter_enable": 1,
          "text": "bipolar",
          "texton": "unipolar",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "off",
                "on"
              ],
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_mmax": 1,
              "parameter_modmode": 0,
              "parameter_shortname": "Polarity",
              "parameter_type": 2
            }
          },
          "presentation": 1,
          "presentation_rect": [
            136,
            120,
            78,
            15
          ]
        }
      },
      {
        "box": {
          "id": "tm-polarity-label",
          "maxclass": "comment",
          "patching_rect": [
            305,
            132,
            105,
            22
          ],
          "text": "Mod Polarity",
          "presentation": 1,
          "presentation_rect": [
            136,
            96,
            104,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tm-rate",
          "maxclass": "flonum",
          "patching_rect": [
            420,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            270,
            66,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tm-rate-label",
          "maxclass": "comment",
          "patching_rect": [
            420,
            132,
            90,
            22
          ],
          "text": "Rate 0-1",
          "presentation": 1,
          "presentation_rect": [
            270,
            42,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tm-depth",
          "maxclass": "flonum",
          "patching_rect": [
            510,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            354,
            66,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tm-depth-label",
          "maxclass": "comment",
          "patching_rect": [
            510,
            132,
            90,
            22
          ],
          "text": "Depth 0-1",
          "presentation": 1,
          "presentation_rect": [
            354,
            42,
            78,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tm-stereo",
          "maxclass": "flonum",
          "patching_rect": [
            600,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            438,
            66,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tm-stereo-label",
          "maxclass": "comment",
          "patching_rect": [
            600,
            132,
            95,
            22
          ],
          "text": "Stereo 0-1",
          "presentation": 1,
          "presentation_rect": [
            438,
            42,
            82,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tm-smooth",
          "maxclass": "flonum",
          "patching_rect": [
            690,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 250,
          "presentation": 1,
          "presentation_rect": [
            522,
            66,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tm-smooth-label",
          "maxclass": "comment",
          "patching_rect": [
            690,
            132,
            95,
            22
          ],
          "text": "Smooth ms",
          "presentation": 1,
          "presentation_rect": [
            522,
            42,
            82,
            22
          ]
        }
      },
      {
        "box": {
          "id": "p-Tremolo-core",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            280,
            145,
            22
          ],
          "text": "p Tremolo_core",
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
              1160,
              1110
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
            "boxes": [
              {
                "box": {
                  "id": "tc-title",
                  "maxclass": "comment",
                  "patching_rect": [
                    35,
                    25,
                    900,
                    22
                  ],
                  "text": "Tremolo_core: stereo multi-shape LFO -> depth-scaled safe gain + bipolar/unipolar mod outs"
                }
              },
              {
                "box": {
                  "id": "tc-in-l",
                  "maxclass": "inlet",
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
                  "id": "tc-in-r",
                  "maxclass": "inlet",
                  "patching_rect": [
                    120,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tc-enable",
                  "maxclass": "inlet",
                  "patching_rect": [
                    220,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tc-test",
                  "maxclass": "inlet",
                  "patching_rect": [
                    300,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tc-shape",
                  "maxclass": "inlet",
                  "patching_rect": [
                    380,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tc-polarity",
                  "maxclass": "inlet",
                  "patching_rect": [
                    460,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tc-rate",
                  "maxclass": "inlet",
                  "patching_rect": [
                    540,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tc-depth",
                  "maxclass": "inlet",
                  "patching_rect": [
                    640,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tc-stereo",
                  "maxclass": "inlet",
                  "patching_rect": [
                    760,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tc-smooth",
                  "maxclass": "inlet",
                  "patching_rect": [
                    875,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tc-test-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    300,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "tc-test-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    300,
                    170,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "tc-test-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    300,
                    205,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tc-test-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    235,
                    250,
                    80,
                    22
                  ],
                  "text": "cycle~ 220"
                }
              },
              {
                "box": {
                  "id": "tc-test-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    335,
                    250,
                    80,
                    22
                  ],
                  "text": "cycle~ 330"
                }
              },
              {
                "box": {
                  "id": "tc-test-gate-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    235,
                    300,
                    55,
                    22
                  ],
                  "text": "*~ 0."
                }
              },
              {
                "box": {
                  "id": "tc-test-gate-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    335,
                    300,
                    55,
                    22
                  ],
                  "text": "*~ 0."
                }
              },
              {
                "box": {
                  "id": "tc-dry-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    360,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tc-dry-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    120,
                    360,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tc-enable-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    220,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "tc-enable-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    220,
                    170,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "tc-enable-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    220,
                    205,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tc-shape-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    380,
                    135,
                    70,
                    22
                  ],
                  "text": "clip 0 5"
                }
              },
              {
                "box": {
                  "id": "tc-shape-int",
                  "maxclass": "newobj",
                  "patching_rect": [
                    380,
                    170,
                    35,
                    22
                  ],
                  "text": "i"
                }
              },
              {
                "box": {
                  "id": "tc-shape-plus",
                  "maxclass": "newobj",
                  "patching_rect": [
                    380,
                    205,
                    45,
                    22
                  ],
                  "text": "+ 1"
                }
              },
              {
                "box": {
                  "id": "tc-shape-route",
                  "maxclass": "newobj",
                  "patching_rect": [
                    380,
                    240,
                    45,
                    22
                  ],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "tc-polarity-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    460,
                    135,
                    70,
                    22
                  ],
                  "text": "clip 0 1"
                }
              },
              {
                "box": {
                  "id": "tc-polarity-int",
                  "maxclass": "newobj",
                  "patching_rect": [
                    460,
                    170,
                    35,
                    22
                  ],
                  "text": "i"
                }
              },
              {
                "box": {
                  "id": "tc-polarity-plus",
                  "maxclass": "newobj",
                  "patching_rect": [
                    460,
                    205,
                    45,
                    22
                  ],
                  "text": "+ 1"
                }
              },
              {
                "box": {
                  "id": "tc-polarity-route",
                  "maxclass": "newobj",
                  "patching_rect": [
                    460,
                    240,
                    45,
                    22
                  ],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "tc-rate-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    540,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "tc-rate-map",
                  "maxclass": "newobj",
                  "patching_rect": [
                    540,
                    170,
                    150,
                    22
                  ],
                  "text": "scale 0. 1. 0.05 20."
                }
              },
              {
                "box": {
                  "id": "tc-rate-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    540,
                    205,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "tc-rate-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    540,
                    240,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tc-phasor",
                  "maxclass": "newobj",
                  "patching_rect": [
                    540,
                    285,
                    85,
                    22
                  ],
                  "text": "phasor~ 0.5"
                }
              },
              {
                "box": {
                  "id": "tc-depth-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    640,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "tc-depth-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    640,
                    170,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "tc-depth-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    640,
                    205,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tc-one-depth",
                  "maxclass": "newobj",
                  "patching_rect": [
                    640,
                    255,
                    60,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-depth-inv",
                  "maxclass": "newobj",
                  "patching_rect": [
                    640,
                    300,
                    35,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "tc-stereo-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    760,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "tc-stereo-map",
                  "maxclass": "newobj",
                  "patching_rect": [
                    760,
                    170,
                    55,
                    22
                  ],
                  "text": "* 0.5"
                }
              },
              {
                "box": {
                  "id": "tc-stereo-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    760,
                    205,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "tc-stereo-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    760,
                    240,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tc-right-phase",
                  "maxclass": "newobj",
                  "patching_rect": [
                    760,
                    285,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tc-right-wrap",
                  "maxclass": "newobj",
                  "patching_rect": [
                    760,
                    330,
                    55,
                    22
                  ],
                  "text": "%~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-smooth-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    875,
                    135,
                    90,
                    22
                  ],
                  "text": "clip 0. 250."
                }
              },
              {
                "box": {
                  "id": "tc-smooth-samps",
                  "maxclass": "newobj",
                  "patching_rect": [
                    875,
                    170,
                    85,
                    22
                  ],
                  "text": "mstosamps~"
                }
              },
              {
                "box": {
                  "id": "tc-mod-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    500,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tc-mod-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    120,
                    500,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tc-one-enable",
                  "maxclass": "newobj",
                  "patching_rect": [
                    805,
                    255,
                    60,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-enable-inv",
                  "maxclass": "newobj",
                  "patching_rect": [
                    805,
                    300,
                    35,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "tc-dry-mix-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    585,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tc-wet-mix-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    95,
                    585,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tc-outmix-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    65,
                    635,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tc-dry-mix-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    175,
                    585,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tc-wet-mix-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    235,
                    585,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tc-outmix-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    205,
                    635,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tc-out-l",
                  "maxclass": "outlet",
                  "patching_rect": [
                    65,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tc-out-r",
                  "maxclass": "outlet",
                  "patching_rect": [
                    205,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tc-mod-out-l",
                  "maxclass": "outlet",
                  "patching_rect": [
                    390,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tc-mod-out-r",
                  "maxclass": "outlet",
                  "patching_rect": [
                    530,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tc-left-radians",
                  "maxclass": "newobj",
                  "patching_rect": [
                    390,
                    365,
                    95,
                    22
                  ],
                  "text": "*~ 6.283185"
                }
              },
              {
                "box": {
                  "id": "tc-left-sine",
                  "maxclass": "newobj",
                  "patching_rect": [
                    390,
                    405,
                    45,
                    22
                  ],
                  "text": "cos~"
                }
              },
              {
                "box": {
                  "id": "tc-left-up-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    505,
                    365,
                    55,
                    22
                  ],
                  "text": "*~ 2."
                }
              },
              {
                "box": {
                  "id": "tc-left-up-offset",
                  "maxclass": "newobj",
                  "patching_rect": [
                    505,
                    405,
                    55,
                    22
                  ],
                  "text": "-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-left-down-invert",
                  "maxclass": "newobj",
                  "patching_rect": [
                    605,
                    365,
                    60,
                    22
                  ],
                  "text": "!-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-left-down-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    605,
                    405,
                    55,
                    22
                  ],
                  "text": "*~ 2."
                }
              },
              {
                "box": {
                  "id": "tc-left-down-offset",
                  "maxclass": "newobj",
                  "patching_rect": [
                    605,
                    445,
                    55,
                    22
                  ],
                  "text": "-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-left-tri-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    705,
                    365,
                    55,
                    22
                  ],
                  "text": "*~ 2."
                }
              },
              {
                "box": {
                  "id": "tc-left-tri-offset",
                  "maxclass": "newobj",
                  "patching_rect": [
                    705,
                    405,
                    55,
                    22
                  ],
                  "text": "-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-left-tri-abs",
                  "maxclass": "newobj",
                  "patching_rect": [
                    705,
                    445,
                    50,
                    22
                  ],
                  "text": "abs~"
                }
              },
              {
                "box": {
                  "id": "tc-left-tri-invert",
                  "maxclass": "newobj",
                  "patching_rect": [
                    705,
                    485,
                    60,
                    22
                  ],
                  "text": "!-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-left-tri-b-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    705,
                    525,
                    55,
                    22
                  ],
                  "text": "*~ 2."
                }
              },
              {
                "box": {
                  "id": "tc-left-tri-b-offset",
                  "maxclass": "newobj",
                  "patching_rect": [
                    705,
                    565,
                    55,
                    22
                  ],
                  "text": "-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-left-square-test",
                  "maxclass": "newobj",
                  "patching_rect": [
                    820,
                    365,
                    70,
                    22
                  ],
                  "text": ">=~ 0.5"
                }
              },
              {
                "box": {
                  "id": "tc-left-square-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    820,
                    405,
                    55,
                    22
                  ],
                  "text": "*~ 2."
                }
              },
              {
                "box": {
                  "id": "tc-left-square-offset",
                  "maxclass": "newobj",
                  "patching_rect": [
                    820,
                    445,
                    55,
                    22
                  ],
                  "text": "-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-left-noise",
                  "maxclass": "newobj",
                  "patching_rect": [
                    935,
                    365,
                    60,
                    22
                  ],
                  "text": "noise~"
                }
              },
              {
                "box": {
                  "id": "tc-left-sah",
                  "maxclass": "newobj",
                  "patching_rect": [
                    935,
                    405,
                    75,
                    22
                  ],
                  "text": "sah~ 0.5"
                }
              },
              {
                "box": {
                  "id": "tc-left-shape-selector",
                  "maxclass": "newobj",
                  "patching_rect": [
                    390,
                    625,
                    170,
                    22
                  ],
                  "text": "selector~ 6 @ramptime 20"
                }
              },
              {
                "box": {
                  "id": "tc-left-uni-half",
                  "maxclass": "newobj",
                  "patching_rect": [
                    580,
                    625,
                    60,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "tc-left-uni-offset",
                  "maxclass": "newobj",
                  "patching_rect": [
                    580,
                    665,
                    60,
                    22
                  ],
                  "text": "+~ 0.5"
                }
              },
              {
                "box": {
                  "id": "tc-left-uni-slide",
                  "maxclass": "newobj",
                  "patching_rect": [
                    580,
                    705,
                    55,
                    22
                  ],
                  "text": "slide~"
                }
              },
              {
                "box": {
                  "id": "tc-left-polarity-selector",
                  "maxclass": "newobj",
                  "patching_rect": [
                    700,
                    625,
                    170,
                    22
                  ],
                  "text": "selector~ 2 @ramptime 20"
                }
              },
              {
                "box": {
                  "id": "tc-left-polarity-slide",
                  "maxclass": "newobj",
                  "patching_rect": [
                    700,
                    705,
                    55,
                    22
                  ],
                  "text": "slide~"
                }
              },
              {
                "box": {
                  "id": "tc-left-gain-depth-mul",
                  "maxclass": "newobj",
                  "patching_rect": [
                    890,
                    625,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tc-left-gain-sum",
                  "maxclass": "newobj",
                  "patching_rect": [
                    890,
                    665,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tc-left-mod-depth-mul",
                  "maxclass": "newobj",
                  "patching_rect": [
                    795,
                    745,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tc-right-radians",
                  "maxclass": "newobj",
                  "patching_rect": [
                    390,
                    615,
                    95,
                    22
                  ],
                  "text": "*~ 6.283185"
                }
              },
              {
                "box": {
                  "id": "tc-right-sine",
                  "maxclass": "newobj",
                  "patching_rect": [
                    390,
                    655,
                    45,
                    22
                  ],
                  "text": "cos~"
                }
              },
              {
                "box": {
                  "id": "tc-right-up-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    505,
                    615,
                    55,
                    22
                  ],
                  "text": "*~ 2."
                }
              },
              {
                "box": {
                  "id": "tc-right-up-offset",
                  "maxclass": "newobj",
                  "patching_rect": [
                    505,
                    655,
                    55,
                    22
                  ],
                  "text": "-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-right-down-invert",
                  "maxclass": "newobj",
                  "patching_rect": [
                    605,
                    615,
                    60,
                    22
                  ],
                  "text": "!-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-right-down-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    605,
                    655,
                    55,
                    22
                  ],
                  "text": "*~ 2."
                }
              },
              {
                "box": {
                  "id": "tc-right-down-offset",
                  "maxclass": "newobj",
                  "patching_rect": [
                    605,
                    695,
                    55,
                    22
                  ],
                  "text": "-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-right-tri-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    705,
                    615,
                    55,
                    22
                  ],
                  "text": "*~ 2."
                }
              },
              {
                "box": {
                  "id": "tc-right-tri-offset",
                  "maxclass": "newobj",
                  "patching_rect": [
                    705,
                    655,
                    55,
                    22
                  ],
                  "text": "-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-right-tri-abs",
                  "maxclass": "newobj",
                  "patching_rect": [
                    705,
                    695,
                    50,
                    22
                  ],
                  "text": "abs~"
                }
              },
              {
                "box": {
                  "id": "tc-right-tri-invert",
                  "maxclass": "newobj",
                  "patching_rect": [
                    705,
                    735,
                    60,
                    22
                  ],
                  "text": "!-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-right-tri-b-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    705,
                    775,
                    55,
                    22
                  ],
                  "text": "*~ 2."
                }
              },
              {
                "box": {
                  "id": "tc-right-tri-b-offset",
                  "maxclass": "newobj",
                  "patching_rect": [
                    705,
                    815,
                    55,
                    22
                  ],
                  "text": "-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-right-square-test",
                  "maxclass": "newobj",
                  "patching_rect": [
                    820,
                    615,
                    70,
                    22
                  ],
                  "text": ">=~ 0.5"
                }
              },
              {
                "box": {
                  "id": "tc-right-square-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    820,
                    655,
                    55,
                    22
                  ],
                  "text": "*~ 2."
                }
              },
              {
                "box": {
                  "id": "tc-right-square-offset",
                  "maxclass": "newobj",
                  "patching_rect": [
                    820,
                    695,
                    55,
                    22
                  ],
                  "text": "-~ 1."
                }
              },
              {
                "box": {
                  "id": "tc-right-noise",
                  "maxclass": "newobj",
                  "patching_rect": [
                    935,
                    615,
                    60,
                    22
                  ],
                  "text": "noise~"
                }
              },
              {
                "box": {
                  "id": "tc-right-sah",
                  "maxclass": "newobj",
                  "patching_rect": [
                    935,
                    655,
                    75,
                    22
                  ],
                  "text": "sah~ 0.5"
                }
              },
              {
                "box": {
                  "id": "tc-right-shape-selector",
                  "maxclass": "newobj",
                  "patching_rect": [
                    390,
                    875,
                    170,
                    22
                  ],
                  "text": "selector~ 6 @ramptime 20"
                }
              },
              {
                "box": {
                  "id": "tc-right-uni-half",
                  "maxclass": "newobj",
                  "patching_rect": [
                    580,
                    875,
                    60,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "tc-right-uni-offset",
                  "maxclass": "newobj",
                  "patching_rect": [
                    580,
                    915,
                    60,
                    22
                  ],
                  "text": "+~ 0.5"
                }
              },
              {
                "box": {
                  "id": "tc-right-uni-slide",
                  "maxclass": "newobj",
                  "patching_rect": [
                    580,
                    955,
                    55,
                    22
                  ],
                  "text": "slide~"
                }
              },
              {
                "box": {
                  "id": "tc-right-polarity-selector",
                  "maxclass": "newobj",
                  "patching_rect": [
                    700,
                    875,
                    170,
                    22
                  ],
                  "text": "selector~ 2 @ramptime 20"
                }
              },
              {
                "box": {
                  "id": "tc-right-polarity-slide",
                  "maxclass": "newobj",
                  "patching_rect": [
                    700,
                    955,
                    55,
                    22
                  ],
                  "text": "slide~"
                }
              },
              {
                "box": {
                  "id": "tc-right-gain-depth-mul",
                  "maxclass": "newobj",
                  "patching_rect": [
                    890,
                    875,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tc-right-gain-sum",
                  "maxclass": "newobj",
                  "patching_rect": [
                    890,
                    915,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tc-right-mod-depth-mul",
                  "maxclass": "newobj",
                  "patching_rect": [
                    795,
                    995,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "tc-test",
                    0
                  ],
                  "destination": [
                    "tc-test-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-test-clip",
                    0
                  ],
                  "destination": [
                    "tc-test-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-test-msg",
                    0
                  ],
                  "destination": [
                    "tc-test-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-test-l",
                    0
                  ],
                  "destination": [
                    "tc-test-gate-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-test-r",
                    0
                  ],
                  "destination": [
                    "tc-test-gate-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-test-line",
                    0
                  ],
                  "destination": [
                    "tc-test-gate-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-test-line",
                    0
                  ],
                  "destination": [
                    "tc-test-gate-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-in-l",
                    0
                  ],
                  "destination": [
                    "tc-dry-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-in-r",
                    0
                  ],
                  "destination": [
                    "tc-dry-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-test-gate-l",
                    0
                  ],
                  "destination": [
                    "tc-dry-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-test-gate-r",
                    0
                  ],
                  "destination": [
                    "tc-dry-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-enable",
                    0
                  ],
                  "destination": [
                    "tc-enable-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-enable-clip",
                    0
                  ],
                  "destination": [
                    "tc-enable-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-enable-msg",
                    0
                  ],
                  "destination": [
                    "tc-enable-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-shape",
                    0
                  ],
                  "destination": [
                    "tc-shape-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-shape-clip",
                    0
                  ],
                  "destination": [
                    "tc-shape-int",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-shape-int",
                    0
                  ],
                  "destination": [
                    "tc-shape-plus",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-shape-plus",
                    0
                  ],
                  "destination": [
                    "tc-shape-route",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-polarity",
                    0
                  ],
                  "destination": [
                    "tc-polarity-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-polarity-clip",
                    0
                  ],
                  "destination": [
                    "tc-polarity-int",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-polarity-int",
                    0
                  ],
                  "destination": [
                    "tc-polarity-plus",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-polarity-plus",
                    0
                  ],
                  "destination": [
                    "tc-polarity-route",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-rate",
                    0
                  ],
                  "destination": [
                    "tc-rate-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-rate-clip",
                    0
                  ],
                  "destination": [
                    "tc-rate-map",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-rate-map",
                    0
                  ],
                  "destination": [
                    "tc-rate-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-rate-msg",
                    0
                  ],
                  "destination": [
                    "tc-rate-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-rate-line",
                    0
                  ],
                  "destination": [
                    "tc-phasor",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-depth",
                    0
                  ],
                  "destination": [
                    "tc-depth-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-depth-clip",
                    0
                  ],
                  "destination": [
                    "tc-depth-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-depth-msg",
                    0
                  ],
                  "destination": [
                    "tc-depth-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-one-depth",
                    0
                  ],
                  "destination": [
                    "tc-depth-inv",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-depth-line",
                    0
                  ],
                  "destination": [
                    "tc-depth-inv",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-stereo",
                    0
                  ],
                  "destination": [
                    "tc-stereo-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-stereo-clip",
                    0
                  ],
                  "destination": [
                    "tc-stereo-map",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-stereo-map",
                    0
                  ],
                  "destination": [
                    "tc-stereo-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-stereo-msg",
                    0
                  ],
                  "destination": [
                    "tc-stereo-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-phasor",
                    0
                  ],
                  "destination": [
                    "tc-right-phase",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-stereo-line",
                    0
                  ],
                  "destination": [
                    "tc-right-phase",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-phase",
                    0
                  ],
                  "destination": [
                    "tc-right-wrap",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-smooth",
                    0
                  ],
                  "destination": [
                    "tc-smooth-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-smooth-clip",
                    0
                  ],
                  "destination": [
                    "tc-smooth-samps",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-dry-l",
                    0
                  ],
                  "destination": [
                    "tc-mod-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-dry-r",
                    0
                  ],
                  "destination": [
                    "tc-mod-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-one-enable",
                    0
                  ],
                  "destination": [
                    "tc-enable-inv",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-enable-line",
                    0
                  ],
                  "destination": [
                    "tc-enable-inv",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-dry-l",
                    0
                  ],
                  "destination": [
                    "tc-dry-mix-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-enable-inv",
                    0
                  ],
                  "destination": [
                    "tc-dry-mix-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-mod-l",
                    0
                  ],
                  "destination": [
                    "tc-wet-mix-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-enable-line",
                    0
                  ],
                  "destination": [
                    "tc-wet-mix-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-dry-mix-l",
                    0
                  ],
                  "destination": [
                    "tc-outmix-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-wet-mix-l",
                    0
                  ],
                  "destination": [
                    "tc-outmix-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-dry-r",
                    0
                  ],
                  "destination": [
                    "tc-dry-mix-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-enable-inv",
                    0
                  ],
                  "destination": [
                    "tc-dry-mix-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-mod-r",
                    0
                  ],
                  "destination": [
                    "tc-wet-mix-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-enable-line",
                    0
                  ],
                  "destination": [
                    "tc-wet-mix-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-dry-mix-r",
                    0
                  ],
                  "destination": [
                    "tc-outmix-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-wet-mix-r",
                    0
                  ],
                  "destination": [
                    "tc-outmix-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-outmix-l",
                    0
                  ],
                  "destination": [
                    "tc-out-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-outmix-r",
                    0
                  ],
                  "destination": [
                    "tc-out-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-phasor",
                    0
                  ],
                  "destination": [
                    "tc-left-radians",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-radians",
                    0
                  ],
                  "destination": [
                    "tc-left-sine",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-phasor",
                    0
                  ],
                  "destination": [
                    "tc-left-up-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-up-scale",
                    0
                  ],
                  "destination": [
                    "tc-left-up-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-phasor",
                    0
                  ],
                  "destination": [
                    "tc-left-down-invert",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-down-invert",
                    0
                  ],
                  "destination": [
                    "tc-left-down-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-down-scale",
                    0
                  ],
                  "destination": [
                    "tc-left-down-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-phasor",
                    0
                  ],
                  "destination": [
                    "tc-left-tri-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-tri-scale",
                    0
                  ],
                  "destination": [
                    "tc-left-tri-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-tri-offset",
                    0
                  ],
                  "destination": [
                    "tc-left-tri-abs",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-tri-abs",
                    0
                  ],
                  "destination": [
                    "tc-left-tri-invert",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-tri-invert",
                    0
                  ],
                  "destination": [
                    "tc-left-tri-b-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-tri-b-scale",
                    0
                  ],
                  "destination": [
                    "tc-left-tri-b-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-phasor",
                    0
                  ],
                  "destination": [
                    "tc-left-square-test",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-square-test",
                    0
                  ],
                  "destination": [
                    "tc-left-square-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-square-scale",
                    0
                  ],
                  "destination": [
                    "tc-left-square-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-noise",
                    0
                  ],
                  "destination": [
                    "tc-left-sah",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-phasor",
                    0
                  ],
                  "destination": [
                    "tc-left-sah",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-shape-route",
                    0
                  ],
                  "destination": [
                    "tc-left-shape-selector",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-sine",
                    0
                  ],
                  "destination": [
                    "tc-left-shape-selector",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-up-offset",
                    0
                  ],
                  "destination": [
                    "tc-left-shape-selector",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-down-offset",
                    0
                  ],
                  "destination": [
                    "tc-left-shape-selector",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-tri-b-offset",
                    0
                  ],
                  "destination": [
                    "tc-left-shape-selector",
                    4
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-square-offset",
                    0
                  ],
                  "destination": [
                    "tc-left-shape-selector",
                    5
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-sah",
                    0
                  ],
                  "destination": [
                    "tc-left-shape-selector",
                    6
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-shape-selector",
                    0
                  ],
                  "destination": [
                    "tc-left-uni-half",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-uni-half",
                    0
                  ],
                  "destination": [
                    "tc-left-uni-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-uni-offset",
                    0
                  ],
                  "destination": [
                    "tc-left-uni-slide",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-smooth-samps",
                    0
                  ],
                  "destination": [
                    "tc-left-uni-slide",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-smooth-samps",
                    0
                  ],
                  "destination": [
                    "tc-left-uni-slide",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-polarity-route",
                    0
                  ],
                  "destination": [
                    "tc-left-polarity-selector",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-shape-selector",
                    0
                  ],
                  "destination": [
                    "tc-left-polarity-selector",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-uni-offset",
                    0
                  ],
                  "destination": [
                    "tc-left-polarity-selector",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-polarity-selector",
                    0
                  ],
                  "destination": [
                    "tc-left-polarity-slide",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-smooth-samps",
                    0
                  ],
                  "destination": [
                    "tc-left-polarity-slide",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-smooth-samps",
                    0
                  ],
                  "destination": [
                    "tc-left-polarity-slide",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-uni-slide",
                    0
                  ],
                  "destination": [
                    "tc-left-gain-depth-mul",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-depth-line",
                    0
                  ],
                  "destination": [
                    "tc-left-gain-depth-mul",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-depth-inv",
                    0
                  ],
                  "destination": [
                    "tc-left-gain-sum",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-gain-depth-mul",
                    0
                  ],
                  "destination": [
                    "tc-left-gain-sum",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-polarity-slide",
                    0
                  ],
                  "destination": [
                    "tc-left-mod-depth-mul",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-depth-line",
                    0
                  ],
                  "destination": [
                    "tc-left-mod-depth-mul",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-wrap",
                    0
                  ],
                  "destination": [
                    "tc-right-radians",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-radians",
                    0
                  ],
                  "destination": [
                    "tc-right-sine",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-wrap",
                    0
                  ],
                  "destination": [
                    "tc-right-up-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-up-scale",
                    0
                  ],
                  "destination": [
                    "tc-right-up-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-wrap",
                    0
                  ],
                  "destination": [
                    "tc-right-down-invert",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-down-invert",
                    0
                  ],
                  "destination": [
                    "tc-right-down-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-down-scale",
                    0
                  ],
                  "destination": [
                    "tc-right-down-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-wrap",
                    0
                  ],
                  "destination": [
                    "tc-right-tri-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-tri-scale",
                    0
                  ],
                  "destination": [
                    "tc-right-tri-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-tri-offset",
                    0
                  ],
                  "destination": [
                    "tc-right-tri-abs",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-tri-abs",
                    0
                  ],
                  "destination": [
                    "tc-right-tri-invert",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-tri-invert",
                    0
                  ],
                  "destination": [
                    "tc-right-tri-b-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-tri-b-scale",
                    0
                  ],
                  "destination": [
                    "tc-right-tri-b-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-wrap",
                    0
                  ],
                  "destination": [
                    "tc-right-square-test",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-square-test",
                    0
                  ],
                  "destination": [
                    "tc-right-square-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-square-scale",
                    0
                  ],
                  "destination": [
                    "tc-right-square-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-noise",
                    0
                  ],
                  "destination": [
                    "tc-right-sah",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-wrap",
                    0
                  ],
                  "destination": [
                    "tc-right-sah",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-shape-route",
                    1
                  ],
                  "destination": [
                    "tc-right-shape-selector",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-sine",
                    0
                  ],
                  "destination": [
                    "tc-right-shape-selector",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-up-offset",
                    0
                  ],
                  "destination": [
                    "tc-right-shape-selector",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-down-offset",
                    0
                  ],
                  "destination": [
                    "tc-right-shape-selector",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-tri-b-offset",
                    0
                  ],
                  "destination": [
                    "tc-right-shape-selector",
                    4
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-square-offset",
                    0
                  ],
                  "destination": [
                    "tc-right-shape-selector",
                    5
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-sah",
                    0
                  ],
                  "destination": [
                    "tc-right-shape-selector",
                    6
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-shape-selector",
                    0
                  ],
                  "destination": [
                    "tc-right-uni-half",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-uni-half",
                    0
                  ],
                  "destination": [
                    "tc-right-uni-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-uni-offset",
                    0
                  ],
                  "destination": [
                    "tc-right-uni-slide",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-smooth-samps",
                    0
                  ],
                  "destination": [
                    "tc-right-uni-slide",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-smooth-samps",
                    0
                  ],
                  "destination": [
                    "tc-right-uni-slide",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-polarity-route",
                    1
                  ],
                  "destination": [
                    "tc-right-polarity-selector",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-shape-selector",
                    0
                  ],
                  "destination": [
                    "tc-right-polarity-selector",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-uni-offset",
                    0
                  ],
                  "destination": [
                    "tc-right-polarity-selector",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-polarity-selector",
                    0
                  ],
                  "destination": [
                    "tc-right-polarity-slide",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-smooth-samps",
                    0
                  ],
                  "destination": [
                    "tc-right-polarity-slide",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-smooth-samps",
                    0
                  ],
                  "destination": [
                    "tc-right-polarity-slide",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-uni-slide",
                    0
                  ],
                  "destination": [
                    "tc-right-gain-depth-mul",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-depth-line",
                    0
                  ],
                  "destination": [
                    "tc-right-gain-depth-mul",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-depth-inv",
                    0
                  ],
                  "destination": [
                    "tc-right-gain-sum",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-gain-depth-mul",
                    0
                  ],
                  "destination": [
                    "tc-right-gain-sum",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-polarity-slide",
                    0
                  ],
                  "destination": [
                    "tc-right-mod-depth-mul",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-depth-line",
                    0
                  ],
                  "destination": [
                    "tc-right-mod-depth-mul",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-gain-sum",
                    0
                  ],
                  "destination": [
                    "tc-mod-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-gain-sum",
                    0
                  ],
                  "destination": [
                    "tc-mod-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-left-mod-depth-mul",
                    0
                  ],
                  "destination": [
                    "tc-mod-out-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tc-right-mod-depth-mul",
                    0
                  ],
                  "destination": [
                    "tc-mod-out-r",
                    0
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "tm-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            820,
            150,
            54,
            150
          ],
          "numinlets": 2,
          "numoutlets": 5,
          "channels": 2,
          "parameter_enable": 1,
          "showname": 0,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                0
              ],
              "parameter_mmax": 6,
              "parameter_mmin": -70,
              "parameter_modmode": 0,
              "parameter_shortname": "Tremolo Out",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            620,
            36,
            54,
            132
          ]
        }
      },
      {
        "box": {
          "id": "tm-dac",
          "maxclass": "ezdac~",
          "patching_rect": [
            910,
            330,
            45,
            45
          ]
        }
      },
      {
        "box": {
          "id": "tm-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            970,
            295,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "tm-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            1020,
            295,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "tm-mod-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            1070,
            350,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "tm-mod-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            1120,
            350,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "tm-out-label",
          "maxclass": "comment",
          "patching_rect": [
            960,
            395,
            260,
            22
          ],
          "text": "out 1/2 audio L/R, out 3/4 mod L/R"
        }
      },
      {
        "box": {
          "id": "tm-rate-default",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            205,
            95,
            22
          ],
          "text": "loadmess 0.35"
        }
      },
      {
        "box": {
          "id": "tm-depth-default",
          "maxclass": "newobj",
          "patching_rect": [
            510,
            205,
            95,
            22
          ],
          "text": "loadmess 0.75"
        }
      },
      {
        "box": {
          "id": "tm-stereo-default",
          "maxclass": "newobj",
          "patching_rect": [
            600,
            205,
            95,
            22
          ],
          "text": "loadmess 0.5"
        }
      },
      {
        "box": {
          "id": "tm-smooth-default",
          "maxclass": "newobj",
          "patching_rect": [
            690,
            205,
            95,
            22
          ],
          "text": "loadmess 20."
        }
      },
      {
        "box": {
          "id": "tm-enable-set",
          "maxclass": "message",
          "patching_rect": [
            170,
            130,
            60,
            22
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "tm-enable-state-send",
          "maxclass": "newobj",
          "patching_rect": [
            170,
            205,
            180,
            22
          ],
          "text": "s mt_tremolo_enable_state"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "tm-ext-enable",
            0
          ],
          "destination": [
            "tm-enable-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-enable-set",
            0
          ],
          "destination": [
            "tm-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-ext-enable",
            0
          ],
          "destination": [
            "p-Tremolo-core",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-ext-shape",
            0
          ],
          "destination": [
            "tm-shape",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-ext-polarity",
            0
          ],
          "destination": [
            "tm-polarity",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-ext-rate",
            0
          ],
          "destination": [
            "tm-rate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-ext-depth",
            0
          ],
          "destination": [
            "tm-depth",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-ext-stereo",
            0
          ],
          "destination": [
            "tm-stereo",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-ext-smooth",
            0
          ],
          "destination": [
            "tm-smooth",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-rate-default",
            0
          ],
          "destination": [
            "tm-rate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-depth-default",
            0
          ],
          "destination": [
            "tm-depth",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-stereo-default",
            0
          ],
          "destination": [
            "tm-stereo",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-smooth-default",
            0
          ],
          "destination": [
            "tm-smooth",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-in-l",
            0
          ],
          "destination": [
            "p-Tremolo-core",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-in-r",
            0
          ],
          "destination": [
            "p-Tremolo-core",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-enable",
            0
          ],
          "destination": [
            "p-Tremolo-core",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-enable",
            0
          ],
          "destination": [
            "tm-enable-state-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-test",
            0
          ],
          "destination": [
            "p-Tremolo-core",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-shape",
            0
          ],
          "destination": [
            "p-Tremolo-core",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-polarity",
            0
          ],
          "destination": [
            "p-Tremolo-core",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-rate",
            0
          ],
          "destination": [
            "p-Tremolo-core",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-depth",
            0
          ],
          "destination": [
            "p-Tremolo-core",
            7
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-stereo",
            0
          ],
          "destination": [
            "p-Tremolo-core",
            8
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-smooth",
            0
          ],
          "destination": [
            "p-Tremolo-core",
            9
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Tremolo-core",
            0
          ],
          "destination": [
            "tm-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Tremolo-core",
            1
          ],
          "destination": [
            "tm-gain",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-gain",
            0
          ],
          "destination": [
            "tm-out-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-gain",
            1
          ],
          "destination": [
            "tm-out-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Tremolo-core",
            2
          ],
          "destination": [
            "tm-mod-out-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Tremolo-core",
            3
          ],
          "destination": [
            "tm-mod-out-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-gain",
            0
          ],
          "destination": [
            "tm-dac",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tm-gain",
            1
          ],
          "destination": [
            "tm-dac",
            1
          ]
        }
      }
    ]
  }
}