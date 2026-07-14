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
      860,
      360
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
          "id": "h-title",
          "maxclass": "comment",
          "patching_rect": [
            24,
            20,
            360,
            24
          ],
          "text": "MT Control Hand Stub - parked control layer",
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
          "id": "h-note",
          "maxclass": "comment",
          "patching_rect": [
            24,
            48,
            620,
            22
          ],
          "text": "Temporary 0-1 slot source for mapping tests before final face/hand/body tracker integration.",
          "presentation": 1,
          "presentation_rect": [
            12,
            30,
            380,
            36
          ]
        }
      },
      {
        "box": {
          "id": "h-slot1",
          "maxclass": "slider",
          "patching_rect": [
            24,
            110,
            170,
            24
          ],
          "size": 1000,
          "orientation": 1,
          "presentation": 1,
          "presentation_rect": [
            12,
            86,
            180,
            24
          ]
        }
      },
      {
        "box": {
          "id": "h-slot2",
          "maxclass": "slider",
          "patching_rect": [
            24,
            165,
            170,
            24
          ],
          "size": 1000,
          "orientation": 1,
          "presentation": 1,
          "presentation_rect": [
            12,
            132,
            180,
            24
          ]
        }
      },
      {
        "box": {
          "id": "h-slot3",
          "maxclass": "slider",
          "patching_rect": [
            24,
            220,
            170,
            24
          ],
          "size": 1000,
          "orientation": 1,
          "presentation": 1,
          "presentation_rect": [
            12,
            178,
            180,
            24
          ]
        }
      },
      {
        "box": {
          "id": "h-slot4",
          "maxclass": "slider",
          "patching_rect": [
            24,
            275,
            170,
            24
          ],
          "size": 1000,
          "orientation": 1,
          "presentation": 1,
          "presentation_rect": [
            12,
            224,
            180,
            24
          ]
        }
      },
      {
        "box": {
          "id": "h-slot1-label",
          "maxclass": "comment",
          "patching_rect": [
            210,
            112,
            100,
            22
          ],
          "text": "slot1 hand_x",
          "presentation": 1,
          "presentation_rect": [
            210,
            88,
            110,
            22
          ]
        }
      },
      {
        "box": {
          "id": "h-slot2-label",
          "maxclass": "comment",
          "patching_rect": [
            210,
            167,
            100,
            22
          ],
          "text": "slot2 hand_y",
          "presentation": 1,
          "presentation_rect": [
            210,
            134,
            110,
            22
          ]
        }
      },
      {
        "box": {
          "id": "h-slot3-label",
          "maxclass": "comment",
          "patching_rect": [
            210,
            222,
            100,
            22
          ],
          "text": "slot3 pinch",
          "presentation": 1,
          "presentation_rect": [
            210,
            180,
            110,
            22
          ]
        }
      },
      {
        "box": {
          "id": "h-slot4-label",
          "maxclass": "comment",
          "patching_rect": [
            210,
            277,
            100,
            22
          ],
          "text": "slot4 palm",
          "presentation": 1,
          "presentation_rect": [
            210,
            226,
            110,
            22
          ]
        }
      },
      {
        "box": {
          "id": "h-scale1",
          "maxclass": "newobj",
          "patching_rect": [
            340,
            110,
            140,
            22
          ],
          "text": "scale 0 1000 0. 1."
        }
      },
      {
        "box": {
          "id": "h-scale2",
          "maxclass": "newobj",
          "patching_rect": [
            340,
            165,
            140,
            22
          ],
          "text": "scale 0 1000 0. 1."
        }
      },
      {
        "box": {
          "id": "h-scale3",
          "maxclass": "newobj",
          "patching_rect": [
            340,
            220,
            140,
            22
          ],
          "text": "scale 0 1000 0. 1."
        }
      },
      {
        "box": {
          "id": "h-scale4",
          "maxclass": "newobj",
          "patching_rect": [
            340,
            275,
            140,
            22
          ],
          "text": "scale 0 1000 0. 1."
        }
      },
      {
        "box": {
          "id": "h-send1",
          "maxclass": "newobj",
          "patching_rect": [
            505,
            110,
            100,
            22
          ],
          "text": "s gesture_slot1"
        }
      },
      {
        "box": {
          "id": "h-send2",
          "maxclass": "newobj",
          "patching_rect": [
            505,
            165,
            100,
            22
          ],
          "text": "s gesture_slot2"
        }
      },
      {
        "box": {
          "id": "h-send3",
          "maxclass": "newobj",
          "patching_rect": [
            505,
            220,
            100,
            22
          ],
          "text": "s gesture_slot3"
        }
      },
      {
        "box": {
          "id": "h-send4",
          "maxclass": "newobj",
          "patching_rect": [
            505,
            275,
            100,
            22
          ],
          "text": "s gesture_slot4"
        }
      },
      {
        "box": {
          "id": "h-out1",
          "maxclass": "outlet",
          "patching_rect": [
            650,
            110,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "h-out2",
          "maxclass": "outlet",
          "patching_rect": [
            700,
            110,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "h-out3",
          "maxclass": "outlet",
          "patching_rect": [
            750,
            110,
            30,
            30
          ]
        }
      },
      {
        "box": {
          "id": "h-out4",
          "maxclass": "outlet",
          "patching_rect": [
            800,
            110,
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
            "h-slot1",
            0
          ],
          "destination": [
            "h-scale1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "h-slot2",
            0
          ],
          "destination": [
            "h-scale2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "h-slot3",
            0
          ],
          "destination": [
            "h-scale3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "h-slot4",
            0
          ],
          "destination": [
            "h-scale4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "h-scale1",
            0
          ],
          "destination": [
            "h-send1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "h-scale2",
            0
          ],
          "destination": [
            "h-send2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "h-scale3",
            0
          ],
          "destination": [
            "h-send3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "h-scale4",
            0
          ],
          "destination": [
            "h-send4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "h-scale1",
            0
          ],
          "destination": [
            "h-out1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "h-scale2",
            0
          ],
          "destination": [
            "h-out2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "h-scale3",
            0
          ],
          "destination": [
            "h-out3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "h-scale4",
            0
          ],
          "destination": [
            "h-out4",
            0
          ]
        }
      }
    ]
  }
}