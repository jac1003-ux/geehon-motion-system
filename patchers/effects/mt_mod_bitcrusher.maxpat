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
      920,
      430
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
          "id": "bc-header",
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
            760,
            58
          ],
          "presentation": 1,
          "presentation_rect": [
            0,
            0,
            760,
            58
          ]
        }
      },
      {
        "box": {
          "id": "bc-body",
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
            760,
            210
          ],
          "presentation": 1,
          "presentation_rect": [
            0,
            58,
            760,
            210
          ]
        }
      },
      {
        "box": {
          "id": "bc-title",
          "maxclass": "comment",
          "text": "BITCRUSHER",
          "patching_rect": [
            24,
            20,
            360,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            14,
            360,
            24
          ],
          "fontsize": 15,
          "textcolor": [
            0.97,
            0.98,
            0.96,
            1
          ]
        }
      },
      {
        "box": {
          "id": "bc-note",
          "maxclass": "comment",
          "text": "SAMPLE-RATE REDUCTION / BIT QUANTIZATION / SATURATION",
          "patching_rect": [
            24,
            46,
            700,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            36,
            650,
            18
          ],
          "fontsize": 9,
          "textcolor": [
            0.72,
            0.79,
            0.75,
            1
          ]
        }
      },
      {
        "box": {
          "id": "bc-in-l",
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
          "id": "bc-in-r",
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
          "id": "bc-in-enable",
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
          "id": "bc-enable-set",
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
          "id": "bc-in-bits",
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
          "id": "bc-in-rate",
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
          "id": "bc-in-drive",
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
          "id": "bc-enable",
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
          "varname": "bitcrusher_enable"
        }
      },
      {
        "box": {
          "id": "bc-enable-label",
          "maxclass": "comment",
          "text": "Enable",
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
          ],
          "textcolor": [
            0.18,
            0.27,
            0.23,
            1
          ]
        }
      },
      {
        "box": {
          "id": "bc-bits-label",
          "maxclass": "comment",
          "text": "Bit Depth (bit)",
          "patching_rect": [
            150,
            146,
            110,
            20
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "bc-bits",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            150,
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
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                12
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Bit Depth",
              "parameter_mmax": 24,
              "parameter_mmin": 2,
              "parameter_modmode": 3,
              "parameter_shortname": "BITS",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "bitcrusher_bits"
        }
      },
      {
        "box": {
          "id": "bc-rate-label",
          "maxclass": "comment",
          "text": "Sample Rate (Hz)",
          "patching_rect": [
            270,
            146,
            130,
            20
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "bc-rate",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            270,
            146,
            72,
            62
          ],
          "presentation": 1,
          "presentation_rect": [
            270,
            76,
            72,
            62
          ],
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
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                12000
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Sample Rate",
              "parameter_mmax": 48000,
              "parameter_mmin": 500,
              "parameter_modmode": 3,
              "parameter_shortname": "RATE Hz",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "bitcrusher_rate_hz"
        }
      },
      {
        "box": {
          "id": "bc-drive-label",
          "maxclass": "comment",
          "text": "Drive (0-1)",
          "patching_rect": [
            410,
            146,
            100,
            20
          ],
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "bc-drive",
          "maxclass": "live.dial",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            410,
            146,
            64,
            62
          ],
          "presentation": 1,
          "presentation_rect": [
            410,
            76,
            64,
            62
          ],
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
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                0.15
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Drive",
              "parameter_mmax": 1,
              "parameter_mmin": 0,
              "parameter_modmode": 3,
              "parameter_shortname": "DRIVE",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "bitcrusher_drive"
        }
      },
      {
        "box": {
          "id": "bc-state",
          "maxclass": "newobj",
          "text": "s mt_bitcrusher_enable_state",
          "patching_rect": [
            24,
            242,
            195,
            22
          ]
        }
      },
      {
        "box": {
          "id": "bc-default-bits",
          "maxclass": "newobj",
          "text": "loadmess 12",
          "patching_rect": [
            150,
            212,
            90,
            22
          ]
        }
      },
      {
        "box": {
          "id": "bc-default-rate",
          "maxclass": "newobj",
          "text": "loadmess 12000.",
          "patching_rect": [
            270,
            212,
            110,
            22
          ]
        }
      },
      {
        "box": {
          "id": "bc-default-drive",
          "maxclass": "newobj",
          "text": "loadmess 0.15",
          "patching_rect": [
            410,
            212,
            100,
            22
          ]
        }
      },
      {
        "box": {
          "id": "bc-core",
          "maxclass": "newobj",
          "text": "p Bitcrusher_core",
          "numinlets": 7,
          "numoutlets": 4,
          "outlettype": [
            "signal",
            "signal",
            "signal",
            "signal"
          ],
          "patching_rect": [
            24,
            292,
            200,
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
              1180,
              720
            ],
            "gridsize": [
              15,
              15
            ],
            "boxes": [
              {
                "box": {
                  "id": "bci-l",
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
                  "id": "bci-r",
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
                  "id": "bci-enable",
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
                  "id": "bci-test",
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
                  "id": "bci-bits",
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
                  "id": "bci-rate",
                  "index": 6,
                  "maxclass": "inlet",
                  "patching_rect": [
                    560,
                    30,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "bci-drive",
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
                  "id": "bc-source-l",
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
                  "id": "bc-source-r",
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
                  "id": "bc-bits-clip",
                  "maxclass": "newobj",
                  "text": "clip 2 24",
                  "patching_rect": [
                    430,
                    82,
                    75,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-bits-step",
                  "maxclass": "newobj",
                  "text": "expr 2. / (pow(2., $f1) - 1.)",
                  "patching_rect": [
                    430,
                    122,
                    205,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-rate-clip",
                  "maxclass": "newobj",
                  "text": "clip 500. 48000.",
                  "patching_rect": [
                    560,
                    82,
                    125,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-rate-trigger",
                  "maxclass": "newobj",
                  "text": "t f b",
                  "patching_rect": [
                    560,
                    122,
                    50,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-dspstate",
                  "maxclass": "newobj",
                  "text": "dspstate~",
                  "patching_rect": [
                    635,
                    162,
                    75,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-rate-ratio",
                  "maxclass": "newobj",
                  "text": "expr min(1., max(0.001, $f1 / max(1., $f2)))",
                  "patching_rect": [
                    500,
                    205,
                    300,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-degrade-l",
                  "maxclass": "newobj",
                  "text": "degrade~ 1. 24",
                  "patching_rect": [
                    30,
                    345,
                    105,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-degrade-r",
                  "maxclass": "newobj",
                  "text": "degrade~ 1. 24",
                  "patching_rect": [
                    160,
                    345,
                    105,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-drive-clip",
                  "maxclass": "newobj",
                  "text": "clip 0. 1.",
                  "patching_rect": [
                    720,
                    82,
                    80,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-drive-scale",
                  "maxclass": "newobj",
                  "text": "scale 0. 1. 1. 8.",
                  "patching_rect": [
                    720,
                    122,
                    120,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-drive-msg",
                  "maxclass": "message",
                  "text": "$1 20",
                  "patching_rect": [
                    720,
                    162,
                    62,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-drive-line",
                  "maxclass": "newobj",
                  "text": "line~",
                  "patching_rect": [
                    720,
                    202,
                    50,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-drive-l",
                  "maxclass": "newobj",
                  "text": "*~",
                  "patching_rect": [
                    30,
                    395,
                    42,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-drive-r",
                  "maxclass": "newobj",
                  "text": "*~",
                  "patching_rect": [
                    160,
                    395,
                    42,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-sat-l",
                  "maxclass": "newobj",
                  "text": "tanh~",
                  "patching_rect": [
                    30,
                    435,
                    55,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-sat-r",
                  "maxclass": "newobj",
                  "text": "tanh~",
                  "patching_rect": [
                    160,
                    435,
                    55,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-round-l",
                  "maxclass": "newobj",
                  "text": "round~ 0.001",
                  "patching_rect": [
                    30,
                    475,
                    88,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-round-r",
                  "maxclass": "newobj",
                  "text": "round~ 0.001",
                  "patching_rect": [
                    160,
                    475,
                    88,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-enable-clip",
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
                  "id": "bc-enable-msg",
                  "maxclass": "message",
                  "text": "$1 20",
                  "patching_rect": [
                    210,
                    122,
                    62,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-wet-line",
                  "maxclass": "newobj",
                  "text": "line~",
                  "patching_rect": [
                    210,
                    162,
                    50,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-wet-l",
                  "maxclass": "newobj",
                  "text": "*~",
                  "patching_rect": [
                    30,
                    520,
                    42,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bc-wet-r",
                  "maxclass": "newobj",
                  "text": "*~",
                  "patching_rect": [
                    160,
                    520,
                    42,
                    22
                  ]
                }
              },
              {
                "box": {
                  "id": "bco-l",
                  "index": 1,
                  "maxclass": "outlet",
                  "patching_rect": [
                    30,
                    590,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "bco-r",
                  "index": 2,
                  "maxclass": "outlet",
                  "patching_rect": [
                    160,
                    590,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "bco-monitor-in",
                  "index": 3,
                  "maxclass": "outlet",
                  "patching_rect": [
                    350,
                    590,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "bco-monitor-wet",
                  "index": 4,
                  "maxclass": "outlet",
                  "patching_rect": [
                    480,
                    590,
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
                    "bci-l",
                    0
                  ],
                  "destination": [
                    "bc-source-l",
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
                    "bci-r",
                    0
                  ],
                  "destination": [
                    "bc-source-r",
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
                    "bci-bits",
                    0
                  ],
                  "destination": [
                    "bc-bits-clip",
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
                    "bc-bits-clip",
                    0
                  ],
                  "destination": [
                    "bc-bits-step",
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
                    "bc-bits-step",
                    0
                  ],
                  "destination": [
                    "bc-round-l",
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
                    "bc-bits-step",
                    0
                  ],
                  "destination": [
                    "bc-round-r",
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
                    "bci-rate",
                    0
                  ],
                  "destination": [
                    "bc-rate-clip",
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
                    "bc-rate-clip",
                    0
                  ],
                  "destination": [
                    "bc-rate-trigger",
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
                    "bc-rate-trigger",
                    1
                  ],
                  "destination": [
                    "bc-dspstate",
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
                    "bc-dspstate",
                    1
                  ],
                  "destination": [
                    "bc-rate-ratio",
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
                    "bc-rate-trigger",
                    0
                  ],
                  "destination": [
                    "bc-rate-ratio",
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
                    "bc-rate-ratio",
                    0
                  ],
                  "destination": [
                    "bc-degrade-l",
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
                    "bc-rate-ratio",
                    0
                  ],
                  "destination": [
                    "bc-degrade-r",
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
                    "bc-source-l",
                    0
                  ],
                  "destination": [
                    "bc-degrade-l",
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
                    "bc-source-r",
                    0
                  ],
                  "destination": [
                    "bc-degrade-r",
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
                    "bci-drive",
                    0
                  ],
                  "destination": [
                    "bc-drive-clip",
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
                    "bc-drive-clip",
                    0
                  ],
                  "destination": [
                    "bc-drive-scale",
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
                    "bc-drive-scale",
                    0
                  ],
                  "destination": [
                    "bc-drive-msg",
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
                    "bc-drive-msg",
                    0
                  ],
                  "destination": [
                    "bc-drive-line",
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
                    "bc-degrade-l",
                    0
                  ],
                  "destination": [
                    "bc-drive-l",
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
                    "bc-drive-line",
                    0
                  ],
                  "destination": [
                    "bc-drive-l",
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
                    "bc-degrade-r",
                    0
                  ],
                  "destination": [
                    "bc-drive-r",
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
                    "bc-drive-line",
                    0
                  ],
                  "destination": [
                    "bc-drive-r",
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
                    "bc-drive-l",
                    0
                  ],
                  "destination": [
                    "bc-sat-l",
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
                    "bc-drive-r",
                    0
                  ],
                  "destination": [
                    "bc-sat-r",
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
                    "bc-sat-l",
                    0
                  ],
                  "destination": [
                    "bc-round-l",
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
                    "bc-sat-r",
                    0
                  ],
                  "destination": [
                    "bc-round-r",
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
                    "bci-enable",
                    0
                  ],
                  "destination": [
                    "bc-enable-clip",
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
                    "bc-enable-clip",
                    0
                  ],
                  "destination": [
                    "bc-enable-msg",
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
                    "bc-enable-msg",
                    0
                  ],
                  "destination": [
                    "bc-wet-line",
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
                    "bc-round-l",
                    0
                  ],
                  "destination": [
                    "bc-wet-l",
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
                    "bc-wet-line",
                    0
                  ],
                  "destination": [
                    "bc-wet-l",
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
                    "bc-round-r",
                    0
                  ],
                  "destination": [
                    "bc-wet-r",
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
                    "bc-wet-line",
                    0
                  ],
                  "destination": [
                    "bc-wet-r",
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
                    "bc-wet-l",
                    0
                  ],
                  "destination": [
                    "bco-l",
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
                    "bc-wet-r",
                    0
                  ],
                  "destination": [
                    "bco-r",
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
                    "bc-source-l",
                    0
                  ],
                  "destination": [
                    "bco-monitor-in",
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
                    "bc-wet-l",
                    0
                  ],
                  "destination": [
                    "bco-monitor-wet",
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
          "id": "bc-scope-in-label",
          "maxclass": "comment",
          "text": "INPUT",
          "patching_rect": [
            250,
            266,
            190,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            142,
            146,
            190,
            18
          ],
          "textcolor": [
            0.18,
            0.27,
            0.23,
            1
          ]
        }
      },
      {
        "box": {
          "id": "bc-scope-in",
          "maxclass": "live.scope~",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            250,
            292,
            190,
            78
          ],
          "presentation": 1,
          "presentation_rect": [
            142,
            166,
            190,
            78
          ],
          "bgcolor": [
            0.08,
            0.12,
            0.1,
            1
          ],
          "fgcolor": [
            0.49,
            0.69,
            0.6,
            1
          ]
        }
      },
      {
        "box": {
          "id": "bc-scope-wet-label",
          "maxclass": "comment",
          "text": "CRUSHED",
          "patching_rect": [
            470,
            266,
            190,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            360,
            146,
            190,
            18
          ],
          "textcolor": [
            0.18,
            0.27,
            0.23,
            1
          ]
        }
      },
      {
        "box": {
          "id": "bc-scope-wet",
          "maxclass": "live.scope~",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            470,
            292,
            190,
            78
          ],
          "presentation": 1,
          "presentation_rect": [
            360,
            166,
            190,
            78
          ],
          "bgcolor": [
            0.08,
            0.12,
            0.1,
            1
          ],
          "fgcolor": [
            0.92,
            0.72,
            0.22,
            1
          ]
        }
      },
      {
        "box": {
          "id": "bc-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            610,
            138,
            58,
            160
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
              "parameter_initial_enable": 1,
              "parameter_mmax": 6,
              "parameter_mmin": -70,
              "parameter_modmode": 0,
              "parameter_shortname": "Bitcrusher Out",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            610,
            66,
            58,
            150
          ],
          "varname": "bitcrusher_output_gain"
        }
      },
      {
        "box": {
          "id": "bc-output-label",
          "maxclass": "comment",
          "text": "OUTPUT",
          "patching_rect": [
            610,
            112,
            70,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            606,
            222,
            70,
            18
          ],
          "textcolor": [
            0.18,
            0.27,
            0.23,
            1
          ]
        }
      },
      {
        "box": {
          "id": "bc-out-l",
          "index": 1,
          "maxclass": "outlet",
          "patching_rect": [
            800,
            292,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "bc-out-r",
          "index": 2,
          "maxclass": "outlet",
          "patching_rect": [
            850,
            292,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "bc-preset",
          "maxclass": "umenu",
          "items": [
            "Lo-Fi Warm",
            ",",
            "Arcade Crunch",
            ",",
            "Broken Radio"
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
            760,
            20,
            150,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            580,
            14,
            150,
            22
          ],
          "varname": "bc_preset"
        }
      },
      {
        "box": {
          "id": "bc-preset-js",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            760,
            60,
            190,
            22
          ],
          "text": "js mt_module_presets.js bitcrusher"
        }
      },
      {
        "box": {
          "id": "bc-preset-unpack",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "float",
            "float",
            "float"
          ],
          "patching_rect": [
            760,
            100,
            170,
            22
          ],
          "text": "unpack f f f"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "bc-in-l",
            0
          ],
          "destination": [
            "bc-core",
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
            "bc-in-r",
            0
          ],
          "destination": [
            "bc-core",
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
            "bc-in-enable",
            0
          ],
          "destination": [
            "bc-enable-set",
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
            "bc-enable-set",
            0
          ],
          "destination": [
            "bc-enable",
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
            "bc-in-enable",
            0
          ],
          "destination": [
            "bc-core",
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
            "bc-enable",
            0
          ],
          "destination": [
            "bc-core",
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
            "bc-enable",
            0
          ],
          "destination": [
            "bc-state",
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
            "bc-in-bits",
            0
          ],
          "destination": [
            "bc-bits",
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
            "bc-bits",
            0
          ],
          "destination": [
            "bc-core",
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
            "bc-in-rate",
            0
          ],
          "destination": [
            "bc-rate",
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
            "bc-rate",
            0
          ],
          "destination": [
            "bc-core",
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
            "bc-in-drive",
            0
          ],
          "destination": [
            "bc-drive",
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
            "bc-drive",
            0
          ],
          "destination": [
            "bc-core",
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
            "bc-default-bits",
            0
          ],
          "destination": [
            "bc-bits",
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
            "bc-default-rate",
            0
          ],
          "destination": [
            "bc-rate",
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
            "bc-default-drive",
            0
          ],
          "destination": [
            "bc-drive",
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
            "bc-core",
            0
          ],
          "destination": [
            "bc-gain",
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
            "bc-core",
            1
          ],
          "destination": [
            "bc-gain",
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
            "bc-core",
            2
          ],
          "destination": [
            "bc-scope-in",
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
            "bc-core",
            3
          ],
          "destination": [
            "bc-scope-wet",
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
            "bc-gain",
            0
          ],
          "destination": [
            "bc-out-l",
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
            "bc-gain",
            1
          ],
          "destination": [
            "bc-out-r",
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
            "bc-preset",
            0
          ],
          "destination": [
            "bc-preset-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bc-preset-js",
            0
          ],
          "destination": [
            "bc-preset-unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bc-preset-unpack",
            0
          ],
          "destination": [
            "bc-bits",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bc-preset-unpack",
            1
          ],
          "destination": [
            "bc-rate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bc-preset-unpack",
            2
          ],
          "destination": [
            "bc-drive",
            0
          ]
        }
      }
    ],
    "parameters": {
      "bc-bits": [
        "bitcrusher_bits",
        "BITS",
        0
      ],
      "bc-rate": [
        "bitcrusher_rate_hz",
        "RATE Hz",
        0
      ],
      "bc-drive": [
        "bitcrusher_drive",
        "DRIVE",
        0
      ],
      "bc-gain": [
        "bitcrusher_output_gain",
        "OUTPUT",
        0
      ],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": [
            "bc-bits",
            "bc-rate",
            "bc-drive",
            "-",
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
