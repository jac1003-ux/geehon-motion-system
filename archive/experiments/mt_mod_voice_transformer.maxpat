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
      1320,
      620
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
          "id": "vt-title",
          "maxclass": "comment",
          "patching_rect": [
            24,
            20,
            560,
            24
          ],
          "text": "MT Voice Transformer - vocoder / talkbox / vocal chop engine",
          "presentation": 1,
          "presentation_rect": [
            12,
            8,
            480,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vt-note",
          "maxclass": "comment",
          "patching_rect": [
            24,
            48,
            900,
            22
          ],
          "text": "A portfolio wrapper: three independent voice engines are hidden inside, exposed as one playable transformation module. Chop uses live buffering with freeze/hold controls.",
          "presentation": 1,
          "presentation_rect": [
            12,
            30,
            560,
            36
          ]
        }
      },
      {
        "box": {
          "id": "vt-in-l",
          "maxclass": "inlet",
          "patching_rect": [
            24,
            100,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "vt-in-r",
          "maxclass": "inlet",
          "patching_rect": [
            84,
            100,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "vt-ext-enable",
          "maxclass": "inlet",
          "patching_rect": [
            170,
            95,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "vt-ext-mode",
          "maxclass": "inlet",
          "patching_rect": [
            235,
            95,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "vt-ext-character",
          "maxclass": "inlet",
          "patching_rect": [
            300,
            95,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "vt-ext-intensity",
          "maxclass": "inlet",
          "patching_rect": [
            365,
            95,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "vt-ext-motion",
          "maxclass": "inlet",
          "patching_rect": [
            430,
            95,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "vt-ext-wet",
          "maxclass": "inlet",
          "patching_rect": [
            495,
            95,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "vt-ext-capture",
          "maxclass": "inlet",
          "patching_rect": [
            560,
            95,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "vt-ext-play",
          "maxclass": "inlet",
          "patching_rect": [
            625,
            95,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "vt-enable",
          "maxclass": "toggle",
          "patching_rect": [
            24,
            155,
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
          "id": "vt-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            56,
            157,
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
          "id": "vt-capture",
          "maxclass": "toggle",
          "patching_rect": [
            24,
            205,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            12,
            118,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "vt-capture-label",
          "maxclass": "comment",
          "patching_rect": [
            56,
            207,
            70,
            22
          ],
          "text": "Freeze",
          "presentation": 1,
          "presentation_rect": [
            44,
            120,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vt-play",
          "maxclass": "toggle",
          "patching_rect": [
            24,
            255,
            24,
            24
          ],
          "presentation": 1,
          "presentation_rect": [
            12,
            158,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "vt-play-label",
          "maxclass": "comment",
          "patching_rect": [
            56,
            257,
            90,
            22
          ],
          "text": "Chop Hold",
          "presentation": 1,
          "presentation_rect": [
            44,
            160,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vt-mode",
          "maxclass": "live.menu",
          "patching_rect": [
            155,
            155,
            120,
            15
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            "float"
          ],
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_enum": [
                "vocoder",
                "talkbox",
                "chop",
                "hybrid"
              ],
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_mmax": 3,
              "parameter_modmode": 0,
              "parameter_shortname": "Voice Mode",
              "parameter_type": 2
            }
          },
          "presentation": 1,
          "presentation_rect": [
            140,
            100,
            120,
            15
          ]
        }
      },
      {
        "box": {
          "id": "vt-mode-label",
          "maxclass": "comment",
          "patching_rect": [
            155,
            132,
            80,
            22
          ],
          "text": "Mode",
          "presentation": 1,
          "presentation_rect": [
            140,
            76,
            70,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vt-character",
          "maxclass": "flonum",
          "patching_rect": [
            305,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            286,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vt-character-label",
          "maxclass": "comment",
          "patching_rect": [
            305,
            132,
            90,
            22
          ],
          "text": "Character",
          "presentation": 1,
          "presentation_rect": [
            286,
            76,
            82,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vt-intensity",
          "maxclass": "flonum",
          "patching_rect": [
            405,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            378,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vt-intensity-label",
          "maxclass": "comment",
          "patching_rect": [
            405,
            132,
            90,
            22
          ],
          "text": "Intensity",
          "presentation": 1,
          "presentation_rect": [
            378,
            76,
            82,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vt-motion",
          "maxclass": "flonum",
          "patching_rect": [
            505,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            470,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vt-motion-label",
          "maxclass": "comment",
          "patching_rect": [
            505,
            132,
            80,
            22
          ],
          "text": "Motion",
          "presentation": 1,
          "presentation_rect": [
            470,
            76,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vt-wet",
          "maxclass": "flonum",
          "patching_rect": [
            605,
            155,
            62,
            22
          ],
          "minimum": 0,
          "maximum": 1,
          "presentation": 1,
          "presentation_rect": [
            562,
            100,
            58,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vt-wet-label",
          "maxclass": "comment",
          "patching_rect": [
            605,
            132,
            80,
            22
          ],
          "text": "Dry/Wet",
          "presentation": 1,
          "presentation_rect": [
            562,
            76,
            72,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vt-engine-label",
          "maxclass": "comment",
          "patching_rect": [
            24,
            315,
            210,
            22
          ],
          "text": "hidden engines as abstractions"
        }
      },
      {
        "box": {
          "id": "vt-vocoder",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            340,
            135,
            22
          ],
          "text": "mt_mod_vocoder",
          "numinlets": 8,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "vt-talkbox",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            390,
            135,
            22
          ],
          "text": "mt_mod_talkbox",
          "numinlets": 8,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "vt-chop",
          "maxclass": "newobj",
          "patching_rect": [
            24,
            440,
            150,
            22
          ],
          "text": "mt_mod_vocal_chop",
          "numinlets": 11,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ]
        }
      },
      {
        "box": {
          "id": "vt-mode-plus",
          "maxclass": "newobj",
          "patching_rect": [
            155,
            205,
            45,
            22
          ],
          "text": "+ 1"
        }
      },
      {
        "box": {
          "id": "vt-character-route",
          "maxclass": "newobj",
          "patching_rect": [
            305,
            205,
            80,
            22
          ],
          "text": "t f f f f"
        }
      },
      {
        "box": {
          "id": "vt-intensity-route",
          "maxclass": "newobj",
          "patching_rect": [
            405,
            205,
            125,
            22
          ],
          "text": "t f f f f f f f"
        }
      },
      {
        "box": {
          "id": "vt-motion-route",
          "maxclass": "newobj",
          "patching_rect": [
            505,
            205,
            60,
            22
          ],
          "text": "t f f"
        }
      },
      {
        "box": {
          "id": "vt-wet-msg",
          "maxclass": "message",
          "patching_rect": [
            605,
            205,
            55,
            22
          ],
          "text": "$1 20"
        }
      },
      {
        "box": {
          "id": "vt-wet-line",
          "maxclass": "newobj",
          "patching_rect": [
            605,
            240,
            50,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "vt-enable-msg",
          "maxclass": "message",
          "patching_rect": [
            170,
            205,
            55,
            22
          ],
          "text": "$1 20"
        }
      },
      {
        "box": {
          "id": "vt-enable-line",
          "maxclass": "newobj",
          "patching_rect": [
            170,
            240,
            50,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "vt-eff-wet",
          "maxclass": "newobj",
          "patching_rect": [
            605,
            285,
            35,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "vt-one-wet",
          "maxclass": "newobj",
          "patching_rect": [
            665,
            285,
            60,
            22
          ],
          "text": "sig~ 1."
        }
      },
      {
        "box": {
          "id": "vt-dry-amount",
          "maxclass": "newobj",
          "patching_rect": [
            665,
            330,
            35,
            22
          ],
          "text": "-~"
        }
      },
      {
        "box": {
          "id": "vt-voc-talk-l",
          "maxclass": "newobj",
          "patching_rect": [
            310,
            390,
            35,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "vt-voc-talk-r",
          "maxclass": "newobj",
          "patching_rect": [
            360,
            390,
            35,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "vt-hybrid-l",
          "maxclass": "newobj",
          "patching_rect": [
            310,
            455,
            35,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "vt-hybrid-r",
          "maxclass": "newobj",
          "patching_rect": [
            360,
            455,
            35,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "vt-hybrid-level-l",
          "maxclass": "newobj",
          "patching_rect": [
            310,
            520,
            75,
            22
          ],
          "text": "*~ 0.333"
        }
      },
      {
        "box": {
          "id": "vt-hybrid-level-r",
          "maxclass": "newobj",
          "patching_rect": [
            360,
            520,
            75,
            22
          ],
          "text": "*~ 0.333"
        }
      },
      {
        "box": {
          "id": "vt-selector-l",
          "maxclass": "newobj",
          "patching_rect": [
            525,
            390,
            95,
            22
          ],
          "text": "selector~ 4"
        }
      },
      {
        "box": {
          "id": "vt-selector-r",
          "maxclass": "newobj",
          "patching_rect": [
            525,
            445,
            95,
            22
          ],
          "text": "selector~ 4"
        }
      },
      {
        "box": {
          "id": "vt-dry-mix-l",
          "maxclass": "newobj",
          "patching_rect": [
            680,
            390,
            35,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "vt-wet-mix-l",
          "maxclass": "newobj",
          "patching_rect": [
            740,
            390,
            35,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "vt-outmix-l",
          "maxclass": "newobj",
          "patching_rect": [
            710,
            445,
            35,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "vt-dry-mix-r",
          "maxclass": "newobj",
          "patching_rect": [
            830,
            390,
            35,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "vt-wet-mix-r",
          "maxclass": "newobj",
          "patching_rect": [
            890,
            390,
            35,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "vt-outmix-r",
          "maxclass": "newobj",
          "patching_rect": [
            860,
            445,
            35,
            22
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "vt-gain",
          "maxclass": "live.gain~",
          "patching_rect": [
            1010,
            360,
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
              "parameter_shortname": "Voice Transformer",
              "parameter_type": 0,
              "parameter_unitstyle": 4
            }
          },
          "presentation": 1,
          "presentation_rect": [
            654,
            68,
            54,
            132
          ]
        }
      },
      {
        "box": {
          "id": "vt-dac",
          "maxclass": "ezdac~",
          "patching_rect": [
            1125,
            500,
            45,
            45
          ]
        }
      },
      {
        "box": {
          "id": "vt-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            1190,
            465,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "vt-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            1240,
            465,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "vt-out-label",
          "maxclass": "comment",
          "patching_rect": [
            1170,
            505,
            170,
            22
          ],
          "text": "out 1/2: audio L/R"
        }
      },
      {
        "box": {
          "id": "vt-character-default",
          "maxclass": "newobj",
          "patching_rect": [
            305,
            255,
            95,
            22
          ],
          "text": "loadmess 0.45"
        }
      },
      {
        "box": {
          "id": "vt-intensity-default",
          "maxclass": "newobj",
          "patching_rect": [
            405,
            255,
            95,
            22
          ],
          "text": "loadmess 0.7"
        }
      },
      {
        "box": {
          "id": "vt-motion-default",
          "maxclass": "newobj",
          "patching_rect": [
            505,
            255,
            95,
            22
          ],
          "text": "loadmess 0.45"
        }
      },
      {
        "box": {
          "id": "vt-wet-default",
          "maxclass": "newobj",
          "patching_rect": [
            605,
            255,
            95,
            22
          ],
          "text": "loadmess 0.85"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "vt-ext-enable",
            0
          ],
          "destination": [
            "vt-enable",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-ext-mode",
            0
          ],
          "destination": [
            "vt-mode",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-ext-character",
            0
          ],
          "destination": [
            "vt-character",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-ext-intensity",
            0
          ],
          "destination": [
            "vt-intensity",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-ext-motion",
            0
          ],
          "destination": [
            "vt-motion",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-ext-wet",
            0
          ],
          "destination": [
            "vt-wet",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-ext-capture",
            0
          ],
          "destination": [
            "vt-capture",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-ext-play",
            0
          ],
          "destination": [
            "vt-play",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-character-default",
            0
          ],
          "destination": [
            "vt-character",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-intensity-default",
            0
          ],
          "destination": [
            "vt-intensity",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-motion-default",
            0
          ],
          "destination": [
            "vt-motion",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-wet-default",
            0
          ],
          "destination": [
            "vt-wet",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-in-l",
            0
          ],
          "destination": [
            "vt-vocoder",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-in-r",
            0
          ],
          "destination": [
            "vt-vocoder",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-in-l",
            0
          ],
          "destination": [
            "vt-talkbox",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-in-r",
            0
          ],
          "destination": [
            "vt-talkbox",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-in-l",
            0
          ],
          "destination": [
            "vt-chop",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-in-r",
            0
          ],
          "destination": [
            "vt-chop",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-enable",
            0
          ],
          "destination": [
            "vt-enable-msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-enable-msg",
            0
          ],
          "destination": [
            "vt-enable-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-enable",
            0
          ],
          "destination": [
            "vt-vocoder",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-enable",
            0
          ],
          "destination": [
            "vt-talkbox",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-enable",
            0
          ],
          "destination": [
            "vt-chop",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-capture",
            0
          ],
          "destination": [
            "vt-chop",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-play",
            0
          ],
          "destination": [
            "vt-chop",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-mode",
            0
          ],
          "destination": [
            "vt-mode-plus",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-mode-plus",
            0
          ],
          "destination": [
            "vt-selector-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-mode-plus",
            0
          ],
          "destination": [
            "vt-selector-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-character",
            0
          ],
          "destination": [
            "vt-character-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-character-route",
            0
          ],
          "destination": [
            "vt-vocoder",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-character-route",
            1
          ],
          "destination": [
            "vt-vocoder",
            7
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-character-route",
            2
          ],
          "destination": [
            "vt-talkbox",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-character-route",
            3
          ],
          "destination": [
            "vt-chop",
            7
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-intensity",
            0
          ],
          "destination": [
            "vt-intensity-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-intensity-route",
            0
          ],
          "destination": [
            "vt-vocoder",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-intensity-route",
            1
          ],
          "destination": [
            "vt-vocoder",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-intensity-route",
            2
          ],
          "destination": [
            "vt-talkbox",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-intensity-route",
            3
          ],
          "destination": [
            "vt-talkbox",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-intensity-route",
            4
          ],
          "destination": [
            "vt-chop",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-intensity-route",
            5
          ],
          "destination": [
            "vt-chop",
            8
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-intensity-route",
            6
          ],
          "destination": [
            "vt-chop",
            10
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-motion",
            0
          ],
          "destination": [
            "vt-motion-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-motion-route",
            0
          ],
          "destination": [
            "vt-vocoder",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-motion-route",
            1
          ],
          "destination": [
            "vt-talkbox",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-motion-route",
            2
          ],
          "destination": [
            "vt-chop",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-wet",
            0
          ],
          "destination": [
            "vt-wet-msg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-wet-msg",
            0
          ],
          "destination": [
            "vt-wet-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-wet-line",
            0
          ],
          "destination": [
            "vt-eff-wet",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-enable-line",
            0
          ],
          "destination": [
            "vt-eff-wet",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-one-wet",
            0
          ],
          "destination": [
            "vt-dry-amount",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-eff-wet",
            0
          ],
          "destination": [
            "vt-dry-amount",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-vocoder",
            0
          ],
          "destination": [
            "vt-voc-talk-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-talkbox",
            0
          ],
          "destination": [
            "vt-voc-talk-l",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-vocoder",
            1
          ],
          "destination": [
            "vt-voc-talk-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-talkbox",
            1
          ],
          "destination": [
            "vt-voc-talk-r",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-voc-talk-l",
            0
          ],
          "destination": [
            "vt-hybrid-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-chop",
            0
          ],
          "destination": [
            "vt-hybrid-l",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-voc-talk-r",
            0
          ],
          "destination": [
            "vt-hybrid-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-chop",
            1
          ],
          "destination": [
            "vt-hybrid-r",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-hybrid-l",
            0
          ],
          "destination": [
            "vt-hybrid-level-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-hybrid-r",
            0
          ],
          "destination": [
            "vt-hybrid-level-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-vocoder",
            0
          ],
          "destination": [
            "vt-selector-l",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-talkbox",
            0
          ],
          "destination": [
            "vt-selector-l",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-chop",
            0
          ],
          "destination": [
            "vt-selector-l",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-hybrid-level-l",
            0
          ],
          "destination": [
            "vt-selector-l",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-vocoder",
            1
          ],
          "destination": [
            "vt-selector-r",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-talkbox",
            1
          ],
          "destination": [
            "vt-selector-r",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-chop",
            1
          ],
          "destination": [
            "vt-selector-r",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-hybrid-level-r",
            0
          ],
          "destination": [
            "vt-selector-r",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-in-l",
            0
          ],
          "destination": [
            "vt-dry-mix-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-dry-amount",
            0
          ],
          "destination": [
            "vt-dry-mix-l",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-selector-l",
            0
          ],
          "destination": [
            "vt-wet-mix-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-eff-wet",
            0
          ],
          "destination": [
            "vt-wet-mix-l",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-dry-mix-l",
            0
          ],
          "destination": [
            "vt-outmix-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-wet-mix-l",
            0
          ],
          "destination": [
            "vt-outmix-l",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-in-r",
            0
          ],
          "destination": [
            "vt-dry-mix-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-dry-amount",
            0
          ],
          "destination": [
            "vt-dry-mix-r",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-selector-r",
            0
          ],
          "destination": [
            "vt-wet-mix-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-eff-wet",
            0
          ],
          "destination": [
            "vt-wet-mix-r",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-dry-mix-r",
            0
          ],
          "destination": [
            "vt-outmix-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-wet-mix-r",
            0
          ],
          "destination": [
            "vt-outmix-r",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-outmix-l",
            0
          ],
          "destination": [
            "vt-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-outmix-r",
            0
          ],
          "destination": [
            "vt-gain",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-gain",
            0
          ],
          "destination": [
            "vt-out-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-gain",
            1
          ],
          "destination": [
            "vt-out-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-gain",
            0
          ],
          "destination": [
            "vt-dac",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vt-gain",
            1
          ],
          "destination": [
            "vt-dac",
            1
          ]
        }
      }
    ]
  }
}