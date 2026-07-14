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
      520
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
          "id": "vp-title",
          "maxclass": "comment",
          "patching_rect": [
            35,
            25,
            720,
            22
          ],
          "text": "mt_vocoder_pfft: spectral envelope transfer. Modulator amplitude shapes internal carrier phase."
        }
      },
      {
        "box": {
          "id": "vp-mod-in",
          "maxclass": "newobj",
          "patching_rect": [
            55,
            90,
            70,
            22
          ],
          "text": "fftin~ 1"
        }
      },
      {
        "box": {
          "id": "vp-carrier-in",
          "maxclass": "newobj",
          "patching_rect": [
            265,
            90,
            70,
            22
          ],
          "text": "fftin~ 2"
        }
      },
      {
        "box": {
          "id": "vp-mod-pol",
          "maxclass": "newobj",
          "patching_rect": [
            55,
            155,
            75,
            22
          ],
          "text": "cartopol~"
        }
      },
      {
        "box": {
          "id": "vp-carrier-pol",
          "maxclass": "newobj",
          "patching_rect": [
            265,
            155,
            75,
            22
          ],
          "text": "cartopol~"
        }
      },
      {
        "box": {
          "id": "vp-smooth-r",
          "maxclass": "newobj",
          "patching_rect": [
            445,
            90,
            55,
            22
          ],
          "text": "r #1"
        }
      },
      {
        "box": {
          "id": "vp-smooth-default",
          "maxclass": "newobj",
          "patching_rect": [
            515,
            90,
            145,
            22
          ],
          "text": "loadmess slide 12 12"
        }
      },
      {
        "box": {
          "id": "vp-amp-smooth",
          "maxclass": "newobj",
          "patching_rect": [
            55,
            235,
            95,
            22
          ],
          "text": "vectral~ 512"
        }
      },
      {
        "box": {
          "id": "vp-amp-makeup",
          "maxclass": "newobj",
          "patching_rect": [
            55,
            300,
            55,
            22
          ],
          "text": "*~ 2.5"
        }
      },
      {
        "box": {
          "id": "vp-amp-limit",
          "maxclass": "newobj",
          "patching_rect": [
            55,
            350,
            80,
            22
          ],
          "text": "clip~ 0. 6."
        }
      },
      {
        "box": {
          "id": "vp-poltocar",
          "maxclass": "newobj",
          "patching_rect": [
            265,
            350,
            75,
            22
          ],
          "text": "poltocar~"
        }
      },
      {
        "box": {
          "id": "vp-fftout",
          "maxclass": "newobj",
          "patching_rect": [
            265,
            420,
            75,
            22
          ],
          "text": "fftout~ 1"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "vp-mod-in",
            0
          ],
          "destination": [
            "vp-mod-pol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-mod-in",
            1
          ],
          "destination": [
            "vp-mod-pol",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-carrier-in",
            0
          ],
          "destination": [
            "vp-carrier-pol",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-carrier-in",
            1
          ],
          "destination": [
            "vp-carrier-pol",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-mod-in",
            2
          ],
          "destination": [
            "vp-amp-smooth",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-mod-in",
            2
          ],
          "destination": [
            "vp-amp-smooth",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-mod-pol",
            0
          ],
          "destination": [
            "vp-amp-smooth",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-smooth-r",
            0
          ],
          "destination": [
            "vp-amp-smooth",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-smooth-default",
            0
          ],
          "destination": [
            "vp-amp-smooth",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-amp-smooth",
            0
          ],
          "destination": [
            "vp-amp-makeup",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-amp-makeup",
            0
          ],
          "destination": [
            "vp-amp-limit",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-amp-limit",
            0
          ],
          "destination": [
            "vp-poltocar",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-carrier-pol",
            1
          ],
          "destination": [
            "vp-poltocar",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-poltocar",
            0
          ],
          "destination": [
            "vp-fftout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "vp-poltocar",
            1
          ],
          "destination": [
            "vp-fftout",
            1
          ]
        }
      }
    ]
  }
}