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
      1120,
      460
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
          "id": "mb2-header",
          "maxclass": "panel",
          "patching_rect": [
            0,
            0,
            1100,
            58
          ],
          "background": 1,
          "border": 0,
          "bgcolor": [
            0.13,
            0.25,
            0.21,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            0,
            0,
            1100,
            58
          ]
        }
      },
      {
        "box": {
          "id": "mb2-body",
          "maxclass": "panel",
          "patching_rect": [
            0,
            58,
            1100,
            342
          ],
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
          "presentation": 1,
          "presentation_rect": [
            0,
            58,
            1100,
            342
          ]
        }
      },
      {
        "box": {
          "id": "mb2-title",
          "maxclass": "comment",
          "patching_rect": [
            24,
            14,
            430,
            24
          ],
          "text": "MULTIBAND FILTER",
          "fontsize": 18,
          "fontface": 1,
          "textcolor": [
            0.94,
            0.96,
            0.94,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            14,
            430,
            24
          ]
        }
      },
      {
        "box": {
          "id": "mb2-note",
          "maxclass": "comment",
          "patching_rect": [
            24,
            36,
            780,
            18
          ],
          "text": "3-BAND SPECTRAL MOTION / FOCUS / DRIVE / WIDTH / PURE WET RETURN",
          "fontsize": 9,
          "textcolor": [
            0.72,
            0.8,
            0.75,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            36,
            780,
            18
          ]
        }
      },
      {
        "box": {
          "id": "mb2-in-l",
          "maxclass": "inlet",
          "patching_rect": [
            20,
            430,
            30,
            30
          ],
          "index": 1,
          "comment": "Audio L"
        }
      },
      {
        "box": {
          "id": "mb2-in-r",
          "maxclass": "inlet",
          "patching_rect": [
            60,
            430,
            30,
            30
          ],
          "index": 2,
          "comment": "Audio R"
        }
      },
      {
        "box": {
          "id": "mb2-in-enable",
          "maxclass": "inlet",
          "patching_rect": [
            100,
            430,
            30,
            30
          ],
          "index": 3,
          "comment": "Enable 0/1"
        }
      },
      {
        "box": {
          "id": "mb2-enable-set",
          "maxclass": "message",
          "text": "set $1",
          "patching_rect": [
            100,
            466,
            50,
            22
          ]
        }
      },
      {
        "box": {
          "id": "mb2-in-focus",
          "maxclass": "inlet",
          "patching_rect": [
            140,
            430,
            30,
            30
          ],
          "index": 4,
          "comment": "Focus 0-1"
        }
      },
      {
        "box": {
          "id": "mb2-in-contrast",
          "maxclass": "inlet",
          "patching_rect": [
            180,
            430,
            30,
            30
          ],
          "index": 5,
          "comment": "Contrast 0-1"
        }
      },
      {
        "box": {
          "id": "mb2-in-spread",
          "maxclass": "inlet",
          "patching_rect": [
            220,
            430,
            30,
            30
          ],
          "index": 6,
          "comment": "Spread 0-1"
        }
      },
      {
        "box": {
          "id": "mb2-enable",
          "maxclass": "toggle",
          "patching_rect": [
            510,
            82,
            24,
            24
          ],
          "parameter_enable": 0,
          "presentation": 1,
          "presentation_rect": [
            510,
            76,
            24,
            24
          ],
          "varname": "multiband_filter_enable"
        }
      },
      {
        "box": {
          "id": "mb2-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            540,
            84,
            60,
            20
          ],
          "text": "ENABLE",
          "fontface": 1,
          "presentation": 1,
          "presentation_rect": [
            540,
            78,
            60,
            20
          ]
        }
      },
      {
        "box": {
          "id": "mb2-band-menu",
          "maxclass": "umenu",
          "patching_rect": [
            630,
            82,
            120,
            22
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "items": [
            "LOW",
            ",",
            "MID",
            ",",
            "HIGH"
          ],
          "parameter_enable": 0,
          "presentation": 1,
          "presentation_rect": [
            630,
            76,
            120,
            22
          ],
          "varname": "multiband_selected_band"
        }
      },
      {
        "box": {
          "id": "mb2-mute",
          "maxclass": "toggle",
          "patching_rect": [
            770,
            82,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            770,
            76,
            24,
            24
          ],
          "varname": "multiband_band_mute"
        }
      },
      {
        "box": {
          "id": "mb2-mute-label",
          "maxclass": "comment",
          "patching_rect": [
            800,
            84,
            45,
            20
          ],
          "text": "MUTE",
          "presentation": 1,
          "presentation_rect": [
            800,
            78,
            45,
            20
          ]
        }
      },
      {
        "box": {
          "id": "mb2-solo",
          "maxclass": "toggle",
          "patching_rect": [
            850,
            82,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            850,
            76,
            24,
            24
          ],
          "varname": "multiband_band_solo"
        }
      },
      {
        "box": {
          "id": "mb2-solo-label",
          "maxclass": "comment",
          "patching_rect": [
            880,
            84,
            45,
            20
          ],
          "text": "SOLO",
          "presentation": 1,
          "presentation_rect": [
            880,
            78,
            45,
            20
          ]
        }
      },
      {
        "box": {
          "id": "mb2-gain",
          "maxclass": "live.dial",
          "patching_rect": [
            510,
            145,
            70,
            62
          ],
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
          "presentation": 1,
          "presentation_rect": [
            510,
            138,
            70,
            62
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Selected Band Gain",
              "parameter_mmax": 12,
              "parameter_mmin": -24,
              "parameter_modmode": 3,
              "parameter_shortname": "GAIN dB",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "varname": "mb2_gain"
        }
      },
      {
        "box": {
          "id": "mb2-drive",
          "maxclass": "live.dial",
          "patching_rect": [
            600,
            145,
            70,
            62
          ],
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
          "presentation": 1,
          "presentation_rect": [
            600,
            138,
            70,
            62
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Selected Band Drive",
              "parameter_mmax": 18,
              "parameter_mmin": 0,
              "parameter_modmode": 3,
              "parameter_shortname": "DRIVE dB",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "varname": "mb2_drive"
        }
      },
      {
        "box": {
          "id": "mb2-width",
          "maxclass": "live.dial",
          "patching_rect": [
            690,
            145,
            70,
            62
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "activebgcolor": [
            0.49,
            0.69,
            0.6,
            1
          ],
          "activeneedlecolor": [
            0.15,
            0.28,
            0.23,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            690,
            138,
            70,
            62
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                100
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Selected Band Width",
              "parameter_mmax": 200,
              "parameter_mmin": 0,
              "parameter_modmode": 3,
              "parameter_shortname": "WIDTH",
              "parameter_type": 1,
              "parameter_unitstyle": 5
            }
          },
          "varname": "mb2_width"
        }
      },
      {
        "box": {
          "id": "mb2-low-x",
          "maxclass": "live.dial",
          "patching_rect": [
            790,
            145,
            70,
            62
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "activebgcolor": [
            0.49,
            0.69,
            0.6,
            1
          ],
          "activeneedlecolor": [
            0.15,
            0.28,
            0.23,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            790,
            138,
            70,
            62
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                250
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Low Crossover",
              "parameter_mmax": 1200,
              "parameter_mmin": 80,
              "parameter_modmode": 3,
              "parameter_shortname": "LOW X Hz",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "mb2_low_x"
        }
      },
      {
        "box": {
          "id": "mb2-high-x",
          "maxclass": "live.dial",
          "patching_rect": [
            880,
            145,
            70,
            62
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "activebgcolor": [
            0.49,
            0.69,
            0.6,
            1
          ],
          "activeneedlecolor": [
            0.15,
            0.28,
            0.23,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            880,
            138,
            70,
            62
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                3500
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "High Crossover",
              "parameter_mmax": 12000,
              "parameter_mmin": 1200,
              "parameter_modmode": 3,
              "parameter_shortname": "HIGH X Hz",
              "parameter_type": 0,
              "parameter_unitstyle": 1
            }
          },
          "varname": "mb2_high_x"
        }
      },
      {
        "box": {
          "id": "mb2-focus",
          "maxclass": "live.dial",
          "patching_rect": [
            540,
            255,
            70,
            62
          ],
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
          "presentation": 1,
          "presentation_rect": [
            540,
            250,
            70,
            62
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                50
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Spectral Focus",
              "parameter_mmax": 100,
              "parameter_mmin": 0,
              "parameter_modmode": 3,
              "parameter_shortname": "FOCUS",
              "parameter_type": 1,
              "parameter_unitstyle": 5
            }
          },
          "varname": "mb2_focus"
        }
      },
      {
        "box": {
          "id": "mb2-contrast",
          "maxclass": "live.dial",
          "patching_rect": [
            650,
            255,
            70,
            62
          ],
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
          "presentation": 1,
          "presentation_rect": [
            650,
            250,
            70,
            62
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Spectral Contrast",
              "parameter_mmax": 100,
              "parameter_mmin": 0,
              "parameter_modmode": 3,
              "parameter_shortname": "CONTRAST",
              "parameter_type": 1,
              "parameter_unitstyle": 5
            }
          },
          "varname": "mb2_contrast"
        }
      },
      {
        "box": {
          "id": "mb2-spread",
          "maxclass": "live.dial",
          "patching_rect": [
            760,
            255,
            70,
            62
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "activebgcolor": [
            0.31,
            0.6,
            0.62,
            1
          ],
          "activeneedlecolor": [
            0.15,
            0.28,
            0.23,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            760,
            250,
            70,
            62
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_longname": "Spectral Spread",
              "parameter_mmax": 100,
              "parameter_mmin": 0,
              "parameter_modmode": 3,
              "parameter_shortname": "SPREAD",
              "parameter_type": 1,
              "parameter_unitstyle": 5
            }
          },
          "varname": "mb2_spread"
        }
      },
      {
        "box": {
          "id": "mb2-macro-label",
          "maxclass": "comment",
          "patching_rect": [
            520,
            225,
            350,
            20
          ],
          "text": "PERFORMANCE MACROS",
          "fontface": 1,
          "textcolor": [
            0.2,
            0.31,
            0.27,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            520,
            220,
            350,
            20
          ]
        }
      },
      {
        "box": {
          "id": "mb2-visual",
          "maxclass": "jsui",
          "patching_rect": [
            24,
            82,
            460,
            260
          ],
          "filename": "mt_multiband_filter_visual.js",
          "numinlets": 4,
          "numoutlets": 0,
          "border": 0,
          "parameter_enable": 0,
          "presentation": 1,
          "presentation_rect": [
            24,
            76,
            460,
            292
          ],
          "varname": "multiband_filter_response"
        }
      },
      {
        "box": {
          "id": "mb2-controller",
          "maxclass": "newobj",
          "patching_rect": [
            300,
            470,
            350,
            22
          ],
          "text": "js mt_multiband_filter_controller.js",
          "numinlets": 11,
          "numoutlets": 22,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            "float",
            "float",
            "float",
            "float",
            "float",
            "float",
            "float",
            "float",
            "float",
            "",
            "float",
            "float",
            "float",
            "float",
            "float",
            "float",
            "float"
          ]
        }
      },
      {
        "box": {
          "id": "mb2-init",
          "maxclass": "newobj",
          "patching_rect": [
            300,
            500,
            95,
            22
          ],
          "text": "loadmess bang"
        }
      },
      {
        "box": {
          "id": "mb2-state",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            500,
            220,
            22
          ],
          "text": "s mt_multiband_filter_enable_state"
        }
      },
      {
        "box": {
          "id": "mb2-focus-percent",
          "maxclass": "newobj",
          "patching_rect": [
            100,
            470,
            55,
            22
          ],
          "text": "* 100."
        }
      },
      {
        "box": {
          "id": "mb2-contrast-percent",
          "maxclass": "newobj",
          "patching_rect": [
            160,
            470,
            55,
            22
          ],
          "text": "* 100."
        }
      },
      {
        "box": {
          "id": "mb2-spread-percent",
          "maxclass": "newobj",
          "patching_rect": [
            220,
            470,
            55,
            22
          ],
          "text": "* 100."
        }
      },
      {
        "box": {
          "id": "mb2-core",
          "maxclass": "newobj",
          "patching_rect": [
            20,
            550,
            220,
            22
          ],
          "text": "p Multiband_filter_v2_core",
          "numinlets": 15,
          "numoutlets": 5,
          "outlettype": [
            "signal",
            "signal",
            "signal",
            "signal",
            "signal"
          ],
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
              120,
              120,
              1520,
              820
            ],
            "gridsize": [
              15,
              15
            ],
            "boxes": [
              {
                "box": {
                  "id": "mb2c-l",
                  "maxclass": "inlet",
                  "patching_rect": [
                    30,
                    30,
                    30,
                    30
                  ],
                  "index": 1
                }
              },
              {
                "box": {
                  "id": "mb2c-r",
                  "maxclass": "inlet",
                  "patching_rect": [
                    80,
                    30,
                    30,
                    30
                  ],
                  "index": 2
                }
              },
              {
                "box": {
                  "id": "mb2c-enable",
                  "maxclass": "inlet",
                  "patching_rect": [
                    150,
                    30,
                    30,
                    30
                  ],
                  "index": 3
                }
              },
              {
                "box": {
                  "id": "mb2c-test",
                  "maxclass": "inlet",
                  "patching_rect": [
                    210,
                    30,
                    30,
                    30
                  ],
                  "index": 4
                }
              },
              {
                "box": {
                  "id": "mb2c-low-x",
                  "maxclass": "inlet",
                  "patching_rect": [
                    290,
                    30,
                    30,
                    30
                  ],
                  "index": 5
                }
              },
              {
                "box": {
                  "id": "mb2c-high-x",
                  "maxclass": "inlet",
                  "patching_rect": [
                    360,
                    30,
                    30,
                    30
                  ],
                  "index": 6
                }
              },
              {
                "box": {
                  "id": "mb2c-low-gain",
                  "maxclass": "inlet",
                  "patching_rect": [
                    450,
                    30,
                    30,
                    30
                  ],
                  "index": 7
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-gain",
                  "maxclass": "inlet",
                  "patching_rect": [
                    520,
                    30,
                    30,
                    30
                  ],
                  "index": 8
                }
              },
              {
                "box": {
                  "id": "mb2c-high-gain",
                  "maxclass": "inlet",
                  "patching_rect": [
                    590,
                    30,
                    30,
                    30
                  ],
                  "index": 9
                }
              },
              {
                "box": {
                  "id": "mb2c-low-drive",
                  "maxclass": "inlet",
                  "patching_rect": [
                    680,
                    30,
                    30,
                    30
                  ],
                  "index": 10
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-drive",
                  "maxclass": "inlet",
                  "patching_rect": [
                    750,
                    30,
                    30,
                    30
                  ],
                  "index": 11
                }
              },
              {
                "box": {
                  "id": "mb2c-high-drive",
                  "maxclass": "inlet",
                  "patching_rect": [
                    820,
                    30,
                    30,
                    30
                  ],
                  "index": 12
                }
              },
              {
                "box": {
                  "id": "mb2c-low-width",
                  "maxclass": "inlet",
                  "patching_rect": [
                    910,
                    30,
                    30,
                    30
                  ],
                  "index": 13
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-width",
                  "maxclass": "inlet",
                  "patching_rect": [
                    980,
                    30,
                    30,
                    30
                  ],
                  "index": 14
                }
              },
              {
                "box": {
                  "id": "mb2c-high-width",
                  "maxclass": "inlet",
                  "patching_rect": [
                    1050,
                    30,
                    30,
                    30
                  ],
                  "index": 15
                }
              },
              {
                "box": {
                  "id": "mb2c-cross-low-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    245,
                    90,
                    22
                  ],
                  "text": "cross~ 250.",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "mb2c-cross-high-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    135,
                    275,
                    95,
                    22
                  ],
                  "text": "cross~ 3500.",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "mb2c-cross-low-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    260,
                    245,
                    90,
                    22
                  ],
                  "text": "cross~ 250.",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "mb2c-cross-high-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    365,
                    275,
                    95,
                    22
                  ],
                  "text": "cross~ 3500.",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "signal",
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "mb2c-low-gain-dbtoa",
                  "maxclass": "newobj",
                  "patching_rect": [
                    500,
                    165,
                    58,
                    22
                  ],
                  "text": "dbtoa"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-gain-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    500,
                    195,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-gain-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    500,
                    225,
                    48,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-drive-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    570,
                    165,
                    72,
                    22
                  ],
                  "text": "clip 0. 18."
                }
              },
              {
                "box": {
                  "id": "mb2c-low-drive-dbtoa",
                  "maxclass": "newobj",
                  "patching_rect": [
                    570,
                    195,
                    58,
                    22
                  ],
                  "text": "dbtoa"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-drive-pre-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    570,
                    255,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-drive-pre-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    570,
                    285,
                    48,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-drive-mix-div",
                  "maxclass": "newobj",
                  "patching_rect": [
                    710,
                    195,
                    52,
                    22
                  ],
                  "text": "/ 18."
                }
              },
              {
                "box": {
                  "id": "mb2c-low-drive-mix-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    710,
                    225,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-drive-mix-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    710,
                    255,
                    48,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-one",
                  "maxclass": "newobj",
                  "patching_rect": [
                    770,
                    225,
                    55,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "mb2c-low-mix-inverse",
                  "maxclass": "newobj",
                  "patching_rect": [
                    770,
                    255,
                    38,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-width-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    835,
                    165,
                    70,
                    22
                  ],
                  "text": "clip 0. 2."
                }
              },
              {
                "box": {
                  "id": "mb2c-low-width-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    835,
                    195,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-width-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    835,
                    225,
                    48,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-l-dry",
                  "maxclass": "newobj",
                  "patching_rect": [
                    500,
                    345,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-l-pre",
                  "maxclass": "newobj",
                  "patching_rect": [
                    545,
                    345,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-l-sat",
                  "maxclass": "newobj",
                  "patching_rect": [
                    545,
                    375,
                    52,
                    22
                  ],
                  "text": "tanh~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-l-wet",
                  "maxclass": "newobj",
                  "patching_rect": [
                    545,
                    405,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-l-blend",
                  "maxclass": "newobj",
                  "patching_rect": [
                    500,
                    435,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-l-gain",
                  "maxclass": "newobj",
                  "patching_rect": [
                    500,
                    465,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-r-dry",
                  "maxclass": "newobj",
                  "patching_rect": [
                    650,
                    345,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-r-pre",
                  "maxclass": "newobj",
                  "patching_rect": [
                    695,
                    345,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-r-sat",
                  "maxclass": "newobj",
                  "patching_rect": [
                    695,
                    375,
                    52,
                    22
                  ],
                  "text": "tanh~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-r-wet",
                  "maxclass": "newobj",
                  "patching_rect": [
                    695,
                    405,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-r-blend",
                  "maxclass": "newobj",
                  "patching_rect": [
                    650,
                    435,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-r-gain",
                  "maxclass": "newobj",
                  "patching_rect": [
                    650,
                    465,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-sum",
                  "maxclass": "newobj",
                  "patching_rect": [
                    570,
                    505,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-sum-half",
                  "maxclass": "newobj",
                  "patching_rect": [
                    570,
                    535,
                    58,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-diff",
                  "maxclass": "newobj",
                  "patching_rect": [
                    655,
                    505,
                    38,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-diff-half",
                  "maxclass": "newobj",
                  "patching_rect": [
                    655,
                    535,
                    58,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-side-width",
                  "maxclass": "newobj",
                  "patching_rect": [
                    655,
                    565,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-out-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    570,
                    595,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-out-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    655,
                    595,
                    38,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-abs-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    740,
                    505,
                    45,
                    22
                  ],
                  "text": "abs~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-abs-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    790,
                    505,
                    45,
                    22
                  ],
                  "text": "abs~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-energy-sum",
                  "maxclass": "newobj",
                  "patching_rect": [
                    765,
                    535,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-low-energy",
                  "maxclass": "newobj",
                  "patching_rect": [
                    765,
                    565,
                    58,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-gain-dbtoa",
                  "maxclass": "newobj",
                  "patching_rect": [
                    850,
                    165,
                    58,
                    22
                  ],
                  "text": "dbtoa"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-gain-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    850,
                    195,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-gain-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    850,
                    225,
                    48,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-drive-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    920,
                    165,
                    72,
                    22
                  ],
                  "text": "clip 0. 18."
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-drive-dbtoa",
                  "maxclass": "newobj",
                  "patching_rect": [
                    920,
                    195,
                    58,
                    22
                  ],
                  "text": "dbtoa"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-drive-pre-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    920,
                    255,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-drive-pre-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    920,
                    285,
                    48,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-drive-mix-div",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1060,
                    195,
                    52,
                    22
                  ],
                  "text": "/ 18."
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-drive-mix-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    1060,
                    225,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-drive-mix-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1060,
                    255,
                    48,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-one",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1120,
                    225,
                    55,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-mix-inverse",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1120,
                    255,
                    38,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-width-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1185,
                    165,
                    70,
                    22
                  ],
                  "text": "clip 0. 2."
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-width-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    1185,
                    195,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-width-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1185,
                    225,
                    48,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-l-dry",
                  "maxclass": "newobj",
                  "patching_rect": [
                    850,
                    345,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-l-pre",
                  "maxclass": "newobj",
                  "patching_rect": [
                    895,
                    345,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-l-sat",
                  "maxclass": "newobj",
                  "patching_rect": [
                    895,
                    375,
                    52,
                    22
                  ],
                  "text": "tanh~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-l-wet",
                  "maxclass": "newobj",
                  "patching_rect": [
                    895,
                    405,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-l-blend",
                  "maxclass": "newobj",
                  "patching_rect": [
                    850,
                    435,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-l-gain",
                  "maxclass": "newobj",
                  "patching_rect": [
                    850,
                    465,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-r-dry",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1000,
                    345,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-r-pre",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1045,
                    345,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-r-sat",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1045,
                    375,
                    52,
                    22
                  ],
                  "text": "tanh~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-r-wet",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1045,
                    405,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-r-blend",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1000,
                    435,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-r-gain",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1000,
                    465,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-sum",
                  "maxclass": "newobj",
                  "patching_rect": [
                    920,
                    505,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-sum-half",
                  "maxclass": "newobj",
                  "patching_rect": [
                    920,
                    535,
                    58,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-diff",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1005,
                    505,
                    38,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-diff-half",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1005,
                    535,
                    58,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-side-width",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1005,
                    565,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-out-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    920,
                    595,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-out-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1005,
                    595,
                    38,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-abs-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1090,
                    505,
                    45,
                    22
                  ],
                  "text": "abs~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-abs-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1140,
                    505,
                    45,
                    22
                  ],
                  "text": "abs~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-energy-sum",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1115,
                    535,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-mid-energy",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1115,
                    565,
                    58,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-gain-dbtoa",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1200,
                    165,
                    58,
                    22
                  ],
                  "text": "dbtoa"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-gain-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    1200,
                    195,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-gain-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1200,
                    225,
                    48,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-drive-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1270,
                    165,
                    72,
                    22
                  ],
                  "text": "clip 0. 18."
                }
              },
              {
                "box": {
                  "id": "mb2c-high-drive-dbtoa",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1270,
                    195,
                    58,
                    22
                  ],
                  "text": "dbtoa"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-drive-pre-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    1270,
                    255,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-drive-pre-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1270,
                    285,
                    48,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-drive-mix-div",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1410,
                    195,
                    52,
                    22
                  ],
                  "text": "/ 18."
                }
              },
              {
                "box": {
                  "id": "mb2c-high-drive-mix-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    1410,
                    225,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-drive-mix-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1410,
                    255,
                    48,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-one",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1470,
                    225,
                    55,
                    22
                  ],
                  "text": "sig~ 1."
                }
              },
              {
                "box": {
                  "id": "mb2c-high-mix-inverse",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1470,
                    255,
                    38,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-width-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1535,
                    165,
                    70,
                    22
                  ],
                  "text": "clip 0. 2."
                }
              },
              {
                "box": {
                  "id": "mb2c-high-width-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    1535,
                    195,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-width-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1535,
                    225,
                    48,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-l-dry",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1200,
                    345,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-l-pre",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1245,
                    345,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-l-sat",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1245,
                    375,
                    52,
                    22
                  ],
                  "text": "tanh~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-l-wet",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1245,
                    405,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-l-blend",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1200,
                    435,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-l-gain",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1200,
                    465,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-r-dry",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1350,
                    345,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-r-pre",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1395,
                    345,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-r-sat",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1395,
                    375,
                    52,
                    22
                  ],
                  "text": "tanh~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-r-wet",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1395,
                    405,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-r-blend",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1350,
                    435,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-r-gain",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1350,
                    465,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-sum",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1270,
                    505,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-sum-half",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1270,
                    535,
                    58,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-diff",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1355,
                    505,
                    38,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-diff-half",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1355,
                    535,
                    58,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-side-width",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1355,
                    565,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-out-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1270,
                    595,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-out-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1355,
                    595,
                    38,
                    22
                  ],
                  "text": "-~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-abs-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1440,
                    505,
                    45,
                    22
                  ],
                  "text": "abs~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-abs-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1490,
                    505,
                    45,
                    22
                  ],
                  "text": "abs~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-energy-sum",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1465,
                    535,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-high-energy",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1465,
                    565,
                    58,
                    22
                  ],
                  "text": "*~ 0.5"
                }
              },
              {
                "box": {
                  "id": "mb2c-sum-l-a",
                  "maxclass": "newobj",
                  "patching_rect": [
                    640,
                    680,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-sum-l-b",
                  "maxclass": "newobj",
                  "patching_rect": [
                    700,
                    710,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-sum-r-a",
                  "maxclass": "newobj",
                  "patching_rect": [
                    820,
                    680,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-sum-r-b",
                  "maxclass": "newobj",
                  "patching_rect": [
                    880,
                    710,
                    38,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mb2c-limit-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    700,
                    740,
                    105,
                    22
                  ],
                  "text": "clip~ -0.98 0.98"
                }
              },
              {
                "box": {
                  "id": "mb2c-limit-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    880,
                    740,
                    105,
                    22
                  ],
                  "text": "clip~ -0.98 0.98"
                }
              },
              {
                "box": {
                  "id": "mb2c-enable-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    150,
                    680,
                    65,
                    22
                  ],
                  "text": "clip 0 1"
                }
              },
              {
                "box": {
                  "id": "mb2c-enable-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    150,
                    710,
                    52,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mb2c-enable-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    150,
                    740,
                    48,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mb2c-gate-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    700,
                    775,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-gate-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    880,
                    775,
                    38,
                    22
                  ],
                  "text": "*~"
                }
              },
              {
                "box": {
                  "id": "mb2c-out-l",
                  "maxclass": "outlet",
                  "patching_rect": [
                    700,
                    810,
                    30,
                    30
                  ],
                  "index": 1,
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "mb2c-out-r",
                  "maxclass": "outlet",
                  "patching_rect": [
                    880,
                    810,
                    30,
                    30
                  ],
                  "index": 2,
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "mb2c-out-low-energy",
                  "maxclass": "outlet",
                  "patching_rect": [
                    1080,
                    810,
                    30,
                    30
                  ],
                  "index": 3,
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "mb2c-out-mid-energy",
                  "maxclass": "outlet",
                  "patching_rect": [
                    1150,
                    810,
                    30,
                    30
                  ],
                  "index": 4,
                  "outlettype": [
                    "signal"
                  ]
                }
              },
              {
                "box": {
                  "id": "mb2c-out-high-energy",
                  "maxclass": "outlet",
                  "patching_rect": [
                    1220,
                    810,
                    30,
                    30
                  ],
                  "index": 5,
                  "outlettype": [
                    "signal"
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "mb2c-l",
                    0
                  ],
                  "destination": [
                    "mb2c-cross-low-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-r",
                    0
                  ],
                  "destination": [
                    "mb2c-cross-low-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-x",
                    0
                  ],
                  "destination": [
                    "mb2c-cross-low-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-x",
                    0
                  ],
                  "destination": [
                    "mb2c-cross-low-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-low-l",
                    1
                  ],
                  "destination": [
                    "mb2c-cross-high-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-low-r",
                    1
                  ],
                  "destination": [
                    "mb2c-cross-high-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-x",
                    0
                  ],
                  "destination": [
                    "mb2c-cross-high-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-x",
                    0
                  ],
                  "destination": [
                    "mb2c-cross-high-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-low-gain-dbtoa",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-gain-dbtoa",
                    0
                  ],
                  "destination": [
                    "mb2c-low-gain-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-gain-msg",
                    0
                  ],
                  "destination": [
                    "mb2c-low-gain-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-drive",
                    0
                  ],
                  "destination": [
                    "mb2c-low-drive-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-drive-clip",
                    0
                  ],
                  "destination": [
                    "mb2c-low-drive-dbtoa",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-drive-dbtoa",
                    0
                  ],
                  "destination": [
                    "mb2c-low-drive-pre-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-drive-pre-msg",
                    0
                  ],
                  "destination": [
                    "mb2c-low-drive-pre-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-drive-clip",
                    0
                  ],
                  "destination": [
                    "mb2c-low-drive-mix-div",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-drive-mix-div",
                    0
                  ],
                  "destination": [
                    "mb2c-low-drive-mix-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-drive-mix-msg",
                    0
                  ],
                  "destination": [
                    "mb2c-low-drive-mix-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-one",
                    0
                  ],
                  "destination": [
                    "mb2c-low-mix-inverse",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-drive-mix-line",
                    0
                  ],
                  "destination": [
                    "mb2c-low-mix-inverse",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-width",
                    0
                  ],
                  "destination": [
                    "mb2c-low-width-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-width-clip",
                    0
                  ],
                  "destination": [
                    "mb2c-low-width-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-width-msg",
                    0
                  ],
                  "destination": [
                    "mb2c-low-width-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-low-l",
                    0
                  ],
                  "destination": [
                    "mb2c-low-l-dry",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-mix-inverse",
                    0
                  ],
                  "destination": [
                    "mb2c-low-l-dry",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-low-l",
                    0
                  ],
                  "destination": [
                    "mb2c-low-l-pre",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-drive-pre-line",
                    0
                  ],
                  "destination": [
                    "mb2c-low-l-pre",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-l-pre",
                    0
                  ],
                  "destination": [
                    "mb2c-low-l-sat",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-l-sat",
                    0
                  ],
                  "destination": [
                    "mb2c-low-l-wet",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-drive-mix-line",
                    0
                  ],
                  "destination": [
                    "mb2c-low-l-wet",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-l-dry",
                    0
                  ],
                  "destination": [
                    "mb2c-low-l-blend",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-l-wet",
                    0
                  ],
                  "destination": [
                    "mb2c-low-l-blend",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-l-blend",
                    0
                  ],
                  "destination": [
                    "mb2c-low-l-gain",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-gain-line",
                    0
                  ],
                  "destination": [
                    "mb2c-low-l-gain",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-low-r",
                    0
                  ],
                  "destination": [
                    "mb2c-low-r-dry",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-mix-inverse",
                    0
                  ],
                  "destination": [
                    "mb2c-low-r-dry",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-low-r",
                    0
                  ],
                  "destination": [
                    "mb2c-low-r-pre",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-drive-pre-line",
                    0
                  ],
                  "destination": [
                    "mb2c-low-r-pre",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-r-pre",
                    0
                  ],
                  "destination": [
                    "mb2c-low-r-sat",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-r-sat",
                    0
                  ],
                  "destination": [
                    "mb2c-low-r-wet",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-drive-mix-line",
                    0
                  ],
                  "destination": [
                    "mb2c-low-r-wet",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-r-dry",
                    0
                  ],
                  "destination": [
                    "mb2c-low-r-blend",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-r-wet",
                    0
                  ],
                  "destination": [
                    "mb2c-low-r-blend",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-r-blend",
                    0
                  ],
                  "destination": [
                    "mb2c-low-r-gain",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-gain-line",
                    0
                  ],
                  "destination": [
                    "mb2c-low-r-gain",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-l-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-low-sum",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-r-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-low-sum",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-sum",
                    0
                  ],
                  "destination": [
                    "mb2c-low-sum-half",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-l-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-low-diff",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-r-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-low-diff",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-diff",
                    0
                  ],
                  "destination": [
                    "mb2c-low-diff-half",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-diff-half",
                    0
                  ],
                  "destination": [
                    "mb2c-low-side-width",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-width-line",
                    0
                  ],
                  "destination": [
                    "mb2c-low-side-width",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-sum-half",
                    0
                  ],
                  "destination": [
                    "mb2c-low-out-l",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-side-width",
                    0
                  ],
                  "destination": [
                    "mb2c-low-out-l",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-sum-half",
                    0
                  ],
                  "destination": [
                    "mb2c-low-out-r",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-side-width",
                    0
                  ],
                  "destination": [
                    "mb2c-low-out-r",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-out-l",
                    0
                  ],
                  "destination": [
                    "mb2c-low-abs-l",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-out-r",
                    0
                  ],
                  "destination": [
                    "mb2c-low-abs-r",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-abs-l",
                    0
                  ],
                  "destination": [
                    "mb2c-low-energy-sum",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-abs-r",
                    0
                  ],
                  "destination": [
                    "mb2c-low-energy-sum",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-energy-sum",
                    0
                  ],
                  "destination": [
                    "mb2c-low-energy",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-gain-dbtoa",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-gain-dbtoa",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-gain-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-gain-msg",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-gain-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-drive",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-drive-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-drive-clip",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-drive-dbtoa",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-drive-dbtoa",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-drive-pre-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-drive-pre-msg",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-drive-pre-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-drive-clip",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-drive-mix-div",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-drive-mix-div",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-drive-mix-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-drive-mix-msg",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-drive-mix-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-one",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-mix-inverse",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-drive-mix-line",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-mix-inverse",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-width",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-width-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-width-clip",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-width-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-width-msg",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-width-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-high-l",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-l-dry",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-mix-inverse",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-l-dry",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-high-l",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-l-pre",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-drive-pre-line",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-l-pre",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-l-pre",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-l-sat",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-l-sat",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-l-wet",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-drive-mix-line",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-l-wet",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-l-dry",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-l-blend",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-l-wet",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-l-blend",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-l-blend",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-l-gain",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-gain-line",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-l-gain",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-high-r",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-r-dry",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-mix-inverse",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-r-dry",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-high-r",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-r-pre",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-drive-pre-line",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-r-pre",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-r-pre",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-r-sat",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-r-sat",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-r-wet",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-drive-mix-line",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-r-wet",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-r-dry",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-r-blend",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-r-wet",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-r-blend",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-r-blend",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-r-gain",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-gain-line",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-r-gain",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-l-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-sum",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-r-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-sum",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-sum",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-sum-half",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-l-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-diff",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-r-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-diff",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-diff",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-diff-half",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-diff-half",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-side-width",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-width-line",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-side-width",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-sum-half",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-out-l",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-side-width",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-out-l",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-sum-half",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-out-r",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-side-width",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-out-r",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-out-l",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-abs-l",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-out-r",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-abs-r",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-abs-l",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-energy-sum",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-abs-r",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-energy-sum",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-energy-sum",
                    0
                  ],
                  "destination": [
                    "mb2c-mid-energy",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-high-gain-dbtoa",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-gain-dbtoa",
                    0
                  ],
                  "destination": [
                    "mb2c-high-gain-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-gain-msg",
                    0
                  ],
                  "destination": [
                    "mb2c-high-gain-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-drive",
                    0
                  ],
                  "destination": [
                    "mb2c-high-drive-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-drive-clip",
                    0
                  ],
                  "destination": [
                    "mb2c-high-drive-dbtoa",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-drive-dbtoa",
                    0
                  ],
                  "destination": [
                    "mb2c-high-drive-pre-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-drive-pre-msg",
                    0
                  ],
                  "destination": [
                    "mb2c-high-drive-pre-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-drive-clip",
                    0
                  ],
                  "destination": [
                    "mb2c-high-drive-mix-div",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-drive-mix-div",
                    0
                  ],
                  "destination": [
                    "mb2c-high-drive-mix-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-drive-mix-msg",
                    0
                  ],
                  "destination": [
                    "mb2c-high-drive-mix-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-one",
                    0
                  ],
                  "destination": [
                    "mb2c-high-mix-inverse",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-drive-mix-line",
                    0
                  ],
                  "destination": [
                    "mb2c-high-mix-inverse",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-width",
                    0
                  ],
                  "destination": [
                    "mb2c-high-width-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-width-clip",
                    0
                  ],
                  "destination": [
                    "mb2c-high-width-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-width-msg",
                    0
                  ],
                  "destination": [
                    "mb2c-high-width-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-high-l",
                    1
                  ],
                  "destination": [
                    "mb2c-high-l-dry",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-mix-inverse",
                    0
                  ],
                  "destination": [
                    "mb2c-high-l-dry",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-high-l",
                    1
                  ],
                  "destination": [
                    "mb2c-high-l-pre",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-drive-pre-line",
                    0
                  ],
                  "destination": [
                    "mb2c-high-l-pre",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-l-pre",
                    0
                  ],
                  "destination": [
                    "mb2c-high-l-sat",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-l-sat",
                    0
                  ],
                  "destination": [
                    "mb2c-high-l-wet",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-drive-mix-line",
                    0
                  ],
                  "destination": [
                    "mb2c-high-l-wet",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-l-dry",
                    0
                  ],
                  "destination": [
                    "mb2c-high-l-blend",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-l-wet",
                    0
                  ],
                  "destination": [
                    "mb2c-high-l-blend",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-l-blend",
                    0
                  ],
                  "destination": [
                    "mb2c-high-l-gain",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-gain-line",
                    0
                  ],
                  "destination": [
                    "mb2c-high-l-gain",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-high-r",
                    1
                  ],
                  "destination": [
                    "mb2c-high-r-dry",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-mix-inverse",
                    0
                  ],
                  "destination": [
                    "mb2c-high-r-dry",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-cross-high-r",
                    1
                  ],
                  "destination": [
                    "mb2c-high-r-pre",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-drive-pre-line",
                    0
                  ],
                  "destination": [
                    "mb2c-high-r-pre",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-r-pre",
                    0
                  ],
                  "destination": [
                    "mb2c-high-r-sat",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-r-sat",
                    0
                  ],
                  "destination": [
                    "mb2c-high-r-wet",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-drive-mix-line",
                    0
                  ],
                  "destination": [
                    "mb2c-high-r-wet",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-r-dry",
                    0
                  ],
                  "destination": [
                    "mb2c-high-r-blend",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-r-wet",
                    0
                  ],
                  "destination": [
                    "mb2c-high-r-blend",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-r-blend",
                    0
                  ],
                  "destination": [
                    "mb2c-high-r-gain",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-gain-line",
                    0
                  ],
                  "destination": [
                    "mb2c-high-r-gain",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-l-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-high-sum",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-r-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-high-sum",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-sum",
                    0
                  ],
                  "destination": [
                    "mb2c-high-sum-half",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-l-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-high-diff",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-r-gain",
                    0
                  ],
                  "destination": [
                    "mb2c-high-diff",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-diff",
                    0
                  ],
                  "destination": [
                    "mb2c-high-diff-half",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-diff-half",
                    0
                  ],
                  "destination": [
                    "mb2c-high-side-width",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-width-line",
                    0
                  ],
                  "destination": [
                    "mb2c-high-side-width",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-sum-half",
                    0
                  ],
                  "destination": [
                    "mb2c-high-out-l",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-side-width",
                    0
                  ],
                  "destination": [
                    "mb2c-high-out-l",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-sum-half",
                    0
                  ],
                  "destination": [
                    "mb2c-high-out-r",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-side-width",
                    0
                  ],
                  "destination": [
                    "mb2c-high-out-r",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-out-l",
                    0
                  ],
                  "destination": [
                    "mb2c-high-abs-l",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-out-r",
                    0
                  ],
                  "destination": [
                    "mb2c-high-abs-r",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-abs-l",
                    0
                  ],
                  "destination": [
                    "mb2c-high-energy-sum",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-abs-r",
                    0
                  ],
                  "destination": [
                    "mb2c-high-energy-sum",
                    1
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-energy-sum",
                    0
                  ],
                  "destination": [
                    "mb2c-high-energy",
                    0
                  ],
                  "color": [
                    0.93,
                    0.98,
                    0.45,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-out-l",
                    0
                  ],
                  "destination": [
                    "mb2c-sum-l-a",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-out-l",
                    0
                  ],
                  "destination": [
                    "mb2c-sum-l-a",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-sum-l-a",
                    0
                  ],
                  "destination": [
                    "mb2c-sum-l-b",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-out-l",
                    0
                  ],
                  "destination": [
                    "mb2c-sum-l-b",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-out-r",
                    0
                  ],
                  "destination": [
                    "mb2c-sum-r-a",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-out-r",
                    0
                  ],
                  "destination": [
                    "mb2c-sum-r-a",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-sum-r-a",
                    0
                  ],
                  "destination": [
                    "mb2c-sum-r-b",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-out-r",
                    0
                  ],
                  "destination": [
                    "mb2c-sum-r-b",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-sum-l-b",
                    0
                  ],
                  "destination": [
                    "mb2c-limit-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-sum-r-b",
                    0
                  ],
                  "destination": [
                    "mb2c-limit-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-enable",
                    0
                  ],
                  "destination": [
                    "mb2c-enable-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-enable-clip",
                    0
                  ],
                  "destination": [
                    "mb2c-enable-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-enable-msg",
                    0
                  ],
                  "destination": [
                    "mb2c-enable-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-limit-l",
                    0
                  ],
                  "destination": [
                    "mb2c-gate-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-limit-r",
                    0
                  ],
                  "destination": [
                    "mb2c-gate-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-enable-line",
                    0
                  ],
                  "destination": [
                    "mb2c-gate-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-enable-line",
                    0
                  ],
                  "destination": [
                    "mb2c-gate-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-gate-l",
                    0
                  ],
                  "destination": [
                    "mb2c-out-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-gate-r",
                    0
                  ],
                  "destination": [
                    "mb2c-out-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-low-energy",
                    0
                  ],
                  "destination": [
                    "mb2c-out-low-energy",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-mid-energy",
                    0
                  ],
                  "destination": [
                    "mb2c-out-mid-energy",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mb2c-high-energy",
                    0
                  ],
                  "destination": [
                    "mb2c-out-high-energy",
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
          "id": "mb2-snapshot-low",
          "maxclass": "newobj",
          "patching_rect": [
            300,
            550,
            82,
            22
          ],
          "text": "snapshot~ 33"
        }
      },
      {
        "box": {
          "id": "mb2-snapshot-mid",
          "maxclass": "newobj",
          "patching_rect": [
            390,
            550,
            82,
            22
          ],
          "text": "snapshot~ 33"
        }
      },
      {
        "box": {
          "id": "mb2-snapshot-high",
          "maxclass": "newobj",
          "patching_rect": [
            480,
            550,
            82,
            22
          ],
          "text": "snapshot~ 33"
        }
      },
      {
        "box": {
          "id": "mb2-output-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            980,
            138,
            58,
            160
          ],
          "numinlets": 2,
          "numoutlets": 5,
          "channels": 2,
          "parameter_enable": 1,
          "showname": 0,
          "presentation": 1,
          "presentation_rect": [
            980,
            130,
            58,
            170
          ],
          "varname": "multiband_filter_output_gain",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_mmax": 6,
              "parameter_mmin": -70,
              "parameter_modmode": 0,
              "parameter_shortname": "OUTPUT",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          }
        }
      },
      {
        "box": {
          "id": "mb2-output-label",
          "maxclass": "comment",
          "patching_rect": [
            976,
            310,
            70,
            18
          ],
          "text": "OUTPUT",
          "fontface": 1,
          "presentation": 1,
          "presentation_rect": [
            976,
            310,
            70,
            18
          ]
        }
      },
      {
        "box": {
          "id": "mb2-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            980,
            430,
            30,
            30
          ],
          "index": 1,
          "comment": "Processed L"
        }
      },
      {
        "box": {
          "id": "mb2-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            1020,
            430,
            30,
            30
          ],
          "index": 2,
          "comment": "Processed R"
        }
      },
      {
        "box": {
          "id": "mb2-preset",
          "maxclass": "umenu",
          "items": [
            "Warm Focus",
            ",",
            "Vocal Presence",
            ",",
            "Wide Motion"
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
            1100,
            20,
            160,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            910,
            14,
            160,
            22
          ],
          "varname": "mb2_preset"
        }
      },
      {
        "box": {
          "id": "mb2-preset-message",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1100,
            60,
            95,
            22
          ],
          "text": "prepend preset"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "mb2-in-l",
            0
          ],
          "destination": [
            "mb2-core",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-in-r",
            0
          ],
          "destination": [
            "mb2-core",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-in-enable",
            0
          ],
          "destination": [
            "mb2-enable-set",
            0
          ],
          "color": [
            0.3,
            0.65,
            0.86,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-enable-set",
            0
          ],
          "destination": [
            "mb2-enable",
            0
          ],
          "color": [
            0.3,
            0.65,
            0.86,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-in-enable",
            0
          ],
          "destination": [
            "mb2-core",
            2
          ],
          "color": [
            0.3,
            0.65,
            0.86,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-enable",
            0
          ],
          "destination": [
            "mb2-core",
            2
          ],
          "color": [
            0.3,
            0.65,
            0.86,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-enable",
            0
          ],
          "destination": [
            "mb2-state",
            0
          ],
          "color": [
            0.3,
            0.65,
            0.86,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-in-focus",
            0
          ],
          "destination": [
            "mb2-focus-percent",
            0
          ],
          "color": [
            0.3,
            0.65,
            0.86,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-focus-percent",
            0
          ],
          "destination": [
            "mb2-focus",
            0
          ],
          "color": [
            0.3,
            0.65,
            0.86,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-in-contrast",
            0
          ],
          "destination": [
            "mb2-contrast-percent",
            0
          ],
          "color": [
            0.3,
            0.65,
            0.86,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-contrast-percent",
            0
          ],
          "destination": [
            "mb2-contrast",
            0
          ],
          "color": [
            0.3,
            0.65,
            0.86,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-in-spread",
            0
          ],
          "destination": [
            "mb2-spread-percent",
            0
          ],
          "color": [
            0.3,
            0.65,
            0.86,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-spread-percent",
            0
          ],
          "destination": [
            "mb2-spread",
            0
          ],
          "color": [
            0.3,
            0.65,
            0.86,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-band-menu",
            0
          ],
          "destination": [
            "mb2-controller",
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
            "mb2-gain",
            0
          ],
          "destination": [
            "mb2-controller",
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
            "mb2-drive",
            0
          ],
          "destination": [
            "mb2-controller",
            2
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
            "mb2-width",
            0
          ],
          "destination": [
            "mb2-controller",
            3
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
            "mb2-mute",
            0
          ],
          "destination": [
            "mb2-controller",
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
            "mb2-solo",
            0
          ],
          "destination": [
            "mb2-controller",
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
            "mb2-focus",
            0
          ],
          "destination": [
            "mb2-controller",
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
            "mb2-contrast",
            0
          ],
          "destination": [
            "mb2-controller",
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
            "mb2-spread",
            0
          ],
          "destination": [
            "mb2-controller",
            8
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
            "mb2-low-x",
            0
          ],
          "destination": [
            "mb2-controller",
            9
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
            "mb2-high-x",
            0
          ],
          "destination": [
            "mb2-controller",
            10
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
            "mb2-controller",
            0
          ],
          "destination": [
            "mb2-gain",
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
            "mb2-controller",
            1
          ],
          "destination": [
            "mb2-drive",
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
            "mb2-controller",
            2
          ],
          "destination": [
            "mb2-width",
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
            "mb2-controller",
            3
          ],
          "destination": [
            "mb2-mute",
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
            "mb2-controller",
            4
          ],
          "destination": [
            "mb2-solo",
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
            "mb2-controller",
            5
          ],
          "destination": [
            "mb2-core",
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
            "mb2-controller",
            6
          ],
          "destination": [
            "mb2-core",
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
            "mb2-controller",
            7
          ],
          "destination": [
            "mb2-core",
            8
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
            "mb2-controller",
            8
          ],
          "destination": [
            "mb2-core",
            9
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
            "mb2-controller",
            9
          ],
          "destination": [
            "mb2-core",
            10
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
            "mb2-controller",
            10
          ],
          "destination": [
            "mb2-core",
            11
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
            "mb2-controller",
            11
          ],
          "destination": [
            "mb2-core",
            12
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
            "mb2-controller",
            12
          ],
          "destination": [
            "mb2-core",
            13
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
            "mb2-controller",
            13
          ],
          "destination": [
            "mb2-core",
            14
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
            "mb2-controller",
            14
          ],
          "destination": [
            "mb2-visual",
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
            "mb2-controller",
            15
          ],
          "destination": [
            "mb2-core",
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
            "mb2-controller",
            16
          ],
          "destination": [
            "mb2-core",
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
            "mb2-init",
            0
          ],
          "destination": [
            "mb2-controller",
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
            "mb2-core",
            2
          ],
          "destination": [
            "mb2-snapshot-low",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-core",
            3
          ],
          "destination": [
            "mb2-snapshot-mid",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-core",
            4
          ],
          "destination": [
            "mb2-snapshot-high",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-snapshot-low",
            0
          ],
          "destination": [
            "mb2-visual",
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
            "mb2-snapshot-mid",
            0
          ],
          "destination": [
            "mb2-visual",
            2
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
            "mb2-snapshot-high",
            0
          ],
          "destination": [
            "mb2-visual",
            3
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
            "mb2-core",
            0
          ],
          "destination": [
            "mb2-output-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-core",
            1
          ],
          "destination": [
            "mb2-output-gain",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-output-gain",
            0
          ],
          "destination": [
            "mb2-out-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-output-gain",
            1
          ],
          "destination": [
            "mb2-out-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-preset",
            0
          ],
          "destination": [
            "mb2-preset-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-preset-message",
            0
          ],
          "destination": [
            "mb2-controller",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-controller",
            17
          ],
          "destination": [
            "mb2-focus",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-controller",
            18
          ],
          "destination": [
            "mb2-contrast",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-controller",
            19
          ],
          "destination": [
            "mb2-spread",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-controller",
            20
          ],
          "destination": [
            "mb2-low-x",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mb2-controller",
            21
          ],
          "destination": [
            "mb2-high-x",
            0
          ]
        }
      }
    ],
    "parameters": {
      "mb-low-x": [
        "multiband_low_x_hz",
        "LOW X Hz",
        0
      ],
      "mb-high-x": [
        "multiband_high_x_hz",
        "HIGH X Hz",
        0
      ],
      "mb-low-gain": [
        "multiband_low_gain_db",
        "LOW dB",
        0
      ],
      "mb-mid-gain": [
        "multiband_mid_gain_db",
        "MID dB",
        0
      ],
      "mb-high-gain": [
        "multiband_high_gain_db",
        "HIGH dB",
        0
      ],
      "mb-gain": [
        "multiband_output_gain",
        "Multiband Out",
        0
      ],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": [
            "multiband_low_x_hz",
            "multiband_high_x_hz",
            "multiband_low_gain_db",
            "multiband_mid_gain_db",
            "multiband_high_gain_db",
            "multiband_output_gain",
            "-",
            "-"
          ]
        }
      },
      "inherited_shortname": 1
    },
    "openrect": [
      80,
      80,
      1120,
      460
    ],
    "default_fontsize": 12
  }
}
