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
      40,
      40,
      1320,
      930
    ],
    "gridsize": [
      15,
      15
    ],
    "openinpresentation": 1,
    "description": "Standalone Free Hand Vocal Profile demo: hand clutch controls pfft vocoder brightness and carrier tone.",
    "boxes": [
      {
        "box": {
          "id": "vd-title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            15,
            420,
            24
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "GEEHON FREE HAND VOCAL DEMO",
          "presentation": 1,
          "presentation_rect": [
            20,
            12,
            420,
            24
          ]
        }
      },
      {
        "box": {
          "id": "vd-note",
          "maxclass": "comment",
          "patching_rect": [
            20,
            42,
            860,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Default free hand: RIGHT. Arm, pinch and hold, then move X/Y. Release to freeze the sound.",
          "presentation": 1,
          "presentation_rect": [
            20,
            40,
            900,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vd-hand",
          "maxclass": "bpatcher",
          "patching_rect": [
            20,
            90,
            620,
            460
          ],
          "bgmode": 0,
          "border": 1,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "name": "mt_control_hand_jweb.maxpat",
          "numinlets": 0,
          "numoutlets": 5,
          "offset": [
            0,
            0
          ],
          "outlettype": [
            "",
            "",
            "",
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            78,
            620,
            460
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "vd-profile",
          "maxclass": "bpatcher",
          "patching_rect": [
            660,
            90,
            760,
            230
          ],
          "bgmode": 0,
          "border": 1,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "name": "mt_control_vocal_profile.maxpat",
          "numinlets": 5,
          "numoutlets": 5,
          "offset": [
            0,
            0
          ],
          "outlettype": [
            "",
            "",
            "",
            "",
            ""
          ],
          "presentation": 1,
          "presentation_rect": [
            660,
            78,
            760,
            230
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "vd-mic",
          "maxclass": "bpatcher",
          "patching_rect": [
            20,
            590,
            420,
            280
          ],
          "bgmode": 0,
          "border": 1,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "name": "mt_input_mic_ui.maxpat",
          "numinlets": 2,
          "numoutlets": 2,
          "offset": [
            0,
            0
          ],
          "outlettype": [
            "signal",
            "signal"
          ],
          "presentation": 1,
          "presentation_rect": [
            20,
            565,
            420,
            280
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "vd-vocoder",
          "maxclass": "bpatcher",
          "patching_rect": [
            470,
            590,
            760,
            225
          ],
          "bgmode": 0,
          "border": 1,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "name": "mt_mod_vocoder.maxpat",
          "numinlets": 8,
          "numoutlets": 2,
          "offset": [
            0,
            0
          ],
          "outlettype": [
            "signal",
            "signal"
          ],
          "presentation": 1,
          "presentation_rect": [
            470,
            565,
            760,
            225
          ],
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "vd-mic-enable",
          "maxclass": "toggle",
          "patching_rect": [
            980,
            20,
            24,
            24
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "presentation": 1,
          "presentation_rect": [
            980,
            18,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "vd-mic-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            1012,
            22,
            45,
            20
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "MIC",
          "presentation": 1,
          "presentation_rect": [
            1012,
            20,
            45,
            20
          ]
        }
      },
      {
        "box": {
          "id": "vd-voc-enable",
          "maxclass": "toggle",
          "patching_rect": [
            1070,
            20,
            24,
            24
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "presentation": 1,
          "presentation_rect": [
            1070,
            18,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "vd-voc-enable-label",
          "maxclass": "comment",
          "patching_rect": [
            1102,
            22,
            85,
            20
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "VOCODER",
          "presentation": 1,
          "presentation_rect": [
            1102,
            20,
            85,
            20
          ]
        }
      },
      {
        "box": {
          "id": "vd-dsp",
          "maxclass": "ezdac~",
          "patching_rect": [
            1210,
            18,
            45,
            45
          ],
          "numinlets": 2,
          "numoutlets": 0,
          "presentation": 1,
          "presentation_rect": [
            1210,
            12,
            45,
            45
          ]
        }
      },
      {
        "box": {
          "id": "vd-loadbang",
          "maxclass": "newobj",
          "patching_rect": [
            1000,
            400,
            65,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "loadbang"
        }
      },
      {
        "box": {
          "id": "vd-init-trigger",
          "maxclass": "newobj",
          "patching_rect": [
            1000,
            435,
            62,
            22
          ],
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "text": "t b b b"
        }
      },
      {
        "box": {
          "id": "vd-wet-one",
          "maxclass": "message",
          "patching_rect": [
            920,
            475,
            32,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "1."
        }
      },
      {
        "box": {
          "id": "vd-noise-default",
          "maxclass": "message",
          "patching_rect": [
            990,
            475,
            42,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "0.25"
        }
      },
      {
        "box": {
          "id": "vd-smooth-default",
          "maxclass": "message",
          "patching_rect": [
            1060,
            475,
            42,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "0.35"
        }
      },
      {
        "box": {
          "id": "vd-audio-note",
          "maxclass": "comment",
          "patching_rect": [
            660,
            340,
            590,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Audio monitor uses the Vocoder module's built-in Output Gain and ezdac~; no duplicate monitor path is added.",
          "presentation": 1,
          "presentation_rect": [
            660,
            330,
            590,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vd-out-l",
          "maxclass": "outlet",
          "patching_rect": [
            1080,
            850,
            30,
            30
          ],
          "comment": "processed audio L",
          "index": 1,
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "vd-out-r",
          "maxclass": "outlet",
          "patching_rect": [
            1160,
            850,
            30,
            30
          ],
          "comment": "processed audio R",
          "index": 2,
          "numinlets": 1,
          "numoutlets": 0
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "vd-hand",
            0
          ],
          "destination": [
            "vd-profile",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-hand",
            1
          ],
          "destination": [
            "vd-profile",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-hand",
            2
          ],
          "destination": [
            "vd-profile",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-hand",
            3
          ],
          "destination": [
            "vd-profile",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-hand",
            4
          ],
          "destination": [
            "vd-profile",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-mic-enable",
            0
          ],
          "destination": [
            "vd-mic",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-mic",
            0
          ],
          "destination": [
            "vd-vocoder",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-mic",
            1
          ],
          "destination": [
            "vd-vocoder",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-voc-enable",
            0
          ],
          "destination": [
            "vd-vocoder",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-profile",
            1
          ],
          "destination": [
            "vd-vocoder",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-profile",
            0
          ],
          "destination": [
            "vd-vocoder",
            7
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-loadbang",
            0
          ],
          "destination": [
            "vd-init-trigger",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-init-trigger",
            2
          ],
          "destination": [
            "vd-wet-one",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-init-trigger",
            1
          ],
          "destination": [
            "vd-noise-default",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-init-trigger",
            0
          ],
          "destination": [
            "vd-smooth-default",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-wet-one",
            0
          ],
          "destination": [
            "vd-vocoder",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-noise-default",
            0
          ],
          "destination": [
            "vd-vocoder",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-smooth-default",
            0
          ],
          "destination": [
            "vd-vocoder",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-vocoder",
            0
          ],
          "destination": [
            "vd-out-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vd-vocoder",
            1
          ],
          "destination": [
            "vd-out-r",
            0
          ]
        }
      }
    ]
  }
}
