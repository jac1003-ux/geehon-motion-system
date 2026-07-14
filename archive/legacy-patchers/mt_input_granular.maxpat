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
      1080,
      740
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
          "id": "g-title",
          "maxclass": "comment",
          "patching_rect": [
            24,
            20,
            360,
            24
          ],
          "text": "MT Input Granular - portfolio source box",
          "presentation": 1,
          "presentation_rect": [
            12,
            8,
            320,
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
            48,
            820,
            22
          ],
          "text": "Record mic or load sample into mt_granular_synth. Controls expose density, size, pitch, spray, amp, wet, and output.",
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
          "id": "g-ext-enable",
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
          "id": "g-ext-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            60,
            100,
            80,
            22
          ],
          "text": "in: enable"
        }
      },
      {
        "box": {
          "id": "g-enable",
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
          "id": "g-enable-label",
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
          "id": "g-source-mic",
          "maxclass": "message",
          "patching_rect": [
            120,
            145,
            35,
            22
          ],
          "text": "1",
          "presentation": 1,
          "presentation_rect": [
            112,
            78,
            35,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-source-mic-label",
          "maxclass": "comment",
          "patching_rect": [
            160,
            148,
            90,
            22
          ],
          "text": "Mic Source",
          "presentation": 1,
          "presentation_rect": [
            152,
            80,
            86,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-source-file",
          "maxclass": "message",
          "patching_rect": [
            255,
            145,
            35,
            22
          ],
          "text": "2",
          "presentation": 1,
          "presentation_rect": [
            245,
            78,
            35,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-source-file-label",
          "maxclass": "comment",
          "patching_rect": [
            295,
            148,
            55,
            22
          ],
          "text": "File",
          "presentation": 1,
          "presentation_rect": [
            286,
            80,
            46,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-record",
          "maxclass": "toggle",
          "patching_rect": [
            120,
            210,
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
          "id": "g-record-label",
          "maxclass": "comment",
          "patching_rect": [
            150,
            213,
            120,
            22
          ],
          "text": "Record Material",
          "presentation": 1,
          "presentation_rect": [
            44,
            124,
            112,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-play",
          "maxclass": "toggle",
          "patching_rect": [
            320,
            210,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            172,
            122,
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
            350,
            213,
            100,
            22
          ],
          "text": "Play Texture",
          "presentation": 1,
          "presentation_rect": [
            204,
            124,
            94,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-drop",
          "maxclass": "dropfile",
          "patching_rect": [
            520,
            140,
            155,
            34
          ],
          "presentation": 1,
          "presentation_rect": [
            356,
            98,
            150,
            34
          ]
        }
      },
      {
        "box": {
          "id": "g-drop-label",
          "maxclass": "comment",
          "patching_rect": [
            520,
            116,
            100,
            22
          ],
          "text": "Drop Sample",
          "presentation": 1,
          "presentation_rect": [
            356,
            74,
            95,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-load-button",
          "maxclass": "button",
          "patching_rect": [
            690,
            144,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            514,
            103,
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
            720,
            146,
            55,
            22
          ],
          "text": "Load",
          "presentation": 1,
          "presentation_rect": [
            542,
            105,
            45,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-open",
          "maxclass": "newobj",
          "patching_rect": [
            690,
            180,
            90,
            22
          ],
          "text": "opendialog"
        }
      },
      {
        "box": {
          "id": "g-safe",
          "maxclass": "message",
          "patching_rect": [
            520,
            230,
            55,
            22
          ],
          "text": "safe",
          "presentation": 1,
          "presentation_rect": [
            356,
            148,
            55,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-safe-label",
          "maxclass": "comment",
          "patching_rect": [
            580,
            233,
            90,
            22
          ],
          "text": "Safe Cloud",
          "presentation": 1,
          "presentation_rect": [
            416,
            150,
            88,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-frozen",
          "maxclass": "message",
          "patching_rect": [
            690,
            230,
            70,
            22
          ],
          "text": "frozen",
          "presentation": 1,
          "presentation_rect": [
            492,
            148,
            62,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-frozen-label",
          "maxclass": "comment",
          "patching_rect": [
            765,
            233,
            90,
            22
          ],
          "text": "Frozen Pad",
          "presentation": 1,
          "presentation_rect": [
            558,
            150,
            78,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-waveform",
          "maxclass": "waveform~",
          "patching_rect": [
            520,
            300,
            360,
            105
          ],
          "buffername": "mt_granular_buffer",
          "setmode": 1,
          "outmode": 4,
          "setunit": 0,
          "presentation": 1,
          "presentation_rect": [
            356,
            212,
            260,
            92
          ]
        }
      },
      {
        "box": {
          "id": "g-wave-label",
          "maxclass": "comment",
          "patching_rect": [
            520,
            275,
            220,
            22
          ],
          "text": "Buffer view / drag position",
          "presentation": 1,
          "presentation_rect": [
            356,
            188,
            180,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-ctrl-label",
          "maxclass": "comment",
          "patching_rect": [
            24,
            285,
            160,
            22
          ],
          "text": "Performance controls",
          "presentation": 1,
          "presentation_rect": [
            12,
            172,
            150,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-wet",
          "maxclass": "flonum",
          "patching_rect": [
            24,
            325,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            12,
            226,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-wet-label",
          "maxclass": "comment",
          "patching_rect": [
            24,
            302,
            80,
            22
          ],
          "text": "wet 0-1",
          "presentation": 1,
          "presentation_rect": [
            12,
            202,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-density",
          "maxclass": "flonum",
          "patching_rect": [
            175,
            325,
            62,
            22
          ],
          "minimum": 1,
          "maximum": 80,
          "presentation": 1,
          "presentation_rect": [
            94,
            226,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-density-label",
          "maxclass": "comment",
          "patching_rect": [
            175,
            302,
            85,
            22
          ],
          "text": "density",
          "presentation": 1,
          "presentation_rect": [
            94,
            202,
            75,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-size",
          "maxclass": "flonum",
          "patching_rect": [
            326,
            325,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 100,
          "presentation": 1,
          "presentation_rect": [
            176,
            226,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-size-label",
          "maxclass": "comment",
          "patching_rect": [
            326,
            302,
            105,
            22
          ],
          "text": "grain size %",
          "presentation": 1,
          "presentation_rect": [
            176,
            202,
            95,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-pitch",
          "maxclass": "flonum",
          "patching_rect": [
            24,
            455,
            62,
            22
          ],
          "minimum": -24,
          "maximum": 24,
          "presentation": 1,
          "presentation_rect": [
            12,
            294,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-pitch-label",
          "maxclass": "comment",
          "patching_rect": [
            24,
            432,
            80,
            22
          ],
          "text": "pitch st",
          "presentation": 1,
          "presentation_rect": [
            12,
            270,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-spray",
          "maxclass": "flonum",
          "patching_rect": [
            175,
            455,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 100,
          "presentation": 1,
          "presentation_rect": [
            94,
            294,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-spray-label",
          "maxclass": "comment",
          "patching_rect": [
            175,
            432,
            80,
            22
          ],
          "text": "spray %",
          "presentation": 1,
          "presentation_rect": [
            94,
            270,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-amp",
          "maxclass": "flonum",
          "patching_rect": [
            326,
            455,
            62,
            22
          ],
          "minimum": -60,
          "maximum": -3,
          "presentation": 1,
          "presentation_rect": [
            176,
            294,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-amp-label",
          "maxclass": "comment",
          "patching_rect": [
            326,
            432,
            110,
            22
          ],
          "text": "grain amp dB",
          "presentation": 1,
          "presentation_rect": [
            176,
            270,
            100,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-outdb",
          "maxclass": "flonum",
          "patching_rect": [
            477,
            455,
            62,
            22
          ],
          "minimum": -60,
          "maximum": 12,
          "presentation": 1,
          "presentation_rect": [
            258,
            294,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-outdb-label",
          "maxclass": "comment",
          "patching_rect": [
            477,
            432,
            90,
            22
          ],
          "text": "makeup dB",
          "presentation": 1,
          "presentation_rect": [
            258,
            270,
            86,
            22
          ]
        }
      },
      {
        "box": {
          "id": "p-Granular-params",
          "maxclass": "newobj",
          "patching_rect": [
            220,
            590,
            160,
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
              1120,
              420
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
                    35,
                    25,
                    760,
                    22
                  ],
                  "text": "Granular params: defaults/presets update the outer number boxes; numbers then send to synth params."
                }
              },
              {
                "box": {
                  "id": "gp-wet-in",
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
                  "id": "gp-density-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    135,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-size-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    235,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-pitch-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    335,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-spray-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    435,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-amp-in",
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
                  "id": "gp-outdb-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    635,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-preset-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    760,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-wet-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    135,
                    140,
                    22
                  ],
                  "text": "s mt_granular_wet"
                }
              },
              {
                "box": {
                  "id": "gp-density-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    135,
                    135,
                    150,
                    22
                  ],
                  "text": "s mt_granular_density"
                }
              },
              {
                "box": {
                  "id": "gp-size-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    235,
                    135,
                    200,
                    22
                  ],
                  "text": "s mt_granular_grain_size_pct"
                }
              },
              {
                "box": {
                  "id": "gp-pitch-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    335,
                    135,
                    150,
                    22
                  ],
                  "text": "s mt_granular_pitch"
                }
              },
              {
                "box": {
                  "id": "gp-spray-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    435,
                    135,
                    170,
                    22
                  ],
                  "text": "s mt_granular_spray_pct"
                }
              },
              {
                "box": {
                  "id": "gp-amp-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    535,
                    135,
                    160,
                    22
                  ],
                  "text": "s mt_granular_amp_db"
                }
              },
              {
                "box": {
                  "id": "gp-outdb-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    635,
                    135,
                    175,
                    22
                  ],
                  "text": "s mt_granular_output_db"
                }
              },
              {
                "box": {
                  "id": "gp-load-defaults",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    215,
                    210,
                    22
                  ],
                  "text": "loadmess 0.9 28 58 0 24 -3 6"
                }
              },
              {
                "box": {
                  "id": "gp-preset-route",
                  "maxclass": "newobj",
                  "patching_rect": [
                    760,
                    135,
                    120,
                    22
                  ],
                  "text": "route safe frozen"
                }
              },
              {
                "box": {
                  "id": "gp-safe-values",
                  "maxclass": "message",
                  "patching_rect": [
                    760,
                    180,
                    160,
                    22
                  ],
                  "text": "0.9 28 58 0 24 -3 6"
                }
              },
              {
                "box": {
                  "id": "gp-frozen-values",
                  "maxclass": "message",
                  "patching_rect": [
                    930,
                    180,
                    165,
                    22
                  ],
                  "text": "0.95 56 82 0 8 -6 8"
                }
              },
              {
                "box": {
                  "id": "gp-unpack",
                  "maxclass": "newobj",
                  "patching_rect": [
                    35,
                    260,
                    170,
                    22
                  ],
                  "text": "unpack f f f f f f f"
                }
              },
              {
                "box": {
                  "id": "gp-wet-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    35,
                    330,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-density-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    85,
                    330,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-size-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    135,
                    330,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-pitch-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    185,
                    330,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-spray-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    235,
                    330,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-amp-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    285,
                    330,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gp-outdb-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    335,
                    330,
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
                    "gp-wet-in",
                    0
                  ],
                  "destination": [
                    "gp-wet-send",
                    0
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
                    "gp-size-send",
                    0
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
                    "gp-spray-send",
                    0
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
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-outdb-in",
                    0
                  ],
                  "destination": [
                    "gp-outdb-send",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-load-defaults",
                    0
                  ],
                  "destination": [
                    "gp-unpack",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-preset-in",
                    0
                  ],
                  "destination": [
                    "gp-preset-route",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-preset-route",
                    0
                  ],
                  "destination": [
                    "gp-safe-values",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-preset-route",
                    1
                  ],
                  "destination": [
                    "gp-frozen-values",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-safe-values",
                    0
                  ],
                  "destination": [
                    "gp-unpack",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-frozen-values",
                    0
                  ],
                  "destination": [
                    "gp-unpack",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-unpack",
                    0
                  ],
                  "destination": [
                    "gp-wet-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-unpack",
                    1
                  ],
                  "destination": [
                    "gp-density-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-unpack",
                    2
                  ],
                  "destination": [
                    "gp-size-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-unpack",
                    3
                  ],
                  "destination": [
                    "gp-pitch-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-unpack",
                    4
                  ],
                  "destination": [
                    "gp-spray-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-unpack",
                    5
                  ],
                  "destination": [
                    "gp-amp-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gp-unpack",
                    6
                  ],
                  "destination": [
                    "gp-outdb-out",
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
          "id": "p-Granular-input",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            590,
            160,
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
              980,
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
                  "id": "gi-title",
                  "maxclass": "comment",
                  "patching_rect": [
                    35,
                    25,
                    920,
                    22
                  ],
                  "text": "Granular_input internals: mic/sample material -> mt_granular_synth -> enable ramp -> L/R"
                }
              },
              {
                "box": {
                  "id": "gi-enable",
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
                  "id": "gi-source",
                  "maxclass": "inlet",
                  "patching_rect": [
                    135,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gi-record-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    235,
                    90,
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
                    335,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gi-preset",
                  "maxclass": "inlet",
                  "patching_rect": [
                    435,
                    90,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gi-sample",
                  "maxclass": "inlet",
                  "patching_rect": [
                    570,
                    90,
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
                    735,
                    90,
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
                  "id": "gi-enable-line",
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
                  "id": "gi-adc",
                  "maxclass": "newobj",
                  "patching_rect": [
                    135,
                    140,
                    65,
                    22
                  ],
                  "text": "adc~ 1"
                }
              },
              {
                "box": {
                  "id": "gi-file-silent",
                  "maxclass": "newobj",
                  "patching_rect": [
                    225,
                    140,
                    60,
                    22
                  ],
                  "text": "sig~ 0."
                }
              },
              {
                "box": {
                  "id": "gi-selector",
                  "maxclass": "newobj",
                  "patching_rect": [
                    135,
                    200,
                    95,
                    22
                  ],
                  "text": "selector~ 2"
                }
              },
              {
                "box": {
                  "id": "gi-record-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    235,
                    140,
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
                    335,
                    180,
                    130,
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
                    570,
                    140,
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
                    570,
                    185,
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
                    570,
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
                    760,
                    185,
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
                    570,
                    270,
                    180,
                    22
                  ],
                  "text": "info~ mt_granular_buffer"
                }
              },
              {
                "box": {
                  "id": "gi-duration-limit",
                  "maxclass": "newobj",
                  "patching_rect": [
                    570,
                    315,
                    115,
                    22
                  ],
                  "text": "clip 1. 600000."
                }
              },
              {
                "box": {
                  "id": "gi-total-send",
                  "maxclass": "newobj",
                  "patching_rect": [
                    700,
                    315,
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
                    735,
                    140,
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
                    735,
                    185,
                    165,
                    22
                  ],
                  "text": "s mt_granular_position"
                }
              },
              {
                "box": {
                  "id": "gi-preset-route",
                  "maxclass": "newobj",
                  "patching_rect": [
                    435,
                    140,
                    120,
                    22
                  ],
                  "text": "route safe frozen"
                }
              },
              {
                "box": {
                  "id": "gi-preset-safe",
                  "maxclass": "message",
                  "patching_rect": [
                    435,
                    200,
                    185,
                    22
                  ],
                  "text": ";\nmt_granular_wet 0.9;\nmt_granular_density 28;\nmt_granular_grain_size_pct 58;\nmt_granular_position 200;\nmt_granular_pitch 0;\nmt_granular_spray_pct 24;\nmt_granular_amp_db -3;\nmt_granular_output_db 6"
                }
              },
              {
                "box": {
                  "id": "gi-preset-frozen",
                  "maxclass": "message",
                  "patching_rect": [
                    655,
                    335,
                    210,
                    22
                  ],
                  "text": ";\nmt_granular_wet 0.95;\nmt_granular_density 56;\nmt_granular_grain_size_pct 82;\nmt_granular_position 200;\nmt_granular_pitch 0;\nmt_granular_spray_pct 8;\nmt_granular_amp_db -6;\nmt_granular_output_db 8"
                }
              },
              {
                "box": {
                  "id": "gi-synth",
                  "maxclass": "newobj",
                  "patching_rect": [
                    135,
                    310,
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
                    135,
                    405,
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
                    220,
                    405,
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
                    135,
                    500,
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
                    220,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "gi-out-status",
                  "maxclass": "outlet",
                  "patching_rect": [
                    570,
                    335,
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
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-source",
                    0
                  ],
                  "destination": [
                    "gi-selector",
                    0
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
                    "gi-selector",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-file-silent",
                    0
                  ],
                  "destination": [
                    "gi-selector",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-selector",
                    0
                  ],
                  "destination": [
                    "gi-synth",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-record-in",
                    0
                  ],
                  "destination": [
                    "gi-record-send",
                    0
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
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-sample",
                    0
                  ],
                  "destination": [
                    "gi-replace",
                    0
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
                    "gi-duration-limit",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-duration-limit",
                    0
                  ],
                  "destination": [
                    "gi-out-status",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-duration-limit",
                    0
                  ],
                  "destination": [
                    "gi-total-send",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-duration-limit",
                    0
                  ],
                  "destination": [
                    "gi-position-safe",
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
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-preset",
                    0
                  ],
                  "destination": [
                    "gi-preset-route",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-preset-route",
                    0
                  ],
                  "destination": [
                    "gi-preset-safe",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "gi-preset-route",
                    1
                  ],
                  "destination": [
                    "gi-preset-frozen",
                    0
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
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "g-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            705,
            455,
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
              "parameter_shortname": "Granular Input",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            440,
            326,
            54,
            122
          ]
        }
      },
      {
        "box": {
          "id": "g-status",
          "maxclass": "flonum",
          "patching_rect": [
            900,
            455,
            90,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            94,
            342,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-status-label",
          "maxclass": "comment",
          "patching_rect": [
            900,
            432,
            90,
            22
          ],
          "text": "duration ms",
          "presentation": 1,
          "presentation_rect": [
            12,
            342,
            82,
            22
          ]
        }
      },
      {
        "box": {
          "id": "g-dac",
          "maxclass": "ezdac~",
          "patching_rect": [
            835,
            555,
            45,
            45
          ]
        }
      },
      {
        "box": {
          "id": "g-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            920,
            555,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "g-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            970,
            555,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "g-out-label",
          "maxclass": "comment",
          "patching_rect": [
            900,
            595,
            170,
            22
          ],
          "text": "out 1/2: audio L/R"
        }
      },
      {
        "box": {
          "id": "g-enable-set",
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
          "id": "g-enable-state-send",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            210,
            165,
            22
          ],
          "text": "s mt_grain_enable_state"
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
            "g-enable-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-enable-set",
            0
          ],
          "destination": [
            "g-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-ext-enable",
            0
          ],
          "destination": [
            "p-Granular-input",
            0
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
            "p-Granular-input",
            0
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
            "g-enable-state-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-source-mic",
            0
          ],
          "destination": [
            "p-Granular-input",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-source-file",
            0
          ],
          "destination": [
            "p-Granular-input",
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
            "p-Granular-input",
            2
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
            "p-Granular-input",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-safe",
            0
          ],
          "destination": [
            "p-Granular-params",
            7
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-frozen",
            0
          ],
          "destination": [
            "p-Granular-params",
            7
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
            "p-Granular-input",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-load-button",
            0
          ],
          "destination": [
            "g-open",
            0
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
            "p-Granular-input",
            5
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
            6
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
            "g-status",
            0
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
            "g-waveform",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-wet",
            0
          ],
          "destination": [
            "p-Granular-params",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-density",
            0
          ],
          "destination": [
            "p-Granular-params",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-size",
            0
          ],
          "destination": [
            "p-Granular-params",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-pitch",
            0
          ],
          "destination": [
            "p-Granular-params",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-spray",
            0
          ],
          "destination": [
            "p-Granular-params",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-amp",
            0
          ],
          "destination": [
            "p-Granular-params",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "g-outdb",
            0
          ],
          "destination": [
            "p-Granular-params",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-params",
            0
          ],
          "destination": [
            "g-wet",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-params",
            1
          ],
          "destination": [
            "g-density",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-params",
            2
          ],
          "destination": [
            "g-size",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-params",
            3
          ],
          "destination": [
            "g-pitch",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-params",
            4
          ],
          "destination": [
            "g-spray",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-params",
            5
          ],
          "destination": [
            "g-amp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-Granular-params",
            6
          ],
          "destination": [
            "g-outdb",
            0
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
            "g-dac",
            0
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
            "g-dac",
            1
          ]
        }
      }
    ]
  }
}