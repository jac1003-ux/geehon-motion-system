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
      1020,
      440
    ],
    "bglocked": 1,
    "openinpresentation": 1,
    "gridsize": [
      15,
      15
    ],
    "boxes": [
      {
        "box": {
          "id": "vm-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            20,
            420,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            12,
            8,
            360,
            20
          ],
          "text": "MT Mod Vocoder - pfft spectral voice"
        }
      },
      {
        "box": {
          "id": "vm-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            48,
            780,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            12,
            30,
            623,
            20
          ],
          "text": "pfft~ spectral envelope transfer. Input Mixer audio modulates an internal saw/noise hybrid carrier. No pitch following."
        }
      },
      {
        "box": {
          "comment": "",
          "id": "vm-in-l",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
          "comment": "",
          "id": "vm-in-r",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
          "comment": "",
          "id": "vm-ext-enable",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
          "comment": "",
          "id": "vm-ext-wet",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
          "comment": "",
          "id": "vm-ext-tone",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
          "comment": "",
          "id": "vm-ext-noise",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
          "comment": "",
          "id": "vm-ext-smooth",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
          "comment": "",
          "id": "vm-ext-bright",
          "index": 0,
          "maxclass": "inlet",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
          "id": "vm-enable",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
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
          "id": "vm-enable-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            56,
            157,
            70,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            44,
            80,
            62,
            20
          ],
          "text": "Enable"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "vm-wet",
          "maxclass": "flonum",
          "maximum": 1,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            155,
            155,
            62,
            22
          ],
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
          "id": "vm-wet-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            155,
            132,
            80,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            136,
            76,
            70,
            20
          ],
          "text": "Dry/Wet"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "vm-tone",
          "maxclass": "flonum",
          "maximum": 1,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            245,
            155,
            62,
            22
          ],
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
          "id": "vm-tone-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            245,
            132,
            100,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            220,
            76,
            96,
            20
          ],
          "text": "Carrier Tone"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "vm-noise",
          "maxclass": "flonum",
          "maximum": 1,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            355,
            155,
            62,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            324,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vm-noise-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            355,
            132,
            95,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            324,
            76,
            85,
            20
          ],
          "text": "Noise Mix"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "vm-smooth",
          "maxclass": "flonum",
          "maximum": 1,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            455,
            155,
            62,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            420,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vm-smooth-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            455,
            132,
            120,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            420,
            76,
            118,
            20
          ],
          "text": "Spectral Smooth"
        }
      },
      {
        "box": {
          "format": 6,
          "id": "vm-bright",
          "maxclass": "flonum",
          "maximum": 1,
          "minimum": 0,
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            580,
            155,
            62,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            548,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vm-bright-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            580,
            132,
            95,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            548,
            76,
            86,
            20
          ],
          "text": "Brightness"
        }
      },
      {
        "box": {
          "id": "p-Vocoder-core",
          "maxclass": "newobj",
          "numinlets": 9,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
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
              134,
              101,
              1040,
              941
            ],
            "gridsize": [
              15,
              15
            ],
            "visible": 1,
            "boxes": [
              {
                "box": {
                  "id": "vc-title",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    35,
                    25,
                    980,
                    20
                  ],
                  "text": "Vocoder_core: L/R input -> mono modulator, internal hybrid carrier -> pfft spectral transfer -> smoothed dry/wet bypass"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "vc-in-l",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
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
                  "comment": "",
                  "id": "vc-in-r",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
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
                  "comment": "",
                  "id": "vc-enable",
                  "index": 3,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    210,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "vc-test",
                  "index": 4,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
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
                  "comment": "",
                  "id": "vc-wet",
                  "index": 5,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    390,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "vc-tone",
                  "index": 6,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    485,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "vc-noise",
                  "index": 7,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    580,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "vc-smooth",
                  "index": 8,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    675,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "vc-bright",
                  "index": 9,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "vc-enable-clip",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    210,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "vc-enable-msg",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    210,
                    170,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "vc-enable-line",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    210,
                    205,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "vc-wet-clip",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    390,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "vc-wet-msg",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    390,
                    170,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "vc-wet-line",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    390,
                    205,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "vc-tone-clip",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    485,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "vc-tone-map",
                  "maxclass": "newobj",
                  "numinlets": 6,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    485,
                    170,
                    150,
                    22
                  ],
                  "text": "scale 0. 1. 70. 360."
                }
              },
              {
                "box": {
                  "id": "vc-tone-msg",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    485,
                    205,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "vc-tone-line",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    485,
                    240,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "vc-noise-clip",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    580,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "vc-noise-msg",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    580,
                    170,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "vc-noise-line",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    580,
                    205,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "vc-smooth-clip",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    675,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "vc-smooth-map",
                  "maxclass": "newobj",
                  "numinlets": 6,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    675,
                    170,
                    145,
                    22
                  ],
                  "text": "scale 0. 1. 1. 80."
                }
              },
              {
                "box": {
                  "id": "vc-smooth-int",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    675,
                    205,
                    35,
                    22
                  ],
                  "text": "i"
                }
              },
              {
                "box": {
                  "id": "vc-smooth-msg",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    675,
                    240,
                    90,
                    22
                  ],
                  "text": "slide $1 $1"
                }
              },
              {
                "box": {
                  "id": "vc-smooth-send",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    675,
                    275,
                    150,
                    22
                  ],
                  "text": "s #0_vocoder_smooth"
                }
              },
              {
                "box": {
                  "id": "vc-bright-clip",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790,
                    135,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "vc-bright-map",
                  "maxclass": "newobj",
                  "numinlets": 6,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790,
                    170,
                    160,
                    22
                  ],
                  "text": "scale 0. 1. 500. 9500."
                }
              },
              {
                "box": {
                  "id": "vc-bright-msg",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    790,
                    205,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "vc-bright-line",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "bang"
                  ],
                  "patching_rect": [
                    790,
                    240,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "vc-input-sum",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    35,
                    165,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "vc-input-mono",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    35,
                    210,
                    60,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "vc-mod-sum",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    35,
                    515,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "vc-dry-l-sum",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    115,
                    515,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "vc-dry-r-sum",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    195,
                    515,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "vc-tone-mid",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    485,
                    300,
                    60,
                    22
                  ],
                  "text": "*~ 1.5"
                }
              },
              {
                "box": {
                  "id": "vc-tone-high",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    565,
                    300,
                    65,
                    22
                  ],
                  "text": "*~ 2.01"
                }
              },
              {
                "box": {
                  "id": "vc-car-base",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    485,
                    345,
                    65,
                    22
                  ],
                  "text": "phasor~"
                }
              },
              {
                "box": {
                  "id": "vc-car-mid",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    565,
                    345,
                    65,
                    22
                  ],
                  "text": "phasor~"
                }
              },
              {
                "box": {
                  "id": "vc-car-high",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    645,
                    345,
                    65,
                    22
                  ],
                  "text": "phasor~"
                }
              },
              {
                "box": {
                  "id": "vc-base-scale",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    485,
                    390,
                    55,
                    22
                  ],
                  "text": "*~ 2."
                }
              },
              {
                "box": {
                  "id": "vc-base-offset",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    485,
                    435,
                    55,
                    22
                  ],
                  "text": "-~ 1."
                }
              },
              {
                "box": {
                  "id": "vc-mid-scale",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    565,
                    390,
                    55,
                    22
                  ],
                  "text": "*~ 2."
                }
              },
              {
                "box": {
                  "id": "vc-mid-offset",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    565,
                    435,
                    55,
                    22
                  ],
                  "text": "-~ 1."
                }
              },
              {
                "box": {
                  "id": "vc-high-scale",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    645,
                    390,
                    55,
                    22
                  ],
                  "text": "*~ 2."
                }
              },
              {
                "box": {
                  "id": "vc-high-offset",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    645,
                    435,
                    55,
                    22
                  ],
                  "text": "-~ 1."
                }
              },
              {
                "box": {
                  "id": "vc-car-sum-a",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    525,
                    485,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "vc-car-sum-b",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    565,
                    535,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "vc-car-tonal-level",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    565,
                    585,
                    65,
                    22
                  ],
                  "text": "*~ 0.18"
                }
              },
              {
                "box": {
                  "id": "vc-car-noise",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    735,
                    345,
                    60,
                    22
                  ],
                  "text": "noise~"
                }
              },
              {
                "box": {
                  "id": "vc-car-noise-level",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    735,
                    390,
                    65,
                    22
                  ],
                  "text": "*~ 0.25"
                }
              },
              {
                "box": {
                  "id": "vc-one-noise",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    645,
                    585,
                    60,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "vc-noise-inv",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    645,
                    635,
                    35,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "vc-tonal-mix",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    565,
                    690,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "vc-noise-mix",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    735,
                    690,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "vc-car-mix",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    650,
                    745,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "vc-car-filter",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    650,
                    795,
                    125,
                    22
                  ],
                  "text": "lores~ 5000 0.35"
                }
              },
              {
                "box": {
                  "id": "vc-pfft",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    35,
                    610,
                    325,
                    22
                  ],
                  "text": "pfft~ mt_vocoder_pfft 1024 4 args #0_vocoder_smooth"
                }
              },
              {
                "box": {
                  "id": "vc-pfft-makeup",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    35,
                    670,
                    55,
                    22
                  ],
                  "text": "*~ 3."
                }
              },
              {
                "box": {
                  "id": "vc-pfft-safe",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    35,
                    720,
                    85,
                    22
                  ],
                  "text": "clip~ -1. 1."
                }
              },
              {
                "box": {
                  "id": "vc-effective-wet",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    390,
                    265,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "vc-one-wet",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    397.5,
                    401,
                    60,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "vc-dry-amount",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    397.5,
                    429,
                    35,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "vc-dry-gain-l",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    115,
                    795,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "vc-wet-gain-l",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    175,
                    795,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "vc-outmix-l",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    145,
                    850,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "vc-dry-gain-r",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    245,
                    795,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "vc-wet-gain-r",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    305,
                    795,
                    35,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "vc-outmix-r",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "signal"
                  ],
                  "patching_rect": [
                    275,
                    850,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "vc-out-l",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    145,
                    920,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "vc-out-r",
                  "index": 2,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    275,
                    920,
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
                    "vc-car-sum-a",
                    0
                  ],
                  "source": [
                    "vc-base-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-base-offset",
                    0
                  ],
                  "source": [
                    "vc-base-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-bright-clip",
                    0
                  ],
                  "source": [
                    "vc-bright",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-bright-map",
                    0
                  ],
                  "source": [
                    "vc-bright-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-car-filter",
                    1
                  ],
                  "source": [
                    "vc-bright-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-bright-msg",
                    0
                  ],
                  "source": [
                    "vc-bright-map",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-bright-line",
                    0
                  ],
                  "source": [
                    "vc-bright-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-base-scale",
                    0
                  ],
                  "source": [
                    "vc-car-base",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-pfft",
                    1
                  ],
                  "source": [
                    "vc-car-filter",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-high-scale",
                    0
                  ],
                  "source": [
                    "vc-car-high",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-mid-scale",
                    0
                  ],
                  "source": [
                    "vc-car-mid",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-car-filter",
                    0
                  ],
                  "source": [
                    "vc-car-mix",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-car-noise-level",
                    0
                  ],
                  "source": [
                    "vc-car-noise",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-noise-mix",
                    0
                  ],
                  "source": [
                    "vc-car-noise-level",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-car-sum-b",
                    0
                  ],
                  "source": [
                    "vc-car-sum-a",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-car-tonal-level",
                    0
                  ],
                  "source": [
                    "vc-car-sum-b",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-tonal-mix",
                    0
                  ],
                  "source": [
                    "vc-car-tonal-level",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-dry-gain-l",
                    1
                  ],
                  "order": 1,
                  "source": [
                    "vc-dry-amount",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-dry-gain-r",
                    1
                  ],
                  "order": 0,
                  "source": [
                    "vc-dry-amount",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-outmix-l",
                    0
                  ],
                  "source": [
                    "vc-dry-gain-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-outmix-r",
                    0
                  ],
                  "source": [
                    "vc-dry-gain-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-dry-gain-l",
                    0
                  ],
                  "source": [
                    "vc-dry-l-sum",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-dry-gain-r",
                    0
                  ],
                  "source": [
                    "vc-dry-r-sum",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-dry-amount",
                    1
                  ],
                  "order": 0,
                  "source": [
                    "vc-effective-wet",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-wet-gain-l",
                    1
                  ],
                  "order": 2,
                  "source": [
                    "vc-effective-wet",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-wet-gain-r",
                    1
                  ],
                  "order": 1,
                  "source": [
                    "vc-effective-wet",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-enable-clip",
                    0
                  ],
                  "source": [
                    "vc-enable",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-enable-msg",
                    0
                  ],
                  "source": [
                    "vc-enable-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-effective-wet",
                    1
                  ],
                  "source": [
                    "vc-enable-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-enable-line",
                    0
                  ],
                  "source": [
                    "vc-enable-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-car-sum-b",
                    1
                  ],
                  "source": [
                    "vc-high-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-high-offset",
                    0
                  ],
                  "source": [
                    "vc-high-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-dry-l-sum",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "vc-in-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-input-sum",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "vc-in-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-dry-r-sum",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "vc-in-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-input-sum",
                    1
                  ],
                  "order": 1,
                  "source": [
                    "vc-in-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-mod-sum",
                    0
                  ],
                  "source": [
                    "vc-input-mono",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-input-mono",
                    0
                  ],
                  "source": [
                    "vc-input-sum",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-car-sum-a",
                    1
                  ],
                  "source": [
                    "vc-mid-offset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-mid-offset",
                    0
                  ],
                  "source": [
                    "vc-mid-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-pfft",
                    0
                  ],
                  "source": [
                    "vc-mod-sum",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-noise-clip",
                    0
                  ],
                  "source": [
                    "vc-noise",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-noise-msg",
                    0
                  ],
                  "source": [
                    "vc-noise-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-tonal-mix",
                    1
                  ],
                  "source": [
                    "vc-noise-inv",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-noise-inv",
                    1
                  ],
                  "order": 1,
                  "source": [
                    "vc-noise-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-noise-mix",
                    1
                  ],
                  "order": 0,
                  "source": [
                    "vc-noise-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-car-mix",
                    1
                  ],
                  "source": [
                    "vc-noise-mix",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-noise-line",
                    0
                  ],
                  "source": [
                    "vc-noise-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-noise-inv",
                    0
                  ],
                  "source": [
                    "vc-one-noise",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-dry-amount",
                    0
                  ],
                  "source": [
                    "vc-one-wet",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-out-l",
                    0
                  ],
                  "source": [
                    "vc-outmix-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-out-r",
                    0
                  ],
                  "source": [
                    "vc-outmix-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-pfft-makeup",
                    0
                  ],
                  "source": [
                    "vc-pfft",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-pfft-safe",
                    0
                  ],
                  "source": [
                    "vc-pfft-makeup",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-wet-gain-l",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "vc-pfft-safe",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-wet-gain-r",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "vc-pfft-safe",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-smooth-clip",
                    0
                  ],
                  "source": [
                    "vc-smooth",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-smooth-map",
                    0
                  ],
                  "source": [
                    "vc-smooth-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-smooth-msg",
                    0
                  ],
                  "source": [
                    "vc-smooth-int",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-smooth-int",
                    0
                  ],
                  "source": [
                    "vc-smooth-map",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-smooth-send",
                    0
                  ],
                  "source": [
                    "vc-smooth-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-car-mix",
                    0
                  ],
                  "source": [
                    "vc-tonal-mix",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-tone-clip",
                    0
                  ],
                  "source": [
                    "vc-tone",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-tone-map",
                    0
                  ],
                  "source": [
                    "vc-tone-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-car-high",
                    0
                  ],
                  "source": [
                    "vc-tone-high",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-car-base",
                    0
                  ],
                  "order": 1,
                  "source": [
                    "vc-tone-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-tone-high",
                    0
                  ],
                  "order": 0,
                  "source": [
                    "vc-tone-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-tone-mid",
                    0
                  ],
                  "order": 2,
                  "source": [
                    "vc-tone-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-tone-msg",
                    0
                  ],
                  "source": [
                    "vc-tone-map",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-car-mid",
                    0
                  ],
                  "source": [
                    "vc-tone-mid",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-tone-line",
                    0
                  ],
                  "source": [
                    "vc-tone-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-wet-clip",
                    0
                  ],
                  "source": [
                    "vc-wet",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-wet-msg",
                    0
                  ],
                  "source": [
                    "vc-wet-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-outmix-l",
                    1
                  ],
                  "source": [
                    "vc-wet-gain-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-outmix-r",
                    1
                  ],
                  "source": [
                    "vc-wet-gain-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-effective-wet",
                    0
                  ],
                  "source": [
                    "vc-wet-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "vc-wet-line",
                    0
                  ],
                  "source": [
                    "vc-wet-msg",
                    0
                  ]
                }
              }
            ],
            "originid": "pat-1188"
          },
          "patching_rect": [
            24,
            285,
            155,
            22
          ],
          "text": "p Vocoder_core"
        }
      },
      {
        "box": {
          "id": "vm-gain",
          "lastchannelcount": 0,
          "maxclass": "live.gain~",
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
            690,
            145,
            54,
            150
          ],
          "presentation": 1,
          "presentation_rect": [
            646,
            64,
            54,
            132
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                0
              ],
              "parameter_longname": "live.gain~",
              "parameter_mmax": 6,
              "parameter_mmin": -70,
              "parameter_modmode": 0,
              "parameter_shortname": "Vocoder Out",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "showname": 0,
          "varname": "live.gain~"
        }
      },
      {
        "box": {
          "comment": "",
          "id": "vm-out-l",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            875,
            295,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "comment": "",
          "id": "vm-out-r",
          "index": 0,
          "maxclass": "outlet",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            925,
            295,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "vm-out-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            855,
            335,
            170,
            20
          ],
          "text": "out 1/2: audio L/R"
        }
      },
      {
        "box": {
          "id": "vm-wet-default",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            155,
            205,
            95,
            22
          ],
          "text": "loadmess 0.7"
        }
      },
      {
        "box": {
          "id": "vm-tone-default",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            245,
            205,
            95,
            22
          ],
          "text": "loadmess 0.35"
        }
      },
      {
        "box": {
          "id": "vm-noise-default",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            355,
            205,
            95,
            22
          ],
          "text": "loadmess 0.25"
        }
      },
      {
        "box": {
          "id": "vm-smooth-default",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            455,
            205,
            95,
            22
          ],
          "text": "loadmess 0.35"
        }
      },
      {
        "box": {
          "id": "vm-bright-default",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            580,
            205,
            95,
            22
          ],
          "text": "loadmess 0.65"
        }
      },
      {
        "box": {
          "id": "vm-enable-set",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
          "id": "vm-enable-state-send",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            170,
            235,
            180,
            22
          ],
          "text": "s mt_vocoder_enable_state"
        }
      },
      {
        "box": {
          "id": "vm-preset",
          "maxclass": "umenu",
          "items": [
            "Clear Robot",
            ",",
            "Air Choir",
            ",",
            "Breath Machine"
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            700,
            20,
            145,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            500,
            8,
            135,
            22
          ],
          "varname": "vm_preset"
        }
      },
      {
        "box": {
          "id": "vm-preset-js",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            700,
            60,
            190,
            22
          ],
          "text": "js mt_module_presets.js vocoder"
        }
      },
      {
        "box": {
          "id": "vm-preset-unpack",
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
            700,
            100,
            170,
            22
          ],
          "text": "unpack f f f f f"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "vm-gain",
            1
          ],
          "source": [
            "p-Vocoder-core",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-gain",
            0
          ],
          "source": [
            "p-Vocoder-core",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-Vocoder-core",
            8
          ],
          "source": [
            "vm-bright",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-bright",
            0
          ],
          "source": [
            "vm-bright-default",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-Vocoder-core",
            2
          ],
          "order": 1,
          "source": [
            "vm-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-enable-state-send",
            0
          ],
          "order": 0,
          "source": [
            "vm-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-enable",
            0
          ],
          "source": [
            "vm-enable-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-bright",
            0
          ],
          "source": [
            "vm-ext-bright",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-Vocoder-core",
            2
          ],
          "order": 1,
          "source": [
            "vm-ext-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-enable-set",
            0
          ],
          "order": 0,
          "source": [
            "vm-ext-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-noise",
            0
          ],
          "source": [
            "vm-ext-noise",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-smooth",
            0
          ],
          "source": [
            "vm-ext-smooth",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-tone",
            0
          ],
          "source": [
            "vm-ext-tone",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-wet",
            0
          ],
          "source": [
            "vm-ext-wet",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-out-l",
            0
          ],
          "order": 0,
          "source": [
            "vm-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-out-r",
            0
          ],
          "order": 0,
          "source": [
            "vm-gain",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-Vocoder-core",
            0
          ],
          "source": [
            "vm-in-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-Vocoder-core",
            1
          ],
          "source": [
            "vm-in-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-Vocoder-core",
            6
          ],
          "source": [
            "vm-noise",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-noise",
            0
          ],
          "source": [
            "vm-noise-default",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-Vocoder-core",
            7
          ],
          "source": [
            "vm-smooth",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-smooth",
            0
          ],
          "source": [
            "vm-smooth-default",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-Vocoder-core",
            5
          ],
          "source": [
            "vm-tone",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-tone",
            0
          ],
          "source": [
            "vm-tone-default",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "p-Vocoder-core",
            4
          ],
          "source": [
            "vm-wet",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "vm-wet",
            0
          ],
          "source": [
            "vm-wet-default",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vm-preset",
            0
          ],
          "destination": [
            "vm-preset-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vm-preset-js",
            0
          ],
          "destination": [
            "vm-preset-unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vm-preset-unpack",
            0
          ],
          "destination": [
            "vm-wet",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vm-preset-unpack",
            1
          ],
          "destination": [
            "vm-tone",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vm-preset-unpack",
            2
          ],
          "destination": [
            "vm-noise",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vm-preset-unpack",
            3
          ],
          "destination": [
            "vm-smooth",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vm-preset-unpack",
            4
          ],
          "destination": [
            "vm-bright",
            0
          ]
        }
      }
    ],
    "originid": "pat-1186",
    "parameters": {
      "vm-gain": [
        "live.gain~",
        "Vocoder Out",
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
        "name": "mt_vocoder_pfft.maxpat",
        "patcherrelativepath": ".",
        "type": "JSON",
        "implicit": 1
      }
    ],
    "autosave": 0
  }
}
