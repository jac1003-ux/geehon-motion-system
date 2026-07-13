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
      980,
      440
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
          "id": "tbm-title",
          "maxclass": "comment",
          "patching_rect": [
            24,
            20,
            430,
            24
          ],
          "text": "MT Mod Talkbox - formant voice character",
          "presentation": 1,
          "presentation_rect": [
            12,
            8,
            360,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tbm-note",
          "maxclass": "comment",
          "patching_rect": [
            24,
            48,
            760,
            22
          ],
          "text": "Talkbox-inspired formant processor: drive plus four resonant vowel bands. Standalone test input included.",
          "presentation": 1,
          "presentation_rect": [
            12,
            30,
            500,
            36
          ]
        }
      },
      {
        "box": {
          "id": "tbm-in-l",
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
          "id": "tbm-in-r",
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
          "id": "tbm-ext-enable",
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
          "id": "tbm-ext-wet",
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
          "id": "tbm-ext-vowel",
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
          "id": "tbm-ext-mouth",
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
          "id": "tbm-ext-drive",
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
          "id": "tbm-ext-bright",
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
          "id": "tbm-enable",
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
            78,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "tbm-enable-label",
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
            80,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tbm-test",
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
            122,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "tbm-test-label",
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
            124,
            78,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tbm-wet",
          "maxclass": "flonum",
          "patching_rect": [
            155,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            136,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tbm-wet-label",
          "maxclass": "comment",
          "patching_rect": [
            155,
            132,
            80,
            22
          ],
          "text": "Dry/Wet",
          "presentation": 1,
          "presentation_rect": [
            136,
            76,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tbm-vowel",
          "maxclass": "flonum",
          "patching_rect": [
            245,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            220,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tbm-vowel-label",
          "maxclass": "comment",
          "patching_rect": [
            245,
            132,
            70,
            22
          ],
          "text": "Vowel",
          "presentation": 1,
          "presentation_rect": [
            220,
            76,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tbm-mouth",
          "maxclass": "flonum",
          "patching_rect": [
            335,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            304,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tbm-mouth-label",
          "maxclass": "comment",
          "patching_rect": [
            335,
            132,
            70,
            22
          ],
          "text": "Mouth",
          "presentation": 1,
          "presentation_rect": [
            304,
            76,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tbm-drive",
          "maxclass": "flonum",
          "patching_rect": [
            425,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            388,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tbm-drive-label",
          "maxclass": "comment",
          "patching_rect": [
            425,
            132,
            70,
            22
          ],
          "text": "Drive",
          "presentation": 1,
          "presentation_rect": [
            388,
            76,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tbm-bright",
          "maxclass": "flonum",
          "patching_rect": [
            515,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            472,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tbm-bright-label",
          "maxclass": "comment",
          "patching_rect": [
            515,
            132,
            95,
            22
          ],
          "text": "Brightness",
          "presentation": 1,
          "presentation_rect": [
            472,
            76,
            90,
            22
          ]
        }
      },
      {
        "box": {
          "id": "p-Talkbox-core",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            285,
            155,
            22
          ],
          "text": "p Talkbox_core",
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
              1120,
              1180
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
                  "id": "tb-title",
                  "maxclass": "comment",
                  "patching_rect": [
                    35,
                    25,
                    960,
                    22
                  ],
                  "text": "Talkbox_core: mono drive -> four formant resonators -> smoothed dry/wet stereo blend with subtle width"
                }
              },
              {
                "box": {
                  "id": "tb-in-l",
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
                  "id": "tb-in-r",
                  "maxclass": "inlet",
                  "patching_rect": [
                    115,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tb-enable",
                  "maxclass": "inlet",
                  "patching_rect": [
                    205,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tb-test",
                  "maxclass": "inlet",
                  "patching_rect": [
                    285,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tb-wet",
                  "maxclass": "inlet",
                  "patching_rect": [
                    365,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tb-vowel",
                  "maxclass": "inlet",
                  "patching_rect": [
                    445,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tb-mouth",
                  "maxclass": "inlet",
                  "patching_rect": [
                    535,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tb-drive-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    625,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tb-bright",
                  "maxclass": "inlet",
                  "patching_rect": [
                    715,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tb-enable-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    205,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "tb-enable-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    205,
                    170,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "tb-enable-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    205,
                    205,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tb-test-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    285,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "tb-test-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    285,
                    170,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "tb-test-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    285,
                    205,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tb-wet-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    365,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "tb-wet-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    365,
                    170,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "tb-wet-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    365,
                    205,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tb-vowel-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    445,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "tb-f1-map",
                  "maxclass": "newobj",
                  "patching_rect": [
                    445,
                    180,
                    150,
                    22
                  ],
                  "text": "scale 0. 1. 330. 760."
                }
              },
              {
                "box": {
                  "id": "tb-f2-map",
                  "maxclass": "newobj",
                  "patching_rect": [
                    605,
                    180,
                    155,
                    22
                  ],
                  "text": "scale 0. 1. 760. 2300."
                }
              },
              {
                "box": {
                  "id": "tb-f3-map",
                  "maxclass": "newobj",
                  "patching_rect": [
                    770,
                    180,
                    165,
                    22
                  ],
                  "text": "scale 0. 1. 2100. 3300."
                }
              },
              {
                "box": {
                  "id": "tb-f4-map",
                  "maxclass": "newobj",
                  "patching_rect": [
                    945,
                    180,
                    165,
                    22
                  ],
                  "text": "scale 0. 1. 3100. 4600."
                }
              },
              {
                "box": {
                  "id": "tb-f1-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    445,
                    225,
                    55,
                    22
                  ],
                  "text": "$1 25"
                }
              },
              {
                "box": {
                  "id": "tb-f2-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    605,
                    225,
                    55,
                    22
                  ],
                  "text": "$1 25"
                }
              },
              {
                "box": {
                  "id": "tb-f3-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    770,
                    225,
                    55,
                    22
                  ],
                  "text": "$1 25"
                }
              },
              {
                "box": {
                  "id": "tb-f4-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    945,
                    225,
                    55,
                    22
                  ],
                  "text": "$1 25"
                }
              },
              {
                "box": {
                  "id": "tb-f1-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    445,
                    270,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tb-f2-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    605,
                    270,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tb-f3-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    770,
                    270,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tb-f4-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    945,
                    270,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tb-mouth-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    535,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "tb-mouth-map",
                  "maxclass": "newobj",
                  "patching_rect": [
                    535,
                    315,
                    140,
                    22
                  ],
                  "text": "scale 0. 1. 3. 28."
                }
              },
              {
                "box": {
                  "id": "tb-mouth-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    535,
                    360,
                    55,
                    22
                  ],
                  "text": "$1 25"
                }
              },
              {
                "box": {
                  "id": "tb-mouth-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    535,
                    405,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tb-drive-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    625,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "tb-drive-map",
                  "maxclass": "newobj",
                  "patching_rect": [
                    625,
                    315,
                    135,
                    22
                  ],
                  "text": "scale 0. 1. 1. 8."
                }
              },
              {
                "box": {
                  "id": "tb-drive-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    625,
                    360,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "tb-drive-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    625,
                    405,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tb-bright-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    715,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "tb-bright-route",
                  "maxclass": "newobj",
                  "patching_rect": [
                    715,
                    180,
                    70,
                    22
                  ],
                  "text": "t f f f"
                }
              },
              {
                "box": {
                  "id": "tb-bright-main",
                  "maxclass": "newobj",
                  "patching_rect": [
                    715,
                    315,
                    155,
                    22
                  ],
                  "text": "scale 0. 1. 0.24 0.62"
                }
              },
              {
                "box": {
                  "id": "tb-bright-main-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    715,
                    360,
                    55,
                    22
                  ],
                  "text": "$1 25"
                }
              },
              {
                "box": {
                  "id": "tb-bright-main-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    715,
                    405,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tb-bright-hi",
                  "maxclass": "newobj",
                  "patching_rect": [
                    880,
                    315,
                    155,
                    22
                  ],
                  "text": "scale 0. 1. 0.08 0.38"
                }
              },
              {
                "box": {
                  "id": "tb-bright-hi-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    880,
                    360,
                    55,
                    22
                  ],
                  "text": "$1 25"
                }
              },
              {
                "box": {
                  "id": "tb-bright-hi-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    880,
                    405,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tb-width-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    1045,
                    360,
                    55,
                    22
                  ],
                  "text": "$1 25"
                }
              },
              {
                "box": {
                  "id": "tb-width-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1045,
                    405,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "tb-in-sum",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    155,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tb-in-mono",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    200,
                    60,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "tb-test-osc",
                  "maxclass": "newobj",
                  "patching_rect": [
                    285,
                    260,
                    75,
                    22
                  ],
                  "text": "cycle~ 140"
                }
              },
              {
                "box": {
                  "id": "tb-test-lfo",
                  "maxclass": "newobj",
                  "patching_rect": [
                    375,
                    260,
                    75,
                    22
                  ],
                  "text": "cycle~ 2.2"
                }
              },
              {
                "box": {
                  "id": "tb-test-env-plus",
                  "maxclass": "newobj",
                  "patching_rect": [
                    375,
                    305,
                    55,
                    22
                  ],
                  "text": "+~ 1."
                }
              },
              {
                "box": {
                  "id": "tb-test-env-half",
                  "maxclass": "newobj",
                  "patching_rect": [
                    375,
                    350,
                    55,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "tb-test-env",
                  "maxclass": "newobj",
                  "patching_rect": [
                    285,
                    350,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tb-test-level",
                  "maxclass": "newobj",
                  "patching_rect": [
                    285,
                    400,
                    65,
                    22
                  ],
                  "text": "*~ 0.35"
                }
              },
              {
                "box": {
                  "id": "tb-test-gate",
                  "maxclass": "newobj",
                  "patching_rect": [
                    285,
                    450,
                    55,
                    22
                  ],
                  "text": "*~ 0."
                }
              },
              {
                "box": {
                  "id": "tb-source",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    505,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tb-dry-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    105,
                    505,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tb-dry-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    175,
                    505,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tb-drive",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    570,
                    95,
                    22
                  ],
                  "text": "overdrive~ 1."
                }
              },
              {
                "box": {
                  "id": "tb-formant-1",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    640,
                    135,
                    22
                  ],
                  "text": "reson~ 0.45 500. 8."
                }
              },
              {
                "box": {
                  "id": "tb-formant-2",
                  "maxclass": "newobj",
                  "patching_rect": [
                    205,
                    640,
                    145,
                    22
                  ],
                  "text": "reson~ 0.45 1200. 8."
                }
              },
              {
                "box": {
                  "id": "tb-formant-3",
                  "maxclass": "newobj",
                  "patching_rect": [
                    385,
                    640,
                    145,
                    22
                  ],
                  "text": "reson~ 0.22 2600. 8."
                }
              },
              {
                "box": {
                  "id": "tb-formant-4",
                  "maxclass": "newobj",
                  "patching_rect": [
                    565,
                    640,
                    145,
                    22
                  ],
                  "text": "reson~ 0.16 3800. 8."
                }
              },
              {
                "box": {
                  "id": "tb-band-12",
                  "maxclass": "newobj",
                  "patching_rect": [
                    135,
                    730,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tb-band-34",
                  "maxclass": "newobj",
                  "patching_rect": [
                    475,
                    730,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tb-band-main",
                  "maxclass": "newobj",
                  "patching_rect": [
                    135,
                    790,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tb-band-hi",
                  "maxclass": "newobj",
                  "patching_rect": [
                    475,
                    790,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tb-formant-sum",
                  "maxclass": "newobj",
                  "patching_rect": [
                    305,
                    850,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tb-safe",
                  "maxclass": "newobj",
                  "patching_rect": [
                    305,
                    900,
                    85,
                    22
                  ],
                  "text": "clip~ -1. 1."
                }
              },
              {
                "box": {
                  "id": "tb-width-tapin",
                  "maxclass": "newobj",
                  "patching_rect": [
                    405,
                    900,
                    90,
                    22
                  ],
                  "text": "tapin~ 60."
                }
              },
              {
                "box": {
                  "id": "tb-width-tapout",
                  "maxclass": "newobj",
                  "patching_rect": [
                    405,
                    945,
                    95,
                    22
                  ],
                  "text": "tapout~ 13."
                }
              },
              {
                "box": {
                  "id": "tb-one-width",
                  "maxclass": "newobj",
                  "patching_rect": [
                    500,
                    900,
                    60,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "tb-width-direct-amount",
                  "maxclass": "newobj",
                  "patching_rect": [
                    500,
                    945,
                    35,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "tb-wet-r-direct",
                  "maxclass": "newobj",
                  "patching_rect": [
                    405,
                    1000,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tb-wet-r-delay",
                  "maxclass": "newobj",
                  "patching_rect": [
                    475,
                    1000,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tb-wet-r-spread",
                  "maxclass": "newobj",
                  "patching_rect": [
                    440,
                    1050,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tb-eff-wet",
                  "maxclass": "newobj",
                  "patching_rect": [
                    365,
                    270,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tb-one-wet",
                  "maxclass": "newobj",
                  "patching_rect": [
                    425,
                    315,
                    60,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "tb-dry-amount",
                  "maxclass": "newobj",
                  "patching_rect": [
                    425,
                    360,
                    35,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "tb-dry-mix-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    105,
                    955,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tb-wet-mix-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    175,
                    955,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tb-outmix-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    140,
                    1010,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tb-dry-mix-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    245,
                    955,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tb-wet-mix-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    315,
                    955,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "tb-outmix-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    280,
                    1010,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "tb-out-l",
                  "maxclass": "outlet",
                  "patching_rect": [
                    140,
                    1080,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "tb-out-r",
                  "maxclass": "outlet",
                  "patching_rect": [
                    280,
                    1080,
                    30,
                    30
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "tb-enable",
                    0
                  ],
                  "destination": [
                    "tb-enable-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-enable-clip",
                    0
                  ],
                  "destination": [
                    "tb-enable-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-enable-msg",
                    0
                  ],
                  "destination": [
                    "tb-enable-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-test",
                    0
                  ],
                  "destination": [
                    "tb-test-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-test-clip",
                    0
                  ],
                  "destination": [
                    "tb-test-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-test-msg",
                    0
                  ],
                  "destination": [
                    "tb-test-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-wet",
                    0
                  ],
                  "destination": [
                    "tb-wet-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-wet-clip",
                    0
                  ],
                  "destination": [
                    "tb-wet-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-wet-msg",
                    0
                  ],
                  "destination": [
                    "tb-wet-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-vowel",
                    0
                  ],
                  "destination": [
                    "tb-vowel-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-vowel-clip",
                    0
                  ],
                  "destination": [
                    "tb-f1-map",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-vowel-clip",
                    0
                  ],
                  "destination": [
                    "tb-f2-map",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-vowel-clip",
                    0
                  ],
                  "destination": [
                    "tb-f3-map",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-vowel-clip",
                    0
                  ],
                  "destination": [
                    "tb-f4-map",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-f1-map",
                    0
                  ],
                  "destination": [
                    "tb-f1-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-f2-map",
                    0
                  ],
                  "destination": [
                    "tb-f2-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-f3-map",
                    0
                  ],
                  "destination": [
                    "tb-f3-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-f4-map",
                    0
                  ],
                  "destination": [
                    "tb-f4-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-f1-msg",
                    0
                  ],
                  "destination": [
                    "tb-f1-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-f2-msg",
                    0
                  ],
                  "destination": [
                    "tb-f2-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-f3-msg",
                    0
                  ],
                  "destination": [
                    "tb-f3-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-f4-msg",
                    0
                  ],
                  "destination": [
                    "tb-f4-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-mouth",
                    0
                  ],
                  "destination": [
                    "tb-mouth-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-mouth-clip",
                    0
                  ],
                  "destination": [
                    "tb-mouth-map",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-mouth-map",
                    0
                  ],
                  "destination": [
                    "tb-mouth-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-mouth-msg",
                    0
                  ],
                  "destination": [
                    "tb-mouth-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-drive-in",
                    0
                  ],
                  "destination": [
                    "tb-drive-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-drive-clip",
                    0
                  ],
                  "destination": [
                    "tb-drive-map",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-drive-map",
                    0
                  ],
                  "destination": [
                    "tb-drive-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-drive-msg",
                    0
                  ],
                  "destination": [
                    "tb-drive-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-bright",
                    0
                  ],
                  "destination": [
                    "tb-bright-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-bright-clip",
                    0
                  ],
                  "destination": [
                    "tb-bright-route",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-bright-route",
                    0
                  ],
                  "destination": [
                    "tb-bright-main",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-bright-main",
                    0
                  ],
                  "destination": [
                    "tb-bright-main-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-bright-main-msg",
                    0
                  ],
                  "destination": [
                    "tb-bright-main-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-bright-route",
                    1
                  ],
                  "destination": [
                    "tb-bright-hi",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-bright-hi",
                    0
                  ],
                  "destination": [
                    "tb-bright-hi-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-bright-hi-msg",
                    0
                  ],
                  "destination": [
                    "tb-bright-hi-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-bright-route",
                    2
                  ],
                  "destination": [
                    "tb-width-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-width-msg",
                    0
                  ],
                  "destination": [
                    "tb-width-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-in-l",
                    0
                  ],
                  "destination": [
                    "tb-in-sum",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-in-r",
                    0
                  ],
                  "destination": [
                    "tb-in-sum",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-in-sum",
                    0
                  ],
                  "destination": [
                    "tb-in-mono",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-test-osc",
                    0
                  ],
                  "destination": [
                    "tb-test-env",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-test-lfo",
                    0
                  ],
                  "destination": [
                    "tb-test-env-plus",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-test-env-plus",
                    0
                  ],
                  "destination": [
                    "tb-test-env-half",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-test-env-half",
                    0
                  ],
                  "destination": [
                    "tb-test-env",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-test-env",
                    0
                  ],
                  "destination": [
                    "tb-test-level",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-test-level",
                    0
                  ],
                  "destination": [
                    "tb-test-gate",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-test-line",
                    0
                  ],
                  "destination": [
                    "tb-test-gate",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-in-mono",
                    0
                  ],
                  "destination": [
                    "tb-source",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-test-gate",
                    0
                  ],
                  "destination": [
                    "tb-source",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-in-l",
                    0
                  ],
                  "destination": [
                    "tb-dry-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-test-gate",
                    0
                  ],
                  "destination": [
                    "tb-dry-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-in-r",
                    0
                  ],
                  "destination": [
                    "tb-dry-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-test-gate",
                    0
                  ],
                  "destination": [
                    "tb-dry-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-source",
                    0
                  ],
                  "destination": [
                    "tb-drive",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-drive-line",
                    0
                  ],
                  "destination": [
                    "tb-drive",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-drive",
                    0
                  ],
                  "destination": [
                    "tb-formant-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-drive",
                    0
                  ],
                  "destination": [
                    "tb-formant-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-drive",
                    0
                  ],
                  "destination": [
                    "tb-formant-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-drive",
                    0
                  ],
                  "destination": [
                    "tb-formant-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-f1-line",
                    0
                  ],
                  "destination": [
                    "tb-formant-1",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-f2-line",
                    0
                  ],
                  "destination": [
                    "tb-formant-2",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-f3-line",
                    0
                  ],
                  "destination": [
                    "tb-formant-3",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-f4-line",
                    0
                  ],
                  "destination": [
                    "tb-formant-4",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-mouth-line",
                    0
                  ],
                  "destination": [
                    "tb-formant-1",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-mouth-line",
                    0
                  ],
                  "destination": [
                    "tb-formant-2",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-mouth-line",
                    0
                  ],
                  "destination": [
                    "tb-formant-3",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-mouth-line",
                    0
                  ],
                  "destination": [
                    "tb-formant-4",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-formant-1",
                    0
                  ],
                  "destination": [
                    "tb-band-12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-formant-2",
                    0
                  ],
                  "destination": [
                    "tb-band-12",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-formant-3",
                    0
                  ],
                  "destination": [
                    "tb-band-34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-formant-4",
                    0
                  ],
                  "destination": [
                    "tb-band-34",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-band-12",
                    0
                  ],
                  "destination": [
                    "tb-band-main",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-bright-main-line",
                    0
                  ],
                  "destination": [
                    "tb-band-main",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-band-34",
                    0
                  ],
                  "destination": [
                    "tb-band-hi",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-bright-hi-line",
                    0
                  ],
                  "destination": [
                    "tb-band-hi",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-band-main",
                    0
                  ],
                  "destination": [
                    "tb-formant-sum",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-band-hi",
                    0
                  ],
                  "destination": [
                    "tb-formant-sum",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-formant-sum",
                    0
                  ],
                  "destination": [
                    "tb-safe",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-safe",
                    0
                  ],
                  "destination": [
                    "tb-width-tapin",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-width-tapin",
                    0
                  ],
                  "destination": [
                    "tb-width-tapout",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-one-width",
                    0
                  ],
                  "destination": [
                    "tb-width-direct-amount",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-width-line",
                    0
                  ],
                  "destination": [
                    "tb-width-direct-amount",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-safe",
                    0
                  ],
                  "destination": [
                    "tb-wet-r-direct",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-width-direct-amount",
                    0
                  ],
                  "destination": [
                    "tb-wet-r-direct",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-width-tapout",
                    0
                  ],
                  "destination": [
                    "tb-wet-r-delay",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-width-line",
                    0
                  ],
                  "destination": [
                    "tb-wet-r-delay",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-wet-r-direct",
                    0
                  ],
                  "destination": [
                    "tb-wet-r-spread",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-wet-r-delay",
                    0
                  ],
                  "destination": [
                    "tb-wet-r-spread",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-wet-line",
                    0
                  ],
                  "destination": [
                    "tb-eff-wet",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-enable-line",
                    0
                  ],
                  "destination": [
                    "tb-eff-wet",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-one-wet",
                    0
                  ],
                  "destination": [
                    "tb-dry-amount",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-eff-wet",
                    0
                  ],
                  "destination": [
                    "tb-dry-amount",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-dry-l",
                    0
                  ],
                  "destination": [
                    "tb-dry-mix-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-dry-amount",
                    0
                  ],
                  "destination": [
                    "tb-dry-mix-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-safe",
                    0
                  ],
                  "destination": [
                    "tb-wet-mix-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-eff-wet",
                    0
                  ],
                  "destination": [
                    "tb-wet-mix-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-dry-mix-l",
                    0
                  ],
                  "destination": [
                    "tb-outmix-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-wet-mix-l",
                    0
                  ],
                  "destination": [
                    "tb-outmix-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-dry-r",
                    0
                  ],
                  "destination": [
                    "tb-dry-mix-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-dry-amount",
                    0
                  ],
                  "destination": [
                    "tb-dry-mix-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-wet-r-spread",
                    0
                  ],
                  "destination": [
                    "tb-wet-mix-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-eff-wet",
                    0
                  ],
                  "destination": [
                    "tb-wet-mix-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-dry-mix-r",
                    0
                  ],
                  "destination": [
                    "tb-outmix-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-wet-mix-r",
                    0
                  ],
                  "destination": [
                    "tb-outmix-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-outmix-l",
                    0
                  ],
                  "destination": [
                    "tb-out-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "tb-outmix-r",
                    0
                  ],
                  "destination": [
                    "tb-out-r",
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
          "id": "tbm-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            645,
            145,
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
              "parameter_shortname": "Talkbox Out",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            580,
            64,
            54,
            132
          ]
        }
      },
      {
        "box": {
          "id": "tbm-dac",
          "maxclass": "ezdac~",
          "patching_rect": [
            760,
            330,
            45,
            45
          ]
        }
      },
      {
        "box": {
          "id": "tbm-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            830,
            295,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "tbm-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            880,
            295,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "tbm-out-label",
          "maxclass": "comment",
          "patching_rect": [
            810,
            335,
            170,
            22
          ],
          "text": "out 1/2: audio L/R"
        }
      },
      {
        "box": {
          "id": "tbm-wet-default",
          "maxclass": "newobj",
          "patching_rect": [
            155,
            205,
            95,
            22
          ],
          "text": "loadmess 0.65"
        }
      },
      {
        "box": {
          "id": "tbm-vowel-default",
          "maxclass": "newobj",
          "patching_rect": [
            245,
            205,
            95,
            22
          ],
          "text": "loadmess 0.45"
        }
      },
      {
        "box": {
          "id": "tbm-mouth-default",
          "maxclass": "newobj",
          "patching_rect": [
            335,
            205,
            95,
            22
          ],
          "text": "loadmess 0.55"
        }
      },
      {
        "box": {
          "id": "tbm-drive-default",
          "maxclass": "newobj",
          "patching_rect": [
            425,
            205,
            95,
            22
          ],
          "text": "loadmess 0.35"
        }
      },
      {
        "box": {
          "id": "tbm-bright-default",
          "maxclass": "newobj",
          "patching_rect": [
            515,
            205,
            95,
            22
          ],
          "text": "loadmess 0.6"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "tbm-ext-enable",
            0
          ],
          "destination": [
            "tbm-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-ext-wet",
            0
          ],
          "destination": [
            "tbm-wet",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-ext-vowel",
            0
          ],
          "destination": [
            "tbm-vowel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-ext-mouth",
            0
          ],
          "destination": [
            "tbm-mouth",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-ext-drive",
            0
          ],
          "destination": [
            "tbm-drive",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-ext-bright",
            0
          ],
          "destination": [
            "tbm-bright",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-wet-default",
            0
          ],
          "destination": [
            "tbm-wet",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-vowel-default",
            0
          ],
          "destination": [
            "tbm-vowel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-mouth-default",
            0
          ],
          "destination": [
            "tbm-mouth",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-drive-default",
            0
          ],
          "destination": [
            "tbm-drive",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-bright-default",
            0
          ],
          "destination": [
            "tbm-bright",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-in-l",
            0
          ],
          "destination": [
            "p-Talkbox-core",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-in-r",
            0
          ],
          "destination": [
            "p-Talkbox-core",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-enable",
            0
          ],
          "destination": [
            "p-Talkbox-core",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-test",
            0
          ],
          "destination": [
            "p-Talkbox-core",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-wet",
            0
          ],
          "destination": [
            "p-Talkbox-core",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-vowel",
            0
          ],
          "destination": [
            "p-Talkbox-core",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-mouth",
            0
          ],
          "destination": [
            "p-Talkbox-core",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-drive",
            0
          ],
          "destination": [
            "p-Talkbox-core",
            7
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-bright",
            0
          ],
          "destination": [
            "p-Talkbox-core",
            8
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Talkbox-core",
            0
          ],
          "destination": [
            "tbm-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Talkbox-core",
            1
          ],
          "destination": [
            "tbm-gain",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-gain",
            0
          ],
          "destination": [
            "tbm-out-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-gain",
            1
          ],
          "destination": [
            "tbm-out-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-gain",
            0
          ],
          "destination": [
            "tbm-dac",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tbm-gain",
            1
          ],
          "destination": [
            "tbm-dac",
            1
          ]
        }
      }
    ]
  }
}