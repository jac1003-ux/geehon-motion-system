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
      780,
      560
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
          "id": "f-title",
          "maxclass": "comment",
          "patching_rect": [
            24,
            20,
            330,
            24
          ],
          "text": "MT Input File - portfolio source box",
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
          "id": "f-note",
          "maxclass": "comment",
          "patching_rect": [
            24,
            48,
            650,
            22
          ],
          "text": "Drop or load audio. External inlets control enable and play/stop. #0 buffer keeps each bpatcher instance separate.",
          "presentation": 1,
          "presentation_rect": [
            12,
            30,
            390,
            36
          ]
        }
      },
      {
        "box": {
          "id": "f-ext-enable",
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
          "id": "f-enable-ext-label",
          "maxclass": "comment",
          "patching_rect": [
            60,
            100,
            90,
            22
          ],
          "text": "in 1 enable"
        }
      },
      {
        "box": {
          "id": "f-ext-play",
          "maxclass": "inlet",
          "patching_rect": [
            145,
            95,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "f-play-ext-label",
          "maxclass": "comment",
          "patching_rect": [
            180,
            100,
            110,
            22
          ],
          "text": "in 2 play/stop"
        }
      },
      {
        "box": {
          "id": "f-enable",
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
            78,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "f-enable-label",
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
            80,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "f-play",
          "maxclass": "toggle",
          "patching_rect": [
            145,
            145,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            112,
            78,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "f-play-label",
          "maxclass": "comment",
          "patching_rect": [
            176,
            148,
            60,
            22
          ],
          "text": "Play",
          "presentation": 1,
          "presentation_rect": [
            144,
            80,
            50,
            22
          ]
        }
      },
      {
        "box": {
          "id": "f-drop",
          "maxclass": "live.drop",
          "patching_rect": [
            260,
            128,
            190,
            52
          ],
          "presentation": 1,
          "presentation_rect": [
            214,
            98,
            150,
            44
          ]
        }
      },
      {
        "box": {
          "id": "f-drop-label",
          "maxclass": "comment",
          "patching_rect": [
            260,
            104,
            95,
            22
          ],
          "text": "Drop Audio",
          "presentation": 1,
          "presentation_rect": [
            214,
            74,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "f-load-button",
          "maxclass": "button",
          "patching_rect": [
            475,
            142,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            376,
            108,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "f-load-label",
          "maxclass": "comment",
          "patching_rect": [
            505,
            144,
            60,
            22
          ],
          "text": "Load",
          "presentation": 1,
          "presentation_rect": [
            404,
            110,
            45,
            22
          ]
        }
      },
      {
        "box": {
          "id": "f-open",
          "maxclass": "newobj",
          "patching_rect": [
            475,
            182,
            90,
            22
          ],
          "text": "opendialog"
        }
      },
      {
        "box": {
          "id": "f-waveform",
          "maxclass": "waveform~",
          "patching_rect": [
            24,
            225,
            520,
            120
          ],
          "buffername": "#0_file_buffer",
          "setmode": 1,
          "outmode": 4,
          "setunit": 0,
          "presentation": 1,
          "presentation_rect": [
            12,
            182,
            402,
            112
          ]
        }
      },
      {
        "box": {
          "id": "f-wave-set",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            360,
            185,
            22
          ],
          "text": "loadmess set #0_file_buffer"
        }
      },
      {
        "box": {
          "id": "f-waveform-label",
          "maxclass": "comment",
          "patching_rect": [
            24,
            202,
            190,
            22
          ],
          "text": "Waveform / drag to seek",
          "presentation": 1,
          "presentation_rect": [
            12,
            158,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "p-File-input",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            405,
            135,
            22
          ],
          "text": "p File_input",
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
              920,
              620
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
                  "id": "fi-title",
                  "maxclass": "comment",
                  "patching_rect": [
                    35,
                    25,
                    820,
                    22
                  ],
                  "text": "File_input internals: path -> #0 buffer -> groove~ -> 20ms enable ramp -> L/R"
                }
              },
              {
                "box": {
                  "id": "fi-enable",
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
                  "id": "fi-path",
                  "maxclass": "inlet",
                  "patching_rect": [
                    185,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fi-play",
                  "maxclass": "inlet",
                  "patching_rect": [
                    405,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fi-seek",
                  "maxclass": "inlet",
                  "patching_rect": [
                    615,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fi-labels",
                  "maxclass": "comment",
                  "patching_rect": [
                    35,
                    65,
                    420,
                    22
                  ],
                  "text": "inlets: enable / file path / play-stop / seek 0-1000"
                }
              },
              {
                "box": {
                  "id": "fi-enable-msg",
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
                  "id": "fi-enable-line",
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
                  "id": "fi-replace",
                  "maxclass": "newobj",
                  "patching_rect": [
                    185,
                    140,
                    120,
                    22
                  ],
                  "text": "prepend replace"
                }
              },
              {
                "box": {
                  "id": "fi-buffer",
                  "maxclass": "newobj",
                  "patching_rect": [
                    185,
                    185,
                    215,
                    22
                  ],
                  "text": "buffer~ #0_file_buffer 30000"
                }
              },
              {
                "box": {
                  "id": "fi-info",
                  "maxclass": "newobj",
                  "patching_rect": [
                    420,
                    185,
                    160,
                    22
                  ],
                  "text": "info~ #0_file_buffer"
                }
              },
              {
                "box": {
                  "id": "fi-duration",
                  "maxclass": "newobj",
                  "patching_rect": [
                    600,
                    185,
                    80,
                    22
                  ],
                  "text": "f 30000."
                }
              },
              {
                "box": {
                  "id": "fi-duration-sec",
                  "maxclass": "newobj",
                  "patching_rect": [
                    700,
                    185,
                    70,
                    22
                  ],
                  "text": "/ 1000."
                }
              },
              {
                "box": {
                  "id": "fi-play-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    405,
                    140,
                    70,
                    22
                  ],
                  "text": "clip 0 1"
                }
              },
              {
                "box": {
                  "id": "fi-play-sig",
                  "maxclass": "newobj",
                  "patching_rect": [
                    405,
                    185,
                    50,
                    22
                  ],
                  "text": "sig~"
                }
              },
              {
                "box": {
                  "id": "fi-seek-safe",
                  "maxclass": "newobj",
                  "patching_rect": [
                    615,
                    185,
                    245,
                    22
                  ],
                  "text": "expr min(max(0.\\, $f1)\\, max(0.\\, $f2 - 1.))"
                }
              },
              {
                "box": {
                  "id": "fi-groove",
                  "maxclass": "newobj",
                  "patching_rect": [
                    185,
                    300,
                    230,
                    22
                  ],
                  "text": "groove~ #0_file_buffer 2 @loop 1"
                }
              },
              {
                "box": {
                  "id": "fi-progress-snap",
                  "maxclass": "newobj",
                  "patching_rect": [
                    460,
                    330,
                    95,
                    22
                  ],
                  "text": "snapshot~ 33"
                }
              },
              {
                "box": {
                  "id": "fi-progress-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    460,
                    375,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "fi-progress-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    460,
                    420,
                    145,
                    22
                  ],
                  "text": "scale 0. 1. 0 1000"
                }
              },
              {
                "box": {
                  "id": "fi-progress-set",
                  "maxclass": "newobj",
                  "patching_rect": [
                    620,
                    420,
                    90,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "fi-elapsed-ms",
                  "maxclass": "newobj",
                  "patching_rect": [
                    760,
                    375,
                    55,
                    22
                  ],
                  "text": "* 1."
                }
              },
              {
                "box": {
                  "id": "fi-elapsed-sec",
                  "maxclass": "newobj",
                  "patching_rect": [
                    760,
                    420,
                    70,
                    22
                  ],
                  "text": "/ 1000."
                }
              },
              {
                "box": {
                  "id": "fi-gate-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    185,
                    405,
                    55,
                    22
                  ],
                  "text": "*~ 0."
                }
              },
              {
                "box": {
                  "id": "fi-gate-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    270,
                    405,
                    55,
                    22
                  ],
                  "text": "*~ 0."
                }
              },
              {
                "box": {
                  "id": "fi-out-l",
                  "maxclass": "outlet",
                  "patching_rect": [
                    185,
                    505,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fi-out-r",
                  "maxclass": "outlet",
                  "patching_rect": [
                    270,
                    505,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fi-out-progress",
                  "maxclass": "outlet",
                  "patching_rect": [
                    620,
                    505,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fi-out-status",
                  "maxclass": "outlet",
                  "patching_rect": [
                    720,
                    505,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fi-out-elapsed",
                  "maxclass": "outlet",
                  "patching_rect": [
                    820,
                    505,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "fi-out-duration-ms",
                  "maxclass": "outlet",
                  "patching_rect": [
                    900,
                    505,
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
                    "fi-enable",
                    0
                  ],
                  "destination": [
                    "fi-enable-msg",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-enable-msg",
                    0
                  ],
                  "destination": [
                    "fi-enable-line",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-path",
                    0
                  ],
                  "destination": [
                    "fi-replace",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-replace",
                    0
                  ],
                  "destination": [
                    "fi-buffer",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-buffer",
                    1
                  ],
                  "destination": [
                    "fi-info",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-info",
                    6
                  ],
                  "destination": [
                    "fi-duration",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-duration",
                    0
                  ],
                  "destination": [
                    "fi-seek-safe",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-duration",
                    0
                  ],
                  "destination": [
                    "fi-duration-sec",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-duration",
                    0
                  ],
                  "destination": [
                    "fi-elapsed-ms",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-duration",
                    0
                  ],
                  "destination": [
                    "fi-out-duration-ms",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-duration-sec",
                    0
                  ],
                  "destination": [
                    "fi-out-status",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-play",
                    0
                  ],
                  "destination": [
                    "fi-play-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-play-clip",
                    0
                  ],
                  "destination": [
                    "fi-play-sig",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-play-sig",
                    0
                  ],
                  "destination": [
                    "fi-groove",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-seek",
                    0
                  ],
                  "destination": [
                    "fi-seek-safe",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-seek-safe",
                    0
                  ],
                  "destination": [
                    "fi-groove",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-groove",
                    0
                  ],
                  "destination": [
                    "fi-gate-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-groove",
                    1
                  ],
                  "destination": [
                    "fi-gate-r",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-groove",
                    2
                  ],
                  "destination": [
                    "fi-progress-snap",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-progress-snap",
                    0
                  ],
                  "destination": [
                    "fi-progress-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-progress-clip",
                    0
                  ],
                  "destination": [
                    "fi-progress-scale",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-progress-clip",
                    0
                  ],
                  "destination": [
                    "fi-elapsed-ms",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-progress-scale",
                    0
                  ],
                  "destination": [
                    "fi-progress-set",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-progress-set",
                    0
                  ],
                  "destination": [
                    "fi-out-progress",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-elapsed-ms",
                    0
                  ],
                  "destination": [
                    "fi-elapsed-sec",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-elapsed-sec",
                    0
                  ],
                  "destination": [
                    "fi-out-elapsed",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-enable-line",
                    0
                  ],
                  "destination": [
                    "fi-gate-l",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-enable-line",
                    0
                  ],
                  "destination": [
                    "fi-gate-r",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-gate-l",
                    0
                  ],
                  "destination": [
                    "fi-out-l",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "fi-gate-r",
                    0
                  ],
                  "destination": [
                    "fi-out-r",
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
          "id": "f-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            210,
            390,
            54,
            145
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
              "parameter_shortname": "File Input",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            330,
            306,
            54,
            122
          ]
        }
      },
      {
        "box": {
          "id": "f-elapsed",
          "maxclass": "flonum",
          "patching_rect": [
            575,
            245,
            72,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            84,
            312,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "f-elapsed-label",
          "maxclass": "comment",
          "patching_rect": [
            575,
            222,
            80,
            22
          ],
          "text": "elapsed s",
          "presentation": 1,
          "presentation_rect": [
            12,
            312,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "f-status",
          "maxclass": "flonum",
          "patching_rect": [
            575,
            305,
            72,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            236,
            312,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "f-status-label",
          "maxclass": "comment",
          "patching_rect": [
            575,
            282,
            85,
            22
          ],
          "text": "duration s",
          "presentation": 1,
          "presentation_rect": [
            160,
            312,
            76,
            22
          ]
        }
      },
      {
        "box": {
          "id": "f-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            665,
            415,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "f-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            715,
            415,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "f-out-label",
          "maxclass": "comment",
          "patching_rect": [
            640,
            455,
            160,
            22
          ],
          "text": "out 1/2: audio L/R"
        }
      },
      {
        "box": {
          "id": "f-enable-set",
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
          "id": "f-enable-state-send",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            210,
            155,
            22
          ],
          "text": "s mt_file_enable_state"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "f-ext-enable",
            0
          ],
          "destination": [
            "f-enable-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "f-enable-set",
            0
          ],
          "destination": [
            "f-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "f-ext-enable",
            0
          ],
          "destination": [
            "p-File-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "f-ext-play",
            0
          ],
          "destination": [
            "f-play",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "f-enable",
            0
          ],
          "destination": [
            "p-File-input",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "f-enable",
            0
          ],
          "destination": [
            "f-enable-state-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "f-drop",
            0
          ],
          "destination": [
            "p-File-input",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "f-load-button",
            0
          ],
          "destination": [
            "f-open",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "f-open",
            0
          ],
          "destination": [
            "p-File-input",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "f-play",
            0
          ],
          "destination": [
            "p-File-input",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "f-wave-set",
            0
          ],
          "destination": [
            "f-waveform",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "f-waveform",
            2
          ],
          "destination": [
            "p-File-input",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-File-input",
            0
          ],
          "destination": [
            "f-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-File-input",
            1
          ],
          "destination": [
            "f-gain",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-File-input",
            3
          ],
          "destination": [
            "f-status",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-File-input",
            5
          ],
          "destination": [
            "f-waveform",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-File-input",
            4
          ],
          "destination": [
            "f-elapsed",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "f-gain",
            0
          ],
          "destination": [
            "f-out-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "f-gain",
            1
          ],
          "destination": [
            "f-out-r",
            0
          ]
        }
      }
    ]
  }
}