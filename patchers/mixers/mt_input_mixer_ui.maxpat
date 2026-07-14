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
      760,
      380
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
          "id": "mx-bg",
          "maxclass": "fpic",
          "patching_rect": [
            1100,
            20,
            760,
            320
          ],
          "pic": "input_mixer_panel_v1.png",
          "autofit": 1,
          "forceaspect": 1,
          "background": 1,
          "ignoreclick": 1,
          "presentation": 1,
          "presentation_rect": [
            0,
            0,
            760,
            320
          ]
        }
      },
      {
        "box": {
          "id": "mx-title",
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
          "id": "mx-note",
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
          "id": "mx-mic-l",
          "maxclass": "inlet",
          "patching_rect": [
            24,
            110,
            30,
            30
          ],
          "comment": "Mic audio L"
        }
      },
      {
        "box": {
          "id": "mx-mic-r",
          "maxclass": "inlet",
          "patching_rect": [
            70,
            110,
            30,
            30
          ],
          "comment": "Mic audio R"
        }
      },
      {
        "box": {
          "id": "mx-mic-label",
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
          "id": "mx-file-l",
          "maxclass": "inlet",
          "patching_rect": [
            210,
            110,
            30,
            30
          ],
          "comment": "File audio L"
        }
      },
      {
        "box": {
          "id": "mx-file-r",
          "maxclass": "inlet",
          "patching_rect": [
            256,
            110,
            30,
            30
          ],
          "comment": "File audio R"
        }
      },
      {
        "box": {
          "id": "mx-file-label",
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
          "id": "mx-grain-l",
          "maxclass": "inlet",
          "patching_rect": [
            396,
            110,
            30,
            30
          ],
          "comment": "Granular audio L"
        }
      },
      {
        "box": {
          "id": "mx-grain-r",
          "maxclass": "inlet",
          "patching_rect": [
            442,
            110,
            30,
            30
          ],
          "comment": "Granular audio R"
        }
      },
      {
        "box": {
          "id": "mx-grain-label",
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
          "id": "mx-mic-enable-in",
          "maxclass": "inlet",
          "patching_rect": [
            560,
            110,
            30,
            30
          ],
          "comment": "Mic Enable 0/1"
        }
      },
      {
        "box": {
          "id": "mx-file-enable-in",
          "maxclass": "inlet",
          "patching_rect": [
            606,
            110,
            30,
            30
          ],
          "comment": "File Enable 0/1"
        }
      },
      {
        "box": {
          "id": "mx-grain-enable-in",
          "maxclass": "inlet",
          "patching_rect": [
            652,
            110,
            30,
            30
          ],
          "comment": "Granular Enable 0/1"
        }
      },
      {
        "box": {
          "id": "mx-ext-enable-label",
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
          "id": "mx-explain",
          "maxclass": "comment",
          "patching_rect": [
            24,
            515,
            700,
            36
          ],
          "text": "Source enable buttons are linked with the source boxes and main switches. Use these gains to balance the dry input before FX returns."
        }
      },
      {
        "box": {
          "id": "mx-mic-enable",
          "maxclass": "toggle",
          "patching_rect": [
            24,
            175,
            24,
            24
          ],
          "varname": "mixer_mic_enable",
          "presentation": 1,
          "presentation_rect": [
            145,
            58,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "mx-mic-enable-label",
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
          "id": "mx-file-enable",
          "maxclass": "toggle",
          "patching_rect": [
            210,
            175,
            24,
            24
          ],
          "varname": "mixer_file_enable",
          "presentation": 1,
          "presentation_rect": [
            327,
            58,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "mx-file-enable-label",
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
          "id": "mx-grain-enable",
          "maxclass": "toggle",
          "patching_rect": [
            396,
            175,
            24,
            24
          ],
          "varname": "mixer_granular_enable",
          "presentation": 1,
          "presentation_rect": [
            509,
            58,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "mx-grain-enable-label",
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
          "id": "mx-mic-msg",
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
          "id": "mx-file-msg",
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
          "id": "mx-grain-msg",
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
          "id": "mx-mic-enable-set",
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
          "id": "mx-file-enable-set",
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
          "id": "mx-grain-enable-set",
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
          "id": "mx-mic-enable-route",
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
          "id": "mx-file-enable-route",
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
          "id": "mx-grain-enable-route",
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
          "id": "mx-mic-state-send",
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
          "id": "mx-file-state-send",
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
          "id": "mx-grain-state-send",
          "maxclass": "newobj",
          "patching_rect": [
            560,
            275,
            165,
            22
          ],
          "text": "s mt_granular_enable_state"
        }
      },
      {
        "box": {
          "id": "mx-mic-line",
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
          "id": "mx-file-line",
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
          "id": "mx-grain-line",
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
          "id": "mx-mic-gate-l",
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
          "id": "mx-mic-gate-r",
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
          "id": "mx-file-gate-l",
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
          "id": "mx-file-gate-r",
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
          "id": "mx-grain-gate-l",
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
          "id": "mx-grain-gate-r",
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
          "id": "mx-mic-gain",
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
          "varname": "mixer_mic_gain",
          "presentation": 1,
          "presentation_rect": [
            84,
            103,
            54,
            152
          ]
        }
      },
      {
        "box": {
          "id": "mx-file-gain",
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
          "varname": "mixer_file_gain",
          "presentation": 1,
          "presentation_rect": [
            266,
            103,
            54,
            152
          ]
        }
      },
      {
        "box": {
          "id": "mx-grain-gain",
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
          "varname": "mixer_granular_gain",
          "presentation": 1,
          "presentation_rect": [
            448,
            103,
            54,
            152
          ]
        }
      },
      {
        "box": {
          "id": "mx-mic-meter",
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
          "id": "mx-file-meter",
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
          "id": "mx-grain-meter",
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
          "id": "mx-sum-l-1",
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
          "id": "mx-sum-r-1",
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
          "id": "mx-sum-l-2",
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
          "id": "mx-sum-r-2",
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
          "id": "mx-master-gain",
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
          "varname": "mixer_master_gain",
          "presentation": 1,
          "presentation_rect": [
            674,
            100,
            54,
            158
          ]
        }
      },
      {
        "box": {
          "id": "mx-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            925,
            395,
            30,
            30
          ],
          "comment": "Mixed audio L"
        }
      },
      {
        "box": {
          "id": "mx-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            975,
            395,
            30,
            30
          ],
          "comment": "Mixed audio R"
        }
      },
      {
        "box": {
          "id": "mx-out-label",
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
          "id": "mx-mute-button",
          "maxclass": "ubutton",
          "patching_rect": [
            690,
            170,
            24,
            24
          ],
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "bang",
            "",
            "",
            "int"
          ],
          "varname": "mixer_mute_all",
          "presentation": 1,
          "presentation_rect": [
            565,
            172,
            88,
            34
          ]
        }
      },
      {
        "box": {
          "id": "mx-mute-label",
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
          "id": "mx-mute-zero",
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
          "id": "mx-mute-route",
          "maxclass": "newobj",
          "patching_rect": [
            690,
            240,
            70,
            22
          ],
          "text": "t i i i"
        }
      },
      {
        "box": {
          "id": "mx-master-readout",
          "maxclass": "flonum",
          "patching_rect": [
            875,
            340,
            68,
            24
          ],
          "varname": "mixer_master_db",
          "minimum": -70,
          "maximum": 6,
          "numdecimalplaces": 1,
          "ignoreclick": 1,
          "bgcolor": [
            0.968,
            0.973,
            0.957,
            1
          ],
          "textcolor": [
            0.19,
            0.26,
            0.23,
            1
          ],
          "bordercolor": [
            0.82,
            0.76,
            0.52,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            575,
            121,
            68,
            24
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "mx-mic-enable-in",
            0
          ],
          "destination": [
            "mx-mic-enable-route",
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
            "mx-mic-enable-route",
            0
          ],
          "destination": [
            "mx-mic-enable-set",
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
            "mx-mic-enable-route",
            1
          ],
          "destination": [
            "mx-mic-msg",
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
            "mx-mic-enable-set",
            0
          ],
          "destination": [
            "mx-mic-enable",
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
            "mx-file-enable-in",
            0
          ],
          "destination": [
            "mx-file-enable-route",
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
            "mx-file-enable-route",
            0
          ],
          "destination": [
            "mx-file-enable-set",
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
            "mx-file-enable-route",
            1
          ],
          "destination": [
            "mx-file-msg",
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
            "mx-file-enable-set",
            0
          ],
          "destination": [
            "mx-file-enable",
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
            "mx-grain-enable-in",
            0
          ],
          "destination": [
            "mx-grain-enable-route",
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
            "mx-grain-enable-route",
            0
          ],
          "destination": [
            "mx-grain-enable-set",
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
            "mx-grain-enable-route",
            1
          ],
          "destination": [
            "mx-grain-msg",
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
            "mx-grain-enable-set",
            0
          ],
          "destination": [
            "mx-grain-enable",
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
            "mx-mic-enable",
            0
          ],
          "destination": [
            "mx-mic-msg",
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
            "mx-mic-enable",
            0
          ],
          "destination": [
            "mx-mic-state-send",
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
            "mx-file-enable",
            0
          ],
          "destination": [
            "mx-file-msg",
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
            "mx-file-enable",
            0
          ],
          "destination": [
            "mx-file-state-send",
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
            "mx-grain-enable",
            0
          ],
          "destination": [
            "mx-grain-msg",
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
            "mx-grain-enable",
            0
          ],
          "destination": [
            "mx-grain-state-send",
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
            "mx-mic-msg",
            0
          ],
          "destination": [
            "mx-mic-line",
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
            "mx-file-msg",
            0
          ],
          "destination": [
            "mx-file-line",
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
            "mx-grain-msg",
            0
          ],
          "destination": [
            "mx-grain-line",
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
            "mx-mic-l",
            0
          ],
          "destination": [
            "mx-mic-gate-l",
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
            "mx-mic-r",
            0
          ],
          "destination": [
            "mx-mic-gate-r",
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
            "mx-file-l",
            0
          ],
          "destination": [
            "mx-file-gate-l",
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
            "mx-file-r",
            0
          ],
          "destination": [
            "mx-file-gate-r",
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
            "mx-grain-l",
            0
          ],
          "destination": [
            "mx-grain-gate-l",
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
            "mx-grain-r",
            0
          ],
          "destination": [
            "mx-grain-gate-r",
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
            "mx-mic-line",
            0
          ],
          "destination": [
            "mx-mic-gate-l",
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
            "mx-mic-line",
            0
          ],
          "destination": [
            "mx-mic-gate-r",
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
            "mx-file-line",
            0
          ],
          "destination": [
            "mx-file-gate-l",
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
            "mx-file-line",
            0
          ],
          "destination": [
            "mx-file-gate-r",
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
            "mx-grain-line",
            0
          ],
          "destination": [
            "mx-grain-gate-l",
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
            "mx-grain-line",
            0
          ],
          "destination": [
            "mx-grain-gate-r",
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
            "mx-mic-gate-l",
            0
          ],
          "destination": [
            "mx-mic-gain",
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
            "mx-mic-gate-r",
            0
          ],
          "destination": [
            "mx-mic-gain",
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
            "mx-file-gate-l",
            0
          ],
          "destination": [
            "mx-file-gain",
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
            "mx-file-gate-r",
            0
          ],
          "destination": [
            "mx-file-gain",
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
            "mx-grain-gate-l",
            0
          ],
          "destination": [
            "mx-grain-gain",
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
            "mx-grain-gate-r",
            0
          ],
          "destination": [
            "mx-grain-gain",
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
            "mx-mic-gain",
            0
          ],
          "destination": [
            "mx-mic-meter",
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
            "mx-file-gain",
            0
          ],
          "destination": [
            "mx-file-meter",
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
            "mx-grain-gain",
            0
          ],
          "destination": [
            "mx-grain-meter",
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
            "mx-mic-gain",
            0
          ],
          "destination": [
            "mx-sum-l-1",
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
            "mx-file-gain",
            0
          ],
          "destination": [
            "mx-sum-l-1",
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
            "mx-mic-gain",
            1
          ],
          "destination": [
            "mx-sum-r-1",
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
            "mx-file-gain",
            1
          ],
          "destination": [
            "mx-sum-r-1",
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
            "mx-sum-l-1",
            0
          ],
          "destination": [
            "mx-sum-l-2",
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
            "mx-grain-gain",
            0
          ],
          "destination": [
            "mx-sum-l-2",
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
            "mx-sum-r-1",
            0
          ],
          "destination": [
            "mx-sum-r-2",
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
            "mx-grain-gain",
            1
          ],
          "destination": [
            "mx-sum-r-2",
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
            "mx-sum-l-2",
            0
          ],
          "destination": [
            "mx-master-gain",
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
            "mx-sum-r-2",
            0
          ],
          "destination": [
            "mx-master-gain",
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
            "mx-master-gain",
            0
          ],
          "destination": [
            "mx-out-l",
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
            "mx-master-gain",
            1
          ],
          "destination": [
            "mx-out-r",
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
            "mx-mute-button",
            0
          ],
          "destination": [
            "mx-mute-zero",
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
            "mx-mute-zero",
            0
          ],
          "destination": [
            "mx-mute-route",
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
            "mx-mute-route",
            0
          ],
          "destination": [
            "mx-mic-enable",
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
            "mx-mute-route",
            1
          ],
          "destination": [
            "mx-file-enable",
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
            "mx-mute-route",
            2
          ],
          "destination": [
            "mx-grain-enable",
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
            "mx-master-gain",
            2
          ],
          "destination": [
            "mx-master-readout",
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
        "name": "input_mixer_panel_v1.png",
        "bootpath": ".",
        "patcherrelativepath": ".",
        "type": "PNG",
        "implicit": 1
      }
    ],
    "autosave": 0
  }
}
