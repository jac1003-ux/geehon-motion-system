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
      80,
      80,
      980,
      430
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
          "id": "pf-title",
          "maxclass": "comment",
          "patching_rect": [
            24,
            20,
            520,
            24
          ],
          "text": "MT Performance Multi-Filter - morphing LP / BP / HP",
          "presentation": 1,
          "presentation_rect": [
            14,
            8,
            430,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-note",
          "maxclass": "comment",
          "patching_rect": [
            24,
            48,
            760,
            22
          ],
          "text": "Morph moves from dark low-pass through resonant band-pass to bright high-pass. Motion adds a slow frequency drift.",
          "presentation": 1,
          "presentation_rect": [
            14,
            30,
            650,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-in-l",
          "maxclass": "inlet",
          "patching_rect": [
            24,
            90,
            30,
            30
          ],
          "comment": "Audio L"
        }
      },
      {
        "box": {
          "id": "pf-in-r",
          "maxclass": "inlet",
          "patching_rect": [
            74,
            90,
            30,
            30
          ],
          "comment": "Audio R"
        }
      },
      {
        "box": {
          "id": "pf-ext-enable",
          "maxclass": "inlet",
          "patching_rect": [
            150,
            90,
            30,
            30
          ],
          "comment": "Enable 0/1"
        }
      },
      {
        "box": {
          "id": "pf-ext-morph",
          "maxclass": "inlet",
          "patching_rect": [
            220,
            90,
            30,
            30
          ],
          "comment": "Morph 0-1"
        }
      },
      {
        "box": {
          "id": "pf-ext-res",
          "maxclass": "inlet",
          "patching_rect": [
            290,
            90,
            30,
            30
          ],
          "comment": "Resonance 0-1"
        }
      },
      {
        "box": {
          "id": "pf-ext-motion",
          "maxclass": "inlet",
          "patching_rect": [
            360,
            90,
            30,
            30
          ],
          "comment": "Motion 0-1"
        }
      },
      {
        "box": {
          "id": "pf-ext-drive",
          "maxclass": "inlet",
          "patching_rect": [
            430,
            90,
            30,
            30
          ],
          "comment": "Drive 0-1"
        }
      },
      {
        "box": {
          "id": "pf-enable",
          "maxclass": "toggle",
          "patching_rect": [
            24,
            145,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            18,
            62,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "pf-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            55,
            147,
            70,
            22
          ],
          "text": "Enable",
          "presentation": 1,
          "presentation_rect": [
            48,
            64,
            65,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-test",
          "maxclass": "toggle",
          "patching_rect": [
            24,
            195,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            18,
            106,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "pf-test-label",
          "maxclass": "comment",
          "patching_rect": [
            55,
            197,
            85,
            22
          ],
          "text": "Test Input",
          "presentation": 1,
          "presentation_rect": [
            48,
            108,
            82,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-morph",
          "maxclass": "flonum",
          "patching_rect": [
            180,
            145,
            64,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            150,
            82,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-morph-label",
          "maxclass": "comment",
          "patching_rect": [
            180,
            120,
            105,
            22
          ],
          "text": "Morph 0-1",
          "presentation": 1,
          "presentation_rect": [
            150,
            58,
            90,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-res",
          "maxclass": "flonum",
          "patching_rect": [
            300,
            145,
            64,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            270,
            82,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-res-label",
          "maxclass": "comment",
          "patching_rect": [
            300,
            120,
            110,
            22
          ],
          "text": "Resonance 0-1",
          "presentation": 1,
          "presentation_rect": [
            270,
            58,
            110,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-motion",
          "maxclass": "flonum",
          "patching_rect": [
            430,
            145,
            64,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            405,
            82,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-motion-label",
          "maxclass": "comment",
          "patching_rect": [
            430,
            120,
            105,
            22
          ],
          "text": "Motion 0-1",
          "presentation": 1,
          "presentation_rect": [
            405,
            58,
            90,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-drive",
          "maxclass": "flonum",
          "patching_rect": [
            550,
            145,
            64,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            520,
            82,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-drive-label",
          "maxclass": "comment",
          "patching_rect": [
            550,
            120,
            90,
            22
          ],
          "text": "Drive 0-1",
          "presentation": 1,
          "presentation_rect": [
            520,
            58,
            82,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-morph-hint",
          "maxclass": "comment",
          "patching_rect": [
            180,
            195,
            430,
            22
          ],
          "text": "LP  ←  MORPH  →  BP  →  HP",
          "presentation": 1,
          "presentation_rect": [
            150,
            118,
            430,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-enable-trigger",
          "maxclass": "newobj",
          "patching_rect": [
            150,
            145,
            45,
            22
          ],
          "text": "t i i i"
        }
      },
      {
        "box": {
          "id": "pf-enable-set",
          "maxclass": "message",
          "patching_rect": [
            150,
            180,
            50,
            22
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "pf-enable-state",
          "maxclass": "newobj",
          "patching_rect": [
            150,
            215,
            210,
            22
          ],
          "text": "s mt_performance_filter_enable_state"
        }
      },
      {
        "box": {
          "id": "pf-core",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            280,
            190,
            22
          ],
          "text": "p Performance_filter_core",
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
              80,
              80,
              1120,
              760
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
                  "id": "pf-core-title",
                  "maxclass": "comment",
                  "patching_rect": [
                    30,
                    20,
                    780,
                    22
                  ],
                  "text": "Performance filter core: driven input -> morphing LP/BP/HP -> clickless bypass"
                }
              },
              {
                "box": {
                  "id": "pf-core-audio",
                  "maxclass": "comment",
                  "patching_rect": [
                    30,
                    55,
                    250,
                    22
                  ],
                  "text": "AUDIO INPUT + TEST"
                }
              },
              {
                "box": {
                  "id": "pf-core-control",
                  "maxclass": "comment",
                  "patching_rect": [
                    300,
                    55,
                    520,
                    22
                  ],
                  "text": "CONTROL: MORPH / RESONANCE / MOTION / DRIVE"
                }
              },
              {
                "box": {
                  "id": "pf-c-in-l",
                  "maxclass": "inlet",
                  "patching_rect": [
                    30,
                    95,
                    30,
                    30
                  ],
                  "comment": "Audio L"
                }
              },
              {
                "box": {
                  "id": "pf-c-in-r",
                  "maxclass": "inlet",
                  "patching_rect": [
                    95,
                    95,
                    30,
                    30
                  ],
                  "comment": "Audio R"
                }
              },
              {
                "box": {
                  "id": "pf-c-enable",
                  "maxclass": "inlet",
                  "patching_rect": [
                    180,
                    95,
                    30,
                    30
                  ],
                  "comment": "Enable 0/1"
                }
              },
              {
                "box": {
                  "id": "pf-c-test",
                  "maxclass": "inlet",
                  "patching_rect": [
                    255,
                    95,
                    30,
                    30
                  ],
                  "comment": "Test Input 0/1"
                }
              },
              {
                "box": {
                  "id": "pf-c-morph",
                  "maxclass": "inlet",
                  "patching_rect": [
                    350,
                    95,
                    30,
                    30
                  ],
                  "comment": "Morph 0-1"
                }
              },
              {
                "box": {
                  "id": "pf-c-res",
                  "maxclass": "inlet",
                  "patching_rect": [
                    465,
                    95,
                    30,
                    30
                  ],
                  "comment": "Resonance 0-1"
                }
              },
              {
                "box": {
                  "id": "pf-c-motion",
                  "maxclass": "inlet",
                  "patching_rect": [
                    580,
                    95,
                    30,
                    30
                  ],
                  "comment": "Motion 0-1"
                }
              },
              {
                "box": {
                  "id": "pf-c-drive",
                  "maxclass": "inlet",
                  "patching_rect": [
                    695,
                    95,
                    30,
                    30
                  ],
                  "comment": "Drive 0-1"
                }
              },
              {
                "box": {
                  "id": "pf-test-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    255,
                    145,
                    75,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "pf-test-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    255,
                    180,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "pf-test-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    255,
                    215,
                    45,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "pf-test-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    155,
                    75,
                    22
                  ],
                  "text": "cycle~ 110"
                }
              },
              {
                "box": {
                  "id": "pf-test-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    120,
                    155,
                    75,
                    22
                  ],
                  "text": "cycle~ 165"
                }
              },
              {
                "box": {
                  "id": "pf-test-level-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    195,
                    58,
                    22
                  ],
                  "text": "*~ 0.12"
                }
              },
              {
                "box": {
                  "id": "pf-test-level-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    120,
                    195,
                    58,
                    22
                  ],
                  "text": "*~ 0.12"
                }
              },
              {
                "box": {
                  "id": "pf-test-gate-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    235,
                    50,
                    22
                  ],
                  "text": "*~ 0."
                }
              },
              {
                "box": {
                  "id": "pf-test-gate-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    120,
                    235,
                    50,
                    22
                  ],
                  "text": "*~ 0."
                }
              },
              {
                "box": {
                  "id": "pf-dry-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    285,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "pf-dry-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    120,
                    285,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "pf-enable-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    180,
                    145,
                    75,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "pf-enable-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    180,
                    180,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "pf-enable-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    180,
                    215,
                    45,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "pf-one",
                  "maxclass": "newobj",
                  "patching_rect": [
                    180,
                    255,
                    50,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "pf-enable-invert",
                  "maxclass": "newobj",
                  "patching_rect": [
                    180,
                    285,
                    35,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "pf-morph-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    350,
                    145,
                    75,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "pf-morph-trigger",
                  "maxclass": "newobj",
                  "patching_rect": [
                    350,
                    180,
                    78,
                    22
                  ],
                  "text": "t f f f f"
                }
              },
              {
                "box": {
                  "id": "pf-low-weight",
                  "maxclass": "newobj",
                  "patching_rect": [
                    300,
                    225,
                    180,
                    22
                  ],
                  "text": "expr max(0., 1. - (2. * $f1))"
                }
              },
              {
                "box": {
                  "id": "pf-band-weight",
                  "maxclass": "newobj",
                  "patching_rect": [
                    490,
                    225,
                    190,
                    22
                  ],
                  "text": "expr 1. - abs((2. * $f1) - 1.)"
                }
              },
              {
                "box": {
                  "id": "pf-high-weight",
                  "maxclass": "newobj",
                  "patching_rect": [
                    690,
                    225,
                    180,
                    22
                  ],
                  "text": "expr max(0., (2. * $f1) - 1.)"
                }
              },
              {
                "box": {
                  "id": "pf-base-freq",
                  "maxclass": "newobj",
                  "patching_rect": [
                    880,
                    225,
                    205,
                    22
                  ],
                  "text": "expr 300. * pow(8.333333, $f1)"
                }
              },
              {
                "box": {
                  "id": "pf-low-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    330,
                    265,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "pf-band-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    520,
                    265,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "pf-high-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    720,
                    265,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "pf-freq-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    920,
                    265,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "pf-low-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    330,
                    300,
                    45,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "pf-band-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    520,
                    300,
                    45,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "pf-high-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    720,
                    300,
                    45,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "pf-freq-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    920,
                    300,
                    45,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "pf-res-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    465,
                    145,
                    75,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "pf-res-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    465,
                    180,
                    145,
                    22
                  ],
                  "text": "scale 0. 1. 0.08 0.85"
                }
              },
              {
                "box": {
                  "id": "pf-res-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    620,
                    180,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "pf-res-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    680,
                    180,
                    45,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "pf-motion-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    580,
                    145,
                    75,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "pf-motion-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    735,
                    145,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "pf-motion-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    795,
                    145,
                    45,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "pf-motion-lfo",
                  "maxclass": "newobj",
                  "patching_rect": [
                    850,
                    145,
                    78,
                    22
                  ],
                  "text": "cycle~ 0.18"
                }
              },
              {
                "box": {
                  "id": "pf-motion-depth",
                  "maxclass": "newobj",
                  "patching_rect": [
                    850,
                    180,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "pf-motion-range",
                  "maxclass": "newobj",
                  "patching_rect": [
                    895,
                    180,
                    62,
                    22
                  ],
                  "text": "*~ 0.35"
                }
              },
              {
                "box": {
                  "id": "pf-motion-offset",
                  "maxclass": "newobj",
                  "patching_rect": [
                    970,
                    180,
                    50,
                    22
                  ],
                  "text": "+~ 1."
                }
              },
              {
                "box": {
                  "id": "pf-frequency-signal",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1000,
                    320,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "pf-drive-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    695,
                    95,
                    75,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "pf-drive-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    785,
                    95,
                    125,
                    22
                  ],
                  "text": "scale 0. 1. 1. 5."
                }
              },
              {
                "box": {
                  "id": "pf-drive-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    925,
                    95,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "pf-drive-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    990,
                    95,
                    45,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "pf-core-filter-label",
                  "maxclass": "comment",
                  "patching_rect": [
                    30,
                    340,
                    600,
                    22
                  ],
                  "text": "STEREO MULTIMODE FILTER: LP / BP / HP MORPH"
                }
              },
              {
                "box": {
                  "id": "pf-drive-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    380,
                    85,
                    22
                  ],
                  "text": "overdrive~ 1."
                }
              },
              {
                "box": {
                  "id": "pf-drive-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    120,
                    380,
                    85,
                    22
                  ],
                  "text": "overdrive~ 1."
                }
              },
              {
                "box": {
                  "id": "pf-svf-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    430,
                    95,
                    22
                  ],
                  "text": "svf~ 900 0.2"
                }
              },
              {
                "box": {
                  "id": "pf-svf-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    120,
                    430,
                    95,
                    22
                  ],
                  "text": "svf~ 900 0.2"
                }
              },
              {
                "box": {
                  "id": "pf-l-low",
                  "maxclass": "newobj",
                  "patching_rect": [
                    280,
                    430,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "pf-l-band",
                  "maxclass": "newobj",
                  "patching_rect": [
                    360,
                    430,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "pf-l-high",
                  "maxclass": "newobj",
                  "patching_rect": [
                    440,
                    430,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "pf-r-low",
                  "maxclass": "newobj",
                  "patching_rect": [
                    280,
                    500,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "pf-r-band",
                  "maxclass": "newobj",
                  "patching_rect": [
                    360,
                    500,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "pf-r-high",
                  "maxclass": "newobj",
                  "patching_rect": [
                    440,
                    500,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "pf-l-sum-1",
                  "maxclass": "newobj",
                  "patching_rect": [
                    520,
                    430,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "pf-l-sum-2",
                  "maxclass": "newobj",
                  "patching_rect": [
                    575,
                    430,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "pf-r-sum-1",
                  "maxclass": "newobj",
                  "patching_rect": [
                    520,
                    500,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "pf-r-sum-2",
                  "maxclass": "newobj",
                  "patching_rect": [
                    575,
                    500,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "pf-wet-safe-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    640,
                    430,
                    48,
                    22
                  ],
                  "text": "tanh~"
                }
              },
              {
                "box": {
                  "id": "pf-wet-safe-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    640,
                    500,
                    48,
                    22
                  ],
                  "text": "tanh~"
                }
              },
              {
                "box": {
                  "id": "pf-core-bypass-label",
                  "maxclass": "comment",
                  "patching_rect": [
                    30,
                    570,
                    600,
                    22
                  ],
                  "text": "CLICKLESS DRY / WET ENABLE CROSSFADE"
                }
              },
              {
                "box": {
                  "id": "pf-wet-gate-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    640,
                    610,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "pf-wet-gate-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    700,
                    610,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "pf-dry-gate-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    610,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "pf-dry-gate-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    120,
                    610,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "pf-out-sum-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    780,
                    610,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "pf-out-sum-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    840,
                    610,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "pf-c-out-l",
                  "maxclass": "outlet",
                  "patching_rect": [
                    780,
                    670,
                    30,
                    30
                  ],
                  "comment": "Audio L"
                }
              },
              {
                "box": {
                  "id": "pf-c-out-r",
                  "maxclass": "outlet",
                  "patching_rect": [
                    840,
                    670,
                    30,
                    30
                  ],
                  "comment": "Audio R"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "pf-c-test",
                    0
                  ],
                  "destination": [
                    "pf-test-clip",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-test-clip",
                    0
                  ],
                  "destination": [
                    "pf-test-msg",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-test-msg",
                    0
                  ],
                  "destination": [
                    "pf-test-line",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-test-l",
                    0
                  ],
                  "destination": [
                    "pf-test-level-l",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-test-r",
                    0
                  ],
                  "destination": [
                    "pf-test-level-r",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-test-level-l",
                    0
                  ],
                  "destination": [
                    "pf-test-gate-l",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-test-level-r",
                    0
                  ],
                  "destination": [
                    "pf-test-gate-r",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-test-line",
                    0
                  ],
                  "destination": [
                    "pf-test-gate-l",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-test-line",
                    0
                  ],
                  "destination": [
                    "pf-test-gate-r",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-c-in-l",
                    0
                  ],
                  "destination": [
                    "pf-dry-l",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-test-gate-l",
                    0
                  ],
                  "destination": [
                    "pf-dry-l",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-c-in-r",
                    0
                  ],
                  "destination": [
                    "pf-dry-r",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-test-gate-r",
                    0
                  ],
                  "destination": [
                    "pf-dry-r",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-c-enable",
                    0
                  ],
                  "destination": [
                    "pf-enable-clip",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-enable-clip",
                    0
                  ],
                  "destination": [
                    "pf-enable-msg",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-enable-msg",
                    0
                  ],
                  "destination": [
                    "pf-enable-line",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-one",
                    0
                  ],
                  "destination": [
                    "pf-enable-invert",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-enable-line",
                    0
                  ],
                  "destination": [
                    "pf-enable-invert",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-c-morph",
                    0
                  ],
                  "destination": [
                    "pf-morph-clip",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-morph-clip",
                    0
                  ],
                  "destination": [
                    "pf-morph-trigger",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-morph-trigger",
                    3
                  ],
                  "destination": [
                    "pf-low-weight",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-morph-trigger",
                    2
                  ],
                  "destination": [
                    "pf-band-weight",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-morph-trigger",
                    1
                  ],
                  "destination": [
                    "pf-high-weight",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-morph-trigger",
                    0
                  ],
                  "destination": [
                    "pf-base-freq",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-low-weight",
                    0
                  ],
                  "destination": [
                    "pf-low-msg",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-low-msg",
                    0
                  ],
                  "destination": [
                    "pf-low-line",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-band-weight",
                    0
                  ],
                  "destination": [
                    "pf-band-msg",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-band-msg",
                    0
                  ],
                  "destination": [
                    "pf-band-line",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-high-weight",
                    0
                  ],
                  "destination": [
                    "pf-high-msg",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-high-msg",
                    0
                  ],
                  "destination": [
                    "pf-high-line",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-base-freq",
                    0
                  ],
                  "destination": [
                    "pf-freq-msg",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-freq-msg",
                    0
                  ],
                  "destination": [
                    "pf-freq-line",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-c-res",
                    0
                  ],
                  "destination": [
                    "pf-res-clip",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-res-clip",
                    0
                  ],
                  "destination": [
                    "pf-res-scale",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-res-scale",
                    0
                  ],
                  "destination": [
                    "pf-res-msg",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-res-msg",
                    0
                  ],
                  "destination": [
                    "pf-res-line",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-c-motion",
                    0
                  ],
                  "destination": [
                    "pf-motion-clip",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-motion-clip",
                    0
                  ],
                  "destination": [
                    "pf-motion-msg",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-motion-msg",
                    0
                  ],
                  "destination": [
                    "pf-motion-line",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-motion-lfo",
                    0
                  ],
                  "destination": [
                    "pf-motion-depth",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-motion-line",
                    0
                  ],
                  "destination": [
                    "pf-motion-depth",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-motion-depth",
                    0
                  ],
                  "destination": [
                    "pf-motion-range",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-motion-range",
                    0
                  ],
                  "destination": [
                    "pf-motion-offset",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-motion-offset",
                    0
                  ],
                  "destination": [
                    "pf-frequency-signal",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-freq-line",
                    0
                  ],
                  "destination": [
                    "pf-frequency-signal",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-c-drive",
                    0
                  ],
                  "destination": [
                    "pf-drive-clip",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-drive-clip",
                    0
                  ],
                  "destination": [
                    "pf-drive-scale",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-drive-scale",
                    0
                  ],
                  "destination": [
                    "pf-drive-msg",
                    0
                  ],
                  "color": [
                    0.95,
                    0.55,
                    0.12,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-drive-msg",
                    0
                  ],
                  "destination": [
                    "pf-drive-line",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-dry-l",
                    0
                  ],
                  "destination": [
                    "pf-drive-l",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-dry-r",
                    0
                  ],
                  "destination": [
                    "pf-drive-r",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-drive-line",
                    0
                  ],
                  "destination": [
                    "pf-drive-l",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-drive-line",
                    0
                  ],
                  "destination": [
                    "pf-drive-r",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-drive-l",
                    0
                  ],
                  "destination": [
                    "pf-svf-l",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-drive-r",
                    0
                  ],
                  "destination": [
                    "pf-svf-r",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-frequency-signal",
                    0
                  ],
                  "destination": [
                    "pf-svf-l",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-frequency-signal",
                    0
                  ],
                  "destination": [
                    "pf-svf-r",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-res-line",
                    0
                  ],
                  "destination": [
                    "pf-svf-l",
                    2
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-res-line",
                    0
                  ],
                  "destination": [
                    "pf-svf-r",
                    2
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-svf-l",
                    0
                  ],
                  "destination": [
                    "pf-l-low",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-low-line",
                    0
                  ],
                  "destination": [
                    "pf-l-low",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-svf-l",
                    2
                  ],
                  "destination": [
                    "pf-l-band",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-band-line",
                    0
                  ],
                  "destination": [
                    "pf-l-band",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-svf-l",
                    1
                  ],
                  "destination": [
                    "pf-l-high",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-high-line",
                    0
                  ],
                  "destination": [
                    "pf-l-high",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-svf-r",
                    0
                  ],
                  "destination": [
                    "pf-r-low",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-low-line",
                    0
                  ],
                  "destination": [
                    "pf-r-low",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-svf-r",
                    2
                  ],
                  "destination": [
                    "pf-r-band",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-band-line",
                    0
                  ],
                  "destination": [
                    "pf-r-band",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-svf-r",
                    1
                  ],
                  "destination": [
                    "pf-r-high",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-high-line",
                    0
                  ],
                  "destination": [
                    "pf-r-high",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-l-low",
                    0
                  ],
                  "destination": [
                    "pf-l-sum-1",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-l-band",
                    0
                  ],
                  "destination": [
                    "pf-l-sum-1",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-l-sum-1",
                    0
                  ],
                  "destination": [
                    "pf-l-sum-2",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-l-high",
                    0
                  ],
                  "destination": [
                    "pf-l-sum-2",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-r-low",
                    0
                  ],
                  "destination": [
                    "pf-r-sum-1",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-r-band",
                    0
                  ],
                  "destination": [
                    "pf-r-sum-1",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-r-sum-1",
                    0
                  ],
                  "destination": [
                    "pf-r-sum-2",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-r-high",
                    0
                  ],
                  "destination": [
                    "pf-r-sum-2",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-l-sum-2",
                    0
                  ],
                  "destination": [
                    "pf-wet-safe-l",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-r-sum-2",
                    0
                  ],
                  "destination": [
                    "pf-wet-safe-r",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-wet-safe-l",
                    0
                  ],
                  "destination": [
                    "pf-wet-gate-l",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-wet-safe-r",
                    0
                  ],
                  "destination": [
                    "pf-wet-gate-r",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-enable-line",
                    0
                  ],
                  "destination": [
                    "pf-wet-gate-l",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-enable-line",
                    0
                  ],
                  "destination": [
                    "pf-wet-gate-r",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-dry-l",
                    0
                  ],
                  "destination": [
                    "pf-dry-gate-l",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-dry-r",
                    0
                  ],
                  "destination": [
                    "pf-dry-gate-r",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-enable-invert",
                    0
                  ],
                  "destination": [
                    "pf-dry-gate-l",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-enable-invert",
                    0
                  ],
                  "destination": [
                    "pf-dry-gate-r",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-dry-gate-l",
                    0
                  ],
                  "destination": [
                    "pf-out-sum-l",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-wet-gate-l",
                    0
                  ],
                  "destination": [
                    "pf-out-sum-l",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-dry-gate-r",
                    0
                  ],
                  "destination": [
                    "pf-out-sum-r",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-wet-gate-r",
                    0
                  ],
                  "destination": [
                    "pf-out-sum-r",
                    1
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-out-sum-l",
                    0
                  ],
                  "destination": [
                    "pf-c-out-l",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pf-out-sum-r",
                    0
                  ],
                  "destination": [
                    "pf-c-out-r",
                    0
                  ],
                  "color": [
                    0.55,
                    0.78,
                    0.35,
                    1
                  ]
                }
              }
            ]
          },
          "numinlets": 8,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "pf-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            760,
            125,
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
              "parameter_shortname": "Filter Out",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            625,
            55,
            54,
            125
          ]
        }
      },
      {
        "box": {
          "id": "pf-dac",
          "maxclass": "ezdac~",
          "patching_rect": [
            840,
            245,
            45,
            45
          ],
          "presentation": 1,
          "presentation_rect": [
            686,
            135,
            45,
            45
          ]
        }
      },
      {
        "box": {
          "id": "pf-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            760,
            330,
            30,
            30
          ],
          "comment": "Processed audio L"
        }
      },
      {
        "box": {
          "id": "pf-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            820,
            330,
            30,
            30
          ],
          "comment": "Processed audio R"
        }
      },
      {
        "box": {
          "id": "pf-out-label",
          "maxclass": "comment",
          "patching_rect": [
            760,
            370,
            190,
            22
          ],
          "text": "out 1/2: audio L/R",
          "presentation": 1,
          "presentation_rect": [
            625,
            184,
            160,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pf-default-morph",
          "maxclass": "newobj",
          "patching_rect": [
            300,
            280,
            95,
            22
          ],
          "text": "loadmess 0.35"
        }
      },
      {
        "box": {
          "id": "pf-default-res",
          "maxclass": "newobj",
          "patching_rect": [
            405,
            280,
            95,
            22
          ],
          "text": "loadmess 0.35"
        }
      },
      {
        "box": {
          "id": "pf-default-motion",
          "maxclass": "newobj",
          "patching_rect": [
            510,
            280,
            95,
            22
          ],
          "text": "loadmess 0.15"
        }
      },
      {
        "box": {
          "id": "pf-default-drive",
          "maxclass": "newobj",
          "patching_rect": [
            615,
            280,
            95,
            22
          ],
          "text": "loadmess 0.15"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "pf-in-l",
            0
          ],
          "destination": [
            "pf-core",
            0
          ],
          "color": [
            0.55,
            0.78,
            0.35,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-in-r",
            0
          ],
          "destination": [
            "pf-core",
            1
          ],
          "color": [
            0.55,
            0.78,
            0.35,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-ext-enable",
            0
          ],
          "destination": [
            "pf-enable-trigger",
            0
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-enable-trigger",
            2
          ],
          "destination": [
            "pf-enable-set",
            0
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-enable-set",
            0
          ],
          "destination": [
            "pf-enable",
            0
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-enable-trigger",
            0
          ],
          "destination": [
            "pf-core",
            2
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-enable-trigger",
            1
          ],
          "destination": [
            "pf-enable-state",
            0
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-enable",
            0
          ],
          "destination": [
            "pf-enable-trigger",
            0
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-test",
            0
          ],
          "destination": [
            "pf-core",
            3
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-ext-morph",
            0
          ],
          "destination": [
            "pf-morph",
            0
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-morph",
            0
          ],
          "destination": [
            "pf-core",
            4
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-ext-res",
            0
          ],
          "destination": [
            "pf-res",
            0
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-res",
            0
          ],
          "destination": [
            "pf-core",
            5
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-ext-motion",
            0
          ],
          "destination": [
            "pf-motion",
            0
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-motion",
            0
          ],
          "destination": [
            "pf-core",
            6
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-ext-drive",
            0
          ],
          "destination": [
            "pf-drive",
            0
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-drive",
            0
          ],
          "destination": [
            "pf-core",
            7
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-default-morph",
            0
          ],
          "destination": [
            "pf-morph",
            0
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-default-res",
            0
          ],
          "destination": [
            "pf-res",
            0
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-default-motion",
            0
          ],
          "destination": [
            "pf-motion",
            0
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-default-drive",
            0
          ],
          "destination": [
            "pf-drive",
            0
          ],
          "color": [
            0.95,
            0.55,
            0.12,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-core",
            0
          ],
          "destination": [
            "pf-gain",
            0
          ],
          "color": [
            0.55,
            0.78,
            0.35,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-core",
            1
          ],
          "destination": [
            "pf-gain",
            1
          ],
          "color": [
            0.55,
            0.78,
            0.35,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-gain",
            0
          ],
          "destination": [
            "pf-out-l",
            0
          ],
          "color": [
            0.55,
            0.78,
            0.35,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-gain",
            1
          ],
          "destination": [
            "pf-out-r",
            0
          ],
          "color": [
            0.55,
            0.78,
            0.35,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-gain",
            0
          ],
          "destination": [
            "pf-dac",
            0
          ],
          "color": [
            0.55,
            0.78,
            0.35,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pf-gain",
            1
          ],
          "destination": [
            "pf-dac",
            1
          ],
          "color": [
            0.55,
            0.78,
            0.35,
            1
          ]
        }
      }
    ]
  }
}
