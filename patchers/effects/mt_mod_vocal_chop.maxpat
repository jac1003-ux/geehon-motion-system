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
      1300,
      450
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
          "id": "chm-title",
          "maxclass": "comment",
          "patching_rect": [
            24,
            20,
            430,
            24
          ],
          "text": "MT Mod Vocal Chop - live slicer FX",
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
          "id": "chm-note",
          "maxclass": "comment",
          "patching_rect": [
            24,
            48,
            900,
            22
          ],
          "text": "Live input is chopped immediately. Freeze only switches to a recent-buffer hold layer; Rate/Gate/Tone/Flip/Texture shape the slice.",
          "presentation": 1,
          "presentation_rect": [
            12,
            30,
            520,
            36
          ]
        }
      },
      {
        "box": {
          "id": "chm-in-l",
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
          "id": "chm-in-r",
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
          "id": "chm-ext-enable",
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
          "id": "chm-ext-capture",
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
          "id": "chm-ext-play",
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
          "id": "chm-ext-rate",
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
          "id": "chm-ext-gate",
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
          "id": "chm-ext-pitch",
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
          "id": "chm-ext-wet",
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
          "id": "chm-ext-reverse",
          "maxclass": "inlet",
          "patching_rect": [
            625,
            95,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "chm-ext-texture",
          "maxclass": "inlet",
          "patching_rect": [
            690,
            95,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "chm-enable",
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
          "id": "chm-enable-label",
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
          "id": "chm-test",
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
          "id": "chm-test-label",
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
          "id": "chm-freeze",
          "maxclass": "toggle",
          "patching_rect": [
            135,
            155,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            120,
            78,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "chm-freeze-label",
          "maxclass": "comment",
          "patching_rect": [
            167,
            157,
            80,
            22
          ],
          "text": "Freeze",
          "presentation": 1,
          "presentation_rect": [
            152,
            80,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "chm-rate",
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
            230,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "chm-rate-label",
          "maxclass": "comment",
          "patching_rect": [
            245,
            132,
            65,
            22
          ],
          "text": "Rate",
          "presentation": 1,
          "presentation_rect": [
            230,
            76,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "chm-gate",
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
            310,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "chm-gate-label",
          "maxclass": "comment",
          "patching_rect": [
            335,
            132,
            65,
            22
          ],
          "text": "Gate",
          "presentation": 1,
          "presentation_rect": [
            310,
            76,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "chm-pitch",
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
            390,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "chm-pitch-label",
          "maxclass": "comment",
          "patching_rect": [
            425,
            132,
            65,
            22
          ],
          "text": "Tone",
          "presentation": 1,
          "presentation_rect": [
            390,
            76,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "chm-wet",
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
            470,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "chm-wet-label",
          "maxclass": "comment",
          "patching_rect": [
            515,
            132,
            80,
            22
          ],
          "text": "Dry/Wet",
          "presentation": 1,
          "presentation_rect": [
            470,
            76,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "chm-reverse",
          "maxclass": "toggle",
          "patching_rect": [
            605,
            155,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            560,
            100,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "chm-reverse-label",
          "maxclass": "comment",
          "patching_rect": [
            595,
            132,
            75,
            22
          ],
          "text": "Flip",
          "presentation": 1,
          "presentation_rect": [
            550,
            76,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "chm-texture",
          "maxclass": "flonum",
          "patching_rect": [
            685,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            622,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "chm-texture-label",
          "maxclass": "comment",
          "patching_rect": [
            685,
            132,
            75,
            22
          ],
          "text": "Texture",
          "presentation": 1,
          "presentation_rect": [
            622,
            76,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "chm-wave",
          "maxclass": "waveform~",
          "patching_rect": [
            765,
            120,
            230,
            78
          ],
          "buffername": "#0_chop_buffer",
          "setmode": 1,
          "outmode": 0,
          "setunit": 0,
          "presentation": 1,
          "presentation_rect": [
            700,
            76,
            200,
            70
          ]
        }
      },
      {
        "box": {
          "id": "chm-wave-set",
          "maxclass": "newobj",
          "patching_rect": [
            765,
            210,
            190,
            22
          ],
          "text": "loadmess set #0_chop_buffer"
        }
      },
      {
        "box": {
          "id": "p-Vocal-chop-core",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            285,
            170,
            22
          ],
          "text": "p Vocal_chop_core",
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
              1240
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
                  "id": "ch-title",
                  "maxclass": "comment",
                  "patching_rect": [
                    35,
                    25,
                    1040,
                    22
                  ],
                  "text": "Live_chop_core: live input is chopped first; Freeze crossfades to the recent buffer as an optional hold layer"
                }
              },
              {
                "box": {
                  "id": "ch-in-l",
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
                  "id": "ch-in-r",
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
                  "id": "ch-enable",
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
                  "id": "ch-test",
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
                  "id": "ch-freeze",
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
                  "id": "ch-freeze-ext",
                  "maxclass": "inlet",
                  "patching_rect": [
                    455,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "ch-rate",
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
                  "id": "ch-gate",
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
                  "id": "ch-pitch",
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
                  "id": "ch-wet",
                  "maxclass": "inlet",
                  "patching_rect": [
                    805,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "ch-reverse",
                  "maxclass": "inlet",
                  "patching_rect": [
                    895,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "ch-texture",
                  "maxclass": "inlet",
                  "patching_rect": [
                    985,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "ch-buffer",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    135,
                    210,
                    22
                  ],
                  "text": "buffer~ #0_chop_buffer 4000 2"
                }
              },
              {
                "box": {
                  "id": "ch-enable-clip",
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
                  "id": "ch-enable-msg",
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
                  "id": "ch-enable-line",
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
                  "id": "ch-test-clip",
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
                  "id": "ch-test-msg",
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
                  "id": "ch-test-line",
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
                  "id": "ch-freeze-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    365,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0 1"
                }
              },
              {
                "box": {
                  "id": "ch-freeze-ext-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    455,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0 1"
                }
              },
              {
                "box": {
                  "id": "ch-freeze-sum",
                  "maxclass": "newobj",
                  "patching_rect": [
                    365,
                    170,
                    35,
                    22
                  ],
                  "text": "+"
                }
              },
              {
                "box": {
                  "id": "ch-freeze-limit",
                  "maxclass": "newobj",
                  "patching_rect": [
                    365,
                    205,
                    75,
                    22
                  ],
                  "text": "clip 0 1"
                }
              },
              {
                "box": {
                  "id": "ch-record-permit",
                  "maxclass": "newobj",
                  "patching_rect": [
                    365,
                    240,
                    90,
                    22
                  ],
                  "text": "expr 1 - $f1"
                }
              },
              {
                "box": {
                  "id": "ch-record-state",
                  "maxclass": "newobj",
                  "patching_rect": [
                    365,
                    275,
                    55,
                    22
                  ],
                  "text": "* 1"
                }
              },
              {
                "box": {
                  "id": "ch-freeze-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    365,
                    310,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "ch-freeze-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    365,
                    345,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "ch-rate-clip",
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
                  "id": "ch-rate-map",
                  "maxclass": "newobj",
                  "patching_rect": [
                    535,
                    170,
                    145,
                    22
                  ],
                  "text": "scale 0. 1. 1. 24."
                }
              },
              {
                "box": {
                  "id": "ch-rate-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    535,
                    205,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "ch-rate-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    535,
                    240,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "ch-gate-clip",
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
                  "id": "ch-gate-map",
                  "maxclass": "newobj",
                  "patching_rect": [
                    625,
                    170,
                    160,
                    22
                  ],
                  "text": "scale 0. 1. 0.92 0.08"
                }
              },
              {
                "box": {
                  "id": "ch-gate-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    625,
                    205,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "ch-gate-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    625,
                    240,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "ch-pitch-clip",
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
                  "id": "ch-pitch-tone",
                  "maxclass": "newobj",
                  "patching_rect": [
                    715,
                    170,
                    170,
                    22
                  ],
                  "text": "scale 0. 1. 60. 1800."
                }
              },
              {
                "box": {
                  "id": "ch-pitch-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    715,
                    205,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "ch-pitch-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    715,
                    240,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "ch-wet-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    805,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "ch-wet-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    805,
                    170,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "ch-wet-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    805,
                    205,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "ch-reverse-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    895,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0 1"
                }
              },
              {
                "box": {
                  "id": "ch-reverse-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    895,
                    205,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "ch-reverse-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    895,
                    240,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "ch-texture-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    985,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "ch-texture-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    985,
                    205,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "ch-texture-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    985,
                    240,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "ch-test-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    285,
                    285,
                    80,
                    22
                  ],
                  "text": "cycle~ 210"
                }
              },
              {
                "box": {
                  "id": "ch-test-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    385,
                    285,
                    80,
                    22
                  ],
                  "text": "cycle~ 315"
                }
              },
              {
                "box": {
                  "id": "ch-test-l-gate",
                  "maxclass": "newobj",
                  "patching_rect": [
                    285,
                    335,
                    55,
                    22
                  ],
                  "text": "*~ 0."
                }
              },
              {
                "box": {
                  "id": "ch-test-r-gate",
                  "maxclass": "newobj",
                  "patching_rect": [
                    385,
                    335,
                    55,
                    22
                  ],
                  "text": "*~ 0."
                }
              },
              {
                "box": {
                  "id": "ch-source-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    395,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "ch-source-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    115,
                    395,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "ch-recorder",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    465,
                    185,
                    22
                  ],
                  "text": "record~ #0_chop_buffer 2"
                }
              },
              {
                "box": {
                  "id": "ch-rec-loop",
                  "maxclass": "newobj",
                  "patching_rect": [
                    245,
                    465,
                    110,
                    22
                  ],
                  "text": "loadmess loop 1"
                }
              },
              {
                "box": {
                  "id": "ch-hold-speed",
                  "maxclass": "newobj",
                  "patching_rect": [
                    245,
                    555,
                    65,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "ch-groove",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    555,
                    235,
                    22
                  ],
                  "text": "groove~ #0_chop_buffer 2 @loop 1"
                }
              },
              {
                "box": {
                  "id": "ch-one-freeze",
                  "maxclass": "newobj",
                  "patching_rect": [
                    365,
                    395,
                    65,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "ch-live-amount",
                  "maxclass": "newobj",
                  "patching_rect": [
                    365,
                    435,
                    35,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "ch-live-src-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    620,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-hold-src-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    95,
                    620,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-proc-src-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    65,
                    670,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "ch-live-src-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    155,
                    620,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-hold-src-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    215,
                    620,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-proc-src-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    185,
                    670,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "ch-phasor",
                  "maxclass": "newobj",
                  "patching_rect": [
                    535,
                    330,
                    80,
                    22
                  ],
                  "text": "phasor~ 2."
                }
              },
              {
                "box": {
                  "id": "ch-gate-compare",
                  "maxclass": "newobj",
                  "patching_rect": [
                    535,
                    385,
                    70,
                    22
                  ],
                  "text": ">=~ 0.5"
                }
              },
              {
                "box": {
                  "id": "ch-gate-smooth",
                  "maxclass": "newobj",
                  "patching_rect": [
                    535,
                    435,
                    95,
                    22
                  ],
                  "text": "slide~ 16 64"
                }
              },
              {
                "box": {
                  "id": "ch-one-flip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    535,
                    485,
                    65,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "ch-flip-inv",
                  "maxclass": "newobj",
                  "patching_rect": [
                    535,
                    530,
                    35,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "ch-one-gate",
                  "maxclass": "newobj",
                  "patching_rect": [
                    625,
                    485,
                    65,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "ch-gate-inv",
                  "maxclass": "newobj",
                  "patching_rect": [
                    625,
                    530,
                    35,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "ch-gate-normal",
                  "maxclass": "newobj",
                  "patching_rect": [
                    535,
                    580,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-gate-flipped",
                  "maxclass": "newobj",
                  "patching_rect": [
                    625,
                    580,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-gate-flip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    580,
                    630,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "ch-chop-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    65,
                    730,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-chop-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    185,
                    730,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-tone-osc",
                  "maxclass": "newobj",
                  "patching_rect": [
                    715,
                    295,
                    85,
                    22
                  ],
                  "text": "cycle~ 440"
                }
              },
              {
                "box": {
                  "id": "ch-tone-half",
                  "maxclass": "newobj",
                  "patching_rect": [
                    715,
                    340,
                    65,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "ch-tone-uni",
                  "maxclass": "newobj",
                  "patching_rect": [
                    715,
                    385,
                    65,
                    22
                  ],
                  "text": "+~ 0.5"
                }
              },
              {
                "box": {
                  "id": "ch-one-texture",
                  "maxclass": "newobj",
                  "patching_rect": [
                    985,
                    285,
                    65,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "ch-clean-amount",
                  "maxclass": "newobj",
                  "patching_rect": [
                    985,
                    330,
                    35,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "ch-clean-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    795,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-chip-pre-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    95,
                    795,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-chip-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    95,
                    845,
                    110,
                    22
                  ],
                  "text": "degrade~ 1. 12"
                }
              },
              {
                "box": {
                  "id": "ch-chip-level-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    95,
                    895,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-wet-sum-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    65,
                    945,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "ch-clean-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    215,
                    795,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-chip-pre-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    275,
                    795,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-chip-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    275,
                    845,
                    110,
                    22
                  ],
                  "text": "degrade~ 1. 12"
                }
              },
              {
                "box": {
                  "id": "ch-chip-level-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    275,
                    895,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-wet-sum-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    245,
                    945,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "ch-eff-wet",
                  "maxclass": "newobj",
                  "patching_rect": [
                    805,
                    250,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-one-wet",
                  "maxclass": "newobj",
                  "patching_rect": [
                    865,
                    295,
                    60,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "ch-dry-amount",
                  "maxclass": "newobj",
                  "patching_rect": [
                    865,
                    340,
                    35,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "ch-dry-mix-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    1010,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-wet-mix-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    95,
                    1010,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-outmix-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    65,
                    1065,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "ch-dry-mix-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    175,
                    1010,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-wet-mix-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    235,
                    1010,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "ch-outmix-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    205,
                    1065,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "ch-out-l",
                  "maxclass": "outlet",
                  "patching_rect": [
                    65,
                    1130,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "ch-out-r",
                  "maxclass": "outlet",
                  "patching_rect": [
                    205,
                    1130,
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
                    "ch-enable",
                    0
                  ],
                  "destination": [
                    "ch-enable-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-enable-clip",
                    0
                  ],
                  "destination": [
                    "ch-enable-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-enable-msg",
                    0
                  ],
                  "destination": [
                    "ch-enable-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-test",
                    0
                  ],
                  "destination": [
                    "ch-test-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-test-clip",
                    0
                  ],
                  "destination": [
                    "ch-test-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-test-msg",
                    0
                  ],
                  "destination": [
                    "ch-test-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-freeze",
                    0
                  ],
                  "destination": [
                    "ch-freeze-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-freeze-ext",
                    0
                  ],
                  "destination": [
                    "ch-freeze-ext-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-freeze-clip",
                    0
                  ],
                  "destination": [
                    "ch-freeze-sum",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-freeze-ext-clip",
                    0
                  ],
                  "destination": [
                    "ch-freeze-sum",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-freeze-sum",
                    0
                  ],
                  "destination": [
                    "ch-freeze-limit",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-freeze-limit",
                    0
                  ],
                  "destination": [
                    "ch-record-permit",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-enable-clip",
                    0
                  ],
                  "destination": [
                    "ch-record-state",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-record-permit",
                    0
                  ],
                  "destination": [
                    "ch-record-state",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-freeze-limit",
                    0
                  ],
                  "destination": [
                    "ch-freeze-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-freeze-msg",
                    0
                  ],
                  "destination": [
                    "ch-freeze-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-rate",
                    0
                  ],
                  "destination": [
                    "ch-rate-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-rate-clip",
                    0
                  ],
                  "destination": [
                    "ch-rate-map",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-rate-map",
                    0
                  ],
                  "destination": [
                    "ch-rate-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-rate-msg",
                    0
                  ],
                  "destination": [
                    "ch-rate-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-rate-line",
                    0
                  ],
                  "destination": [
                    "ch-phasor",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-gate",
                    0
                  ],
                  "destination": [
                    "ch-gate-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-gate-clip",
                    0
                  ],
                  "destination": [
                    "ch-gate-map",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-gate-map",
                    0
                  ],
                  "destination": [
                    "ch-gate-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-gate-msg",
                    0
                  ],
                  "destination": [
                    "ch-gate-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-pitch",
                    0
                  ],
                  "destination": [
                    "ch-pitch-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-pitch-clip",
                    0
                  ],
                  "destination": [
                    "ch-pitch-tone",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-pitch-tone",
                    0
                  ],
                  "destination": [
                    "ch-pitch-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-pitch-msg",
                    0
                  ],
                  "destination": [
                    "ch-pitch-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-wet",
                    0
                  ],
                  "destination": [
                    "ch-wet-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-wet-clip",
                    0
                  ],
                  "destination": [
                    "ch-wet-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-wet-msg",
                    0
                  ],
                  "destination": [
                    "ch-wet-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-reverse",
                    0
                  ],
                  "destination": [
                    "ch-reverse-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-reverse-clip",
                    0
                  ],
                  "destination": [
                    "ch-reverse-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-reverse-msg",
                    0
                  ],
                  "destination": [
                    "ch-reverse-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-texture",
                    0
                  ],
                  "destination": [
                    "ch-texture-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-texture-clip",
                    0
                  ],
                  "destination": [
                    "ch-texture-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-texture-msg",
                    0
                  ],
                  "destination": [
                    "ch-texture-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-test-l",
                    0
                  ],
                  "destination": [
                    "ch-test-l-gate",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-test-r",
                    0
                  ],
                  "destination": [
                    "ch-test-r-gate",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-test-line",
                    0
                  ],
                  "destination": [
                    "ch-test-l-gate",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-test-line",
                    0
                  ],
                  "destination": [
                    "ch-test-r-gate",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-in-l",
                    0
                  ],
                  "destination": [
                    "ch-source-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-test-l-gate",
                    0
                  ],
                  "destination": [
                    "ch-source-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-in-r",
                    0
                  ],
                  "destination": [
                    "ch-source-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-test-r-gate",
                    0
                  ],
                  "destination": [
                    "ch-source-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-source-l",
                    0
                  ],
                  "destination": [
                    "ch-recorder",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-source-r",
                    0
                  ],
                  "destination": [
                    "ch-recorder",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-record-state",
                    0
                  ],
                  "destination": [
                    "ch-recorder",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-rec-loop",
                    0
                  ],
                  "destination": [
                    "ch-recorder",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-hold-speed",
                    0
                  ],
                  "destination": [
                    "ch-groove",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-one-freeze",
                    0
                  ],
                  "destination": [
                    "ch-live-amount",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-freeze-line",
                    0
                  ],
                  "destination": [
                    "ch-live-amount",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-source-l",
                    0
                  ],
                  "destination": [
                    "ch-live-src-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-live-amount",
                    0
                  ],
                  "destination": [
                    "ch-live-src-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-groove",
                    0
                  ],
                  "destination": [
                    "ch-hold-src-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-freeze-line",
                    0
                  ],
                  "destination": [
                    "ch-hold-src-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-live-src-l",
                    0
                  ],
                  "destination": [
                    "ch-proc-src-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-hold-src-l",
                    0
                  ],
                  "destination": [
                    "ch-proc-src-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-source-r",
                    0
                  ],
                  "destination": [
                    "ch-live-src-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-live-amount",
                    0
                  ],
                  "destination": [
                    "ch-live-src-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-groove",
                    1
                  ],
                  "destination": [
                    "ch-hold-src-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-freeze-line",
                    0
                  ],
                  "destination": [
                    "ch-hold-src-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-live-src-r",
                    0
                  ],
                  "destination": [
                    "ch-proc-src-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-hold-src-r",
                    0
                  ],
                  "destination": [
                    "ch-proc-src-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-phasor",
                    0
                  ],
                  "destination": [
                    "ch-gate-compare",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-gate-line",
                    0
                  ],
                  "destination": [
                    "ch-gate-compare",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-gate-compare",
                    0
                  ],
                  "destination": [
                    "ch-gate-smooth",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-one-flip",
                    0
                  ],
                  "destination": [
                    "ch-flip-inv",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-reverse-line",
                    0
                  ],
                  "destination": [
                    "ch-flip-inv",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-gate-smooth",
                    0
                  ],
                  "destination": [
                    "ch-gate-normal",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-flip-inv",
                    0
                  ],
                  "destination": [
                    "ch-gate-normal",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-one-gate",
                    0
                  ],
                  "destination": [
                    "ch-gate-inv",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-gate-smooth",
                    0
                  ],
                  "destination": [
                    "ch-gate-inv",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-gate-inv",
                    0
                  ],
                  "destination": [
                    "ch-gate-flipped",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-reverse-line",
                    0
                  ],
                  "destination": [
                    "ch-gate-flipped",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-gate-normal",
                    0
                  ],
                  "destination": [
                    "ch-gate-flip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-gate-flipped",
                    0
                  ],
                  "destination": [
                    "ch-gate-flip",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-proc-src-l",
                    0
                  ],
                  "destination": [
                    "ch-chop-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-gate-flip",
                    0
                  ],
                  "destination": [
                    "ch-chop-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-proc-src-r",
                    0
                  ],
                  "destination": [
                    "ch-chop-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-gate-flip",
                    0
                  ],
                  "destination": [
                    "ch-chop-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-pitch-line",
                    0
                  ],
                  "destination": [
                    "ch-tone-osc",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-tone-osc",
                    0
                  ],
                  "destination": [
                    "ch-tone-half",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-tone-half",
                    0
                  ],
                  "destination": [
                    "ch-tone-uni",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-one-texture",
                    0
                  ],
                  "destination": [
                    "ch-clean-amount",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-texture-line",
                    0
                  ],
                  "destination": [
                    "ch-clean-amount",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-chop-l",
                    0
                  ],
                  "destination": [
                    "ch-clean-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-clean-amount",
                    0
                  ],
                  "destination": [
                    "ch-clean-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-chop-l",
                    0
                  ],
                  "destination": [
                    "ch-chip-pre-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-tone-uni",
                    0
                  ],
                  "destination": [
                    "ch-chip-pre-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-chip-pre-l",
                    0
                  ],
                  "destination": [
                    "ch-chip-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-chip-l",
                    0
                  ],
                  "destination": [
                    "ch-chip-level-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-texture-line",
                    0
                  ],
                  "destination": [
                    "ch-chip-level-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-clean-l",
                    0
                  ],
                  "destination": [
                    "ch-wet-sum-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-chip-level-l",
                    0
                  ],
                  "destination": [
                    "ch-wet-sum-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-chop-r",
                    0
                  ],
                  "destination": [
                    "ch-clean-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-clean-amount",
                    0
                  ],
                  "destination": [
                    "ch-clean-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-chop-r",
                    0
                  ],
                  "destination": [
                    "ch-chip-pre-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-tone-uni",
                    0
                  ],
                  "destination": [
                    "ch-chip-pre-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-chip-pre-r",
                    0
                  ],
                  "destination": [
                    "ch-chip-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-chip-r",
                    0
                  ],
                  "destination": [
                    "ch-chip-level-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-texture-line",
                    0
                  ],
                  "destination": [
                    "ch-chip-level-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-clean-r",
                    0
                  ],
                  "destination": [
                    "ch-wet-sum-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-chip-level-r",
                    0
                  ],
                  "destination": [
                    "ch-wet-sum-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-wet-line",
                    0
                  ],
                  "destination": [
                    "ch-eff-wet",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-enable-line",
                    0
                  ],
                  "destination": [
                    "ch-eff-wet",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-one-wet",
                    0
                  ],
                  "destination": [
                    "ch-dry-amount",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-eff-wet",
                    0
                  ],
                  "destination": [
                    "ch-dry-amount",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-source-l",
                    0
                  ],
                  "destination": [
                    "ch-dry-mix-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-dry-amount",
                    0
                  ],
                  "destination": [
                    "ch-dry-mix-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-wet-sum-l",
                    0
                  ],
                  "destination": [
                    "ch-wet-mix-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-eff-wet",
                    0
                  ],
                  "destination": [
                    "ch-wet-mix-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-dry-mix-l",
                    0
                  ],
                  "destination": [
                    "ch-outmix-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-wet-mix-l",
                    0
                  ],
                  "destination": [
                    "ch-outmix-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-source-r",
                    0
                  ],
                  "destination": [
                    "ch-dry-mix-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-dry-amount",
                    0
                  ],
                  "destination": [
                    "ch-dry-mix-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-wet-sum-r",
                    0
                  ],
                  "destination": [
                    "ch-wet-mix-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-eff-wet",
                    0
                  ],
                  "destination": [
                    "ch-wet-mix-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-dry-mix-r",
                    0
                  ],
                  "destination": [
                    "ch-outmix-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-wet-mix-r",
                    0
                  ],
                  "destination": [
                    "ch-outmix-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-outmix-l",
                    0
                  ],
                  "destination": [
                    "ch-out-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "ch-outmix-r",
                    0
                  ],
                  "destination": [
                    "ch-out-r",
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
          "id": "chm-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            1020,
            120,
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
              "parameter_shortname": "Vocal Chop Out",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            930,
            64,
            54,
            132
          ]
        }
      },
      {
        "box": {
          "id": "chm-dac",
          "maxclass": "ezdac~",
          "patching_rect": [
            1115,
            330,
            45,
            45
          ]
        }
      },
      {
        "box": {
          "id": "chm-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            1180,
            295,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "chm-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            1230,
            295,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "chm-out-label",
          "maxclass": "comment",
          "patching_rect": [
            1160,
            335,
            170,
            22
          ],
          "text": "out 1/2: audio L/R"
        }
      },
      {
        "box": {
          "id": "chm-rate-default",
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
          "id": "chm-gate-default",
          "maxclass": "newobj",
          "patching_rect": [
            335,
            205,
            95,
            22
          ],
          "text": "loadmess 0.45"
        }
      },
      {
        "box": {
          "id": "chm-pitch-default",
          "maxclass": "newobj",
          "patching_rect": [
            425,
            205,
            95,
            22
          ],
          "text": "loadmess 0.5"
        }
      },
      {
        "box": {
          "id": "chm-wet-default",
          "maxclass": "newobj",
          "patching_rect": [
            515,
            205,
            95,
            22
          ],
          "text": "loadmess 1."
        }
      },
      {
        "box": {
          "id": "chm-texture-default",
          "maxclass": "newobj",
          "patching_rect": [
            685,
            205,
            95,
            22
          ],
          "text": "loadmess 0.55"
        }
      },
      {
        "box": {
          "id": "chm-enable-set",
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
          "id": "chm-enable-state-send",
          "maxclass": "newobj",
          "patching_rect": [
            170,
            235,
            165,
            22
          ],
          "text": "s mt_chop_enable_state"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "chm-ext-enable",
            0
          ],
          "destination": [
            "chm-enable-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-enable-set",
            0
          ],
          "destination": [
            "chm-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-ext-enable",
            0
          ],
          "destination": [
            "p-Vocal-chop-core",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-ext-capture",
            0
          ],
          "destination": [
            "chm-freeze",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-ext-rate",
            0
          ],
          "destination": [
            "chm-rate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-ext-gate",
            0
          ],
          "destination": [
            "chm-gate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-ext-pitch",
            0
          ],
          "destination": [
            "chm-pitch",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-ext-wet",
            0
          ],
          "destination": [
            "chm-wet",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-ext-reverse",
            0
          ],
          "destination": [
            "chm-reverse",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-ext-texture",
            0
          ],
          "destination": [
            "chm-texture",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-rate-default",
            0
          ],
          "destination": [
            "chm-rate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-gate-default",
            0
          ],
          "destination": [
            "chm-gate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-pitch-default",
            0
          ],
          "destination": [
            "chm-pitch",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-wet-default",
            0
          ],
          "destination": [
            "chm-wet",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-texture-default",
            0
          ],
          "destination": [
            "chm-texture",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-wave-set",
            0
          ],
          "destination": [
            "chm-wave",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-in-l",
            0
          ],
          "destination": [
            "p-Vocal-chop-core",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-in-r",
            0
          ],
          "destination": [
            "p-Vocal-chop-core",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-enable",
            0
          ],
          "destination": [
            "p-Vocal-chop-core",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-enable",
            0
          ],
          "destination": [
            "chm-enable-state-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-test",
            0
          ],
          "destination": [
            "p-Vocal-chop-core",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-freeze",
            0
          ],
          "destination": [
            "p-Vocal-chop-core",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-ext-play",
            0
          ],
          "destination": [
            "p-Vocal-chop-core",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-rate",
            0
          ],
          "destination": [
            "p-Vocal-chop-core",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-gate",
            0
          ],
          "destination": [
            "p-Vocal-chop-core",
            7
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-pitch",
            0
          ],
          "destination": [
            "p-Vocal-chop-core",
            8
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-wet",
            0
          ],
          "destination": [
            "p-Vocal-chop-core",
            9
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-reverse",
            0
          ],
          "destination": [
            "p-Vocal-chop-core",
            10
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-texture",
            0
          ],
          "destination": [
            "p-Vocal-chop-core",
            11
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Vocal-chop-core",
            0
          ],
          "destination": [
            "chm-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Vocal-chop-core",
            1
          ],
          "destination": [
            "chm-gain",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-gain",
            0
          ],
          "destination": [
            "chm-out-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-gain",
            1
          ],
          "destination": [
            "chm-out-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-gain",
            0
          ],
          "destination": [
            "chm-dac",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chm-gain",
            1
          ],
          "destination": [
            "chm-dac",
            1
          ]
        }
      }
    ]
  }
}