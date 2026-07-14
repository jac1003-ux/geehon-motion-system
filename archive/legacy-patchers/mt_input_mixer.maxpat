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
      1040,
      540
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
          "id": "mix-title",
          "maxclass": "comment",
          "patching_rect": [
            24,
            20,
            420,
            24
          ],
          "text": "MT Input Mixer - 3 source portfolio input layer"
        }
      },
      {
        "box": {
          "id": "mix-note",
          "maxclass": "comment",
          "patching_rect": [
            24,
            48,
            680,
            22
          ],
          "text": "Connect Mic/File/Granular stereo sources. Each source has enable ramp, gain, meter, then master gain."
        }
      },
      {
        "box": {
          "id": "mix-mic-l",
          "maxclass": "inlet",
          "patching_rect": [
            24,
            110,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "mix-mic-r",
          "maxclass": "inlet",
          "patching_rect": [
            70,
            110,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "mix-mic-label",
          "maxclass": "comment",
          "patching_rect": [
            24,
            88,
            80,
            22
          ],
          "text": "Mic L/R"
        }
      },
      {
        "box": {
          "id": "mix-file-l",
          "maxclass": "inlet",
          "patching_rect": [
            210,
            110,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "mix-file-r",
          "maxclass": "inlet",
          "patching_rect": [
            256,
            110,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "mix-file-label",
          "maxclass": "comment",
          "patching_rect": [
            210,
            88,
            80,
            22
          ],
          "text": "File L/R"
        }
      },
      {
        "box": {
          "id": "mix-grain-l",
          "maxclass": "inlet",
          "patching_rect": [
            396,
            110,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "mix-grain-r",
          "maxclass": "inlet",
          "patching_rect": [
            442,
            110,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "mix-grain-label",
          "maxclass": "comment",
          "patching_rect": [
            396,
            88,
            110,
            22
          ],
          "text": "Granular L/R"
        }
      },
      {
        "box": {
          "id": "mix-mic-enable-in",
          "maxclass": "inlet",
          "patching_rect": [
            560,
            110,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "mix-file-enable-in",
          "maxclass": "inlet",
          "patching_rect": [
            606,
            110,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "mix-grain-enable-in",
          "maxclass": "inlet",
          "patching_rect": [
            652,
            110,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "mix-ext-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            560,
            88,
            140,
            22
          ],
          "text": "external enables"
        }
      },
      {
        "box": {
          "id": "mix-explain",
          "maxclass": "comment",
          "patching_rect": [
            24,
            515,
            700,
            36
          ],
          "text": "Source enable buttons are linked with the source boxes and main switches. Use these gains to balance the dry input before FX returns.",
          "presentation": 1,
          "presentation_rect": [
            12,
            210,
            610,
            36
          ]
        }
      },
      {
        "box": {
          "id": "mix-mic-enable",
          "maxclass": "toggle",
          "patching_rect": [
            24,
            175,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            28,
            18,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "mix-mic-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            55,
            178,
            45,
            22
          ],
          "text": "Mic"
        }
      },
      {
        "box": {
          "id": "mix-file-enable",
          "maxclass": "toggle",
          "patching_rect": [
            210,
            175,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            188,
            18,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "mix-file-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            241,
            178,
            45,
            22
          ],
          "text": "File"
        }
      },
      {
        "box": {
          "id": "mix-grain-enable",
          "maxclass": "toggle",
          "patching_rect": [
            396,
            175,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            348,
            18,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "mix-grain-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            427,
            178,
            75,
            22
          ],
          "text": "Granular"
        }
      },
      {
        "box": {
          "id": "mix-mic-msg",
          "maxclass": "message",
          "patching_rect": [
            24,
            215,
            55,
            22
          ],
          "text": "$1 20"
        }
      },
      {
        "box": {
          "id": "mix-file-msg",
          "maxclass": "message",
          "patching_rect": [
            210,
            215,
            55,
            22
          ],
          "text": "$1 20"
        }
      },
      {
        "box": {
          "id": "mix-grain-msg",
          "maxclass": "message",
          "patching_rect": [
            396,
            215,
            55,
            22
          ],
          "text": "$1 20"
        }
      },
      {
        "box": {
          "id": "mix-mic-enable-set",
          "maxclass": "message",
          "patching_rect": [
            560,
            145,
            60,
            22
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "mix-file-enable-set",
          "maxclass": "message",
          "patching_rect": [
            620,
            145,
            60,
            22
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "mix-grain-enable-set",
          "maxclass": "message",
          "patching_rect": [
            680,
            145,
            60,
            22
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "mix-mic-enable-route",
          "maxclass": "newobj",
          "patching_rect": [
            560,
            180,
            45,
            22
          ],
          "text": "t i i"
        }
      },
      {
        "box": {
          "id": "mix-file-enable-route",
          "maxclass": "newobj",
          "patching_rect": [
            620,
            180,
            45,
            22
          ],
          "text": "t i i"
        }
      },
      {
        "box": {
          "id": "mix-grain-enable-route",
          "maxclass": "newobj",
          "patching_rect": [
            680,
            180,
            45,
            22
          ],
          "text": "t i i"
        }
      },
      {
        "box": {
          "id": "mix-mic-state-send",
          "maxclass": "newobj",
          "patching_rect": [
            560,
            215,
            155,
            22
          ],
          "text": "s mt_mic_enable_state"
        }
      },
      {
        "box": {
          "id": "mix-file-state-send",
          "maxclass": "newobj",
          "patching_rect": [
            560,
            245,
            155,
            22
          ],
          "text": "s mt_file_enable_state"
        }
      },
      {
        "box": {
          "id": "mix-grain-state-send",
          "maxclass": "newobj",
          "patching_rect": [
            560,
            275,
            165,
            22
          ],
          "text": "s mt_grain_enable_state"
        }
      },
      {
        "box": {
          "id": "mix-mic-line",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            255,
            50,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "mix-file-line",
          "maxclass": "newobj",
          "patching_rect": [
            210,
            255,
            50,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "mix-grain-line",
          "maxclass": "newobj",
          "patching_rect": [
            396,
            255,
            50,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "mix-mic-gate-l",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            305,
            55,
            22
          ],
          "text": "*~ 0."
        }
      },
      {
        "box": {
          "id": "mix-mic-gate-r",
          "maxclass": "newobj",
          "patching_rect": [
            70,
            305,
            55,
            22
          ],
          "text": "*~ 0."
        }
      },
      {
        "box": {
          "id": "mix-file-gate-l",
          "maxclass": "newobj",
          "patching_rect": [
            210,
            305,
            55,
            22
          ],
          "text": "*~ 0."
        }
      },
      {
        "box": {
          "id": "mix-file-gate-r",
          "maxclass": "newobj",
          "patching_rect": [
            256,
            305,
            55,
            22
          ],
          "text": "*~ 0."
        }
      },
      {
        "box": {
          "id": "mix-grain-gate-l",
          "maxclass": "newobj",
          "patching_rect": [
            396,
            305,
            55,
            22
          ],
          "text": "*~ 0."
        }
      },
      {
        "box": {
          "id": "mix-grain-gate-r",
          "maxclass": "newobj",
          "patching_rect": [
            442,
            305,
            55,
            22
          ],
          "text": "*~ 0."
        }
      },
      {
        "box": {
          "id": "mix-mic-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            105,
            345,
            54,
            120
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
              "parameter_shortname": "Mic Mix",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            12,
            58,
            54,
            132
          ]
        }
      },
      {
        "box": {
          "id": "mix-file-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            291,
            345,
            54,
            120
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
              "parameter_shortname": "File Mix",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            172,
            58,
            54,
            132
          ]
        }
      },
      {
        "box": {
          "id": "mix-grain-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            477,
            345,
            54,
            120
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
              "parameter_shortname": "Granular Mix",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            332,
            58,
            54,
            132
          ]
        }
      },
      {
        "box": {
          "id": "mix-mic-meter",
          "maxclass": "meter~",
          "patching_rect": [
            105,
            485,
            90,
            12
          ]
        }
      },
      {
        "box": {
          "id": "mix-file-meter",
          "maxclass": "meter~",
          "patching_rect": [
            291,
            485,
            90,
            12
          ]
        }
      },
      {
        "box": {
          "id": "mix-grain-meter",
          "maxclass": "meter~",
          "patching_rect": [
            477,
            485,
            90,
            12
          ]
        }
      },
      {
        "box": {
          "id": "mix-sum-l-1",
          "maxclass": "newobj",
          "patching_rect": [
            670,
            355,
            35,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "mix-sum-r-1",
          "maxclass": "newobj",
          "patching_rect": [
            720,
            355,
            35,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "mix-sum-l-2",
          "maxclass": "newobj",
          "patching_rect": [
            670,
            425,
            35,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "mix-sum-r-2",
          "maxclass": "newobj",
          "patching_rect": [
            720,
            425,
            35,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "mix-master",
          "maxclass": "live.gain~",
          "patching_rect": [
            790,
            340,
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
                -8
              ],
              "parameter_mmax": 6,
              "parameter_mmin": -70,
              "parameter_modmode": 0,
              "parameter_shortname": "Input Master",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            536,
            44,
            54,
            146
          ]
        }
      },
      {
        "box": {
          "id": "mix-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            925,
            395,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "mix-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            975,
            395,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "mix-out-label",
          "maxclass": "comment",
          "patching_rect": [
            910,
            435,
            140,
            22
          ],
          "text": "out: mixed L/R"
        }
      },
      {
        "box": {
          "id": "mix-mute-button",
          "maxclass": "button",
          "patching_rect": [
            690,
            170,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "mix-mute-label",
          "maxclass": "comment",
          "patching_rect": [
            720,
            172,
            80,
            22
          ],
          "text": "Mute all"
        }
      },
      {
        "box": {
          "id": "mix-mute-zero",
          "maxclass": "message",
          "patching_rect": [
            690,
            205,
            35,
            22
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "mix-mute-route",
          "maxclass": "newobj",
          "patching_rect": [
            690,
            240,
            70,
            22
          ],
          "text": "t i i i"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "mix-mic-enable-in",
            0
          ],
          "destination": [
            "mix-mic-enable-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-enable-route",
            0
          ],
          "destination": [
            "mix-mic-enable-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-enable-route",
            1
          ],
          "destination": [
            "mix-mic-msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-enable-set",
            0
          ],
          "destination": [
            "mix-mic-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-enable-in",
            0
          ],
          "destination": [
            "mix-file-enable-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-enable-route",
            0
          ],
          "destination": [
            "mix-file-enable-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-enable-route",
            1
          ],
          "destination": [
            "mix-file-msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-enable-set",
            0
          ],
          "destination": [
            "mix-file-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-enable-in",
            0
          ],
          "destination": [
            "mix-grain-enable-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-enable-route",
            0
          ],
          "destination": [
            "mix-grain-enable-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-enable-route",
            1
          ],
          "destination": [
            "mix-grain-msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-enable-set",
            0
          ],
          "destination": [
            "mix-grain-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-enable",
            0
          ],
          "destination": [
            "mix-mic-msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-enable",
            0
          ],
          "destination": [
            "mix-mic-state-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-enable",
            0
          ],
          "destination": [
            "mix-file-msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-enable",
            0
          ],
          "destination": [
            "mix-file-state-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-enable",
            0
          ],
          "destination": [
            "mix-grain-msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-enable",
            0
          ],
          "destination": [
            "mix-grain-state-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-msg",
            0
          ],
          "destination": [
            "mix-mic-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-msg",
            0
          ],
          "destination": [
            "mix-file-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-msg",
            0
          ],
          "destination": [
            "mix-grain-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-l",
            0
          ],
          "destination": [
            "mix-mic-gate-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-r",
            0
          ],
          "destination": [
            "mix-mic-gate-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-l",
            0
          ],
          "destination": [
            "mix-file-gate-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-r",
            0
          ],
          "destination": [
            "mix-file-gate-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-l",
            0
          ],
          "destination": [
            "mix-grain-gate-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-r",
            0
          ],
          "destination": [
            "mix-grain-gate-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-line",
            0
          ],
          "destination": [
            "mix-mic-gate-l",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-line",
            0
          ],
          "destination": [
            "mix-mic-gate-r",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-line",
            0
          ],
          "destination": [
            "mix-file-gate-l",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-line",
            0
          ],
          "destination": [
            "mix-file-gate-r",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-line",
            0
          ],
          "destination": [
            "mix-grain-gate-l",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-line",
            0
          ],
          "destination": [
            "mix-grain-gate-r",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-gate-l",
            0
          ],
          "destination": [
            "mix-mic-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-gate-r",
            0
          ],
          "destination": [
            "mix-mic-gain",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-gate-l",
            0
          ],
          "destination": [
            "mix-file-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-gate-r",
            0
          ],
          "destination": [
            "mix-file-gain",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-gate-l",
            0
          ],
          "destination": [
            "mix-grain-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-gate-r",
            0
          ],
          "destination": [
            "mix-grain-gain",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-gain",
            0
          ],
          "destination": [
            "mix-mic-meter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-gain",
            0
          ],
          "destination": [
            "mix-file-meter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-gain",
            0
          ],
          "destination": [
            "mix-grain-meter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-gain",
            0
          ],
          "destination": [
            "mix-sum-l-1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-gain",
            0
          ],
          "destination": [
            "mix-sum-l-1",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mic-gain",
            1
          ],
          "destination": [
            "mix-sum-r-1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-file-gain",
            1
          ],
          "destination": [
            "mix-sum-r-1",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-sum-l-1",
            0
          ],
          "destination": [
            "mix-sum-l-2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-gain",
            0
          ],
          "destination": [
            "mix-sum-l-2",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-sum-r-1",
            0
          ],
          "destination": [
            "mix-sum-r-2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-grain-gain",
            1
          ],
          "destination": [
            "mix-sum-r-2",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-sum-l-2",
            0
          ],
          "destination": [
            "mix-master",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-sum-r-2",
            0
          ],
          "destination": [
            "mix-master",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-master",
            0
          ],
          "destination": [
            "mix-out-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-master",
            1
          ],
          "destination": [
            "mix-out-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mute-button",
            0
          ],
          "destination": [
            "mix-mute-zero",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mute-zero",
            0
          ],
          "destination": [
            "mix-mute-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mute-route",
            0
          ],
          "destination": [
            "mix-mic-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mute-route",
            1
          ],
          "destination": [
            "mix-file-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "mix-mute-route",
            2
          ],
          "destination": [
            "mix-grain-enable",
            0
          ]
        }
      }
    ]
  }
}