{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 6,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      80,
      80,
      1050,
      720
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
    "gridsnaponopen": 1,
    "objectsnaponopen": 1,
    "statusbarvisible": 2,
    "toolbarvisible": 1,
    "lefttoolbarpinned": 0,
    "toptoolbarpinned": 0,
    "righttoolbarpinned": 0,
    "bottomtoolbarpinned": 0,
    "toolbars_unpinned_last_save": 0,
    "tallnewobj": 0,
    "boxanimatetime": 200,
    "enablehscroll": 1,
    "enablevscroll": 1,
    "devicewidth": 0,
    "description": "Poly~ grain voice for mt_granular_synth.",
    "digest": "",
    "tags": "granular grain voice",
    "boxes": [
      {
        "box": {
          "id": "gv-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            40,
            80,
            360,
            22
          ],
          "text": "One grain voice for mt_granular_synth"
        }
      },
      {
        "box": {
          "id": "gv-in",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            40,
            166,
            45,
            22
          ],
          "text": "in 1"
        }
      },
      {
        "box": {
          "id": "gv-route",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            40,
            252,
            80,
            22
          ],
          "text": "route grain"
        }
      },
      {
        "box": {
          "id": "gv-trigger",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            40,
            338,
            45,
            22
          ],
          "text": "t b l"
        }
      },
      {
        "box": {
          "id": "gv-fire",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            40,
            424,
            55,
            22
          ],
          "text": "t b b b"
        }
      },
      {
        "box": {
          "id": "gv-unpack",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": [
            "float",
            "float",
            "float",
            "float",
            "float"
          ],
          "patching_rect": [
            160,
            424,
            125,
            22
          ],
          "text": "unpack f f f f f"
        }
      },
      {
        "box": {
          "id": "gv-start-store",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            40,
            510,
            35,
            22
          ],
          "text": "f"
        }
      },
      {
        "box": {
          "id": "gv-dur-store",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            160,
            510,
            35,
            22
          ],
          "text": "f"
        }
      },
      {
        "box": {
          "id": "gv-rate-store",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            280,
            510,
            35,
            22
          ],
          "text": "f"
        }
      },
      {
        "box": {
          "id": "gv-start-t",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "float"
          ],
          "patching_rect": [
            175,
            596,
            45,
            22
          ],
          "text": "t f f"
        }
      },
      {
        "box": {
          "id": "gv-end",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            40,
            682,
            135,
            22
          ],
          "text": "expr $f1 + ($f2 * $f3)"
        }
      },
      {
        "box": {
          "id": "gv-playpack",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            40,
            768,
            90,
            22
          ],
          "text": "pack f f f"
        }
      },
      {
        "box": {
          "id": "gv-playmsg",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            40,
            854,
            80,
            22
          ],
          "text": "$1, $2 $3"
        }
      },
      {
        "box": {
          "id": "gv-readline",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal",
            "bang"
          ],
          "patching_rect": [
            40,
            940,
            45,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "gv-play",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "bang"
          ],
          "patching_rect": [
            40,
            1026,
            160,
            22
          ],
          "text": "play~ mt_granular_buffer"
        }
      },
      {
        "box": {
          "id": "gv-envmsg",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            40,
            596,
            70,
            22
          ],
          "text": "0, 1 $1"
        }
      },
      {
        "box": {
          "id": "gv-envline",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal",
            "bang"
          ],
          "patching_rect": [
            235,
            682,
            45,
            22
          ],
          "text": "line~"
        }
      },
      {
        "box": {
          "id": "gv-cos",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            195,
            768,
            45,
            22
          ],
          "text": "cos~"
        }
      },
      {
        "box": {
          "id": "gv-window-neg",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            175,
            854,
            60,
            22
          ],
          "text": "*~ -0.5"
        }
      },
      {
        "box": {
          "id": "gv-window",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            160,
            940,
            55,
            22
          ],
          "text": "+~ 0.5"
        }
      },
      {
        "box": {
          "id": "gv-window-mul",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            40,
            1112,
            35,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "gv-amp-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            400,
            510,
            65,
            22
          ],
          "text": "clip 0. 1."
        }
      },
      {
        "box": {
          "id": "gv-amp-sig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            295,
            596,
            45,
            22
          ],
          "text": "sig~"
        }
      },
      {
        "box": {
          "id": "gv-ampmul",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            40,
            1198,
            35,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "gv-pan-clip",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            535,
            510,
            65,
            22
          ],
          "text": "clip 0. 1."
        }
      },
      {
        "box": {
          "id": "gv-pan-left",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            415,
            596,
            115,
            22
          ],
          "text": "expr sqrt(1. - $f1)"
        }
      },
      {
        "box": {
          "id": "gv-pan-right",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            590,
            596,
            90,
            22
          ],
          "text": "expr sqrt($f1)"
        }
      },
      {
        "box": {
          "id": "gv-left-sig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            355,
            682,
            45,
            22
          ],
          "text": "sig~"
        }
      },
      {
        "box": {
          "id": "gv-right-sig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            475,
            682,
            45,
            22
          ],
          "text": "sig~"
        }
      },
      {
        "box": {
          "id": "gv-left-mul",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            40,
            1284,
            35,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "gv-right-mul",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            160,
            1284,
            35,
            22
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "gv-out1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            40,
            1370,
            55,
            22
          ],
          "text": "out~ 1"
        }
      },
      {
        "box": {
          "id": "gv-out2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "patching_rect": [
            160,
            1370,
            55,
            22
          ],
          "text": "out~ 2"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "gv-in",
            0
          ],
          "destination": [
            "gv-route",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-route",
            0
          ],
          "destination": [
            "gv-trigger",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-trigger",
            0
          ],
          "destination": [
            "gv-fire",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-trigger",
            1
          ],
          "destination": [
            "gv-unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-fire",
            0
          ],
          "destination": [
            "gv-start-store",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-fire",
            1
          ],
          "destination": [
            "gv-dur-store",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-fire",
            2
          ],
          "destination": [
            "gv-rate-store",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-unpack",
            0
          ],
          "destination": [
            "gv-start-store",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-unpack",
            1
          ],
          "destination": [
            "gv-dur-store",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-unpack",
            2
          ],
          "destination": [
            "gv-rate-store",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-unpack",
            3
          ],
          "destination": [
            "gv-pan-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-unpack",
            4
          ],
          "destination": [
            "gv-amp-clip",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-start-store",
            0
          ],
          "destination": [
            "gv-start-t",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-start-t",
            0
          ],
          "destination": [
            "gv-playpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-start-t",
            1
          ],
          "destination": [
            "gv-end",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-dur-store",
            0
          ],
          "destination": [
            "gv-end",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-dur-store",
            0
          ],
          "destination": [
            "gv-playpack",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-dur-store",
            0
          ],
          "destination": [
            "gv-envmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-rate-store",
            0
          ],
          "destination": [
            "gv-end",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-end",
            0
          ],
          "destination": [
            "gv-playpack",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-playpack",
            0
          ],
          "destination": [
            "gv-playmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-playmsg",
            0
          ],
          "destination": [
            "gv-readline",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-readline",
            0
          ],
          "destination": [
            "gv-play",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-envmsg",
            0
          ],
          "destination": [
            "gv-envline",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-envline",
            0
          ],
          "destination": [
            "gv-cos",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-cos",
            0
          ],
          "destination": [
            "gv-window-neg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-window-neg",
            0
          ],
          "destination": [
            "gv-window",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-play",
            0
          ],
          "destination": [
            "gv-window-mul",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-window",
            0
          ],
          "destination": [
            "gv-window-mul",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-amp-clip",
            0
          ],
          "destination": [
            "gv-amp-sig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-window-mul",
            0
          ],
          "destination": [
            "gv-ampmul",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-amp-sig",
            0
          ],
          "destination": [
            "gv-ampmul",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-pan-clip",
            0
          ],
          "destination": [
            "gv-pan-left",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-pan-clip",
            0
          ],
          "destination": [
            "gv-pan-right",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-pan-left",
            0
          ],
          "destination": [
            "gv-left-sig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-pan-right",
            0
          ],
          "destination": [
            "gv-right-sig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-ampmul",
            0
          ],
          "destination": [
            "gv-left-mul",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-left-sig",
            0
          ],
          "destination": [
            "gv-left-mul",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-ampmul",
            0
          ],
          "destination": [
            "gv-right-mul",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-right-sig",
            0
          ],
          "destination": [
            "gv-right-mul",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-left-mul",
            0
          ],
          "destination": [
            "gv-out1",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gv-right-mul",
            0
          ],
          "destination": [
            "gv-out2",
            0
          ]
        }
      }
    ]
  }
}