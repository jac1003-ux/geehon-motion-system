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
      260
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
          "id": "kp-panel",
          "maxclass": "panel",
          "patching_rect": [
            0,
            0,
            300,
            190
          ],
          "bgcolor": [
            0.047,
            0.073,
            0.082,
            1
          ],
          "border": 1,
          "bordercolor": [
            0.18,
            0.42,
            0.45,
            1
          ],
          "rounded": 0,
          "background": 1,
          "ignoreclick": 1,
          "presentation": 1,
          "presentation_rect": [
            0,
            0,
            300,
            190
          ]
        }
      },
      {
        "box": {
          "id": "kp-title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            14,
            180,
            22
          ],
          "text": "PICTCTRL KNOB",
          "presentation": 1,
          "presentation_rect": [
            20,
            14,
            180,
            22
          ]
        }
      },
      {
        "box": {
          "id": "kp-note",
          "maxclass": "comment",
          "patching_rect": [
            20,
            36,
            250,
            18
          ],
          "text": "64-frame transparent circular control",
          "presentation": 1,
          "presentation_rect": [
            20,
            36,
            250,
            18
          ]
        }
      },
      {
        "box": {
          "id": "kp-knob",
          "maxclass": "pictctrl",
          "patching_rect": [
            42,
            75,
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
          "varname": "granular_knob_preview",
          "presentation": 1,
          "presentation_rect": [
            42,
            75,
            44,
            44
          ]
        }
      },
      {
        "box": {
          "id": "kp-knob-label",
          "maxclass": "comment",
          "patching_rect": [
            48,
            121,
            38,
            18
          ],
          "text": "Drag",
          "presentation": 1,
          "presentation_rect": [
            48,
            121,
            38,
            18
          ]
        }
      },
      {
        "box": {
          "id": "kp-value",
          "maxclass": "flonum",
          "patching_rect": [
            112,
            85,
            70,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            112,
            85,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "kp-value-label",
          "maxclass": "comment",
          "patching_rect": [
            112,
            64,
            76,
            18
          ],
          "text": "Normalized",
          "presentation": 1,
          "presentation_rect": [
            112,
            64,
            76,
            18
          ]
        }
      },
      {
        "box": {
          "id": "kp-zero",
          "maxclass": "message",
          "patching_rect": [
            20,
            151,
            34,
            22
          ],
          "text": "0.",
          "presentation": 1,
          "presentation_rect": [
            20,
            151,
            34,
            22
          ]
        }
      },
      {
        "box": {
          "id": "kp-half",
          "maxclass": "message",
          "patching_rect": [
            64,
            151,
            38,
            22
          ],
          "text": "0.5",
          "presentation": 1,
          "presentation_rect": [
            64,
            151,
            38,
            22
          ]
        }
      },
      {
        "box": {
          "id": "kp-one",
          "maxclass": "message",
          "patching_rect": [
            112,
            151,
            34,
            22
          ],
          "text": "1.",
          "presentation": 1,
          "presentation_rect": [
            112,
            151,
            34,
            22
          ]
        }
      },
      {
        "box": {
          "id": "kp-set-in",
          "maxclass": "inlet",
          "patching_rect": [
            360,
            100,
            30,
            30
          ],
          "comment": "Set normalized value 0-1"
        }
      },
      {
        "box": {
          "id": "p-Knob-map",
          "maxclass": "newobj",
          "patching_rect": [
            450,
            100,
            110,
            22
          ],
          "text": "p Knob_map",
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
              760,
              470
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
                  "id": "km-title",
                  "maxclass": "comment",
                  "patching_rect": [
                    25,
                    20,
                    700,
                    22
                  ],
                  "text": "Knob map: normalized external values set the image silently; mouse gestures output normalized values"
                }
              },
              {
                "box": {
                  "id": "km-set-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    30,
                    75,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "km-ui-in",
                  "maxclass": "inlet",
                  "patching_rect": [
                    250,
                    75,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "km-set-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    125,
                    80,
                    22
                  ],
                  "text": "clip 0. 1."
                }
              },
              {
                "box": {
                  "id": "km-set-trigger",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    170,
                    50,
                    22
                  ],
                  "text": "t f f"
                }
              },
              {
                "box": {
                  "id": "km-set-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    215,
                    130,
                    22
                  ],
                  "text": "scale 0. 1. 0 255"
                }
              },
              {
                "box": {
                  "id": "km-set-int",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    260,
                    35,
                    22
                  ],
                  "text": "i"
                }
              },
              {
                "box": {
                  "id": "km-knob-set",
                  "maxclass": "newobj",
                  "patching_rect": [
                    30,
                    305,
                    90,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "km-value-set",
                  "maxclass": "newobj",
                  "patching_rect": [
                    145,
                    215,
                    90,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "km-ui-clip",
                  "maxclass": "newobj",
                  "patching_rect": [
                    250,
                    125,
                    80,
                    22
                  ],
                  "text": "clip 0 255"
                }
              },
              {
                "box": {
                  "id": "km-ui-scale",
                  "maxclass": "newobj",
                  "patching_rect": [
                    250,
                    170,
                    140,
                    22
                  ],
                  "text": "scale 0 255 0. 1."
                }
              },
              {
                "box": {
                  "id": "km-loadbang",
                  "maxclass": "newobj",
                  "patching_rect": [
                    430,
                    75,
                    65,
                    22
                  ],
                  "text": "loadbang"
                }
              },
              {
                "box": {
                  "id": "km-default",
                  "maxclass": "message",
                  "patching_rect": [
                    430,
                    125,
                    38,
                    22
                  ],
                  "text": "0.5"
                }
              },
              {
                "box": {
                  "id": "km-knob-set-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    30,
                    380,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "km-ui-value-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    250,
                    380,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "km-display-set-out",
                  "maxclass": "outlet",
                  "patching_rect": [
                    145,
                    380,
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
                    "km-set-in",
                    0
                  ],
                  "destination": [
                    "km-set-clip",
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
                    "km-set-clip",
                    0
                  ],
                  "destination": [
                    "km-set-trigger",
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
                    "km-set-trigger",
                    1
                  ],
                  "destination": [
                    "km-value-set",
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
                    "km-set-trigger",
                    0
                  ],
                  "destination": [
                    "km-set-scale",
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
                    "km-set-scale",
                    0
                  ],
                  "destination": [
                    "km-set-int",
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
                    "km-set-int",
                    0
                  ],
                  "destination": [
                    "km-knob-set",
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
                    "km-knob-set",
                    0
                  ],
                  "destination": [
                    "km-knob-set-out",
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
                    "km-value-set",
                    0
                  ],
                  "destination": [
                    "km-display-set-out",
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
                    "km-ui-in",
                    0
                  ],
                  "destination": [
                    "km-ui-clip",
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
                    "km-ui-clip",
                    0
                  ],
                  "destination": [
                    "km-ui-scale",
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
                    "km-ui-scale",
                    0
                  ],
                  "destination": [
                    "km-ui-value-out",
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
                    "km-loadbang",
                    0
                  ],
                  "destination": [
                    "km-default",
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
                    "km-default",
                    0
                  ],
                  "destination": [
                    "km-set-clip",
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
          "id": "kp-value-out",
          "maxclass": "outlet",
          "patching_rect": [
            620,
            100,
            30,
            30
          ],
          "comment": "Normalized knob value 0-1"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "kp-set-in",
            0
          ],
          "destination": [
            "p-Knob-map",
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
            "kp-zero",
            0
          ],
          "destination": [
            "p-Knob-map",
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
            "kp-half",
            0
          ],
          "destination": [
            "p-Knob-map",
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
            "kp-one",
            0
          ],
          "destination": [
            "p-Knob-map",
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
            "kp-knob",
            0
          ],
          "destination": [
            "p-Knob-map",
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
            "p-Knob-map",
            0
          ],
          "destination": [
            "kp-knob",
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
            "p-Knob-map",
            1
          ],
          "destination": [
            "kp-value",
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
            "p-Knob-map",
            2
          ],
          "destination": [
            "kp-value",
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
            "kp-value",
            0
          ],
          "destination": [
            "p-Knob-map",
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
            "kp-value",
            0
          ],
          "destination": [
            "kp-value-out",
            0
          ],
          "color": [
            0.44,
            0.72,
            1,
            1
          ]
        }
      }
    ],
    "dependency_cache": [
      {
        "name": "granular_knob_v1.png",
        "bootpath": ".",
        "patcherrelativepath": ".",
        "type": "PNG",
        "implicit": 1
      }
    ],
    "autosave": 0
  }
}