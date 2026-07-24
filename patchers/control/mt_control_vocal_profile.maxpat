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
      450
    ],
    "gridsize": [
      15,
      15
    ],
    "openinpresentation": 1,
    "description": "Free-hand vocal performance profile with pinch clutch and relative vocoder mapping.",
    "boxes": [
      {
        "box": {
          "id": "vp-title",
          "maxclass": "comment",
          "patching_rect": [
            20,
            10,
            420,
            24
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "GEEHON FREE HAND VOCAL PROFILE",
          "presentation": 1,
          "presentation_rect": [
            16,
            12,
            390,
            24
          ]
        }
      },
      {
        "box": {
          "id": "vp-note",
          "maxclass": "comment",
          "patching_rect": [
            20,
            35,
            690,
            22
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "Pinch and hold to move. Release to freeze. X controls Brightness; raised Y controls Carrier Tone.",
          "presentation": 1,
          "presentation_rect": [
            16,
            40,
            700,
            22
          ]
        }
      },
      {
        "box": {
          "id": "vp-in-x",
          "maxclass": "inlet",
          "patching_rect": [
            40,
            55,
            30,
            30
          ],
          "comment": "hand_x 0-1",
          "index": 1,
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "vp-in-y",
          "maxclass": "inlet",
          "patching_rect": [
            150,
            55,
            30,
            30
          ],
          "comment": "hand_y 0-1",
          "index": 2,
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "vp-in-pinch",
          "maxclass": "inlet",
          "patching_rect": [
            260,
            55,
            30,
            30
          ],
          "comment": "pinch distance 0-1",
          "index": 3,
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "vp-in-palm",
          "maxclass": "inlet",
          "patching_rect": [
            370,
            55,
            30,
            30
          ],
          "comment": "palm width monitor 0-1",
          "index": 4,
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "vp-in-tracking",
          "maxclass": "inlet",
          "patching_rect": [
            480,
            55,
            30,
            30
          ],
          "comment": "tracking valid 0/1",
          "index": 5,
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ]
        }
      },
      {
        "box": {
          "id": "vp-frame-pak",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            110,
            112,
            22
          ],
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "pak f f f f i"
        }
      },
      {
        "box": {
          "id": "vp-frame-prepend",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            150,
            95,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend frame"
        }
      },
      {
        "box": {
          "id": "vp-js",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            195,
            310,
            22
          ],
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": [
            "",
            "",
            "",
            "",
            ""
          ],
          "text": "js Patcher:/../../javascript/mt_vocal_hand_mapper.js"
        }
      },
      {
        "box": {
          "id": "vp-arm",
          "maxclass": "toggle",
          "patching_rect": [
            575,
            75,
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
            20,
            82,
            28,
            28
          ],
          "varname": "vocal_profile_arm"
        }
      },
      {
        "box": {
          "id": "vp-arm-label",
          "maxclass": "comment",
          "patching_rect": [
            610,
            78,
            55,
            20
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "ARM",
          "presentation": 1,
          "presentation_rect": [
            56,
            86,
            55,
            20
          ]
        }
      },
      {
        "box": {
          "id": "vp-arm-prepend",
          "maxclass": "newobj",
          "patching_rect": [
            575,
            115,
            85,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend arm"
        }
      },
      {
        "box": {
          "id": "vp-reset",
          "maxclass": "button",
          "patching_rect": [
            680,
            75,
            24,
            24
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "presentation": 1,
          "presentation_rect": [
            130,
            84,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "vp-reset-label",
          "maxclass": "comment",
          "patching_rect": [
            710,
            78,
            55,
            20
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "RESET",
          "presentation": 1,
          "presentation_rect": [
            160,
            86,
            62,
            20
          ]
        }
      },
      {
        "box": {
          "id": "vp-reset-message",
          "maxclass": "message",
          "patching_rect": [
            680,
            115,
            62,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "reset 1"
        }
      },
      {
        "box": {
          "id": "vp-loadbang",
          "maxclass": "newobj",
          "patching_rect": [
            575,
            155,
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
          "id": "vp-load-trigger",
          "maxclass": "newobj",
          "patching_rect": [
            575,
            190,
            45,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "t b b"
        }
      },
      {
        "box": {
          "id": "vp-arm-zero",
          "maxclass": "message",
          "patching_rect": [
            640,
            190,
            32,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "0"
        }
      },
      {
        "box": {
          "id": "vp-bright-pack",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            245,
            75,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "pack f 60"
        }
      },
      {
        "box": {
          "id": "vp-bright-line",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            280,
            45,
            22
          ],
          "numinlets": 3,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "text": "line"
        }
      },
      {
        "box": {
          "id": "vp-bright-trigger",
          "maxclass": "newobj",
          "patching_rect": [
            40,
            315,
            42,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "t f f"
        }
      },
      {
        "box": {
          "id": "vp-tone-pack",
          "maxclass": "newobj",
          "patching_rect": [
            150,
            245,
            75,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "pack f 60"
        }
      },
      {
        "box": {
          "id": "vp-tone-line",
          "maxclass": "newobj",
          "patching_rect": [
            150,
            280,
            45,
            22
          ],
          "numinlets": 3,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "text": "line"
        }
      },
      {
        "box": {
          "id": "vp-tone-trigger",
          "maxclass": "newobj",
          "patching_rect": [
            150,
            315,
            42,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "t f f"
        }
      },
      {
        "box": {
          "id": "vp-bright-num",
          "maxclass": "flonum",
          "patching_rect": [
            300,
            250,
            70,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "presentation": 1,
          "presentation_rect": [
            250,
            90,
            82,
            24
          ],
          "varname": "vocal_brightness"
        }
      },
      {
        "box": {
          "id": "vp-bright-label",
          "maxclass": "comment",
          "patching_rect": [
            300,
            225,
            110,
            20
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "BRIGHTNESS",
          "presentation": 1,
          "presentation_rect": [
            250,
            68,
            110,
            20
          ]
        }
      },
      {
        "box": {
          "id": "vp-tone-num",
          "maxclass": "flonum",
          "patching_rect": [
            400,
            250,
            70,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "presentation": 1,
          "presentation_rect": [
            370,
            90,
            82,
            24
          ],
          "varname": "vocal_carrier_tone"
        }
      },
      {
        "box": {
          "id": "vp-tone-label",
          "maxclass": "comment",
          "patching_rect": [
            400,
            225,
            120,
            20
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "CARRIER TONE",
          "presentation": 1,
          "presentation_rect": [
            370,
            68,
            120,
            20
          ]
        }
      },
      {
        "box": {
          "id": "vp-clutch-toggle",
          "maxclass": "toggle",
          "patching_rect": [
            500,
            250,
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
            500,
            90,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "vp-clutch-label",
          "maxclass": "comment",
          "patching_rect": [
            535,
            252,
            70,
            20
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "CLUTCH",
          "presentation": 1,
          "presentation_rect": [
            500,
            68,
            70,
            20
          ]
        }
      },
      {
        "box": {
          "id": "vp-tracking-toggle",
          "maxclass": "toggle",
          "patching_rect": [
            610,
            250,
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
            590,
            90,
            24,
            24
          ]
        }
      },
      {
        "box": {
          "id": "vp-tracking-label",
          "maxclass": "comment",
          "patching_rect": [
            645,
            252,
            80,
            20
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "TRACKING",
          "presentation": 1,
          "presentation_rect": [
            590,
            68,
            90,
            20
          ]
        }
      },
      {
        "box": {
          "id": "vp-status-set",
          "maxclass": "newobj",
          "patching_rect": [
            500,
            300,
            85,
            22
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "vp-status",
          "maxclass": "message",
          "patching_rect": [
            600,
            300,
            125,
            22
          ],
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "DISARMED",
          "presentation": 1,
          "presentation_rect": [
            20,
            145,
            200,
            24
          ],
          "varname": "vocal_profile_status"
        }
      },
      {
        "box": {
          "id": "vp-status-label",
          "maxclass": "comment",
          "patching_rect": [
            500,
            277,
            60,
            20
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "STATUS",
          "presentation": 1,
          "presentation_rect": [
            20,
            122,
            70,
            20
          ]
        }
      },
      {
        "box": {
          "id": "vp-palm-num",
          "maxclass": "flonum",
          "patching_rect": [
            610,
            335,
            70,
            22
          ],
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "presentation": 1,
          "presentation_rect": [
            250,
            145,
            82,
            24
          ]
        }
      },
      {
        "box": {
          "id": "vp-palm-label",
          "maxclass": "comment",
          "patching_rect": [
            610,
            312,
            110,
            20
          ],
          "numinlets": 1,
          "numoutlets": 0,
          "text": "PALM MONITOR",
          "presentation": 1,
          "presentation_rect": [
            250,
            122,
            120,
            20
          ]
        }
      },
      {
        "box": {
          "id": "vp-out-bright",
          "maxclass": "outlet",
          "patching_rect": [
            40,
            375,
            30,
            30
          ],
          "comment": "Vocoder Brightness 0-1",
          "index": 1,
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "vp-out-tone",
          "maxclass": "outlet",
          "patching_rect": [
            150,
            375,
            30,
            30
          ],
          "comment": "Vocoder Carrier Tone 0-1",
          "index": 2,
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "vp-out-clutch",
          "maxclass": "outlet",
          "patching_rect": [
            260,
            375,
            30,
            30
          ],
          "comment": "pinch clutch active 0/1",
          "index": 3,
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "vp-out-tracking",
          "maxclass": "outlet",
          "patching_rect": [
            370,
            375,
            30,
            30
          ],
          "comment": "tracking valid 0/1",
          "index": 4,
          "numinlets": 1,
          "numoutlets": 0
        }
      },
      {
        "box": {
          "id": "vp-out-status",
          "maxclass": "outlet",
          "patching_rect": [
            480,
            375,
            30,
            30
          ],
          "comment": "interaction status",
          "index": 5,
          "numinlets": 1,
          "numoutlets": 0
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "vp-in-x",
            0
          ],
          "destination": [
            "vp-frame-pak",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-in-y",
            0
          ],
          "destination": [
            "vp-frame-pak",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-in-pinch",
            0
          ],
          "destination": [
            "vp-frame-pak",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-in-palm",
            0
          ],
          "destination": [
            "vp-frame-pak",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-in-palm",
            0
          ],
          "destination": [
            "vp-palm-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-in-tracking",
            0
          ],
          "destination": [
            "vp-frame-pak",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-frame-pak",
            0
          ],
          "destination": [
            "vp-frame-prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-frame-prepend",
            0
          ],
          "destination": [
            "vp-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-arm",
            0
          ],
          "destination": [
            "vp-arm-prepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-arm-prepend",
            0
          ],
          "destination": [
            "vp-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-reset",
            0
          ],
          "destination": [
            "vp-reset-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-reset-message",
            0
          ],
          "destination": [
            "vp-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-loadbang",
            0
          ],
          "destination": [
            "vp-load-trigger",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-load-trigger",
            1
          ],
          "destination": [
            "vp-arm-zero",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-arm-zero",
            0
          ],
          "destination": [
            "vp-arm",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-load-trigger",
            0
          ],
          "destination": [
            "vp-reset-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-js",
            0
          ],
          "destination": [
            "vp-bright-pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-bright-pack",
            0
          ],
          "destination": [
            "vp-bright-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-bright-line",
            0
          ],
          "destination": [
            "vp-bright-trigger",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-bright-trigger",
            0
          ],
          "destination": [
            "vp-out-bright",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-bright-trigger",
            1
          ],
          "destination": [
            "vp-bright-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-js",
            1
          ],
          "destination": [
            "vp-tone-pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-tone-pack",
            0
          ],
          "destination": [
            "vp-tone-line",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-tone-line",
            0
          ],
          "destination": [
            "vp-tone-trigger",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-tone-trigger",
            0
          ],
          "destination": [
            "vp-out-tone",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-tone-trigger",
            1
          ],
          "destination": [
            "vp-tone-num",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-js",
            2
          ],
          "destination": [
            "vp-clutch-toggle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-js",
            2
          ],
          "destination": [
            "vp-out-clutch",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-js",
            3
          ],
          "destination": [
            "vp-tracking-toggle",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-js",
            3
          ],
          "destination": [
            "vp-out-tracking",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-js",
            4
          ],
          "destination": [
            "vp-status-set",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-status-set",
            0
          ],
          "destination": [
            "vp-status",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-js",
            4
          ],
          "destination": [
            "vp-out-status",
            0
          ]
        }
      }
    ]
  }
}
