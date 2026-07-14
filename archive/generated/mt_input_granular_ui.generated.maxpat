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
      1200,
      920
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
          "id": "g-bg",
          "maxclass": "fpic",
          "patching_rect": [
            0,
            0,
            720,
            440
          ],
          "autofit": 1,
          "background": 1,
          "ignoreclick": 1,
          "pic": "granular_panel_v1.png",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "jit_matrix"
          ],
          "presentation": 1,
          "presentation_rect": [
            0,
            0,
            720,
            440
          ]
        }
      },
      {
        "box": {
          "id": "g-title",
          "maxclass": "comment",
          "patching_rect": [
            24,
            13,
            190,
            22
          ],
          "text": "GRANULAR INPUT",
          "presentation": 1,
          "presentation_rect": [
            24,
            13,
            190,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-note",
          "maxclass": "comment",
          "patching_rect": [
            24,
            35,
            260,
            18
          ],
          "text": "record / load / shape / perform",
          "presentation": 1,
          "presentation_rect": [
            24,
            35,
            260,
            18
          ]
        }
      },
      {
        "box": {
          "id": "g-enable",
          "maxclass": "toggle",
          "patching_rect": [
            30,
            78,
            24,
            24
          ],
          "varname": "granular_enable",
          "presentation": 1,
          "presentation_rect": [
            30,
            78,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "g-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            21,
            105,
            48,
            18
          ],
          "text": "Enable",
          "presentation": 1,
          "presentation_rect": [
            21,
            105,
            48,
            18
          ]
        }
      },
      {
        "box": {
          "id": "g-record",
          "maxclass": "toggle",
          "patching_rect": [
            104,
            78,
            24,
            24
          ],
          "varname": "granular_record",
          "presentation": 1,
          "presentation_rect": [
            104,
            78,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "g-record-label",
          "maxclass": "comment",
          "patching_rect": [
            82,
            105,
            72,
            18
          ],
          "text": "Record Mic",
          "presentation": 1,
          "presentation_rect": [
            82,
            105,
            72,
            18
          ]
        }
      },
      {
        "box": {
          "id": "g-play",
          "maxclass": "toggle",
          "patching_rect": [
            190,
            78,
            24,
            24
          ],
          "varname": "granular_play",
          "presentation": 1,
          "presentation_rect": [
            190,
            78,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "g-play-label",
          "maxclass": "comment",
          "patching_rect": [
            165,
            105,
            82,
            18
          ],
          "text": "Play Texture",
          "presentation": 1,
          "presentation_rect": [
            165,
            105,
            82,
            18
          ]
        }
      },
      {
        "box": {
          "id": "g-drop",
          "maxclass": "live.drop",
          "patching_rect": [
            274,
            72,
            128,
            36
          ],
          "varname": "granular_drop",
          "presentation": 1,
          "presentation_rect": [
            274,
            72,
            128,
            36
          ]
        }
      },
      {
        "box": {
          "id": "g-drop-label",
          "maxclass": "comment",
          "patching_rect": [
            293,
            105,
            88,
            18
          ],
          "text": "Drop Sample",
          "presentation": 1,
          "presentation_rect": [
            293,
            105,
            88,
            18
          ]
        }
      },
      {
        "box": {
          "id": "g-load",
          "maxclass": "button",
          "patching_rect": [
            425,
            78,
            24,
            24
          ],
          "varname": "granular_load",
          "presentation": 1,
          "presentation_rect": [
            425,
            78,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "g-load-label",
          "maxclass": "comment",
          "patching_rect": [
            417,
            105,
            42,
            18
          ],
          "text": "Load",
          "presentation": 1,
          "presentation_rect": [
            417,
            105,
            42,
            18
          ]
        }
      },
      {
        "box": {
          "id": "g-open",
          "maxclass": "newobj",
          "patching_rect": [
            950,
            120,
            90,
            22
          ],
          "text": "opendialog"
        }
      },
      {
        "box": {
          "id": "g-preset",
          "maxclass": "umenu",
          "patching_rect": [
            484,
            79,
            130,
            22
          ],
          "items": [
            "Safe Cloud",
            ",",
            "Frozen Pad"
          ],
          "varname": "granular_preset",
          "presentation": 1,
          "presentation_rect": [
            484,
            79,
            130,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-preset-label",
          "maxclass": "comment",
          "patching_rect": [
            522,
            105,
            50,
            18
          ],
          "text": "Preset",
          "presentation": 1,
          "presentation_rect": [
            522,
            105,
            50,
            18
          ]
        }
      },
      {
        "box": {
          "id": "g-waveform",
          "maxclass": "waveform~",
          "patching_rect": [
            18,
            132,
            620,
            160
          ],
          "buffername": "mt_granular_buffer",
          "setmode": 1,
          "outmode": 4,
          "setunit": 0,
          "varname": "granular_waveform",
          "presentation": 1,
          "presentation_rect": [
            18,
            132,
            620,
            160
          ]
        }
      },
      {
        "box": {
          "id": "g-file",
          "maxclass": "message",
          "patching_rect": [
            24,
            310,
            225,
            22
          ],
          "text": "No material",
          "ignoreclick": 1,
          "presentation": 1,
          "presentation_rect": [
            24,
            310,
            225,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-status",
          "maxclass": "message",
          "patching_rect": [
            268,
            310,
            140,
            22
          ],
          "text": "Idle",
          "ignoreclick": 1,
          "presentation": 1,
          "presentation_rect": [
            268,
            310,
            140,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-duration",
          "maxclass": "message",
          "patching_rect": [
            450,
            310,
            74,
            22
          ],
          "text": "00:00",
          "ignoreclick": 1,
          "presentation": 1,
          "presentation_rect": [
            450,
            310,
            74,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-file-label",
          "maxclass": "comment",
          "patching_rect": [
            24,
            294,
            70,
            16
          ],
          "text": "MATERIAL",
          "presentation": 1,
          "presentation_rect": [
            24,
            294,
            70,
            16
          ]
        }
      },
      {
        "box": {
          "id": "g-status-label",
          "maxclass": "comment",
          "patching_rect": [
            268,
            294,
            55,
            16
          ],
          "text": "STATUS",
          "presentation": 1,
          "presentation_rect": [
            268,
            294,
            55,
            16
          ]
        }
      },
      {
        "box": {
          "id": "g-duration-label",
          "maxclass": "comment",
          "patching_rect": [
            450,
            294,
            45,
            16
          ],
          "text": "TIME",
          "presentation": 1,
          "presentation_rect": [
            450,
            294,
            45,
            16
          ]
        }
      },
      {
        "box": {
          "id": "g-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            1050,
            120,
            54,
            210
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
              "parameter_shortname": "Granular Input",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "varname": "granular_output_gain",
          "presentation": 1,
          "presentation_rect": [
            662,
            106,
            42,
            232
          ]
        }
      },
      {
        "box": {
          "id": "g-gain-label",
          "maxclass": "comment",
          "patching_rect": [
            662,
            80,
            48,
            18
          ],
          "text": "Output",
          "presentation": 1,
          "presentation_rect": [
            662,
            80,
            48,
            18
          ]
        }
      },
      {
        "box": {
          "id": "g-ext-enable",
          "maxclass": "inlet",
          "patching_rect": [
            30,
            540,
            30,
            30
          ],
          "comment": "Enable 0/1"
        }
      },
      {
        "box": {
          "id": "p-Granular-control",
          "maxclass": "newobj",
          "patching_rect": [
            180,
            620,
            140,
            22
          ],
          "text": "p Granular_control",
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
              800
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
                  "id": "gc-title",
                  "maxclass": "comment",
                  "patching_rect": [
                    30,
                    25,
                    760,
                    22
                  ],
                  "text": "Granular control: linked enable / material state / presets / status formatting"
                }
              },
              {
                "box": {
                  "id": "gc-ext-enable",
                  "maxclass": "inlet",
                  "patching_rect": [
                    30,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-ui-enable",
                  "maxclass": "inlet",
                  "patching_rect": [
                    120,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-record",
                  "maxclass": "inlet",
                  "patching_rect": [
                    210,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-play",
                  "maxclass": "inlet",
                  "patching_rect": [
                    300,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-path",
                  "maxclass": "inlet",
                  "patching_rect": [
                    390,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-preset",
                  "maxclass": "inlet",
                  "patching_rect": [
                    500,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-duration",
                  "maxclass": "inlet",
                  "patching_rect": [
                    610,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-ext-enable-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    130,
                    70,
                    22
                  ],
                  "text": "clip 0 1"
                }
              },
              {
                "box": {
                  "id": "gc-enable-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    120,
                    130,
                    180,
                    22
                  ],
                  "text": "s mt_granular_enable_state"
                }
              },
              {
                "box": {
                  "id": "gc-enable-receive",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    180,
                    180,
                    22
                  ],
                  "text": "r mt_granular_enable_state"
                }
              },
              {
                "box": {
                  "id": "gc-enable-trigger",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    230,
                    50,
                    22
                  ],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "gc-enable-set",
                  "maxclass": "message",
                  "patching_rect": [
                    100,
                    230,
                    58,
                    22
                  ],
                  "text": "set $1"
                }
              },
              {
                "box": {
                  "id": "gc-record-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    210,
                    130,
                    70,
                    22
                  ],
                  "text": "clip 0 1"
                }
              },
              {
                "box": {
                  "id": "gc-record-trigger",
                  "maxclass": "newobj",
                  "patching_rect": [
                    210,
                    180,
                    50,
                    22
                  ],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "gc-record-set",
                  "maxclass": "message",
                  "patching_rect": [
                    280,
                    180,
                    58,
                    22
                  ],
                  "text": "set $1"
                }
              },
              {
                "box": {
                  "id": "gc-record-status",
                  "maxclass": "newobj",
                  "patching_rect": [
                    210,
                    230,
                    60,
                    22
                  ],
                  "text": "sel 0 1"
                }
              },
              {
                "box": {
                  "id": "gc-status-idle",
                  "maxclass": "message",
                  "patching_rect": [
                    210,
                    280,
                    62,
                    22
                  ],
                  "text": "set Idle"
                }
              },
              {
                "box": {
                  "id": "gc-status-recording",
                  "maxclass": "message",
                  "patching_rect": [
                    285,
                    280,
                    92,
                    22
                  ],
                  "text": "set Recording"
                }
              },
              {
                "box": {
                  "id": "gc-play-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    390,
                    130,
                    70,
                    22
                  ],
                  "text": "clip 0 1"
                }
              },
              {
                "box": {
                  "id": "gc-play-trigger",
                  "maxclass": "newobj",
                  "patching_rect": [
                    390,
                    180,
                    50,
                    22
                  ],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "gc-play-set",
                  "maxclass": "message",
                  "patching_rect": [
                    460,
                    180,
                    58,
                    22
                  ],
                  "text": "set $1"
                }
              },
              {
                "box": {
                  "id": "gc-path-order",
                  "maxclass": "newobj",
                  "patching_rect": [
                    500,
                    130,
                    58,
                    22
                  ],
                  "text": "t l b b"
                }
              },
              {
                "box": {
                  "id": "gc-path-stop-record",
                  "maxclass": "message",
                  "patching_rect": [
                    570,
                    180,
                    32,
                    22
                  ],
                  "text": "0"
                }
              },
              {
                "box": {
                  "id": "gc-path-stop-play",
                  "maxclass": "message",
                  "patching_rect": [
                    615,
                    180,
                    32,
                    22
                  ],
                  "text": "0"
                }
              },
              {
                "box": {
                  "id": "gc-path-fanout",
                  "maxclass": "newobj",
                  "patching_rect": [
                    500,
                    230,
                    55,
                    22
                  ],
                  "text": "t l l b"
                }
              },
              {
                "box": {
                  "id": "gc-strip-path",
                  "maxclass": "newobj",
                  "patching_rect": [
                    575,
                    280,
                    70,
                    22
                  ],
                  "text": "strippath"
                }
              },
              {
                "box": {
                  "id": "gc-file-set",
                  "maxclass": "newobj",
                  "patching_rect": [
                    575,
                    330,
                    90,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "gc-status-loaded",
                  "maxclass": "message",
                  "patching_rect": [
                    675,
                    280,
                    78,
                    22
                  ],
                  "text": "set Loaded"
                }
              },
              {
                "box": {
                  "id": "gc-preset-select",
                  "maxclass": "newobj",
                  "patching_rect": [
                    760,
                    130,
                    60,
                    22
                  ],
                  "text": "sel 0 1"
                }
              },
              {
                "box": {
                  "id": "gc-safe-values",
                  "maxclass": "message",
                  "patching_rect": [
                    760,
                    180,
                    225,
                    22
                  ],
                  "text": "90 28 129.370483 0 57.6 -32 0"
                }
              },
              {
                "box": {
                  "id": "gc-frozen-values",
                  "maxclass": "message",
                  "patching_rect": [
                    990,
                    180,
                    230,
                    22
                  ],
                  "text": "95 56 280.117862 0 6.4 -32 0"
                }
              },
              {
                "box": {
                  "id": "gc-param-unpack",
                  "maxclass": "newobj",
                  "patching_rect": [
                    760,
                    230,
                    170,
                    22
                  ],
                  "text": "unpack f f f f f f f"
                }
              },
              {
                "box": {
                  "id": "gc-duration-sec",
                  "maxclass": "newobj",
                  "patching_rect": [
                    610,
                    390,
                    70,
                    22
                  ],
                  "text": "/ 1000."
                }
              },
              {
                "box": {
                  "id": "gc-duration-int",
                  "maxclass": "newobj",
                  "patching_rect": [
                    610,
                    430,
                    35,
                    22
                  ],
                  "text": "i"
                }
              },
              {
                "box": {
                  "id": "gc-duration-parts",
                  "maxclass": "newobj",
                  "patching_rect": [
                    610,
                    470,
                    50,
                    22
                  ],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "gc-duration-min",
                  "maxclass": "newobj",
                  "patching_rect": [
                    595,
                    510,
                    45,
                    22
                  ],
                  "text": "/ 60"
                }
              },
              {
                "box": {
                  "id": "gc-duration-rem",
                  "maxclass": "newobj",
                  "patching_rect": [
                    655,
                    510,
                    45,
                    22
                  ],
                  "text": "% 60"
                }
              },
              {
                "box": {
                  "id": "gc-duration-pack",
                  "maxclass": "newobj",
                  "patching_rect": [
                    610,
                    550,
                    60,
                    22
                  ],
                  "text": "pak i i"
                }
              },
              {
                "box": {
                  "id": "gc-duration-format",
                  "maxclass": "newobj",
                  "patching_rect": [
                    610,
                    590,
                    125,
                    22
                  ],
                  "text": "sprintf %02ld:%02ld"
                }
              },
              {
                "box": {
                  "id": "gc-duration-set",
                  "maxclass": "newobj",
                  "patching_rect": [
                    610,
                    630,
                    90,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "gc-loadbang",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    390,
                    65,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "gc-init-trigger",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    430,
                    135,
                    22
                  ],
                  "text": "t b b b b b b b b"
                }
              },
              {
                "box": {
                  "id": "gc-init-enable",
                  "maxclass": "message",
                  "patching_rect": [
                    30,
                    480,
                    32,
                    22
                  ],
                  "text": "0"
                }
              },
              {
                "box": {
                  "id": "gc-init-record",
                  "maxclass": "message",
                  "patching_rect": [
                    75,
                    480,
                    32,
                    22
                  ],
                  "text": "0"
                }
              },
              {
                "box": {
                  "id": "gc-init-play",
                  "maxclass": "message",
                  "patching_rect": [
                    120,
                    480,
                    32,
                    22
                  ],
                  "text": "0"
                }
              },
              {
                "box": {
                  "id": "gc-init-file",
                  "maxclass": "message",
                  "patching_rect": [
                    165,
                    480,
                    100,
                    22
                  ],
                  "text": "set No material"
                }
              },
              {
                "box": {
                  "id": "gc-init-status",
                  "maxclass": "message",
                  "patching_rect": [
                    280,
                    480,
                    62,
                    22
                  ],
                  "text": "set Idle"
                }
              },
              {
                "box": {
                  "id": "gc-init-duration",
                  "maxclass": "message",
                  "patching_rect": [
                    355,
                    480,
                    76,
                    22
                  ],
                  "text": "set 00:00"
                }
              },
              {
                "box": {
                  "id": "gc-init-gain",
                  "maxclass": "message",
                  "patching_rect": [
                    445,
                    480,
                    32,
                    22
                  ],
                  "text": "0"
                }
              },
              {
                "box": {
                  "id": "gc-init-params",
                  "maxclass": "message",
                  "patching_rect": [
                    490,
                    480,
                    225,
                    22
                  ],
                  "text": "90 28 129.370483 0 57.6 -32 0"
                }
              },
              {
                "box": {
                  "id": "gc-enable-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    30,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-record-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    85,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-play-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    140,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-path-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    195,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-enable-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    250,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-record-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    305,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-play-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    360,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-file-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    415,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-status-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    470,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-duration-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    525,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-gain-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    580,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-wet-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    635,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-density-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    690,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-size-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    745,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-pitch-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    800,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-spray-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    855,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-amp-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    910,
                    700,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gc-makeup-ui",
                  "maxclass": "outlet",
                  "patching_rect": [
                    965,
                    700,
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
                    "gc-ext-enable",
                    0
                  ],
                  "destination": [
                    "gc-ext-enable-clip",
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
                    "gc-ext-enable-clip",
                    0
                  ],
                  "destination": [
                    "gc-enable-trigger",
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
                    "gc-ui-enable",
                    0
                  ],
                  "destination": [
                    "gc-enable-send",
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
                    "gc-enable-receive",
                    0
                  ],
                  "destination": [
                    "gc-enable-trigger",
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
                    "gc-enable-trigger",
                    1
                  ],
                  "destination": [
                    "gc-enable-out",
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
                    "gc-enable-trigger",
                    0
                  ],
                  "destination": [
                    "gc-enable-set",
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
                    "gc-enable-set",
                    0
                  ],
                  "destination": [
                    "gc-enable-ui",
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
                    "gc-record",
                    0
                  ],
                  "destination": [
                    "gc-record-clip",
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
                    "gc-record-clip",
                    0
                  ],
                  "destination": [
                    "gc-record-trigger",
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
                    "gc-record-trigger",
                    1
                  ],
                  "destination": [
                    "gc-record-out",
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
                    "gc-record-trigger",
                    1
                  ],
                  "destination": [
                    "gc-record-status",
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
                    "gc-record-trigger",
                    0
                  ],
                  "destination": [
                    "gc-record-set",
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
                    "gc-record-set",
                    0
                  ],
                  "destination": [
                    "gc-record-ui",
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
                    "gc-record-status",
                    0
                  ],
                  "destination": [
                    "gc-status-idle",
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
                    "gc-record-status",
                    1
                  ],
                  "destination": [
                    "gc-status-recording",
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
                    "gc-status-idle",
                    0
                  ],
                  "destination": [
                    "gc-status-ui",
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
                    "gc-status-recording",
                    0
                  ],
                  "destination": [
                    "gc-status-ui",
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
                    "gc-play",
                    0
                  ],
                  "destination": [
                    "gc-play-clip",
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
                    "gc-play-clip",
                    0
                  ],
                  "destination": [
                    "gc-play-trigger",
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
                    "gc-play-trigger",
                    1
                  ],
                  "destination": [
                    "gc-play-out",
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
                    "gc-play-trigger",
                    0
                  ],
                  "destination": [
                    "gc-play-set",
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
                    "gc-play-set",
                    0
                  ],
                  "destination": [
                    "gc-play-ui",
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
                    "gc-path",
                    0
                  ],
                  "destination": [
                    "gc-path-order",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-path-order",
                    2
                  ],
                  "destination": [
                    "gc-path-stop-record",
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
                    "gc-path-order",
                    1
                  ],
                  "destination": [
                    "gc-path-stop-play",
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
                    "gc-path-order",
                    0
                  ],
                  "destination": [
                    "gc-path-fanout",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-path-stop-record",
                    0
                  ],
                  "destination": [
                    "gc-record-trigger",
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
                    "gc-path-stop-play",
                    0
                  ],
                  "destination": [
                    "gc-play-trigger",
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
                    "gc-path-fanout",
                    2
                  ],
                  "destination": [
                    "gc-status-loaded",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-path-fanout",
                    1
                  ],
                  "destination": [
                    "gc-strip-path",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-path-fanout",
                    0
                  ],
                  "destination": [
                    "gc-path-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-strip-path",
                    0
                  ],
                  "destination": [
                    "gc-file-set",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-file-set",
                    0
                  ],
                  "destination": [
                    "gc-file-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-status-loaded",
                    0
                  ],
                  "destination": [
                    "gc-status-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-preset",
                    0
                  ],
                  "destination": [
                    "gc-preset-select",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-preset-select",
                    0
                  ],
                  "destination": [
                    "gc-safe-values",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-preset-select",
                    1
                  ],
                  "destination": [
                    "gc-frozen-values",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-safe-values",
                    0
                  ],
                  "destination": [
                    "gc-param-unpack",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-frozen-values",
                    0
                  ],
                  "destination": [
                    "gc-param-unpack",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-duration",
                    0
                  ],
                  "destination": [
                    "gc-duration-sec",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-duration-sec",
                    0
                  ],
                  "destination": [
                    "gc-duration-int",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-duration-int",
                    0
                  ],
                  "destination": [
                    "gc-duration-parts",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-duration-parts",
                    1
                  ],
                  "destination": [
                    "gc-duration-rem",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-duration-parts",
                    0
                  ],
                  "destination": [
                    "gc-duration-min",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-duration-rem",
                    0
                  ],
                  "destination": [
                    "gc-duration-pack",
                    1
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-duration-min",
                    0
                  ],
                  "destination": [
                    "gc-duration-pack",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-duration-pack",
                    0
                  ],
                  "destination": [
                    "gc-duration-format",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-duration-format",
                    0
                  ],
                  "destination": [
                    "gc-duration-set",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-duration-set",
                    0
                  ],
                  "destination": [
                    "gc-duration-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-loadbang",
                    0
                  ],
                  "destination": [
                    "gc-init-trigger",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-init-trigger",
                    7
                  ],
                  "destination": [
                    "gc-init-enable",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-init-trigger",
                    6
                  ],
                  "destination": [
                    "gc-init-record",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-init-trigger",
                    5
                  ],
                  "destination": [
                    "gc-init-play",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-init-trigger",
                    4
                  ],
                  "destination": [
                    "gc-init-file",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-init-trigger",
                    3
                  ],
                  "destination": [
                    "gc-init-status",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-init-trigger",
                    2
                  ],
                  "destination": [
                    "gc-init-duration",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-init-trigger",
                    1
                  ],
                  "destination": [
                    "gc-init-gain",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-init-trigger",
                    0
                  ],
                  "destination": [
                    "gc-init-params",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-init-enable",
                    0
                  ],
                  "destination": [
                    "gc-enable-send",
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
                    "gc-init-record",
                    0
                  ],
                  "destination": [
                    "gc-record-trigger",
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
                    "gc-init-play",
                    0
                  ],
                  "destination": [
                    "gc-play-trigger",
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
                    "gc-init-file",
                    0
                  ],
                  "destination": [
                    "gc-file-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-init-status",
                    0
                  ],
                  "destination": [
                    "gc-status-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-init-duration",
                    0
                  ],
                  "destination": [
                    "gc-duration-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-init-gain",
                    0
                  ],
                  "destination": [
                    "gc-gain-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-init-params",
                    0
                  ],
                  "destination": [
                    "gc-param-unpack",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-param-unpack",
                    0
                  ],
                  "destination": [
                    "gc-wet-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-param-unpack",
                    1
                  ],
                  "destination": [
                    "gc-density-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-param-unpack",
                    2
                  ],
                  "destination": [
                    "gc-size-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-param-unpack",
                    3
                  ],
                  "destination": [
                    "gc-pitch-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-param-unpack",
                    4
                  ],
                  "destination": [
                    "gc-spray-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-param-unpack",
                    5
                  ],
                  "destination": [
                    "gc-amp-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gc-param-unpack",
                    6
                  ],
                  "destination": [
                    "gc-makeup-ui",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
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
          "id": "p-Granular-input",
          "maxclass": "newobj",
          "patching_rect": [
            420,
            620,
            130,
            22
          ],
          "text": "p Granular_input",
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
              860,
              610
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
                  "id": "gi-title",
                  "maxclass": "comment",
                  "patching_rect": [
                    30,
                    25,
                    820,
                    22
                  ],
                  "text": "Granular DSP: mic record / sample replace -> synth -> position -> 20 ms enable ramp -> L/R"
                }
              },
              {
                "box": {
                  "id": "gi-enable",
                  "maxclass": "inlet",
                  "patching_rect": [
                    30,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gi-record",
                  "maxclass": "inlet",
                  "patching_rect": [
                    140,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gi-play",
                  "maxclass": "inlet",
                  "patching_rect": [
                    250,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gi-path",
                  "maxclass": "inlet",
                  "patching_rect": [
                    360,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gi-position",
                  "maxclass": "inlet",
                  "patching_rect": [
                    500,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gi-enable-msg",
                  "maxclass": "message",
                  "patching_rect": [
                    30,
                    135,
                    55,
                    22
                  ],
                  "text": "$1 20"
                }
              },
              {
                "box": {
                  "id": "gi-enable-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    180,
                    50,
                    22
                  ],
                  "text": "line~"
                }
              },
              {
                "box": {
                  "id": "gi-adc",
                  "maxclass": "newobj",
                  "patching_rect": [
                    140,
                    135,
                    65,
                    22
                  ],
                  "text": "adc~ 1"
                }
              },
              {
                "box": {
                  "id": "gi-record-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    140,
                    180,
                    150,
                    22
                  ],
                  "text": "s mt_granular_record"
                }
              },
              {
                "box": {
                  "id": "gi-play-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    250,
                    180,
                    140,
                    22
                  ],
                  "text": "s mt_granular_play"
                }
              },
              {
                "box": {
                  "id": "gi-replace",
                  "maxclass": "newobj",
                  "patching_rect": [
                    360,
                    135,
                    120,
                    22
                  ],
                  "text": "prepend replace"
                }
              },
              {
                "box": {
                  "id": "gi-load-trigger",
                  "maxclass": "newobj",
                  "patching_rect": [
                    360,
                    180,
                    50,
                    22
                  ],
                  "text": "t b l"
                }
              },
              {
                "box": {
                  "id": "gi-load-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    430,
                    225,
                    175,
                    22
                  ],
                  "text": "s mt_granular_load_sample"
                }
              },
              {
                "box": {
                  "id": "gi-info-delay",
                  "maxclass": "newobj",
                  "patching_rect": [
                    360,
                    225,
                    60,
                    22
                  ],
                  "text": "del 100"
                }
              },
              {
                "box": {
                  "id": "gi-info",
                  "maxclass": "newobj",
                  "patching_rect": [
                    360,
                    275,
                    180,
                    22
                  ],
                  "text": "info~ mt_granular_buffer"
                }
              },
              {
                "box": {
                  "id": "gi-duration",
                  "maxclass": "newobj",
                  "patching_rect": [
                    360,
                    325,
                    115,
                    22
                  ],
                  "text": "clip 1. 600000."
                }
              },
              {
                "box": {
                  "id": "gi-duration-store",
                  "maxclass": "newobj",
                  "patching_rect": [
                    500,
                    325,
                    80,
                    22
                  ],
                  "text": "f 30000."
                }
              },
              {
                "box": {
                  "id": "gi-total-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    600,
                    325,
                    175,
                    22
                  ],
                  "text": "s mt_granular_total_ms"
                }
              },
              {
                "box": {
                  "id": "gi-position-safe",
                  "maxclass": "newobj",
                  "patching_rect": [
                    500,
                    180,
                    245,
                    22
                  ],
                  "text": "expr min(max(0.\\, $f1)\\, max(0.\\, $f2 - 1.))"
                }
              },
              {
                "box": {
                  "id": "gi-position-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    500,
                    230,
                    165,
                    22
                  ],
                  "text": "s mt_granular_position"
                }
              },
              {
                "box": {
                  "id": "gi-position-receive",
                  "maxclass": "newobj",
                  "patching_rect": [
                    680,
                    180,
                    165,
                    22
                  ],
                  "text": "r mt_granular_position"
                }
              },
              {
                "box": {
                  "id": "gi-position-line",
                  "maxclass": "newobj",
                  "patching_rect": [
                    680,
                    230,
                    90,
                    22
                  ],
                  "text": "prepend line"
                }
              },
              {
                "box": {
                  "id": "gi-synth",
                  "maxclass": "newobj",
                  "patching_rect": [
                    140,
                    325,
                    135,
                    22
                  ],
                  "text": "mt_granular_synth"
                }
              },
              {
                "box": {
                  "id": "gi-gate-l",
                  "maxclass": "newobj",
                  "patching_rect": [
                    140,
                    410,
                    55,
                    22
                  ],
                  "text": "*~ 0."
                }
              },
              {
                "box": {
                  "id": "gi-gate-r",
                  "maxclass": "newobj",
                  "patching_rect": [
                    225,
                    410,
                    55,
                    22
                  ],
                  "text": "*~ 0."
                }
              },
              {
                "box": {
                  "id": "gi-out-l",
                  "maxclass": "outlet",
                  "patching_rect": [
                    140,
                    510,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gi-out-r",
                  "maxclass": "outlet",
                  "patching_rect": [
                    225,
                    510,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gi-duration-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    360,
                    510,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gi-position-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    500,
                    510,
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
                    "gi-enable",
                    0
                  ],
                  "destination": [
                    "gi-enable-msg",
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
                    "gi-enable-msg",
                    0
                  ],
                  "destination": [
                    "gi-enable-line",
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
                    "gi-adc",
                    0
                  ],
                  "destination": [
                    "gi-synth",
                    0
                  ],
                  "color": [
                    0.68,
                    0.95,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-record",
                    0
                  ],
                  "destination": [
                    "gi-record-send",
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
                    "gi-play",
                    0
                  ],
                  "destination": [
                    "gi-play-send",
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
                    "gi-path",
                    0
                  ],
                  "destination": [
                    "gi-replace",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-replace",
                    0
                  ],
                  "destination": [
                    "gi-load-trigger",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-load-trigger",
                    1
                  ],
                  "destination": [
                    "gi-load-send",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-load-trigger",
                    0
                  ],
                  "destination": [
                    "gi-info-delay",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-info-delay",
                    0
                  ],
                  "destination": [
                    "gi-info",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-info",
                    6
                  ],
                  "destination": [
                    "gi-duration",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-duration",
                    0
                  ],
                  "destination": [
                    "gi-duration-store",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-duration",
                    0
                  ],
                  "destination": [
                    "gi-total-send",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-duration",
                    0
                  ],
                  "destination": [
                    "gi-duration-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-position",
                    0
                  ],
                  "destination": [
                    "gi-position-safe",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-duration-store",
                    0
                  ],
                  "destination": [
                    "gi-position-safe",
                    1
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-position-safe",
                    0
                  ],
                  "destination": [
                    "gi-position-send",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-position-receive",
                    0
                  ],
                  "destination": [
                    "gi-position-line",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-position-line",
                    0
                  ],
                  "destination": [
                    "gi-position-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-synth",
                    0
                  ],
                  "destination": [
                    "gi-gate-l",
                    0
                  ],
                  "color": [
                    0.68,
                    0.95,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-synth",
                    1
                  ],
                  "destination": [
                    "gi-gate-r",
                    0
                  ],
                  "color": [
                    0.68,
                    0.95,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-enable-line",
                    0
                  ],
                  "destination": [
                    "gi-gate-l",
                    1
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
                    "gi-enable-line",
                    0
                  ],
                  "destination": [
                    "gi-gate-r",
                    1
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
                    "gi-gate-l",
                    0
                  ],
                  "destination": [
                    "gi-out-l",
                    0
                  ],
                  "color": [
                    0.68,
                    0.95,
                    0.34,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-gate-r",
                    0
                  ],
                  "destination": [
                    "gi-out-r",
                    0
                  ],
                  "color": [
                    0.68,
                    0.95,
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
          "id": "p-Granular-params",
          "maxclass": "newobj",
          "patching_rect": [
            650,
            620,
            135,
            22
          ],
          "text": "p Granular_params",
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
              1420,
              300
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
                  "id": "gp-title",
                  "maxclass": "comment",
                  "patching_rect": [
                    30,
                    25,
                    620,
                    22
                  ],
                  "text": "Granular parameters: visible values publish directly to the synthesis engine"
                }
              },
              {
                "box": {
                  "id": "gp-wet-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    30,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-wet-convert",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    135,
                    150,
                    22
                  ],
                  "text": "expr $f1 / 100."
                }
              },
              {
                "box": {
                  "id": "gp-wet-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    180,
                    110,
                    22
                  ],
                  "text": "s mt_granular_wet"
                }
              },
              {
                "box": {
                  "id": "gp-density-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    230,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-density-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    230,
                    135,
                    110,
                    22
                  ],
                  "text": "s mt_granular_density"
                }
              },
              {
                "box": {
                  "id": "gp-size-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    400,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-size-convert",
                  "maxclass": "newobj",
                  "patching_rect": [
                    400,
                    135,
                    230,
                    22
                  ],
                  "text": "expr 100. * log($f1 / 20.) / log(25.)"
                }
              },
              {
                "box": {
                  "id": "gp-size-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    400,
                    180,
                    110,
                    22
                  ],
                  "text": "s mt_granular_grain_size_pct"
                }
              },
              {
                "box": {
                  "id": "gp-pitch-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    660,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-pitch-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    660,
                    135,
                    110,
                    22
                  ],
                  "text": "s mt_granular_pitch"
                }
              },
              {
                "box": {
                  "id": "gp-spray-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    820,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-spray-convert",
                  "maxclass": "newobj",
                  "patching_rect": [
                    820,
                    135,
                    210,
                    22
                  ],
                  "text": "expr 100. * sqrt($f1 / 1000.)"
                }
              },
              {
                "box": {
                  "id": "gp-spray-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    820,
                    180,
                    110,
                    22
                  ],
                  "text": "s mt_granular_spray_pct"
                }
              },
              {
                "box": {
                  "id": "gp-amp-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    1060,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-amp-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1060,
                    135,
                    110,
                    22
                  ],
                  "text": "s mt_granular_amp_db"
                }
              },
              {
                "box": {
                  "id": "gp-makeup-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    1240,
                    80,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-makeup-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1240,
                    135,
                    110,
                    22
                  ],
                  "text": "s mt_granular_output_db"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "gp-wet-in",
                    0
                  ],
                  "destination": [
                    "gp-wet-convert",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-wet-convert",
                    0
                  ],
                  "destination": [
                    "gp-wet-send",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-density-in",
                    0
                  ],
                  "destination": [
                    "gp-density-send",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-size-in",
                    0
                  ],
                  "destination": [
                    "gp-size-convert",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-size-convert",
                    0
                  ],
                  "destination": [
                    "gp-size-send",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-pitch-in",
                    0
                  ],
                  "destination": [
                    "gp-pitch-send",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-spray-in",
                    0
                  ],
                  "destination": [
                    "gp-spray-convert",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-spray-convert",
                    0
                  ],
                  "destination": [
                    "gp-spray-send",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-amp-in",
                    0
                  ],
                  "destination": [
                    "gp-amp-send",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-makeup-in",
                    0
                  ],
                  "destination": [
                    "gp-makeup-send",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
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
          "id": "p-Granular-knob-map",
          "maxclass": "newobj",
          "patching_rect": [
            850,
            620,
            165,
            22
          ],
          "text": "p Granular_knob_map",
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
              1950,
              590
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
                  "id": "gkm-title",
                  "maxclass": "comment",
                  "patching_rect": [
                    25,
                    20,
                    820,
                    22
                  ],
                  "text": "Granular knob map: pictctrl range 255 outputs 0-254; set paths do not output"
                }
              },
              {
                "box": {
                  "id": "gkm-wet-raw-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    25,
                    70,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-wet-value-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    1000,
                    250,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-wet-raw-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    25,
                    115,
                    80,
                    22
                  ],
                  "text": "clip 0 254"
                }
              },
              {
                "box": {
                  "id": "gkm-wet-to-value",
                  "maxclass": "newobj",
                  "patching_rect": [
                    25,
                    160,
                    170,
                    22
                  ],
                  "text": "scale 0 254 0. 100."
                }
              },
              {
                "box": {
                  "id": "gkm-wet-value-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1000,
                    295,
                    100,
                    22
                  ],
                  "text": "clip 0. 100."
                }
              },
              {
                "box": {
                  "id": "gkm-wet-to-raw",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1000,
                    340,
                    180,
                    22
                  ],
                  "text": "scale 0. 100. 0 254"
                }
              },
              {
                "box": {
                  "id": "gkm-wet-raw-int",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1000,
                    385,
                    35,
                    22
                  ],
                  "text": "i"
                }
              },
              {
                "box": {
                  "id": "gkm-wet-set",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1000,
                    430,
                    90,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "gkm-wet-value-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    25,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-wet-set-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    1000,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-density-raw-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    160,
                    70,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-density-value-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    1135,
                    250,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-density-raw-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    160,
                    115,
                    80,
                    22
                  ],
                  "text": "clip 0 254"
                }
              },
              {
                "box": {
                  "id": "gkm-density-to-value",
                  "maxclass": "newobj",
                  "patching_rect": [
                    160,
                    160,
                    170,
                    22
                  ],
                  "text": "scale 0 254 1. 80."
                }
              },
              {
                "box": {
                  "id": "gkm-density-value-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1135,
                    295,
                    100,
                    22
                  ],
                  "text": "clip 1. 80."
                }
              },
              {
                "box": {
                  "id": "gkm-density-to-raw",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1135,
                    340,
                    180,
                    22
                  ],
                  "text": "scale 1. 80. 0 254"
                }
              },
              {
                "box": {
                  "id": "gkm-density-raw-int",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1135,
                    385,
                    35,
                    22
                  ],
                  "text": "i"
                }
              },
              {
                "box": {
                  "id": "gkm-density-set",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1135,
                    430,
                    90,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "gkm-density-value-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    160,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-density-set-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    1135,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-size-raw-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    295,
                    70,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-size-value-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    1270,
                    250,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-size-raw-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    295,
                    115,
                    80,
                    22
                  ],
                  "text": "clip 0 254"
                }
              },
              {
                "box": {
                  "id": "gkm-size-to-value",
                  "maxclass": "newobj",
                  "patching_rect": [
                    295,
                    160,
                    215,
                    22
                  ],
                  "text": "expr 20. * pow(25.\\, $f1 / 254.)"
                }
              },
              {
                "box": {
                  "id": "gkm-size-value-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1270,
                    295,
                    100,
                    22
                  ],
                  "text": "clip 20. 500."
                }
              },
              {
                "box": {
                  "id": "gkm-size-to-raw",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1270,
                    340,
                    240,
                    22
                  ],
                  "text": "expr 254. * log($f1 / 20.) / log(25.)"
                }
              },
              {
                "box": {
                  "id": "gkm-size-raw-int",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1270,
                    385,
                    35,
                    22
                  ],
                  "text": "i"
                }
              },
              {
                "box": {
                  "id": "gkm-size-set",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1270,
                    430,
                    90,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "gkm-size-value-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    295,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-size-set-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    1270,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-pitch-raw-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    430,
                    70,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-pitch-value-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    1405,
                    250,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-pitch-raw-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    430,
                    115,
                    80,
                    22
                  ],
                  "text": "clip 0 254"
                }
              },
              {
                "box": {
                  "id": "gkm-pitch-to-value",
                  "maxclass": "newobj",
                  "patching_rect": [
                    430,
                    160,
                    170,
                    22
                  ],
                  "text": "scale 0 254 -24. 24."
                }
              },
              {
                "box": {
                  "id": "gkm-pitch-value-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1405,
                    295,
                    100,
                    22
                  ],
                  "text": "clip -24. 24."
                }
              },
              {
                "box": {
                  "id": "gkm-pitch-to-raw",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1405,
                    340,
                    180,
                    22
                  ],
                  "text": "scale -24. 24. 0 254"
                }
              },
              {
                "box": {
                  "id": "gkm-pitch-raw-int",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1405,
                    385,
                    35,
                    22
                  ],
                  "text": "i"
                }
              },
              {
                "box": {
                  "id": "gkm-pitch-set",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1405,
                    430,
                    90,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "gkm-pitch-value-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    430,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-pitch-set-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    1405,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-spray-raw-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    565,
                    70,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-spray-value-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    1540,
                    250,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-spray-raw-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    565,
                    115,
                    80,
                    22
                  ],
                  "text": "clip 0 254"
                }
              },
              {
                "box": {
                  "id": "gkm-spray-to-value",
                  "maxclass": "newobj",
                  "patching_rect": [
                    565,
                    160,
                    170,
                    22
                  ],
                  "text": "expr pow($f1 / 254.\\, 2.) * 1000."
                }
              },
              {
                "box": {
                  "id": "gkm-spray-value-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1540,
                    295,
                    100,
                    22
                  ],
                  "text": "clip 0. 1000."
                }
              },
              {
                "box": {
                  "id": "gkm-spray-to-raw",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1540,
                    340,
                    180,
                    22
                  ],
                  "text": "expr 254. * sqrt($f1 / 1000.)"
                }
              },
              {
                "box": {
                  "id": "gkm-spray-raw-int",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1540,
                    385,
                    35,
                    22
                  ],
                  "text": "i"
                }
              },
              {
                "box": {
                  "id": "gkm-spray-set",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1540,
                    430,
                    90,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "gkm-spray-value-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    565,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-spray-set-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    1540,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-amp-raw-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    700,
                    70,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-amp-value-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    1675,
                    250,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-amp-raw-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    700,
                    115,
                    80,
                    22
                  ],
                  "text": "clip 0 254"
                }
              },
              {
                "box": {
                  "id": "gkm-amp-to-value",
                  "maxclass": "newobj",
                  "patching_rect": [
                    700,
                    160,
                    170,
                    22
                  ],
                  "text": "scale 0 254 -60. -3."
                }
              },
              {
                "box": {
                  "id": "gkm-amp-value-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1675,
                    295,
                    100,
                    22
                  ],
                  "text": "clip -60. -3."
                }
              },
              {
                "box": {
                  "id": "gkm-amp-to-raw",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1675,
                    340,
                    180,
                    22
                  ],
                  "text": "scale -60. -3. 0 254"
                }
              },
              {
                "box": {
                  "id": "gkm-amp-raw-int",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1675,
                    385,
                    35,
                    22
                  ],
                  "text": "i"
                }
              },
              {
                "box": {
                  "id": "gkm-amp-set",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1675,
                    430,
                    90,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "gkm-amp-value-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    700,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-amp-set-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    1675,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-makeup-raw-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    835,
                    70,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-makeup-value-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    1810,
                    250,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-makeup-raw-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    835,
                    115,
                    80,
                    22
                  ],
                  "text": "clip 0 254"
                }
              },
              {
                "box": {
                  "id": "gkm-makeup-to-value",
                  "maxclass": "newobj",
                  "patching_rect": [
                    835,
                    160,
                    170,
                    22
                  ],
                  "text": "scale 0 254 -60. 12."
                }
              },
              {
                "box": {
                  "id": "gkm-makeup-value-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1810,
                    295,
                    100,
                    22
                  ],
                  "text": "clip -60. 12."
                }
              },
              {
                "box": {
                  "id": "gkm-makeup-to-raw",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1810,
                    340,
                    180,
                    22
                  ],
                  "text": "scale -60. 12. 0 254"
                }
              },
              {
                "box": {
                  "id": "gkm-makeup-raw-int",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1810,
                    385,
                    35,
                    22
                  ],
                  "text": "i"
                }
              },
              {
                "box": {
                  "id": "gkm-makeup-set",
                  "maxclass": "newobj",
                  "patching_rect": [
                    1810,
                    430,
                    90,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "gkm-makeup-value-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    835,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gkm-makeup-set-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    1810,
                    500,
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
                    "gkm-wet-raw-in",
                    0
                  ],
                  "destination": [
                    "gkm-wet-raw-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-wet-raw-clip",
                    0
                  ],
                  "destination": [
                    "gkm-wet-to-value",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-wet-to-value",
                    0
                  ],
                  "destination": [
                    "gkm-wet-value-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-wet-value-in",
                    0
                  ],
                  "destination": [
                    "gkm-wet-value-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-wet-value-clip",
                    0
                  ],
                  "destination": [
                    "gkm-wet-to-raw",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-wet-to-raw",
                    0
                  ],
                  "destination": [
                    "gkm-wet-raw-int",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-wet-raw-int",
                    0
                  ],
                  "destination": [
                    "gkm-wet-set",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-wet-set",
                    0
                  ],
                  "destination": [
                    "gkm-wet-set-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-density-raw-in",
                    0
                  ],
                  "destination": [
                    "gkm-density-raw-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-density-raw-clip",
                    0
                  ],
                  "destination": [
                    "gkm-density-to-value",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-density-to-value",
                    0
                  ],
                  "destination": [
                    "gkm-density-value-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-density-value-in",
                    0
                  ],
                  "destination": [
                    "gkm-density-value-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-density-value-clip",
                    0
                  ],
                  "destination": [
                    "gkm-density-to-raw",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-density-to-raw",
                    0
                  ],
                  "destination": [
                    "gkm-density-raw-int",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-density-raw-int",
                    0
                  ],
                  "destination": [
                    "gkm-density-set",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-density-set",
                    0
                  ],
                  "destination": [
                    "gkm-density-set-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-size-raw-in",
                    0
                  ],
                  "destination": [
                    "gkm-size-raw-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-size-raw-clip",
                    0
                  ],
                  "destination": [
                    "gkm-size-to-value",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-size-to-value",
                    0
                  ],
                  "destination": [
                    "gkm-size-value-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-size-value-in",
                    0
                  ],
                  "destination": [
                    "gkm-size-value-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-size-value-clip",
                    0
                  ],
                  "destination": [
                    "gkm-size-to-raw",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-size-to-raw",
                    0
                  ],
                  "destination": [
                    "gkm-size-raw-int",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-size-raw-int",
                    0
                  ],
                  "destination": [
                    "gkm-size-set",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-size-set",
                    0
                  ],
                  "destination": [
                    "gkm-size-set-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-pitch-raw-in",
                    0
                  ],
                  "destination": [
                    "gkm-pitch-raw-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-pitch-raw-clip",
                    0
                  ],
                  "destination": [
                    "gkm-pitch-to-value",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-pitch-to-value",
                    0
                  ],
                  "destination": [
                    "gkm-pitch-value-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-pitch-value-in",
                    0
                  ],
                  "destination": [
                    "gkm-pitch-value-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-pitch-value-clip",
                    0
                  ],
                  "destination": [
                    "gkm-pitch-to-raw",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-pitch-to-raw",
                    0
                  ],
                  "destination": [
                    "gkm-pitch-raw-int",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-pitch-raw-int",
                    0
                  ],
                  "destination": [
                    "gkm-pitch-set",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-pitch-set",
                    0
                  ],
                  "destination": [
                    "gkm-pitch-set-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-spray-raw-in",
                    0
                  ],
                  "destination": [
                    "gkm-spray-raw-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-spray-raw-clip",
                    0
                  ],
                  "destination": [
                    "gkm-spray-to-value",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-spray-to-value",
                    0
                  ],
                  "destination": [
                    "gkm-spray-value-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-spray-value-in",
                    0
                  ],
                  "destination": [
                    "gkm-spray-value-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-spray-value-clip",
                    0
                  ],
                  "destination": [
                    "gkm-spray-to-raw",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-spray-to-raw",
                    0
                  ],
                  "destination": [
                    "gkm-spray-raw-int",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-spray-raw-int",
                    0
                  ],
                  "destination": [
                    "gkm-spray-set",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-spray-set",
                    0
                  ],
                  "destination": [
                    "gkm-spray-set-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-amp-raw-in",
                    0
                  ],
                  "destination": [
                    "gkm-amp-raw-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-amp-raw-clip",
                    0
                  ],
                  "destination": [
                    "gkm-amp-to-value",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-amp-to-value",
                    0
                  ],
                  "destination": [
                    "gkm-amp-value-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-amp-value-in",
                    0
                  ],
                  "destination": [
                    "gkm-amp-value-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-amp-value-clip",
                    0
                  ],
                  "destination": [
                    "gkm-amp-to-raw",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-amp-to-raw",
                    0
                  ],
                  "destination": [
                    "gkm-amp-raw-int",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-amp-raw-int",
                    0
                  ],
                  "destination": [
                    "gkm-amp-set",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-amp-set",
                    0
                  ],
                  "destination": [
                    "gkm-amp-set-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-makeup-raw-in",
                    0
                  ],
                  "destination": [
                    "gkm-makeup-raw-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-makeup-raw-clip",
                    0
                  ],
                  "destination": [
                    "gkm-makeup-to-value",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-makeup-to-value",
                    0
                  ],
                  "destination": [
                    "gkm-makeup-value-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-makeup-value-in",
                    0
                  ],
                  "destination": [
                    "gkm-makeup-value-clip",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-makeup-value-clip",
                    0
                  ],
                  "destination": [
                    "gkm-makeup-to-raw",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-makeup-to-raw",
                    0
                  ],
                  "destination": [
                    "gkm-makeup-raw-int",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-makeup-raw-int",
                    0
                  ],
                  "destination": [
                    "gkm-makeup-set",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gkm-makeup-set",
                    0
                  ],
                  "destination": [
                    "gkm-makeup-set-out",
                    0
                  ],
                  "color": [
                    1,
                    0.62,
                    0.24,
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
          "id": "g-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            1050,
            850,
            30,
            30
          ],
          "comment": "Granular audio L"
        }
      },
      {
        "box": {
          "id": "g-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            1120,
            850,
            30,
            30
          ],
          "comment": "Granular audio R"
        }
      },
      {
        "box": {
          "id": "g-wet-label",
          "maxclass": "comment",
          "patching_rect": [
            16,
            342,
            84,
            17
          ],
          "text": "Wet (%)",
          "fontsize": 10,
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            16,
            342,
            84,
            17
          ]
        }
      },
      {
        "box": {
          "id": "g-wet-dial",
          "maxclass": "pictctrl",
          "patching_rect": [
            36,
            360,
            44,
            44
          ],
          "frames": 64,
          "mode": 2,
          "multiplier": 1,
          "name": "granular_knob_v1.png",
          "range": 255,
          "trackhorizontal": 1,
          "trackvertical": 1,
          "tracking": 1,
          "parameter_enable": 0,
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "varname": "granular_wet",
          "presentation": 1,
          "presentation_rect": [
            36,
            360,
            44,
            44
          ]
        }
      },
      {
        "box": {
          "id": "g-wet-value",
          "maxclass": "flonum",
          "patching_rect": [
            30,
            407,
            56,
            22
          ],
          "minimum": 0,
          "maximum": 100,
          "numdecimalplaces": 0,
          "presentation": 1,
          "presentation_rect": [
            30,
            407,
            56,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-density-label",
          "maxclass": "comment",
          "patching_rect": [
            105,
            342,
            84,
            17
          ],
          "text": "Density (gr/s)",
          "fontsize": 10,
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            105,
            342,
            84,
            17
          ]
        }
      },
      {
        "box": {
          "id": "g-density-dial",
          "maxclass": "pictctrl",
          "patching_rect": [
            125,
            360,
            44,
            44
          ],
          "frames": 64,
          "mode": 2,
          "multiplier": 1,
          "name": "granular_knob_v1.png",
          "range": 255,
          "trackhorizontal": 1,
          "trackvertical": 1,
          "tracking": 1,
          "parameter_enable": 0,
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "varname": "granular_density",
          "presentation": 1,
          "presentation_rect": [
            125,
            360,
            44,
            44
          ]
        }
      },
      {
        "box": {
          "id": "g-density-value",
          "maxclass": "flonum",
          "patching_rect": [
            119,
            407,
            56,
            22
          ],
          "minimum": 1,
          "maximum": 80,
          "numdecimalplaces": 1,
          "presentation": 1,
          "presentation_rect": [
            119,
            407,
            56,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-size-label",
          "maxclass": "comment",
          "patching_rect": [
            194,
            342,
            84,
            17
          ],
          "text": "Size (ms)",
          "fontsize": 10,
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            194,
            342,
            84,
            17
          ]
        }
      },
      {
        "box": {
          "id": "g-size-dial",
          "maxclass": "pictctrl",
          "patching_rect": [
            214,
            360,
            44,
            44
          ],
          "frames": 64,
          "mode": 2,
          "multiplier": 1,
          "name": "granular_knob_v1.png",
          "range": 255,
          "trackhorizontal": 1,
          "trackvertical": 1,
          "tracking": 1,
          "parameter_enable": 0,
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "varname": "granular_grain_size",
          "presentation": 1,
          "presentation_rect": [
            214,
            360,
            44,
            44
          ]
        }
      },
      {
        "box": {
          "id": "g-size-value",
          "maxclass": "flonum",
          "patching_rect": [
            208,
            407,
            56,
            22
          ],
          "minimum": 20,
          "maximum": 500,
          "numdecimalplaces": 1,
          "presentation": 1,
          "presentation_rect": [
            208,
            407,
            56,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-pitch-label",
          "maxclass": "comment",
          "patching_rect": [
            283,
            342,
            84,
            17
          ],
          "text": "Pitch (st)",
          "fontsize": 10,
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            283,
            342,
            84,
            17
          ]
        }
      },
      {
        "box": {
          "id": "g-pitch-dial",
          "maxclass": "pictctrl",
          "patching_rect": [
            303,
            360,
            44,
            44
          ],
          "frames": 64,
          "mode": 2,
          "multiplier": 1,
          "name": "granular_knob_v1.png",
          "range": 255,
          "trackhorizontal": 1,
          "trackvertical": 1,
          "tracking": 1,
          "parameter_enable": 0,
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "varname": "granular_pitch",
          "presentation": 1,
          "presentation_rect": [
            303,
            360,
            44,
            44
          ]
        }
      },
      {
        "box": {
          "id": "g-pitch-value",
          "maxclass": "flonum",
          "patching_rect": [
            297,
            407,
            56,
            22
          ],
          "minimum": -24,
          "maximum": 24,
          "numdecimalplaces": 1,
          "presentation": 1,
          "presentation_rect": [
            297,
            407,
            56,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-spray-label",
          "maxclass": "comment",
          "patching_rect": [
            372,
            342,
            84,
            17
          ],
          "text": "Spray (ms)",
          "fontsize": 10,
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            372,
            342,
            84,
            17
          ]
        }
      },
      {
        "box": {
          "id": "g-spray-dial",
          "maxclass": "pictctrl",
          "patching_rect": [
            392,
            360,
            44,
            44
          ],
          "frames": 64,
          "mode": 2,
          "multiplier": 1,
          "name": "granular_knob_v1.png",
          "range": 255,
          "trackhorizontal": 1,
          "trackvertical": 1,
          "tracking": 1,
          "parameter_enable": 0,
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "varname": "granular_spray",
          "presentation": 1,
          "presentation_rect": [
            392,
            360,
            44,
            44
          ]
        }
      },
      {
        "box": {
          "id": "g-spray-value",
          "maxclass": "flonum",
          "patching_rect": [
            386,
            407,
            56,
            22
          ],
          "minimum": 0,
          "maximum": 1000,
          "numdecimalplaces": 1,
          "presentation": 1,
          "presentation_rect": [
            386,
            407,
            56,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-amp-label",
          "maxclass": "comment",
          "patching_rect": [
            461,
            342,
            84,
            17
          ],
          "text": "Grain Amp (dB)",
          "fontsize": 10,
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            461,
            342,
            84,
            17
          ]
        }
      },
      {
        "box": {
          "id": "g-amp-dial",
          "maxclass": "pictctrl",
          "patching_rect": [
            481,
            360,
            44,
            44
          ],
          "frames": 64,
          "mode": 2,
          "multiplier": 1,
          "name": "granular_knob_v1.png",
          "range": 255,
          "trackhorizontal": 1,
          "trackvertical": 1,
          "tracking": 1,
          "parameter_enable": 0,
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "varname": "granular_grain_amp",
          "presentation": 1,
          "presentation_rect": [
            481,
            360,
            44,
            44
          ]
        }
      },
      {
        "box": {
          "id": "g-amp-value",
          "maxclass": "flonum",
          "patching_rect": [
            475,
            407,
            56,
            22
          ],
          "minimum": -60,
          "maximum": -3,
          "numdecimalplaces": 1,
          "presentation": 1,
          "presentation_rect": [
            475,
            407,
            56,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-makeup-label",
          "maxclass": "comment",
          "patching_rect": [
            550,
            342,
            84,
            17
          ],
          "text": "Texture Gain (dB)",
          "fontsize": 10,
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            550,
            342,
            92,
            17
          ]
        }
      },
      {
        "box": {
          "id": "g-makeup-dial",
          "maxclass": "pictctrl",
          "patching_rect": [
            570,
            360,
            44,
            44
          ],
          "frames": 64,
          "mode": 2,
          "multiplier": 1,
          "name": "granular_knob_v1.png",
          "range": 255,
          "trackhorizontal": 1,
          "trackvertical": 1,
          "tracking": 1,
          "parameter_enable": 0,
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "varname": "granular_makeup",
          "presentation": 1,
          "presentation_rect": [
            570,
            360,
            44,
            44
          ]
        }
      },
      {
        "box": {
          "id": "g-makeup-value",
          "maxclass": "flonum",
          "patching_rect": [
            564,
            407,
            56,
            22
          ],
          "minimum": -60,
          "maximum": 12,
          "numdecimalplaces": 1,
          "presentation": 1,
          "presentation_rect": [
            564,
            407,
            56,
            22
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "g-ext-enable",
            0
          ],
          "destination": [
            "p-Granular-control",
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
            "g-enable",
            0
          ],
          "destination": [
            "p-Granular-control",
            1
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
            "g-record",
            0
          ],
          "destination": [
            "p-Granular-control",
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
            "g-play",
            0
          ],
          "destination": [
            "p-Granular-control",
            3
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
            "g-drop",
            0
          ],
          "destination": [
            "p-Granular-control",
            4
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-load",
            0
          ],
          "destination": [
            "g-open",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-open",
            0
          ],
          "destination": [
            "p-Granular-control",
            4
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-preset",
            0
          ],
          "destination": [
            "p-Granular-control",
            5
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-control",
            0
          ],
          "destination": [
            "p-Granular-input",
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
            "p-Granular-control",
            1
          ],
          "destination": [
            "p-Granular-input",
            1
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
            "p-Granular-control",
            2
          ],
          "destination": [
            "p-Granular-input",
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
            "p-Granular-control",
            3
          ],
          "destination": [
            "p-Granular-input",
            3
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-control",
            4
          ],
          "destination": [
            "g-enable",
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
            "p-Granular-control",
            5
          ],
          "destination": [
            "g-record",
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
            "p-Granular-control",
            6
          ],
          "destination": [
            "g-play",
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
            "p-Granular-control",
            7
          ],
          "destination": [
            "g-file",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-control",
            8
          ],
          "destination": [
            "g-status",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-control",
            9
          ],
          "destination": [
            "g-duration",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-control",
            10
          ],
          "destination": [
            "g-gain",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-waveform",
            2
          ],
          "destination": [
            "p-Granular-input",
            4
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-input",
            2
          ],
          "destination": [
            "p-Granular-control",
            6
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-input",
            3
          ],
          "destination": [
            "g-waveform",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-input",
            0
          ],
          "destination": [
            "g-gain",
            0
          ],
          "color": [
            0.68,
            0.95,
            0.34,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-input",
            1
          ],
          "destination": [
            "g-gain",
            1
          ],
          "color": [
            0.68,
            0.95,
            0.34,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-gain",
            0
          ],
          "destination": [
            "g-out-l",
            0
          ],
          "color": [
            0.68,
            0.95,
            0.34,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-gain",
            1
          ],
          "destination": [
            "g-out-r",
            0
          ],
          "color": [
            0.68,
            0.95,
            0.34,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-wet-dial",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            0
          ],
          "destination": [
            "g-wet-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-wet-value",
            0
          ],
          "destination": [
            "p-Granular-params",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-wet-value",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            7
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            7
          ],
          "destination": [
            "g-wet-dial",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-control",
            11
          ],
          "destination": [
            "g-wet-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-density-dial",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            1
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            1
          ],
          "destination": [
            "g-density-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-density-value",
            0
          ],
          "destination": [
            "p-Granular-params",
            1
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-density-value",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            8
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            8
          ],
          "destination": [
            "g-density-dial",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-control",
            12
          ],
          "destination": [
            "g-density-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-size-dial",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            2
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            2
          ],
          "destination": [
            "g-size-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-size-value",
            0
          ],
          "destination": [
            "p-Granular-params",
            2
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-size-value",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            9
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            9
          ],
          "destination": [
            "g-size-dial",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-control",
            13
          ],
          "destination": [
            "g-size-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-pitch-dial",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            3
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            3
          ],
          "destination": [
            "g-pitch-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-pitch-value",
            0
          ],
          "destination": [
            "p-Granular-params",
            3
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-pitch-value",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            10
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            10
          ],
          "destination": [
            "g-pitch-dial",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-control",
            14
          ],
          "destination": [
            "g-pitch-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-spray-dial",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            4
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            4
          ],
          "destination": [
            "g-spray-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-spray-value",
            0
          ],
          "destination": [
            "p-Granular-params",
            4
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-spray-value",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            11
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            11
          ],
          "destination": [
            "g-spray-dial",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-control",
            15
          ],
          "destination": [
            "g-spray-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-amp-dial",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            5
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            5
          ],
          "destination": [
            "g-amp-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-amp-value",
            0
          ],
          "destination": [
            "p-Granular-params",
            5
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-amp-value",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            12
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            12
          ],
          "destination": [
            "g-amp-dial",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-control",
            16
          ],
          "destination": [
            "g-amp-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-makeup-dial",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            6
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            6
          ],
          "destination": [
            "g-makeup-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-makeup-value",
            0
          ],
          "destination": [
            "p-Granular-params",
            6
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-makeup-value",
            0
          ],
          "destination": [
            "p-Granular-knob-map",
            13
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-knob-map",
            13
          ],
          "destination": [
            "g-makeup-dial",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-control",
            17
          ],
          "destination": [
            "g-makeup-value",
            0
          ],
          "color": [
            1,
            0.62,
            0.24,
            1
          ]
        }
      }
    ],
    "dependency_cache": [
      {
        "name": "granular_panel_v1.png",
        "bootpath": ".",
        "patcherrelativepath": ".",
        "type": "PNG",
        "implicit": 1
      },
      {
        "name": "granular_knob_v1.png",
        "bootpath": ".",
        "patcherrelativepath": ".",
        "type": "PNG",
        "implicit": 1
      }
    ],
    "parameters": {
      "g-gain": [
        "live.gain~",
        "Granular Input",
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
    "autosave": 0
  }
}