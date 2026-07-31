{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 1,
      "revision": 3,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      100,
      100,
      1030,
      440
    ],
    "openinpresentation": 1,
    "gridsize": [
      15,
      15
    ],
    "bgcolor": [
      0.94,
      0.96,
      0.94,
      1
    ],
    "boxes": [
      {
        "box": {
          "id": "fd-header",
          "maxclass": "panel",
          "background": 1,
          "border": 0,
          "bgcolor": [
            0.13,
            0.25,
            0.21,
            1
          ],
          "patching_rect": [
            0,
            0,
            850,
            58
          ],
          "presentation": 1,
          "presentation_rect": [
            0,
            0,
            850,
            58
          ]
        }
      },
      {
        "box": {
          "id": "fd-body",
          "maxclass": "panel",
          "background": 1,
          "border": 1,
          "bgcolor": [
            0.96,
            0.97,
            0.95,
            1
          ],
          "bordercolor": [
            0.66,
            0.74,
            0.69,
            1
          ],
          "patching_rect": [
            0,
            58,
            850,
            210
          ],
          "presentation": 1,
          "presentation_rect": [
            0,
            58,
            850,
            210
          ]
        }
      },
      {
        "box": {
          "id": "fd-title",
          "maxclass": "comment",
          "text": "FEEDBACK DELAY",
          "fontsize": 15,
          "textcolor": [
            0.97,
            0.98,
            0.96,
            1
          ],
          "patching_rect": [
            24,
            20,
            420,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            14,
            420,
            24
          ]
        }
      },
      {
        "box": {
          "id": "fd-note",
          "maxclass": "comment",
          "text": "FILTERED REPEATS / STEREO OFFSET / BOUNDED FEEDBACK",
          "fontsize": 9,
          "textcolor": [
            0.72,
            0.79,
            0.75,
            1
          ],
          "patching_rect": [
            24,
            46,
            720,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            36,
            700,
            18
          ]
        }
      },
      {
        "box": {
          "id": "fd-in-l",
          "index": 1,
          "maxclass": "inlet",
          "patching_rect": [
            24,
            92,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "fd-in-r",
          "index": 2,
          "maxclass": "inlet",
          "patching_rect": [
            70,
            92,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "fd-in-enable",
          "index": 3,
          "maxclass": "inlet",
          "patching_rect": [
            130,
            92,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "fd-enable-set",
          "maxclass": "message",
          "text": "set $1",
          "patching_rect": [
            130,
            126,
            50,
            22
          ]
        }
      },
      {
        "box": {
          "id": "fd-in-time",
          "index": 4,
          "maxclass": "inlet",
          "patching_rect": [
            190,
            92,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "fd-in-feedback",
          "index": 5,
          "maxclass": "inlet",
          "patching_rect": [
            250,
            92,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "fd-in-damping",
          "index": 6,
          "maxclass": "inlet",
          "patching_rect": [
            310,
            92,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "fd-in-stereo",
          "index": 7,
          "maxclass": "inlet",
          "patching_rect": [
            370,
            92,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "fd-enable",
          "maxclass": "toggle",
          "patching_rect": [
            24,
            150,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            82,
            24,
            24
          ],
          "varname": "delay_enable"
        }
      },
      {
        "box": {
          "id": "fd-enable-label",
          "maxclass": "comment",
          "text": "Enable",
          "textcolor": [
            0.18,
            0.27,
            0.23,
            1
          ],
          "patching_rect": [
            54,
            152,
            62,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            54,
            84,
            62,
            20
          ]
        }
      },
      {
        "box": {
          "id": "fd-time-label",
          "maxclass": "comment",
          "text": "Time (ms)",
          "patching_rect": [
            145,
            146,
            90,
            20
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "fd-time",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "activebgcolor": [
            0.84,
            0.67,
            0.19,
            1
          ],
          "activeneedlecolor": [
            0.15,
            0.28,
            0.23,
            1
          ],
          "patching_rect": [
            145,
            146,
            64,
            62
          ],
          "presentation": 1,
          "presentation_rect": [
            142,
            76,
            64,
            62
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                375
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Delay Time",
              "parameter_mmax": 1000,
              "parameter_mmin": 20,
              "parameter_modmode": 3,
              "parameter_shortname": "TIME ms",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "delay_time_ms"
        }
      },
      {
        "box": {
          "id": "fd-feedback-label",
          "maxclass": "comment",
          "text": "Feedback (0-0.88)",
          "patching_rect": [
            255,
            146,
            135,
            20
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "fd-feedback",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "activebgcolor": [
            0.84,
            0.67,
            0.19,
            1
          ],
          "activeneedlecolor": [
            0.15,
            0.28,
            0.23,
            1
          ],
          "patching_rect": [
            255,
            146,
            64,
            62
          ],
          "presentation": 1,
          "presentation_rect": [
            254,
            76,
            64,
            62
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                0.35
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Feedback",
              "parameter_mmax": 0.88,
              "parameter_mmin": 0,
              "parameter_modmode": 3,
              "parameter_shortname": "FEEDBACK",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "delay_feedback"
        }
      },
      {
        "box": {
          "id": "fd-damping-label",
          "maxclass": "comment",
          "text": "Damping (Hz)",
          "patching_rect": [
            405,
            146,
            110,
            20
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "fd-damping",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "activebgcolor": [
            0.84,
            0.67,
            0.19,
            1
          ],
          "activeneedlecolor": [
            0.15,
            0.28,
            0.23,
            1
          ],
          "patching_rect": [
            405,
            146,
            72,
            62
          ],
          "presentation": 1,
          "presentation_rect": [
            402,
            76,
            72,
            62
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                6000
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Damping",
              "parameter_mmax": 16000,
              "parameter_mmin": 500,
              "parameter_modmode": 3,
              "parameter_shortname": "DAMP Hz",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "delay_damping_hz"
        }
      },
      {
        "box": {
          "id": "fd-stereo-label",
          "maxclass": "comment",
          "text": "Stereo Offset (ms)",
          "patching_rect": [
            535,
            146,
            135,
            20
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "fd-stereo",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "activebgcolor": [
            0.84,
            0.67,
            0.19,
            1
          ],
          "activeneedlecolor": [
            0.15,
            0.28,
            0.23,
            1
          ],
          "patching_rect": [
            535,
            146,
            64,
            62
          ],
          "presentation": 1,
          "presentation_rect": [
            528,
            76,
            64,
            62
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                18
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Stereo Offset",
              "parameter_mmax": 80,
              "parameter_mmin": 0,
              "parameter_modmode": 3,
              "parameter_shortname": "STEREO ms",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "delay_stereo_offset_ms"
        }
      },
      {
        "box": {
          "id": "fd-state",
          "maxclass": "newobj",
          "text": "s mt_feedback_delay_enable_state",
          "patching_rect": [
            24,
            242,
            220,
            22
          ]
        }
      },
      {
        "box": {
          "id": "fd-default-time",
          "maxclass": "newobj",
          "text": "loadmess 375.",
          "patching_rect": [
            145,
            212,
            105,
            22
          ]
        }
      },
      {
        "box": {
          "id": "fd-default-feedback",
          "maxclass": "newobj",
          "text": "loadmess 0.35",
          "patching_rect": [
            255,
            212,
            100,
            22
          ]
        }
      },
      {
        "box": {
          "id": "fd-default-damping",
          "maxclass": "newobj",
          "text": "loadmess 6000.",
          "patching_rect": [
            405,
            212,
            110,
            22
          ]
        }
      },
      {
        "box": {
          "id": "fd-default-stereo",
          "maxclass": "newobj",
          "text": "loadmess 18.",
          "patching_rect": [
            535,
            212,
            95,
            22
          ]
        }
      },
      {
        "box": {
          "id": "fd-core",
          "maxclass": "newobj",
          "text": "p Feedback_delay_core",
          "numinlets": 8,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "patching_rect": [
            24,
            292,
            175,
            22
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 1,
              "revision": 3,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              120,
              120,
              1260,
              800
            ],
            "gridsize": [
              15,
              15
            ],
            "boxes": [
              {
                "box": {
                  "id": "fdi-l",
                  "index": 1,
                  "maxclass": "inlet",
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
                  "id": "fdi-r",
                  "index": 2,
                  "maxclass": "inlet",
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
                  "id": "fdi-enable",
                  "index": 3,
                  "maxclass": "inlet",
                  "patching_rect": [
                    210,
                    30,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fdi-test",
                  "index": 4,
                  "maxclass": "inlet",
                  "patching_rect": [
                    300,
                    30,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fdi-time",
                  "index": 5,
                  "maxclass": "inlet",
                  "patching_rect": [
                    430,
                    30,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fdi-feedback",
                  "index": 6,
                  "maxclass": "inlet",
                  "patching_rect": [
                    570,
                    30,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fdi-damping",
                  "index": 7,
                  "maxclass": "inlet",
                  "patching_rect": [
                    720,
                    30,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fdi-stereo",
                  "index": 8,
                  "maxclass": "inlet",
                  "patching_rect": [
                    860,
                    30,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-source-l",
                  "maxclass": "newobj",
                  "text": "+~",
                  "patching_rect": [
                    30,
                    290,
                    42,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-source-r",
                  "maxclass": "newobj",
                  "text": "+~",
                  "patching_rect": [
                    100,
                    290,
                    42,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-time-clip",
                  "maxclass": "newobj",
                  "text": "clip 20. 1000.",
                  "patching_rect": [
                    430,
                    82,
                    110,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-time-trigger",
                  "maxclass": "newobj",
                  "text": "t f f",
                  "patching_rect": [
                    430,
                    122,
                    50,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-time-msg-l",
                  "maxclass": "message",
                  "text": "$1 20",
                  "patching_rect": [
                    430,
                    165,
                    62,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-time-line-l",
                  "maxclass": "newobj",
                  "text": "line~",
                  "patching_rect": [
                    430,
                    205,
                    50,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-stereo-clip",
                  "maxclass": "newobj",
                  "text": "clip 0. 80.",
                  "patching_rect": [
                    860,
                    82,
                    90,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-time-pack-r",
                  "maxclass": "newobj",
                  "text": "pak 0. 0.",
                  "patching_rect": [
                    500,
                    122,
                    75,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-time-sum-r",
                  "maxclass": "newobj",
                  "text": "expr min(1080., $f1 + $f2)",
                  "patching_rect": [
                    500,
                    165,
                    180,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-time-msg-r",
                  "maxclass": "message",
                  "text": "$1 20",
                  "patching_rect": [
                    520,
                    205,
                    62,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-time-line-r",
                  "maxclass": "newobj",
                  "text": "line~",
                  "patching_rect": [
                    520,
                    245,
                    50,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-tapin-l",
                  "maxclass": "newobj",
                  "text": "tapin~ 2000",
                  "patching_rect": [
                    30,
                    350,
                    90,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-tapin-r",
                  "maxclass": "newobj",
                  "text": "tapin~ 2000",
                  "patching_rect": [
                    160,
                    350,
                    90,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-tapout-l",
                  "maxclass": "newobj",
                  "text": "tapout~ 375",
                  "patching_rect": [
                    30,
                    395,
                    95,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-tapout-r",
                  "maxclass": "newobj",
                  "text": "tapout~ 393",
                  "patching_rect": [
                    160,
                    395,
                    95,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-damping-clip",
                  "maxclass": "newobj",
                  "text": "clip 500. 16000.",
                  "patching_rect": [
                    720,
                    82,
                    125,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-filter-l",
                  "maxclass": "newobj",
                  "text": "svf~ 6000 0.2",
                  "patching_rect": [
                    300,
                    395,
                    110,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-filter-r",
                  "maxclass": "newobj",
                  "text": "svf~ 6000 0.2",
                  "patching_rect": [
                    440,
                    395,
                    110,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-feedback-clip",
                  "maxclass": "newobj",
                  "text": "clip 0. 0.88",
                  "patching_rect": [
                    570,
                    82,
                    100,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-feedback-msg",
                  "maxclass": "message",
                  "text": "$1 20",
                  "patching_rect": [
                    570,
                    122,
                    62,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-feedback-line",
                  "maxclass": "newobj",
                  "text": "line~",
                  "patching_rect": [
                    570,
                    162,
                    50,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-feedback-l",
                  "maxclass": "newobj",
                  "text": "*~",
                  "patching_rect": [
                    300,
                    445,
                    42,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-feedback-r",
                  "maxclass": "newobj",
                  "text": "*~",
                  "patching_rect": [
                    440,
                    445,
                    42,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-feedback-enable-l",
                  "maxclass": "newobj",
                  "text": "*~",
                  "patching_rect": [
                    300,
                    485,
                    42,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-feedback-enable-r",
                  "maxclass": "newobj",
                  "text": "*~",
                  "patching_rect": [
                    440,
                    485,
                    42,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-feedback-safe-l",
                  "maxclass": "newobj",
                  "text": "tanh~",
                  "patching_rect": [
                    300,
                    525,
                    55,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-feedback-safe-r",
                  "maxclass": "newobj",
                  "text": "tanh~",
                  "patching_rect": [
                    440,
                    525,
                    55,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-enable-clip",
                  "maxclass": "newobj",
                  "text": "clip 0 1",
                  "patching_rect": [
                    210,
                    82,
                    70,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-enable-trigger",
                  "maxclass": "newobj",
                  "text": "t i i",
                  "patching_rect": [
                    210,
                    122,
                    50,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-enable-msg",
                  "maxclass": "message",
                  "text": "$1 20",
                  "patching_rect": [
                    210,
                    162,
                    62,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-wet-line",
                  "maxclass": "newobj",
                  "text": "line~",
                  "patching_rect": [
                    210,
                    202,
                    50,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-disable-select",
                  "maxclass": "newobj",
                  "text": "sel 0",
                  "patching_rect": [
                    650,
                    202,
                    50,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-clear",
                  "maxclass": "message",
                  "text": "clear",
                  "patching_rect": [
                    650,
                    242,
                    50,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-wet-safe-l",
                  "maxclass": "newobj",
                  "text": "tanh~",
                  "patching_rect": [
                    30,
                    445,
                    55,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-wet-safe-r",
                  "maxclass": "newobj",
                  "text": "tanh~",
                  "patching_rect": [
                    160,
                    445,
                    55,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-wet-l",
                  "maxclass": "newobj",
                  "text": "*~",
                  "patching_rect": [
                    30,
                    575,
                    42,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fd-wet-r",
                  "maxclass": "newobj",
                  "text": "*~",
                  "patching_rect": [
                    160,
                    575,
                    42,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "fdo-l",
                  "index": 1,
                  "maxclass": "outlet",
                  "patching_rect": [
                    30,
                    640,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fdo-r",
                  "index": 2,
                  "maxclass": "outlet",
                  "patching_rect": [
                    160,
                    640,
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
                    "fdi-l",
                    0
                  ],
                  "destination": [
                    "fd-source-l",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fdi-r",
                    0
                  ],
                  "destination": [
                    "fd-source-r",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fdi-time",
                    0
                  ],
                  "destination": [
                    "fd-time-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-time-clip",
                    0
                  ],
                  "destination": [
                    "fd-time-trigger",
                    0
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-time-trigger",
                    1
                  ],
                  "destination": [
                    "fd-time-pack-r",
                    0
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-time-trigger",
                    0
                  ],
                  "destination": [
                    "fd-time-msg-l",
                    0
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-time-msg-l",
                    0
                  ],
                  "destination": [
                    "fd-time-line-l",
                    0
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fdi-stereo",
                    0
                  ],
                  "destination": [
                    "fd-stereo-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-stereo-clip",
                    0
                  ],
                  "destination": [
                    "fd-time-pack-r",
                    1
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-time-pack-r",
                    0
                  ],
                  "destination": [
                    "fd-time-sum-r",
                    0
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-time-sum-r",
                    0
                  ],
                  "destination": [
                    "fd-time-msg-r",
                    0
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-time-msg-r",
                    0
                  ],
                  "destination": [
                    "fd-time-line-r",
                    0
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-source-l",
                    0
                  ],
                  "destination": [
                    "fd-tapin-l",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-source-r",
                    0
                  ],
                  "destination": [
                    "fd-tapin-r",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-tapin-l",
                    0
                  ],
                  "destination": [
                    "fd-tapout-l",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-tapin-r",
                    0
                  ],
                  "destination": [
                    "fd-tapout-r",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-time-line-l",
                    0
                  ],
                  "destination": [
                    "fd-tapout-l",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-time-line-r",
                    0
                  ],
                  "destination": [
                    "fd-tapout-r",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-tapout-l",
                    0
                  ],
                  "destination": [
                    "fd-filter-l",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-tapout-r",
                    0
                  ],
                  "destination": [
                    "fd-filter-r",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fdi-damping",
                    0
                  ],
                  "destination": [
                    "fd-damping-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-damping-clip",
                    0
                  ],
                  "destination": [
                    "fd-filter-l",
                    1
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-damping-clip",
                    0
                  ],
                  "destination": [
                    "fd-filter-r",
                    1
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fdi-feedback",
                    0
                  ],
                  "destination": [
                    "fd-feedback-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-feedback-clip",
                    0
                  ],
                  "destination": [
                    "fd-feedback-msg",
                    0
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-feedback-msg",
                    0
                  ],
                  "destination": [
                    "fd-feedback-line",
                    0
                  ],
                  "color": [
                    1,
                    0.5,
                    0,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-filter-l",
                    0
                  ],
                  "destination": [
                    "fd-feedback-l",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-feedback-line",
                    0
                  ],
                  "destination": [
                    "fd-feedback-l",
                    1
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-filter-r",
                    0
                  ],
                  "destination": [
                    "fd-feedback-r",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-feedback-line",
                    0
                  ],
                  "destination": [
                    "fd-feedback-r",
                    1
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-feedback-l",
                    0
                  ],
                  "destination": [
                    "fd-feedback-enable-l",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-wet-line",
                    0
                  ],
                  "destination": [
                    "fd-feedback-enable-l",
                    1
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-feedback-r",
                    0
                  ],
                  "destination": [
                    "fd-feedback-enable-r",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-wet-line",
                    0
                  ],
                  "destination": [
                    "fd-feedback-enable-r",
                    1
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-feedback-enable-l",
                    0
                  ],
                  "destination": [
                    "fd-feedback-safe-l",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-feedback-enable-r",
                    0
                  ],
                  "destination": [
                    "fd-feedback-safe-r",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-feedback-safe-l",
                    0
                  ],
                  "destination": [
                    "fd-tapin-l",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-feedback-safe-r",
                    0
                  ],
                  "destination": [
                    "fd-tapin-r",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fdi-enable",
                    0
                  ],
                  "destination": [
                    "fd-enable-clip",
                    0
                  ],
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-enable-clip",
                    0
                  ],
                  "destination": [
                    "fd-enable-trigger",
                    0
                  ],
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-enable-trigger",
                    1
                  ],
                  "destination": [
                    "fd-disable-select",
                    0
                  ],
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-enable-trigger",
                    0
                  ],
                  "destination": [
                    "fd-enable-msg",
                    0
                  ],
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-enable-msg",
                    0
                  ],
                  "destination": [
                    "fd-wet-line",
                    0
                  ],
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-disable-select",
                    0
                  ],
                  "destination": [
                    "fd-clear",
                    0
                  ],
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-clear",
                    0
                  ],
                  "destination": [
                    "fd-tapin-l",
                    0
                  ],
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-clear",
                    0
                  ],
                  "destination": [
                    "fd-tapin-r",
                    0
                  ],
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-tapout-l",
                    0
                  ],
                  "destination": [
                    "fd-wet-safe-l",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-tapout-r",
                    0
                  ],
                  "destination": [
                    "fd-wet-safe-r",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-wet-safe-l",
                    0
                  ],
                  "destination": [
                    "fd-wet-l",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-wet-line",
                    0
                  ],
                  "destination": [
                    "fd-wet-l",
                    1
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-wet-safe-r",
                    0
                  ],
                  "destination": [
                    "fd-wet-r",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-wet-line",
                    0
                  ],
                  "destination": [
                    "fd-wet-r",
                    1
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-wet-l",
                    0
                  ],
                  "destination": [
                    "fdo-l",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fd-wet-r",
                    0
                  ],
                  "destination": [
                    "fdo-r",
                    0
                  ],
                  "color": [
                    0.62,
                    0.86,
                    0.34,
                    1
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "fd-gain",
          "maxclass": "live.gain~",
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
              "parameter_initial_enable": 1,
              "parameter_mmax": 6,
              "parameter_mmin": -70,
              "parameter_modmode": 0,
              "parameter_shortname": "Delay Out",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "patching_rect": [
            730,
            138,
            58,
            160
          ],
          "presentation": 1,
          "presentation_rect": [
            700,
            66,
            58,
            150
          ],
          "varname": "delay_output_gain"
        }
      },
      {
        "box": {
          "id": "fd-output-label",
          "maxclass": "comment",
          "text": "OUTPUT",
          "textcolor": [
            0.18,
            0.27,
            0.23,
            1
          ],
          "patching_rect": [
            730,
            112,
            70,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            696,
            222,
            70,
            18
          ]
        }
      },
      {
        "box": {
          "id": "fd-out-l",
          "index": 1,
          "maxclass": "outlet",
          "patching_rect": [
            910,
            292,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "fd-out-r",
          "index": 2,
          "maxclass": "outlet",
          "patching_rect": [
            960,
            292,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "fd-preset",
          "maxclass": "umenu",
          "items": [
            "Slap Echo",
            ",",
            "Tape Trail",
            ",",
            "Space Repeat"
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
            850,
            20,
            155,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            655,
            14,
            155,
            22
          ],
          "varname": "fd_preset"
        }
      },
      {
        "box": {
          "id": "fd-preset-js",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            850,
            60,
            190,
            22
          ],
          "text": "js mt_module_presets.js delay"
        }
      },
      {
        "box": {
          "id": "fd-preset-unpack",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "float",
            "float",
            "float",
            "float"
          ],
          "patching_rect": [
            850,
            100,
            170,
            22
          ],
          "text": "unpack f f f f"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "fd-in-l",
            0
          ],
          "destination": [
            "fd-core",
            0
          ],
          "color": [
            0.62,
            0.86,
            0.34,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-in-r",
            0
          ],
          "destination": [
            "fd-core",
            1
          ],
          "color": [
            0.62,
            0.86,
            0.34,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-in-enable",
            0
          ],
          "destination": [
            "fd-enable-set",
            0
          ],
          "color": [
            0.44,
            0.72,
            1,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-enable-set",
            0
          ],
          "destination": [
            "fd-enable",
            0
          ],
          "color": [
            0.44,
            0.72,
            1,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-in-enable",
            0
          ],
          "destination": [
            "fd-core",
            2
          ],
          "color": [
            0.44,
            0.72,
            1,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-enable",
            0
          ],
          "destination": [
            "fd-core",
            2
          ],
          "color": [
            0.44,
            0.72,
            1,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-enable",
            0
          ],
          "destination": [
            "fd-state",
            0
          ],
          "color": [
            0.44,
            0.72,
            1,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-in-time",
            0
          ],
          "destination": [
            "fd-time",
            0
          ],
          "color": [
            1,
            0.5,
            0,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-time",
            0
          ],
          "destination": [
            "fd-core",
            4
          ],
          "color": [
            1,
            0.5,
            0,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-in-feedback",
            0
          ],
          "destination": [
            "fd-feedback",
            0
          ],
          "color": [
            1,
            0.5,
            0,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-feedback",
            0
          ],
          "destination": [
            "fd-core",
            5
          ],
          "color": [
            1,
            0.5,
            0,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-in-damping",
            0
          ],
          "destination": [
            "fd-damping",
            0
          ],
          "color": [
            1,
            0.5,
            0,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-damping",
            0
          ],
          "destination": [
            "fd-core",
            6
          ],
          "color": [
            1,
            0.5,
            0,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-in-stereo",
            0
          ],
          "destination": [
            "fd-stereo",
            0
          ],
          "color": [
            1,
            0.5,
            0,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-stereo",
            0
          ],
          "destination": [
            "fd-core",
            7
          ],
          "color": [
            1,
            0.5,
            0,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-default-time",
            0
          ],
          "destination": [
            "fd-time",
            0
          ],
          "color": [
            1,
            0.5,
            0,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-default-feedback",
            0
          ],
          "destination": [
            "fd-feedback",
            0
          ],
          "color": [
            1,
            0.5,
            0,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-default-damping",
            0
          ],
          "destination": [
            "fd-damping",
            0
          ],
          "color": [
            1,
            0.5,
            0,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-default-stereo",
            0
          ],
          "destination": [
            "fd-stereo",
            0
          ],
          "color": [
            1,
            0.5,
            0,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-core",
            0
          ],
          "destination": [
            "fd-gain",
            0
          ],
          "color": [
            0.62,
            0.86,
            0.34,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-core",
            1
          ],
          "destination": [
            "fd-gain",
            1
          ],
          "color": [
            0.62,
            0.86,
            0.34,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-gain",
            0
          ],
          "destination": [
            "fd-out-l",
            0
          ],
          "color": [
            0.62,
            0.86,
            0.34,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-gain",
            1
          ],
          "destination": [
            "fd-out-r",
            0
          ],
          "color": [
            0.62,
            0.86,
            0.34,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-preset",
            0
          ],
          "destination": [
            "fd-preset-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-preset-js",
            0
          ],
          "destination": [
            "fd-preset-unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-preset-unpack",
            0
          ],
          "destination": [
            "fd-time",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-preset-unpack",
            1
          ],
          "destination": [
            "fd-feedback",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-preset-unpack",
            2
          ],
          "destination": [
            "fd-damping",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "fd-preset-unpack",
            3
          ],
          "destination": [
            "fd-stereo",
            0
          ]
        }
      }
    ],
    "parameters": {
      "fd-time": [
        "delay_time_ms",
        "TIME ms",
        0
      ],
      "fd-feedback": [
        "delay_feedback",
        "FEEDBACK",
        0
      ],
      "fd-damping": [
        "delay_damping_hz",
        "DAMP Hz",
        0
      ],
      "fd-stereo": [
        "delay_stereo_offset_ms",
        "STEREO ms",
        0
      ],
      "fd-gain": [
        "delay_output_gain",
        "OUTPUT",
        0
      ],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": [
            "fd-time",
            "fd-feedback",
            "fd-damping",
            "fd-stereo",
            "-",
            "-",
            "-",
            "-"
          ]
        }
      },
      "inherited_shortname": 1
    }
  }
}
