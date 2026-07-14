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
      700,
      390
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
          "id": "m-title",
          "maxclass": "comment",
          "patching_rect": [
            24,
            20,
            310,
            24
          ],
          "text": "MT Input Mic - portfolio source box",
          "presentation": 1,
          "presentation_rect": [
            12,
            8,
            300,
            22
          ]
        }
      },
      {
        "box": {
          "id": "m-note",
          "maxclass": "comment",
          "patching_rect": [
            24,
            48,
            560,
            22
          ],
          "text": "External inlet controls enable. UI selects mono channel or stereo pair. Output is clean stereo L/R.",
          "presentation": 1,
          "presentation_rect": [
            12,
            30,
            300,
            38
          ]
        }
      },
      {
        "box": {
          "id": "m-ext-enable",
          "maxclass": "inlet",
          "patching_rect": [
            24,
            95,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "m-ext-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            62,
            100,
            80,
            22
          ],
          "text": "in: enable"
        }
      },
      {
        "box": {
          "id": "m-enable",
          "maxclass": "toggle",
          "patching_rect": [
            24,
            145,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            12,
            82,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "m-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            55,
            148,
            70,
            22
          ],
          "text": "Enable",
          "presentation": 1,
          "presentation_rect": [
            44,
            84,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "m-channel",
          "maxclass": "number",
          "patching_rect": [
            145,
            145,
            70,
            22
          ],
          "minimum": 0,
          "maximum": 8,
          "presentation": 1,
          "presentation_rect": [
            12,
            148,
            68,
            22
          ]
        }
      },
      {
        "box": {
          "id": "m-channel-label",
          "maxclass": "comment",
          "patching_rect": [
            145,
            118,
            140,
            22
          ],
          "text": "Mono Channel 0-8",
          "presentation": 1,
          "presentation_rect": [
            12,
            122,
            130,
            22
          ]
        }
      },
      {
        "box": {
          "id": "m-pair",
          "maxclass": "radiogroup",
          "patching_rect": [
            310,
            130,
            20,
            94
          ],
          "size": 5,
          "presentation": 1,
          "presentation_rect": [
            128,
            128,
            20,
            94
          ]
        }
      },
      {
        "box": {
          "id": "m-pair-label",
          "maxclass": "comment",
          "patching_rect": [
            340,
            132,
            250,
            80
          ],
          "text": "Stereo Pair: off / 1-2 / 3-4 / 5-6 / 7-8",
          "presentation": 1,
          "presentation_rect": [
            158,
            130,
            155,
            80
          ]
        }
      },
      {
        "box": {
          "id": "p-Mic-input",
          "maxclass": "newobj",
          "patching_rect": [
            145,
            235,
            135,
            22
          ],
          "text": "p Mic_input",
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
              1100,
              700
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
                  "id": "mi-title",
                  "maxclass": "comment",
                  "patching_rect": [
                    35,
                    25,
                    760,
                    22
                  ],
                  "text": "Mic_input internals: adc 1-8 -> mono/stereo select -> 20ms enable ramp -> L/R"
                }
              },
              {
                "box": {
                  "id": "mi-enable",
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
                  "id": "mi-enable-label",
                  "maxclass": "comment",
                  "patching_rect": [
                    35,
                    70,
                    100,
                    22
                  ],
                  "text": "in 1 enable"
                }
              },
              {
                "box": {
                  "id": "mi-channel",
                  "maxclass": "inlet",
                  "patching_rect": [
                    165,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "mi-channel-label",
                  "maxclass": "comment",
                  "patching_rect": [
                    165,
                    70,
                    170,
                    22
                  ],
                  "text": "in 2 mono channel 0-8"
                }
              },
              {
                "box": {
                  "id": "mi-pair",
                  "maxclass": "inlet",
                  "patching_rect": [
                    355,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "mi-pair-label",
                  "maxclass": "comment",
                  "patching_rect": [
                    355,
                    70,
                    430,
                    22
                  ],
                  "text": "in 3 stereo pair 0/off, 1=1-2, 2=3-4, 3=5-6, 4=7-8"
                }
              },
              {
                "box": {
                  "id": "mi-enable-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    35,
                    140,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "mi-enable-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    180,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "mi-adc",
                  "maxclass": "newobj",
                  "patching_rect": [
                    165,
                    155,
                    185,
                    22
                  ],
                  "text": "adc~ 1 2 3 4 5 6 7 8"
                }
              },
              {
                "box": {
                  "id": "mi-mono-selector",
                  "maxclass": "newobj",
                  "patching_rect": [
                    165,
                    250,
                    95,
                    22
                  ],
                  "text": "selector~ 8"
                }
              },
              {
                "box": {
                  "id": "mi-pair-selector-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    315,
                    250,
                    95,
                    22
                  ],
                  "text": "selector~ 4"
                }
              },
              {
                "box": {
                  "id": "mi-pair-selector-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    465,
                    250,
                    95,
                    22
                  ],
                  "text": "selector~ 4"
                }
              },
              {
                "box": {
                  "id": "mi-channel-clears-pair",
                  "maxclass": "newobj",
                  "patching_rect": [
                    165,
                    125,
                    45,
                    22
                  ],
                  "text": "t 0"
                }
              },
              {
                "box": {
                  "id": "mi-pair-gt0",
                  "maxclass": "newobj",
                  "patching_rect": [
                    355,
                    125,
                    45,
                    22
                  ],
                  "text": "> 0"
                }
              },
              {
                "box": {
                  "id": "mi-pair-sel",
                  "maxclass": "newobj",
                  "patching_rect": [
                    355,
                    160,
                    45,
                    22
                  ],
                  "text": "sel 1"
                }
              },
              {
                "box": {
                  "id": "mi-clear-mono",
                  "maxclass": "message",
                  "patching_rect": [
                    355,
                    195,
                    35,
                    22
                  ],
                  "text": "0"
                }
              },
              {
                "box": {
                  "id": "mi-sum-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    165,
                    345,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mi-sum-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    250,
                    345,
                    35,
                    22
                  ],
                  "text": "+~"
                }
              },
              {
                "box": {
                  "id": "mi-gate-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    165,
                    430,
                    55,
                    22
                  ],
                  "text": "*~ 0."
                }
              },
              {
                "box": {
                  "id": "mi-gate-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    250,
                    430,
                    55,
                    22
                  ],
                  "text": "*~ 0."
                }
              },
              {
                "box": {
                  "id": "mi-out-l",
                  "maxclass": "outlet",
                  "patching_rect": [
                    165,
                    520,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "mi-out-r",
                  "maxclass": "outlet",
                  "patching_rect": [
                    250,
                    520,
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
                    "mi-enable",
                    0
                  ],
                  "destination": [
                    "mi-enable-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-enable-msg",
                    0
                  ],
                  "destination": [
                    "mi-enable-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-channel",
                    0
                  ],
                  "destination": [
                    "mi-mono-selector",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-channel",
                    0
                  ],
                  "destination": [
                    "mi-channel-clears-pair",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-channel-clears-pair",
                    0
                  ],
                  "destination": [
                    "mi-pair-selector-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-channel-clears-pair",
                    0
                  ],
                  "destination": [
                    "mi-pair-selector-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-pair",
                    0
                  ],
                  "destination": [
                    "mi-pair-selector-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-pair",
                    0
                  ],
                  "destination": [
                    "mi-pair-selector-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-pair",
                    0
                  ],
                  "destination": [
                    "mi-pair-gt0",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-pair-gt0",
                    0
                  ],
                  "destination": [
                    "mi-pair-sel",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-pair-sel",
                    0
                  ],
                  "destination": [
                    "mi-clear-mono",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-clear-mono",
                    0
                  ],
                  "destination": [
                    "mi-mono-selector",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    0
                  ],
                  "destination": [
                    "mi-mono-selector",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    1
                  ],
                  "destination": [
                    "mi-mono-selector",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    2
                  ],
                  "destination": [
                    "mi-mono-selector",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    3
                  ],
                  "destination": [
                    "mi-mono-selector",
                    4
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    4
                  ],
                  "destination": [
                    "mi-mono-selector",
                    5
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    5
                  ],
                  "destination": [
                    "mi-mono-selector",
                    6
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    6
                  ],
                  "destination": [
                    "mi-mono-selector",
                    7
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    7
                  ],
                  "destination": [
                    "mi-mono-selector",
                    8
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    0
                  ],
                  "destination": [
                    "mi-pair-selector-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    2
                  ],
                  "destination": [
                    "mi-pair-selector-l",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    4
                  ],
                  "destination": [
                    "mi-pair-selector-l",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    6
                  ],
                  "destination": [
                    "mi-pair-selector-l",
                    4
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    1
                  ],
                  "destination": [
                    "mi-pair-selector-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    3
                  ],
                  "destination": [
                    "mi-pair-selector-r",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    5
                  ],
                  "destination": [
                    "mi-pair-selector-r",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-adc",
                    7
                  ],
                  "destination": [
                    "mi-pair-selector-r",
                    4
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-mono-selector",
                    0
                  ],
                  "destination": [
                    "mi-sum-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-mono-selector",
                    0
                  ],
                  "destination": [
                    "mi-sum-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-pair-selector-l",
                    0
                  ],
                  "destination": [
                    "mi-sum-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-pair-selector-r",
                    0
                  ],
                  "destination": [
                    "mi-sum-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-sum-l",
                    0
                  ],
                  "destination": [
                    "mi-gate-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-sum-r",
                    0
                  ],
                  "destination": [
                    "mi-gate-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-enable-line",
                    0
                  ],
                  "destination": [
                    "mi-gate-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-enable-line",
                    0
                  ],
                  "destination": [
                    "mi-gate-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-gate-l",
                    0
                  ],
                  "destination": [
                    "mi-out-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "mi-gate-r",
                    0
                  ],
                  "destination": [
                    "mi-out-r",
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
          "id": "m-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            325,
            220,
            54,
            140
          ],
          "numinlets": 2,
          "numoutlets": 5,
          "channels": 2,
          "parameter_enable": 1,
          "showname": 0,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                -12
              ],
              "parameter_mmax": 6,
              "parameter_mmin": -70,
              "parameter_modmode": 0,
              "parameter_shortname": "Mic Input",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            246,
            78,
            54,
            138
          ]
        }
      },
      {
        "box": {
          "id": "m-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            520,
            245,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "m-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            570,
            245,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "m-out-label",
          "maxclass": "comment",
          "patching_rect": [
            505,
            285,
            160,
            22
          ],
          "text": "out 1/2: audio L/R"
        }
      },
      {
        "box": {
          "id": "m-channel-default",
          "maxclass": "newobj",
          "patching_rect": [
            145,
            185,
            80,
            22
          ],
          "text": "loadmess 1"
        }
      },
      {
        "box": {
          "id": "m-enable-set",
          "maxclass": "message",
          "patching_rect": [
            24,
            180,
            60,
            22
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "m-enable-state-send",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            210,
            155,
            22
          ],
          "text": "s mt_mic_enable_state"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "m-ext-enable",
            0
          ],
          "destination": [
            "m-enable-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m-enable-set",
            0
          ],
          "destination": [
            "m-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m-ext-enable",
            0
          ],
          "destination": [
            "p-Mic-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m-enable",
            0
          ],
          "destination": [
            "p-Mic-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m-enable",
            0
          ],
          "destination": [
            "m-enable-state-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m-channel",
            0
          ],
          "destination": [
            "p-Mic-input",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m-pair",
            0
          ],
          "destination": [
            "p-Mic-input",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m-channel-default",
            0
          ],
          "destination": [
            "m-channel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Mic-input",
            0
          ],
          "destination": [
            "m-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Mic-input",
            1
          ],
          "destination": [
            "m-gain",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m-gain",
            0
          ],
          "destination": [
            "m-out-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "m-gain",
            1
          ],
          "destination": [
            "m-out-r",
            0
          ]
        }
      }
    ]
  }
}