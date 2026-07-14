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
      1510,
      1180
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
          "id": "d-title",
          "maxclass": "comment",
          "patching_rect": [
            24,
            20,
            440,
            24
          ],
          "text": "MT Gesture Input System Demo - portfolio overview",
          "presentation": 1,
          "presentation_rect": [
            24,
            20,
            440,
            24
          ]
        }
      },
      {
        "box": {
          "id": "d-note",
          "maxclass": "comment",
          "patching_rect": [
            24,
            48,
            860,
            22
          ],
          "text": "Bpatcher source boxes feed a dedicated Input Mixer. Jweb hand control is available as the current camera control layer.",
          "presentation": 1,
          "presentation_rect": [
            24,
            48,
            760,
            24
          ]
        }
      },
      {
        "box": {
          "id": "d-dsp-on",
          "maxclass": "message",
          "patching_rect": [
            24,
            82,
            90,
            22
          ],
          "text": "startwindow",
          "presentation": 1,
          "presentation_rect": [
            24,
            82,
            90,
            22
          ]
        }
      },
      {
        "box": {
          "id": "d-dsp-off",
          "maxclass": "message",
          "patching_rect": [
            124,
            82,
            55,
            22
          ],
          "text": "stop",
          "presentation": 1,
          "presentation_rect": [
            124,
            82,
            55,
            22
          ]
        }
      },
      {
        "box": {
          "id": "d-mic-enable",
          "maxclass": "toggle",
          "patching_rect": [
            520,
            82,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            520,
            82,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "d-mic-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            550,
            84,
            110,
            22
          ],
          "text": "Mic ext enable",
          "presentation": 1,
          "presentation_rect": [
            550,
            84,
            110,
            22
          ]
        }
      },
      {
        "box": {
          "id": "d-file-enable",
          "maxclass": "toggle",
          "patching_rect": [
            690,
            82,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            690,
            82,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "d-file-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            720,
            84,
            110,
            22
          ],
          "text": "File ext enable",
          "presentation": 1,
          "presentation_rect": [
            720,
            84,
            110,
            22
          ]
        }
      },
      {
        "box": {
          "id": "d-file-play",
          "maxclass": "toggle",
          "patching_rect": [
            860,
            82,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            860,
            82,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "d-file-play-label",
          "maxclass": "comment",
          "patching_rect": [
            890,
            84,
            80,
            22
          ],
          "text": "File play",
          "presentation": 1,
          "presentation_rect": [
            890,
            84,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "d-grain-enable",
          "maxclass": "toggle",
          "patching_rect": [
            1000,
            82,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            1000,
            82,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "d-grain-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            1030,
            84,
            140,
            22
          ],
          "text": "Granular ext enable",
          "presentation": 1,
          "presentation_rect": [
            1030,
            84,
            140,
            22
          ]
        }
      },
      {
        "box": {
          "id": "d-mic",
          "maxclass": "bpatcher",
          "patching_rect": [
            24,
            130,
            330,
            245
          ],
          "name": "mt_input_mic.maxpat",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            130,
            330,
            245
          ]
        }
      },
      {
        "box": {
          "id": "d-file",
          "maxclass": "bpatcher",
          "patching_rect": [
            380,
            130,
            430,
            445
          ],
          "name": "mt_input_file.maxpat",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "presentation": 1,
          "presentation_rect": [
            380,
            130,
            430,
            445
          ]
        }
      },
      {
        "box": {
          "id": "d-grain",
          "maxclass": "bpatcher",
          "patching_rect": [
            835,
            130,
            635,
            470
          ],
          "name": "mt_input_granular.maxpat",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "presentation": 1,
          "presentation_rect": [
            835,
            130,
            635,
            470
          ]
        }
      },
      {
        "box": {
          "id": "d-mixer",
          "maxclass": "bpatcher",
          "patching_rect": [
            24,
            650,
            760,
            320
          ],
          "name": "mt_input_mixer_ui.maxpat",
          "numinlets": 9,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            650,
            760,
            320
          ]
        }
      },
      {
        "box": {
          "id": "d-hand",
          "maxclass": "bpatcher",
          "patching_rect": [
            835,
            650,
            620,
            450
          ],
          "name": "mt_control_hand_jweb.maxpat",
          "numinlets": 0,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            835,
            650,
            620,
            450
          ]
        }
      },
      {
        "box": {
          "id": "d-hand-note",
          "maxclass": "comment",
          "patching_rect": [
            835,
            1115,
            520,
            40
          ],
          "text": "Jweb hand control outputs slot1 hand_x, slot2 hand_y, slot3 pinch, slot4 palm.",
          "presentation": 1,
          "presentation_rect": [
            835,
            1115,
            520,
            40
          ]
        }
      },
      {
        "box": {
          "id": "d-master-meter",
          "maxclass": "meter~",
          "patching_rect": [
            1300,
            750,
            120,
            12
          ],
          "presentation": 1,
          "presentation_rect": [
            1300,
            798,
            120,
            12
          ]
        }
      },
      {
        "box": {
          "id": "d-master",
          "maxclass": "live.gain~",
          "patching_rect": [
            1280,
            650,
            54,
            130
          ],
          "numinlets": 2,
          "numoutlets": 5,
          "channels": 2,
          "parameter_enable": 1,
          "showname": 0,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_initial": [
                -10
              ],
              "parameter_mmax": 6,
              "parameter_mmin": -70,
              "parameter_modmode": 0,
              "parameter_shortname": "Demo Master",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            1280,
            650,
            54,
            130
          ]
        }
      },
      {
        "box": {
          "id": "d-dac",
          "maxclass": "ezdac~",
          "patching_rect": [
            1430,
            745,
            45,
            45
          ],
          "presentation": 1,
          "presentation_rect": [
            1430,
            745,
            45,
            45
          ]
        }
      },
      {
        "box": {
          "id": "d-mic-enable-send",
          "maxclass": "newobj",
          "patching_rect": [
            520,
            112,
            155,
            22
          ],
          "text": "s mt_mic_enable_state"
        }
      },
      {
        "box": {
          "id": "d-file-enable-send",
          "maxclass": "newobj",
          "patching_rect": [
            690,
            112,
            155,
            22
          ],
          "text": "s mt_file_enable_state"
        }
      },
      {
        "box": {
          "id": "d-grain-enable-send",
          "maxclass": "newobj",
          "patching_rect": [
            1000,
            112,
            165,
            22
          ],
          "text": "s mt_grain_enable_state"
        }
      },
      {
        "box": {
          "id": "d-mic-enable-recv",
          "maxclass": "newobj",
          "patching_rect": [
            520,
            145,
            155,
            22
          ],
          "text": "r mt_mic_enable_state"
        }
      },
      {
        "box": {
          "id": "d-file-enable-recv",
          "maxclass": "newobj",
          "patching_rect": [
            690,
            145,
            155,
            22
          ],
          "text": "r mt_file_enable_state"
        }
      },
      {
        "box": {
          "id": "d-grain-enable-recv",
          "maxclass": "newobj",
          "patching_rect": [
            1000,
            145,
            165,
            22
          ],
          "text": "r mt_grain_enable_state"
        }
      },
      {
        "box": {
          "id": "d-mic-enable-sync",
          "maxclass": "newobj",
          "patching_rect": [
            520,
            178,
            60,
            22
          ],
          "text": "t i i i"
        }
      },
      {
        "box": {
          "id": "d-file-enable-sync",
          "maxclass": "newobj",
          "patching_rect": [
            690,
            178,
            60,
            22
          ],
          "text": "t i i i"
        }
      },
      {
        "box": {
          "id": "d-grain-enable-sync",
          "maxclass": "newobj",
          "patching_rect": [
            1000,
            178,
            60,
            22
          ],
          "text": "t i i i"
        }
      },
      {
        "box": {
          "id": "d-mic-enable-set",
          "maxclass": "message",
          "patching_rect": [
            520,
            211,
            60,
            22
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "d-file-enable-set",
          "maxclass": "message",
          "patching_rect": [
            690,
            211,
            60,
            22
          ],
          "text": "set $1"
        }
      },
      {
        "box": {
          "id": "d-grain-enable-set",
          "maxclass": "message",
          "patching_rect": [
            1000,
            211,
            60,
            22
          ],
          "text": "set $1"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "d-dsp-on",
            0
          ],
          "destination": [
            "d-dac",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-dsp-off",
            0
          ],
          "destination": [
            "d-dac",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-mic-enable",
            0
          ],
          "destination": [
            "d-mic-enable-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-mic-enable-recv",
            0
          ],
          "destination": [
            "d-mic-enable-sync",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-mic-enable-sync",
            0
          ],
          "destination": [
            "d-mic-enable-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-mic-enable-set",
            0
          ],
          "destination": [
            "d-mic-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-mic-enable-sync",
            1
          ],
          "destination": [
            "d-mic",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-mic-enable-sync",
            2
          ],
          "destination": [
            "d-mixer",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-file-enable",
            0
          ],
          "destination": [
            "d-file-enable-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-file-enable-recv",
            0
          ],
          "destination": [
            "d-file-enable-sync",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-file-enable-sync",
            0
          ],
          "destination": [
            "d-file-enable-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-file-enable-set",
            0
          ],
          "destination": [
            "d-file-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-file-enable-sync",
            1
          ],
          "destination": [
            "d-file",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-file-enable-sync",
            2
          ],
          "destination": [
            "d-mixer",
            7
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-file-play",
            0
          ],
          "destination": [
            "d-file",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-grain-enable",
            0
          ],
          "destination": [
            "d-grain-enable-send",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-grain-enable-recv",
            0
          ],
          "destination": [
            "d-grain-enable-sync",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-grain-enable-sync",
            0
          ],
          "destination": [
            "d-grain-enable-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-grain-enable-set",
            0
          ],
          "destination": [
            "d-grain-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-grain-enable-sync",
            1
          ],
          "destination": [
            "d-grain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-grain-enable-sync",
            2
          ],
          "destination": [
            "d-mixer",
            8
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-mic",
            0
          ],
          "destination": [
            "d-mixer",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-mic",
            1
          ],
          "destination": [
            "d-mixer",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-file",
            0
          ],
          "destination": [
            "d-mixer",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-file",
            1
          ],
          "destination": [
            "d-mixer",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-grain",
            0
          ],
          "destination": [
            "d-mixer",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-grain",
            1
          ],
          "destination": [
            "d-mixer",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-mixer",
            0
          ],
          "destination": [
            "d-master",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-mixer",
            1
          ],
          "destination": [
            "d-master",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-master",
            0
          ],
          "destination": [
            "d-master-meter",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-master",
            0
          ],
          "destination": [
            "d-dac",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "d-master",
            1
          ],
          "destination": [
            "d-dac",
            1
          ]
        }
      }
    ]
  }
}
