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
        "openrect": [
            80,
            80,
            1000,
            588
        ],
        "openinpresentation": 1,
        "gridsize": [
            15,
            15
        ],
        "description": "Standalone stereo record, trim, preview, and 24-bit WAV export editor",
        "digest": "Buffer-based recorder with non-destructive selection export",
        "tags": "record trim export waveform stereo",
        "boxes": [
            {
                "box": {
                    "background": 1,
                    "bgcolor": [
                        0.93,
                        0.96,
                        0.94,
                        1
                    ],
                    "border": 1,
                    "bordercolor": [
                        0.66,
                        0.76,
                        0.7,
                        1
                    ],
                    "id": "re-bg",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2600,
                        30,
                        820,
                        430
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        0,
                        960,
                        528
                    ],
                    "rounded": 14
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "id": "re-header",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2600,
                        490,
                        820,
                        54
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0,
                        0,
                        960,
                        64
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 18,
                    "id": "re-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        42,
                        34,
                        300,
                        27
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        72,
                        12,
                        430,
                        27
                    ],
                    "text": "RECORD / EDIT / EXPORT",
                    "textcolor": [
                        0.96,
                        0.98,
                        0.97,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 9,
                    "id": "re-subtitle",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        490,
                        36,
                        300,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        72,
                        38,
                        430,
                        17
                    ],
                    "text": "POST-FX MASTER CAPTURE  ·  STEREO WAV",
                    "textcolor": [
                        0.7,
                        0.79,
                        0.75,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.075,
                        0.13,
                        0.11,
                        1
                    ],
                    "buffername": "#0_master_take",
                    "gridcolor": [
                        0.2,
                        0.32,
                        0.27,
                        1
                    ],
                    "id": "re-waveform",
                    "maxclass": "waveform~",
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [
                        "float",
                        "float",
                        "float",
                        "float",
                        "list",
                        ""
                    ],
                    "patching_rect": [
                        42,
                        92,
                        776,
                        185
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        42,
                        122,
                        876,
                        158
                    ],
                    "selectioncolor": [
                        0.95,
                        0.72,
                        0.2,
                        0.42
                    ],
                    "setmode": 1,
                    "snapto": 2,
                    "varname": "record_waveform",
                    "waveformcolor": [
                        0.78,
                        0.88,
                        0.83,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 9,
                    "id": "re-capture-group",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        42,
                        289,
                        121,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        306,
                        296,
                        17
                    ],
                    "text": "CAPTURE",
                    "textcolor": [
                        0.42,
                        0.5,
                        0.46,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 9,
                    "id": "re-edit-group",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        284,
                        289,
                        252,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        332,
                        306,
                        450,
                        17
                    ],
                    "text": "EDIT / REVIEW",
                    "textcolor": [
                        0.42,
                        0.5,
                        0.46,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 9,
                    "id": "re-deliver-group",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        677,
                        289,
                        121,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        794,
                        306,
                        142,
                        17
                    ],
                    "text": "DELIVER",
                    "textcolor": [
                        0.42,
                        0.5,
                        0.46,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.42,
                        0.68,
                        0.61,
                        1
                    ],
                    "bgoncolor": [
                        0.31,
                        0.56,
                        0.49,
                        1
                    ],
                    "blinktime": 120,
                    "fontface": 1,
                    "fontsize": 11,
                    "id": "re-record-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        42,
                        315,
                        96,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        328,
                        142,
                        40
                    ],
                    "rounded": 8,
                    "text": "●  RECORD",
                    "textcolor": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "texton": "●  RECORD",
                    "textoncolor": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "textovercolor": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "usebgoncolor": 1,
                    "usetextovercolor": 1
                }
            },
            {
                "box": {
                    "id": "re-record-command",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        42,
                        357,
                        86,
                        22
                    ],
                    "text": "record"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.9,
                        0.93,
                        0.91,
                        1
                    ],
                    "bgoncolor": [
                        0.82,
                        0.87,
                        0.84,
                        1
                    ],
                    "blinktime": 120,
                    "fontface": 1,
                    "fontsize": 11,
                    "id": "re-stop-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        148,
                        315,
                        78,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        178,
                        328,
                        142,
                        40
                    ],
                    "rounded": 8,
                    "text": "■  STOP",
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "texton": "■  STOP",
                    "textoncolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "textovercolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "usebgoncolor": 1,
                    "usetextovercolor": 1
                }
            },
            {
                "box": {
                    "id": "re-stop-command",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        148,
                        357,
                        68,
                        22
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "bgoncolor": [
                        0.08,
                        0.18,
                        0.15,
                        1
                    ],
                    "blinktime": 120,
                    "fontface": 1,
                    "fontsize": 11,
                    "id": "re-preview-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        236,
                        315,
                        150,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        332,
                        328,
                        142,
                        40
                    ],
                    "rounded": 8,
                    "text": "▶  PREVIEW",
                    "textcolor": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "texton": "▶  PREVIEW",
                    "textoncolor": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "textovercolor": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "usebgoncolor": 1,
                    "usetextovercolor": 1
                }
            },
            {
                "box": {
                    "id": "re-preview-command",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        236,
                        357,
                        140,
                        22
                    ],
                    "text": "preview"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.9,
                        0.93,
                        0.91,
                        1
                    ],
                    "bgoncolor": [
                        0.82,
                        0.87,
                        0.84,
                        1
                    ],
                    "blinktime": 120,
                    "fontface": 1,
                    "fontsize": 11,
                    "id": "re-reset-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        396,
                        315,
                        140,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        486,
                        328,
                        142,
                        40
                    ],
                    "rounded": 8,
                    "text": "↺  RESET RANGE",
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "texton": "↺  RESET RANGE",
                    "textoncolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "textovercolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "usebgoncolor": 1,
                    "usetextovercolor": 1
                }
            },
            {
                "box": {
                    "id": "re-reset-command",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        396,
                        357,
                        130,
                        22
                    ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.9,
                        0.93,
                        0.91,
                        1
                    ],
                    "bgoncolor": [
                        0.82,
                        0.87,
                        0.84,
                        1
                    ],
                    "blinktime": 120,
                    "fontface": 1,
                    "fontsize": 11,
                    "id": "re-new-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        546,
                        300,
                        94,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        640,
                        328,
                        142,
                        40
                    ],
                    "rounded": 8,
                    "text": "+  NEW TAKE",
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "texton": "+  NEW TAKE",
                    "textoncolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "textovercolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "usebgoncolor": 1,
                    "usetextovercolor": 1
                }
            },
            {
                "box": {
                    "id": "re-new-command",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        546,
                        342,
                        84,
                        22
                    ],
                    "text": "new"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.95,
                        0.72,
                        0.2,
                        1
                    ],
                    "bgoncolor": [
                        0.86,
                        0.62,
                        0.12,
                        1
                    ],
                    "blinktime": 120,
                    "fontface": 1,
                    "fontsize": 11,
                    "id": "re-export-button",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        650,
                        315,
                        168,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        794,
                        328,
                        142,
                        40
                    ],
                    "rounded": 8,
                    "text": "EXPORT WAV  ↗",
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "texton": "EXPORT WAV  ↗",
                    "textoncolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "textovercolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "usebgoncolor": 1,
                    "usetextovercolor": 1
                }
            },
            {
                "box": {
                    "id": "re-export-command",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        650,
                        357,
                        158,
                        22
                    ],
                    "text": "export"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "id": "re-status-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        27,
                        385,
                        55,
                        20
                    ],
                    "presentation_linecount": 2,
                    "text": "STATUS",
                    "textcolor": [
                        0.13,
                        0.25,
                        0.21,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10,
                    "id": "re-status-display",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1890,
                        1616,
                        120,
                        18
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        833,
                        22,
                        88,
                        18
                    ],
                    "text": "EMPTY",
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10,
                    "id": "re-elapsed-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        242,
                        385,
                        82,
                        18
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        42,
                        408,
                        160,
                        18
                    ],
                    "text": "TAKE LENGTH",
                    "textcolor": [
                        0.13,
                        0.25,
                        0.21,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 30,
                    "id": "re-elapsed-display",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        76,
                        1991,
                        84,
                        40
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        42,
                        431,
                        190,
                        40
                    ],
                    "text": "00:00",
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 9,
                    "id": "re-start-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        437,
                        385,
                        25,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        290,
                        441,
                        26,
                        17
                    ],
                    "text": "IN",
                    "textcolor": [
                        0.13,
                        0.25,
                        0.21,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.93,
                        0.96,
                        0.94,
                        1
                    ],
                    "cantchange": 1,
                    "fontface": 1,
                    "fontsize": 16,
                    "format": 6,
                    "id": "re-start-display",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        785,
                        1170,
                        78,
                        26
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        322,
                        433,
                        104,
                        26
                    ],
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "triangle": 0
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 9,
                    "id": "re-end-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        565,
                        385,
                        34,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        450,
                        441,
                        32,
                        17
                    ],
                    "text": "OUT",
                    "textcolor": [
                        0.13,
                        0.25,
                        0.21,
                        1
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.93,
                        0.96,
                        0.94,
                        1
                    ],
                    "cantchange": 1,
                    "fontface": 1,
                    "fontsize": 16,
                    "format": 6,
                    "id": "re-end-display",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        880,
                        1170,
                        78,
                        26
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        486,
                        433,
                        104,
                        26
                    ],
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "triangle": 0
                }
            },
            {
                "box": {
                    "fontsize": 9,
                    "id": "re-selection-sub",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        42,
                        465,
                        700,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        290,
                        479,
                        328,
                        17
                    ],
                    "text": "EXPORT USES CURRENT RANGE  ·  ORIGINAL TAKE STAYS INTACT",
                    "textcolor": [
                        0.42,
                        0.5,
                        0.46,
                        1
                    ]
                }
            },
            {
                "box": {
                    "comment": "stereo record input left",
                    "id": "re-in-l",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        1080,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "stereo record input right",
                    "id": "re-in-r",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        100,
                        1080,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "record stop preview reset new export",
                    "id": "re-command-in",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        160,
                        520,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "selection preview left",
                    "id": "re-preview-l",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1015,
                        1225,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "selection preview right",
                    "id": "re-preview-r",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1115,
                        1225,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "status symbol",
                    "id": "re-status-out",
                    "index": 3,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1215,
                        1538,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "recorded duration in milliseconds",
                    "id": "re-elapsed-out",
                    "index": 4,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1315,
                        1490,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "preview active 0 or 1",
                    "id": "re-preview-active-out",
                    "index": 5,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1415,
                        1482.978712797165,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "formatted elapsed time",
                    "id": "re-elapsed-text-out",
                    "index": 6,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1515,
                        1941,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "re-command-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        115,
                        600,
                        155,
                        22
                    ],
                    "text": "s #0_record_editor_cmd"
                }
            },
            {
                "box": {
                    "id": "re-command-receive",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        998,
                        520,
                        155,
                        22
                    ],
                    "text": "r #0_record_editor_cmd"
                }
            },
            {
                "box": {
                    "id": "re-preview-state-command-receive",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2100,
                        1120,
                        155,
                        22
                    ],
                    "text": "r #0_record_editor_cmd"
                }
            },
            {
                "box": {
                    "id": "re-preview-state-route",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        2100,
                        1170,
                        88,
                        22
                    ],
                    "text": "route preview"
                }
            },
            {
                "box": {
                    "id": "re-preview-state-on",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2100,
                        1230,
                        30,
                        22
                    ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "re-preview-state-off",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        777,
                        923.7288355827332,
                        30,
                        22
                    ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "re-preview-state-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1187,
                        1580,
                        178,
                        22
                    ],
                    "text": "s #0_record_preview_active"
                }
            },
            {
                "box": {
                    "id": "re-preview-state-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1227,
                        1502,
                        70,
                        22
                    ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "id": "re-preview-state-receive",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2100,
                        1440,
                        178,
                        22
                    ],
                    "text": "r #0_record_preview_active"
                }
            },
            {
                "box": {
                    "id": "re-route",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 7,
                    "outlettype": [
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        300,
                        560,
                        1550,
                        22
                    ],
                    "text": "route record stop preview reset new export"
                }
            },
            {
                "box": {
                    "id": "re-source-buffer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        260,
                        1080,
                        220,
                        22
                    ],
                    "text": "buffer~ #0_master_take 300000 2"
                }
            },
            {
                "box": {
                    "id": "re-export-buffer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        1500,
                        1080,
                        220,
                        22
                    ],
                    "text": "buffer~ #0_export_take 300000 2"
                }
            },
            {
                "box": {
                    "id": "re-record",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        40,
                        1140,
                        180,
                        22
                    ],
                    "text": "record~ #0_master_take 2"
                }
            },
            {
                "box": {
                    "id": "re-record-sync",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        40,
                        1190,
                        82,
                        22
                    ],
                    "text": "*~ 300000."
                }
            },
            {
                "box": {
                    "id": "re-sync-snapshot",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        40,
                        1240,
                        82,
                        22
                    ],
                    "text": "snapshot~ 25"
                }
            },
            {
                "box": {
                    "id": "re-sync-nonzero",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        40,
                        1290,
                        140,
                        22
                    ],
                    "text": "split 0.000001 300000."
                }
            },
            {
                "box": {
                    "id": "re-sync-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        1340,
                        55,
                        22
                    ],
                    "text": "gate 1"
                }
            },
            {
                "box": {
                    "id": "re-sync-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        1390,
                        110,
                        22
                    ],
                    "text": "clip 0. 300000."
                }
            },
            {
                "box": {
                    "id": "re-elapsed-out-fan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "float",
                        "float",
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        125,
                        1440,
                        70,
                        22
                    ],
                    "text": "t f f f f"
                }
            },
            {
                "box": {
                    "id": "re-duration-store",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        563,
                        1210,
                        45,
                        22
                    ],
                    "text": "f 0."
                }
            },
            {
                "box": {
                    "id": "re-progress-line",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        176,
                        1598,
                        58,
                        22
                    ],
                    "text": "line $1"
                }
            },
            {
                "box": {
                    "id": "re-selection-start-fan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        760,
                        1120,
                        44,
                        22
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "re-selection-end-fan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        810,
                        1120,
                        44,
                        22
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "re-selection-pack",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        760,
                        1260,
                        62,
                        22
                    ],
                    "text": "pak f f"
                }
            },
            {
                "box": {
                    "id": "re-selection-list-fan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        760,
                        1310,
                        52,
                        22
                    ],
                    "text": "t l l l"
                }
            },
            {
                "box": {
                    "id": "re-preview-selection",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        793.25,
                        708.4745931625366,
                        48,
                        22
                    ],
                    "text": "zl reg"
                }
            },
            {
                "box": {
                    "id": "re-export-selection",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1570.2,
                        747.4452514648438,
                        48,
                        22
                    ],
                    "text": "zl reg"
                }
            },
            {
                "box": {
                    "id": "re-selection-duration",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        696,
                        1360,
                        150,
                        22
                    ],
                    "text": "expr max(1.\\, $f2-$f1)"
                }
            },
            {
                "box": {
                    "id": "re-preview-delay",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        777,
                        672.8813719749451,
                        58,
                        22
                    ],
                    "text": "delay 1"
                }
            },
            {
                "box": {
                    "id": "re-full-selection-receive",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        500,
                        1120,
                        170,
                        22
                    ],
                    "text": "r #0_record_full_selection"
                }
            },
            {
                "box": {
                    "id": "re-full-selection-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        563,
                        1160,
                        44,
                        22
                    ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "re-full-selection-zero",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        588,
                        1252,
                        34,
                        22
                    ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "re-full-duration-fan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        250,
                        1660,
                        44,
                        22
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "re-play",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        980,
                        1170,
                        170,
                        22
                    ],
                    "text": "play~ #0_master_take 2"
                }
            },
            {
                "box": {
                    "id": "re-preview-prepend",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        980,
                        1120,
                        92,
                        22
                    ],
                    "text": "prepend start"
                }
            },
            {
                "box": {
                    "id": "re-status-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1700,
                        1194,
                        165,
                        22
                    ],
                    "text": "s #0_record_editor_status"
                }
            },
            {
                "box": {
                    "id": "re-status-receive",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1864,
                        1440,
                        165,
                        22
                    ],
                    "text": "r #0_record_editor_status"
                }
            },
            {
                "box": {
                    "id": "re-status-fan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1864,
                        1488,
                        45,
                        22
                    ],
                    "text": "t s s"
                }
            },
            {
                "box": {
                    "id": "re-status-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1890,
                        1575,
                        82,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "re-record-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 9,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        300.0000071525574,
                        616.9491672515869,
                        162,
                        22
                    ],
                    "text": "t b b b b b b b b b"
                }
            },
            {
                "box": {
                    "id": "re-record-stop-play",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        443.0000071525574,
                        959.1304033398628,
                        38,
                        22
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "re-record-stop-delay",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        425.1250071525574,
                        923.7288355827332,
                        38,
                        22
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "re-record-clear",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        407.2500071525574,
                        888.1356143951416,
                        42,
                        22
                    ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "re-record-duration-zero",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        389.3750071525574,
                        852.54239320755,
                        34,
                        22
                    ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "re-record-start-zero",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        371.5000071525574,
                        815.2542567253113,
                        34,
                        22
                    ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "re-record-end-zero",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        353.6250071525574,
                        779.6610355377197,
                        34,
                        22
                    ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "re-record-gate-one",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        335.7500071525574,
                        744.0678143501282,
                        30,
                        22
                    ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "re-record-one",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        317.8750071525574,
                        708.4745931625366,
                        30,
                        22
                    ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "re-record-status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        300.0000071525574,
                        672.8813719749451,
                        82,
                        22
                    ],
                    "text": "RECORDING"
                }
            },
            {
                "box": {
                    "id": "re-stop-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 7,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        555.1666666666666,
                        616.9491672515869,
                        122,
                        22
                    ],
                    "text": "t b b b b b b b"
                }
            },
            {
                "box": {
                    "id": "re-stop-snapshot",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        658.1666666666666,
                        888.1356143951416,
                        38,
                        22
                    ],
                    "text": "bang"
                }
            },
            {
                "box": {
                    "id": "re-stop-record",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        641,
                        852.54239320755,
                        30,
                        22
                    ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "re-stop-gate",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        623.8333333333333,
                        815.2542567253113,
                        30,
                        22
                    ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "re-stop-play",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        606.6666666666666,
                        779.6610355377197,
                        38,
                        22
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "re-stop-delay",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        589.5,
                        744.0678143501282,
                        38,
                        22
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "re-stop-full-selection",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        572.3333333333333,
                        708.4745931625366,
                        170,
                        22
                    ],
                    "text": "s #0_record_full_selection"
                }
            },
            {
                "box": {
                    "id": "re-stop-status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        555.1666666666666,
                        672.8813719749451,
                        52,
                        22
                    ],
                    "text": "READY"
                }
            },
            {
                "box": {
                    "id": "re-preview-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        777,
                        620,
                        84,
                        22
                    ],
                    "text": "t b b b b b"
                }
            },
            {
                "box": {
                    "id": "re-preview-stop-play",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        842,
                        815.2542567253113,
                        38,
                        22
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "re-preview-stop-delay",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        825.75,
                        779.6610355377197,
                        38,
                        22
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "re-preview-status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        809.5,
                        744.0678143501282,
                        88,
                        22
                    ],
                    "text": "PREVIEWING"
                }
            },
            {
                "box": {
                    "id": "re-preview-ready",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        802,
                        967,
                        52,
                        22
                    ],
                    "text": "READY"
                }
            },
            {
                "box": {
                    "id": "re-preview-done-fan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        777,
                        888.1356143951416,
                        44,
                        22
                    ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "re-reset-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        1053,
                        620,
                        44,
                        22
                    ],
                    "text": "t b b"
                }
            },
            {
                "box": {
                    "id": "re-reset-full-selection",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1006,
                        711,
                        170,
                        22
                    ],
                    "text": "s #0_record_full_selection"
                }
            },
            {
                "box": {
                    "id": "re-reset-status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1053,
                        675,
                        52,
                        22
                    ],
                    "text": "READY"
                }
            },
            {
                "box": {
                    "id": "re-new-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 9,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        1250,
                        620,
                        162,
                        22
                    ],
                    "text": "t b b b b b b b b b"
                }
            },
            {
                "box": {
                    "id": "re-new-stop-play",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1393,
                        962.4113675951958,
                        38,
                        22
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "re-new-stop-delay",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1375.125,
                        926.9503739476204,
                        38,
                        22
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "re-new-record-zero",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1357.25,
                        892.1986001729965,
                        30,
                        22
                    ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "re-new-gate-zero",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1339.375,
                        856.0283866524696,
                        30,
                        22
                    ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "re-new-clear",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1321.5,
                        815.2542567253113,
                        42,
                        22
                    ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "re-new-duration-zero",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1303.625,
                        779.6610355377197,
                        34,
                        22
                    ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "re-new-start-zero",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1285.75,
                        744.0678143501282,
                        34,
                        22
                    ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "re-new-end-zero",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1267.875,
                        711,
                        34,
                        22
                    ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "re-new-status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1250,
                        675,
                        52,
                        22
                    ],
                    "text": "EMPTY"
                }
            },
            {
                "box": {
                    "id": "re-export-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        1537,
                        620,
                        102,
                        22
                    ],
                    "text": "t b b b b b b"
                }
            },
            {
                "box": {
                    "id": "re-export-stop-play",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1620,
                        856.0283866524696,
                        38,
                        22
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "re-export-stop-delay",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1603.4,
                        818.9780977964401,
                        38,
                        22
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "re-export-duplicate",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1586.8,
                        783.2116746306419,
                        170,
                        22
                    ],
                    "text": "duplicate #0_master_take"
                }
            },
            {
                "box": {
                    "id": "re-export-crop",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1500,
                        1030,
                        80,
                        22
                    ],
                    "text": "crop $1 $2"
                }
            },
            {
                "box": {
                    "id": "re-export-status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1553.6,
                        711,
                        58,
                        22
                    ],
                    "text": "SAVING"
                }
            },
            {
                "box": {
                    "id": "re-export-write",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1537,
                        675,
                        42,
                        22
                    ],
                    "text": "write"
                }
            },
            {
                "box": {
                    "id": "re-export-format",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1500,
                        970,
                        158,
                        22
                    ],
                    "text": "loadmess samptype int24"
                }
            },
            {
                "box": {
                    "id": "re-export-filetype",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1660,
                        970,
                        145,
                        22
                    ],
                    "text": "loadmess filetype wave"
                }
            },
            {
                "box": {
                    "id": "re-export-done-status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1700,
                        1140,
                        74,
                        22
                    ],
                    "text": "EXPORTED"
                }
            },
            {
                "box": {
                    "id": "re-load-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        35,
                        560,
                        62,
                        22
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "re-init-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        35,
                        600,
                        72,
                        22
                    ],
                    "text": "t b b b b"
                }
            },
            {
                "box": {
                    "id": "re-init-display-start",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        88,
                        751.3333557248116,
                        34,
                        22
                    ],
                    "text": "0."
                }
            },
            {
                "box": {
                    "id": "re-init-display-length",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        70.33333333333334,
                        717.3333547115326,
                        68,
                        22
                    ],
                    "text": "300000."
                }
            },
            {
                "box": {
                    "id": "re-init-line-hide",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        52.666668236255646,
                        681.333353638649,
                        52,
                        22
                    ],
                    "text": "line -1"
                }
            },
            {
                "box": {
                    "id": "re-init-status",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        35,
                        645,
                        52,
                        22
                    ],
                    "text": "EMPTY"
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [
                        0.42,
                        0.68,
                        0.61,
                        1
                    ],
                    "bordercolor": [
                        0.7,
                        0.78,
                        0.74,
                        1
                    ],
                    "id": "re-brand-ring",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2600,
                        574,
                        34,
                        34
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        15,
                        34,
                        34
                    ],
                    "rounded": 17
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [
                        0.95,
                        0.72,
                        0.2,
                        1
                    ],
                    "bordercolor": [
                        0.7,
                        0.78,
                        0.74,
                        1
                    ],
                    "id": "re-brand-dot",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2600,
                        638,
                        10,
                        10
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        36,
                        27,
                        10,
                        10
                    ],
                    "rounded": 5
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [
                        0.98,
                        0.97,
                        0.92,
                        1
                    ],
                    "border": 1,
                    "bordercolor": [
                        0.95,
                        0.72,
                        0.2,
                        1
                    ],
                    "id": "re-status-pill",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2600,
                        678,
                        136,
                        34
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        800,
                        15,
                        136,
                        34
                    ],
                    "rounded": 17
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [
                        0.98,
                        0.985,
                        0.975,
                        1
                    ],
                    "border": 1,
                    "bordercolor": [
                        0.7,
                        0.78,
                        0.74,
                        1
                    ],
                    "id": "re-wave-card",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2600,
                        742,
                        912,
                        216
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        84,
                        912,
                        216
                    ],
                    "rounded": 12
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [
                        0.98,
                        0.985,
                        0.975,
                        1
                    ],
                    "border": 1,
                    "bordercolor": [
                        0.7,
                        0.78,
                        0.74,
                        1
                    ],
                    "id": "re-duration-card",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2600,
                        988,
                        236,
                        112
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        392,
                        236,
                        112
                    ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [
                        0.98,
                        0.985,
                        0.975,
                        1
                    ],
                    "border": 1,
                    "bordercolor": [
                        0.7,
                        0.78,
                        0.74,
                        1
                    ],
                    "id": "re-selection-card",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2600,
                        1130,
                        364,
                        112
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        272,
                        392,
                        364,
                        112
                    ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "background": 1,
                    "bgcolor": [
                        0.98,
                        0.985,
                        0.975,
                        1
                    ],
                    "border": 1,
                    "bordercolor": [
                        0.7,
                        0.78,
                        0.74,
                        1
                    ],
                    "id": "re-format-card",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2600,
                        1272,
                        288,
                        112
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        648,
                        392,
                        288,
                        112
                    ],
                    "rounded": 10
                }
            },
            {
                "box": {
                    "fontsize": 11,
                    "id": "re-status-dot",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        814,
                        22,
                        18,
                        19
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        814,
                        22,
                        18,
                        19
                    ],
                    "text": "●",
                    "textcolor": [
                        0.42,
                        0.68,
                        0.61,
                        1
                    ],
                    "textjustification": 1
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10,
                    "id": "re-wave-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        42,
                        66,
                        160,
                        18
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        42,
                        96,
                        160,
                        18
                    ],
                    "text": "TAKE / EDIT",
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 9,
                    "id": "re-wave-hint",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        550,
                        66,
                        368,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        550,
                        96,
                        368,
                        17
                    ],
                    "text": "DRAG TO SELECT  ·  ZERO-CROSS SNAP",
                    "textcolor": [
                        0.42,
                        0.5,
                        0.46,
                        1
                    ],
                    "textjustification": 2
                }
            },
            {
                "box": {
                    "fontsize": 9,
                    "id": "re-duration-sub",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        42,
                        434,
                        190,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        42,
                        479,
                        190,
                        17
                    ],
                    "text": "MAX 05:00  ·  LIVE BUFFER",
                    "textcolor": [
                        0.42,
                        0.5,
                        0.46,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10,
                    "id": "re-selection-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        290,
                        438,
                        200,
                        18
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        290,
                        408,
                        200,
                        18
                    ],
                    "text": "SELECTION RANGE",
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 9,
                    "id": "re-start-unit",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        430,
                        413,
                        28,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        430,
                        443,
                        28,
                        17
                    ],
                    "text": "ms",
                    "textcolor": [
                        0.42,
                        0.5,
                        0.46,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 9,
                    "id": "re-end-unit",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        594,
                        428,
                        28,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        594,
                        443,
                        28,
                        17
                    ],
                    "text": "ms",
                    "textcolor": [
                        0.42,
                        0.5,
                        0.46,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 10,
                    "id": "re-format-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        666,
                        438,
                        200,
                        18
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        666,
                        408,
                        200,
                        18
                    ],
                    "text": "EXPORT FORMAT",
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 15,
                    "id": "re-format-main",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        711,
                        389,
                        246,
                        23
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        666,
                        434,
                        246,
                        23
                    ],
                    "text": "WAV  ·  24-BIT  ·  STEREO",
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontsize": 9,
                    "id": "re-format-rate",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        666,
                        492,
                        246,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        666,
                        462,
                        246,
                        17
                    ],
                    "text": "CURRENT DSP RATE",
                    "textcolor": [
                        0.42,
                        0.5,
                        0.46,
                        1
                    ]
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 9,
                    "id": "re-format-safety",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        666,
                        527,
                        246,
                        17
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        666,
                        482,
                        246,
                        17
                    ],
                    "text": "NON-DESTRUCTIVE EXPORT",
                    "textcolor": [
                        0.42,
                        0.68,
                        0.61,
                        1
                    ]
                }
            },
            {
                "box": {
                    "id": "re-elapsed-ms-int",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        79,
                        1526,
                        142,
                        22
                    ],
                    "text": "expr int($f1 / 1000.)"
                }
            },
            {
                "box": {
                    "id": "re-elapsed-time-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        79,
                        1675,
                        42,
                        22
                    ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "re-elapsed-seconds",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        139,
                        1726,
                        42,
                        22
                    ],
                    "text": "% 60"
                }
            },
            {
                "box": {
                    "id": "re-elapsed-minutes",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        79,
                        1726,
                        42,
                        22
                    ],
                    "text": "/ 60"
                }
            },
            {
                "box": {
                    "id": "re-elapsed-time-pack",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        79,
                        1777,
                        62,
                        22
                    ],
                    "text": "pack i i"
                }
            },
            {
                "box": {
                    "id": "re-elapsed-time-format",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        79,
                        1816,
                        126,
                        22
                    ],
                    "text": "sprintf %02ld:%02ld"
                }
            },
            {
                "box": {
                    "id": "re-elapsed-time-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        78,
                        1903,
                        82,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "re-elapsed-time-fan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        78,
                        1857,
                        44,
                        22
                    ],
                    "text": "t s s"
                }
            },
            {
                "box": {
                    "id": "re-record-duration-zero-fan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        250,
                        1040,
                        44,
                        22
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "re-new-duration-zero-fan",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        1280,
                        1040,
                        44,
                        22
                    ],
                    "text": "t f f"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "re-command-send",
                        0
                    ],
                    "midpoints": [
                        175,
                        565,
                        124.5,
                        565
                    ],
                    "source": [
                        "re-command-in",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-route",
                        0
                    ],
                    "midpoints": [
                        1007.5,
                        551,
                        309.5,
                        551
                    ],
                    "source": [
                        "re-command-receive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-full-duration-fan",
                        0
                    ],
                    "midpoints": [
                        572.5,
                        1255,
                        259.5,
                        1255
                    ],
                    "source": [
                        "re-duration-store",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-time-pack",
                        0
                    ],
                    "midpoints": [
                        88.5,
                        1762.5,
                        88.5,
                        1762.5
                    ],
                    "source": [
                        "re-elapsed-minutes",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-time-trigger",
                        0
                    ],
                    "source": [
                        "re-elapsed-ms-int",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-duration-store",
                        1
                    ],
                    "midpoints": [
                        168.5,
                        1485,
                        598.5,
                        1485
                    ],
                    "source": [
                        "re-elapsed-out-fan",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-ms-int",
                        0
                    ],
                    "midpoints": [
                        151.5,
                        1486.78515625,
                        88.5,
                        1486.78515625
                    ],
                    "source": [
                        "re-elapsed-out-fan",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-out",
                        0
                    ],
                    "source": [
                        "re-elapsed-out-fan",
                        0
                    ],
                    "midpoints": [
                        131,
                        1475,
                        1330,
                        1475
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-progress-line",
                        0
                    ],
                    "source": [
                        "re-elapsed-out-fan",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-time-pack",
                        1
                    ],
                    "midpoints": [
                        148.5,
                        1762.5,
                        160,
                        1762.5,
                        135,
                        1762.5
                    ],
                    "source": [
                        "re-elapsed-seconds",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-text-out",
                        0
                    ],
                    "source": [
                        "re-elapsed-time-fan",
                        1
                    ],
                    "midpoints": [
                        116,
                        1925,
                        1530,
                        1925
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-time-set",
                        0
                    ],
                    "source": [
                        "re-elapsed-time-fan",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-time-fan",
                        0
                    ],
                    "midpoints": [
                        88.5,
                        1854.5,
                        87.5,
                        1854.5
                    ],
                    "source": [
                        "re-elapsed-time-format",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-time-format",
                        0
                    ],
                    "midpoints": [
                        88.5,
                        1807.5,
                        88.5,
                        1807.5
                    ],
                    "source": [
                        "re-elapsed-time-pack",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-display",
                        0
                    ],
                    "midpoints": [
                        87.5,
                        1958,
                        85.5,
                        1958
                    ],
                    "source": [
                        "re-elapsed-time-set",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-minutes",
                        0
                    ],
                    "source": [
                        "re-elapsed-time-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-seconds",
                        0
                    ],
                    "midpoints": [
                        115,
                        1711.5,
                        145,
                        1711.5
                    ],
                    "source": [
                        "re-elapsed-time-trigger",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-done-status",
                        0
                    ],
                    "midpoints": [
                        1710.5,
                        1120,
                        1709.5,
                        1120
                    ],
                    "source": [
                        "re-export-buffer",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-command",
                        0
                    ],
                    "midpoints": [
                        659.5,
                        355,
                        659.5,
                        355
                    ],
                    "source": [
                        "re-export-button",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-command-send",
                        0
                    ],
                    "midpoints": [
                        659.5,
                        405,
                        124.5,
                        405
                    ],
                    "source": [
                        "re-export-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-buffer",
                        0
                    ],
                    "midpoints": [
                        1509.5,
                        1065,
                        1509.5,
                        1065
                    ],
                    "source": [
                        "re-export-crop",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-status-send",
                        0
                    ],
                    "midpoints": [
                        1709.5,
                        1185,
                        1709.5,
                        1185
                    ],
                    "source": [
                        "re-export-done-status",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-buffer",
                        0
                    ],
                    "midpoints": [
                        1596.3,
                        1009.1819818764925,
                        1509.5,
                        1009.1819818764925
                    ],
                    "source": [
                        "re-export-duplicate",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-buffer",
                        0
                    ],
                    "midpoints": [
                        1669.5,
                        1010.3671875,
                        1509.5,
                        1010.3671875
                    ],
                    "source": [
                        "re-export-filetype",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-buffer",
                        0
                    ],
                    "midpoints": [
                        1509.5,
                        1015,
                        1509.5,
                        1015
                    ],
                    "source": [
                        "re-export-format",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-crop",
                        0
                    ],
                    "midpoints": [
                        1579.7,
                        1009.0567514318973,
                        1509.5,
                        1009.0567514318973
                    ],
                    "source": [
                        "re-export-selection",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-status-send",
                        0
                    ],
                    "midpoints": [
                        1563.1,
                        1008.9372654724866,
                        1709.5,
                        1008.9372654724866
                    ],
                    "source": [
                        "re-export-status",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-delay",
                        0
                    ],
                    "midpoints": [
                        1612.9,
                        1009.1808363813907,
                        786.5,
                        1009.1808363813907
                    ],
                    "source": [
                        "re-export-stop-delay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-play",
                        0
                    ],
                    "midpoints": [
                        1629.5,
                        1010.12890625,
                        989.5,
                        1010.12890625
                    ],
                    "source": [
                        "re-export-stop-play",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-duplicate",
                        0
                    ],
                    "source": [
                        "re-export-trigger",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-selection",
                        0
                    ],
                    "source": [
                        "re-export-trigger",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-status",
                        0
                    ],
                    "source": [
                        "re-export-trigger",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-stop-delay",
                        0
                    ],
                    "source": [
                        "re-export-trigger",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-stop-play",
                        0
                    ],
                    "source": [
                        "re-export-trigger",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-write",
                        0
                    ],
                    "source": [
                        "re-export-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-buffer",
                        0
                    ],
                    "midpoints": [
                        1546.5,
                        1010.5565677843988,
                        1509.5,
                        1010.5565677843988
                    ],
                    "source": [
                        "re-export-write",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-waveform",
                        1
                    ],
                    "midpoints": [
                        284.5,
                        1693.096039246302,
                        240.75,
                        1693.096039246302
                    ],
                    "source": [
                        "re-full-duration-fan",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-waveform",
                        3
                    ],
                    "midpoints": [
                        259.5,
                        1692.8502148799598,
                        619.25,
                        1692.8502148799598
                    ],
                    "source": [
                        "re-full-duration-fan",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-full-selection-trigger",
                        0
                    ],
                    "midpoints": [
                        509.5,
                        1151,
                        572.5,
                        1151
                    ],
                    "source": [
                        "re-full-selection-receive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-duration-store",
                        0
                    ],
                    "source": [
                        "re-full-selection-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-full-selection-zero",
                        0
                    ],
                    "source": [
                        "re-full-selection-trigger",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-waveform",
                        2
                    ],
                    "midpoints": [
                        597.5,
                        1300,
                        430,
                        1300
                    ],
                    "source": [
                        "re-full-selection-zero",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.84,
                        0.72,
                        0.2,
                        1
                    ],
                    "destination": [
                        "re-record",
                        0
                    ],
                    "midpoints": [
                        55,
                        1125,
                        46,
                        1125
                    ],
                    "source": [
                        "re-in-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.84,
                        0.72,
                        0.2,
                        1
                    ],
                    "destination": [
                        "re-record",
                        1
                    ],
                    "midpoints": [
                        115,
                        1125,
                        102,
                        1125
                    ],
                    "source": [
                        "re-in-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-waveform",
                        1
                    ],
                    "midpoints": [
                        79.83333333333334,
                        765,
                        240.75,
                        765
                    ],
                    "source": [
                        "re-init-display-length",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-waveform",
                        0
                    ],
                    "midpoints": [
                        97.5,
                        794.5598956712056,
                        51.5,
                        794.5598956712056
                    ],
                    "source": [
                        "re-init-display-start",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-waveform",
                        0
                    ],
                    "midpoints": [
                        62.166668236255646,
                        708.2760410192423,
                        51.5,
                        708.2760410192423
                    ],
                    "source": [
                        "re-init-line-hide",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-status-send",
                        0
                    ],
                    "midpoints": [
                        44.5,
                        708.6598581271246,
                        1709.5,
                        708.6598581271246
                    ],
                    "source": [
                        "re-init-status",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-init-display-length",
                        0
                    ],
                    "source": [
                        "re-init-trigger",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-init-display-start",
                        0
                    ],
                    "source": [
                        "re-init-trigger",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-init-line-hide",
                        0
                    ],
                    "source": [
                        "re-init-trigger",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-init-status",
                        0
                    ],
                    "source": [
                        "re-init-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-init-trigger",
                        0
                    ],
                    "source": [
                        "re-load-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-new-command",
                        0
                    ],
                    "midpoints": [
                        555.5,
                        340,
                        555.5,
                        340
                    ],
                    "source": [
                        "re-new-button",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-source-buffer",
                        0
                    ],
                    "midpoints": [
                        1331,
                        865,
                        269.5,
                        865
                    ],
                    "source": [
                        "re-new-clear",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-command-send",
                        0
                    ],
                    "midpoints": [
                        555.5,
                        404.6638567680493,
                        124.5,
                        404.6638567680493
                    ],
                    "source": [
                        "re-new-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-new-duration-zero-fan",
                        0
                    ],
                    "midpoints": [
                        1313.125,
                        830,
                        1289.5,
                        830
                    ],
                    "source": [
                        "re-new-duration-zero",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-duration-store",
                        1
                    ],
                    "midpoints": [
                        1314.5,
                        1085,
                        598.5,
                        1085
                    ],
                    "source": [
                        "re-new-duration-zero-fan",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-ms-int",
                        0
                    ],
                    "midpoints": [
                        1289.5,
                        1085,
                        88.5,
                        1085
                    ],
                    "source": [
                        "re-new-duration-zero-fan",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-waveform",
                        3
                    ],
                    "midpoints": [
                        1277.375,
                        760.23046875,
                        619.25,
                        760.23046875
                    ],
                    "source": [
                        "re-new-end-zero",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-sync-gate",
                        0
                    ],
                    "midpoints": [
                        1348.875,
                        900,
                        49.5,
                        900
                    ],
                    "source": [
                        "re-new-gate-zero",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record",
                        0
                    ],
                    "midpoints": [
                        1366.75,
                        940,
                        49.5,
                        940
                    ],
                    "source": [
                        "re-new-record-zero",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-waveform",
                        2
                    ],
                    "midpoints": [
                        1295.25,
                        795,
                        430,
                        795
                    ],
                    "source": [
                        "re-new-start-zero",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-status-send",
                        0
                    ],
                    "midpoints": [
                        1259.5,
                        1007.994020242244,
                        1709.5,
                        1007.994020242244
                    ],
                    "source": [
                        "re-new-status",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-delay",
                        0
                    ],
                    "midpoints": [
                        1384.625,
                        975,
                        786.5,
                        975
                    ],
                    "source": [
                        "re-new-stop-delay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-play",
                        0
                    ],
                    "midpoints": [
                        1402.5,
                        1010,
                        989.5,
                        1010
                    ],
                    "source": [
                        "re-new-stop-play",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-new-clear",
                        0
                    ],
                    "source": [
                        "re-new-trigger",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-new-duration-zero",
                        0
                    ],
                    "source": [
                        "re-new-trigger",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-new-end-zero",
                        0
                    ],
                    "source": [
                        "re-new-trigger",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-new-gate-zero",
                        0
                    ],
                    "source": [
                        "re-new-trigger",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-new-record-zero",
                        0
                    ],
                    "source": [
                        "re-new-trigger",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-new-start-zero",
                        0
                    ],
                    "source": [
                        "re-new-trigger",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-new-status",
                        0
                    ],
                    "source": [
                        "re-new-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-new-stop-delay",
                        0
                    ],
                    "source": [
                        "re-new-trigger",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-new-stop-play",
                        0
                    ],
                    "source": [
                        "re-new-trigger",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.84,
                        0.72,
                        0.2,
                        1
                    ],
                    "destination": [
                        "re-preview-l",
                        0
                    ],
                    "midpoints": [
                        986,
                        1210,
                        1030,
                        1210
                    ],
                    "source": [
                        "re-play",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.84,
                        0.72,
                        0.2,
                        1
                    ],
                    "destination": [
                        "re-preview-r",
                        0
                    ],
                    "midpoints": [
                        1065,
                        1210,
                        1130,
                        1210
                    ],
                    "source": [
                        "re-play",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-command",
                        0
                    ],
                    "midpoints": [
                        245.5,
                        355,
                        245.5,
                        355
                    ],
                    "source": [
                        "re-preview-button",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-command-send",
                        0
                    ],
                    "midpoints": [
                        245.5,
                        405,
                        124.5,
                        405
                    ],
                    "source": [
                        "re-preview-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-done-fan",
                        0
                    ],
                    "source": [
                        "re-preview-delay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-ready",
                        0
                    ],
                    "source": [
                        "re-preview-done-fan",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-state-off",
                        0
                    ],
                    "source": [
                        "re-preview-done-fan",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-play",
                        0
                    ],
                    "midpoints": [
                        989.5,
                        1155,
                        989.5,
                        1155
                    ],
                    "source": [
                        "re-preview-prepend",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-status-send",
                        0
                    ],
                    "midpoints": [
                        811.5,
                        1011,
                        1709.5,
                        1011
                    ],
                    "source": [
                        "re-preview-ready",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-prepend",
                        0
                    ],
                    "midpoints": [
                        802.75,
                        760,
                        989.5,
                        760
                    ],
                    "source": [
                        "re-preview-selection",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-state-route",
                        0
                    ],
                    "midpoints": [
                        2109.5,
                        1155,
                        2109.5,
                        1155
                    ],
                    "source": [
                        "re-preview-state-command-receive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-state-send",
                        0
                    ],
                    "midpoints": [
                        1236.5,
                        1537,
                        1196.5,
                        1537
                    ],
                    "source": [
                        "re-preview-state-load",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-state-send",
                        0
                    ],
                    "midpoints": [
                        786.5,
                        975.6015625,
                        1196.5,
                        975.6015625
                    ],
                    "source": [
                        "re-preview-state-off",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-state-send",
                        0
                    ],
                    "midpoints": [
                        2109.5,
                        1356.234375,
                        1196.5,
                        1356.234375
                    ],
                    "source": [
                        "re-preview-state-on",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-active-out",
                        0
                    ],
                    "midpoints": [
                        2109.5,
                        1470,
                        2189,
                        1470,
                        1430,
                        1470
                    ],
                    "source": [
                        "re-preview-state-receive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-state-off",
                        0
                    ],
                    "midpoints": [
                        2178.5,
                        1086.14453125,
                        786.5,
                        1086.14453125
                    ],
                    "source": [
                        "re-preview-state-route",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-state-on",
                        0
                    ],
                    "midpoints": [
                        2109.5,
                        1205,
                        2109.5,
                        1205
                    ],
                    "source": [
                        "re-preview-state-route",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-status-send",
                        0
                    ],
                    "midpoints": [
                        819,
                        1011.7451704982668,
                        1709.5,
                        1011.7451704982668
                    ],
                    "source": [
                        "re-preview-status",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-delay",
                        0
                    ],
                    "midpoints": [
                        835.25,
                        830,
                        786.5,
                        830
                    ],
                    "source": [
                        "re-preview-stop-delay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-play",
                        0
                    ],
                    "midpoints": [
                        851.5,
                        865,
                        989.5,
                        865
                    ],
                    "source": [
                        "re-preview-stop-play",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-delay",
                        0
                    ],
                    "source": [
                        "re-preview-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-selection",
                        0
                    ],
                    "source": [
                        "re-preview-trigger",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-status",
                        0
                    ],
                    "source": [
                        "re-preview-trigger",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-stop-delay",
                        0
                    ],
                    "source": [
                        "re-preview-trigger",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-stop-play",
                        0
                    ],
                    "source": [
                        "re-preview-trigger",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-waveform",
                        0
                    ],
                    "midpoints": [
                        185.5,
                        1645,
                        51.5,
                        1645
                    ],
                    "source": [
                        "re-progress-line",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.84,
                        0.72,
                        0.2,
                        1
                    ],
                    "destination": [
                        "re-record-sync",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        1175,
                        49.5,
                        1175
                    ],
                    "source": [
                        "re-record",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record-command",
                        0
                    ],
                    "midpoints": [
                        51.5,
                        355,
                        51.5,
                        355
                    ],
                    "source": [
                        "re-record-button",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-source-buffer",
                        0
                    ],
                    "midpoints": [
                        416.7500071525574,
                        940,
                        269.5,
                        940
                    ],
                    "source": [
                        "re-record-clear",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-command-send",
                        0
                    ],
                    "midpoints": [
                        51.5,
                        405,
                        124.5,
                        405
                    ],
                    "source": [
                        "re-record-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record-duration-zero-fan",
                        0
                    ],
                    "midpoints": [
                        398.8750071525574,
                        900,
                        259.5,
                        900
                    ],
                    "source": [
                        "re-record-duration-zero",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-duration-store",
                        1
                    ],
                    "midpoints": [
                        284.5,
                        1085,
                        598.5,
                        1085
                    ],
                    "source": [
                        "re-record-duration-zero-fan",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-ms-int",
                        0
                    ],
                    "midpoints": [
                        259.5,
                        1085,
                        88.5,
                        1085
                    ],
                    "source": [
                        "re-record-duration-zero-fan",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-waveform",
                        3
                    ],
                    "midpoints": [
                        363.1250071525574,
                        830,
                        619.25,
                        830
                    ],
                    "source": [
                        "re-record-end-zero",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-sync-gate",
                        0
                    ],
                    "midpoints": [
                        345.2500071525574,
                        795,
                        49.5,
                        795
                    ],
                    "source": [
                        "re-record-gate-one",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record",
                        0
                    ],
                    "midpoints": [
                        327.3750071525574,
                        765.4088543278631,
                        49.5,
                        765.4088543278631
                    ],
                    "source": [
                        "re-record-one",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-waveform",
                        2
                    ],
                    "midpoints": [
                        381.0000071525574,
                        865,
                        430,
                        865
                    ],
                    "source": [
                        "re-record-start-zero",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-status-send",
                        0
                    ],
                    "midpoints": [
                        309.5000071525574,
                        707.8679146780632,
                        1709.5,
                        707.8679146780632
                    ],
                    "source": [
                        "re-record-status",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-delay",
                        0
                    ],
                    "midpoints": [
                        434.6250071525574,
                        975,
                        786.5,
                        975
                    ],
                    "source": [
                        "re-record-stop-delay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-play",
                        0
                    ],
                    "midpoints": [
                        452.5000071525574,
                        1010,
                        989.5,
                        1010
                    ],
                    "source": [
                        "re-record-stop-play",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "color": [
                        0.84,
                        0.72,
                        0.2,
                        1
                    ],
                    "destination": [
                        "re-sync-snapshot",
                        0
                    ],
                    "source": [
                        "re-record-sync",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record-clear",
                        0
                    ],
                    "source": [
                        "re-record-trigger",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record-duration-zero",
                        0
                    ],
                    "source": [
                        "re-record-trigger",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record-end-zero",
                        0
                    ],
                    "source": [
                        "re-record-trigger",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record-gate-one",
                        0
                    ],
                    "source": [
                        "re-record-trigger",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record-one",
                        0
                    ],
                    "source": [
                        "re-record-trigger",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record-start-zero",
                        0
                    ],
                    "source": [
                        "re-record-trigger",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record-status",
                        0
                    ],
                    "source": [
                        "re-record-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record-stop-delay",
                        0
                    ],
                    "source": [
                        "re-record-trigger",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record-stop-play",
                        0
                    ],
                    "source": [
                        "re-record-trigger",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-reset-command",
                        0
                    ],
                    "midpoints": [
                        405.5,
                        355,
                        405.5,
                        355
                    ],
                    "source": [
                        "re-reset-button",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-command-send",
                        0
                    ],
                    "midpoints": [
                        405.5,
                        405,
                        124.5,
                        405
                    ],
                    "source": [
                        "re-reset-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-status-send",
                        0
                    ],
                    "midpoints": [
                        1062.5,
                        708.1318936087191,
                        1709.5,
                        708.1318936087191
                    ],
                    "source": [
                        "re-reset-status",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-reset-full-selection",
                        0
                    ],
                    "midpoints": [
                        1087.5,
                        676.5,
                        1015.5,
                        676.5
                    ],
                    "source": [
                        "re-reset-trigger",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-reset-status",
                        0
                    ],
                    "source": [
                        "re-reset-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-trigger",
                        0
                    ],
                    "midpoints": [
                        1585.3333333333333,
                        601,
                        1546.5,
                        601
                    ],
                    "source": [
                        "re-route",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-new-trigger",
                        0
                    ],
                    "midpoints": [
                        1330.1666666666665,
                        601,
                        1259.5,
                        601
                    ],
                    "source": [
                        "re-route",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-trigger",
                        0
                    ],
                    "midpoints": [
                        819.8333333333333,
                        601,
                        786.5,
                        601
                    ],
                    "source": [
                        "re-route",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record-trigger",
                        0
                    ],
                    "source": [
                        "re-route",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-reset-trigger",
                        0
                    ],
                    "midpoints": [
                        1075,
                        601,
                        1062.5,
                        601
                    ],
                    "source": [
                        "re-route",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-stop-trigger",
                        0
                    ],
                    "source": [
                        "re-route",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-delay",
                        1
                    ],
                    "midpoints": [
                        705.5,
                        1405,
                        825.5,
                        1405
                    ],
                    "source": [
                        "re-selection-duration",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-end-display",
                        0
                    ],
                    "midpoints": [
                        848,
                        1156,
                        919,
                        1156,
                        919,
                        1170
                    ],
                    "source": [
                        "re-selection-end-fan",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-selection-pack",
                        1
                    ],
                    "midpoints": [
                        819.5,
                        1201,
                        812.5,
                        1201
                    ],
                    "source": [
                        "re-selection-end-fan",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-export-selection",
                        1
                    ],
                    "midpoints": [
                        786,
                        1355,
                        1608.7,
                        1355
                    ],
                    "source": [
                        "re-selection-list-fan",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-selection",
                        1
                    ],
                    "midpoints": [
                        802.5,
                        1355,
                        831.75,
                        1355
                    ],
                    "source": [
                        "re-selection-list-fan",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-selection-duration",
                        0
                    ],
                    "midpoints": [
                        769.5,
                        1346,
                        705.5,
                        1346
                    ],
                    "source": [
                        "re-selection-list-fan",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-selection-list-fan",
                        0
                    ],
                    "source": [
                        "re-selection-pack",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-selection-pack",
                        0
                    ],
                    "source": [
                        "re-selection-start-fan",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-start-display",
                        0
                    ],
                    "source": [
                        "re-selection-start-fan",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-status-out",
                        0
                    ],
                    "source": [
                        "re-status-fan",
                        0
                    ],
                    "midpoints": [
                        1870,
                        1525,
                        1230,
                        1525
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-status-set",
                        0
                    ],
                    "source": [
                        "re-status-fan",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-status-fan",
                        0
                    ],
                    "midpoints": [
                        1873.5,
                        1475,
                        1873.5,
                        1475
                    ],
                    "source": [
                        "re-status-receive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-status-display",
                        0
                    ],
                    "midpoints": [
                        1899.5,
                        1606.1428562104702,
                        1899.5,
                        1606.1428562104702
                    ],
                    "source": [
                        "re-status-set",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-stop-command",
                        0
                    ],
                    "midpoints": [
                        157.5,
                        355,
                        157.5,
                        355
                    ],
                    "source": [
                        "re-stop-button",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-command-send",
                        0
                    ],
                    "midpoints": [
                        157.5,
                        405,
                        124.5,
                        405
                    ],
                    "source": [
                        "re-stop-command",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-preview-delay",
                        0
                    ],
                    "midpoints": [
                        599,
                        795,
                        786.5,
                        795
                    ],
                    "source": [
                        "re-stop-delay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-sync-gate",
                        0
                    ],
                    "midpoints": [
                        633.3333333333333,
                        865,
                        49.5,
                        865
                    ],
                    "source": [
                        "re-stop-gate",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-play",
                        0
                    ],
                    "midpoints": [
                        616.1666666666666,
                        830,
                        989.5,
                        830
                    ],
                    "source": [
                        "re-stop-play",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-record",
                        0
                    ],
                    "midpoints": [
                        650.5,
                        900,
                        49.5,
                        900
                    ],
                    "source": [
                        "re-stop-record",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-sync-snapshot",
                        0
                    ],
                    "midpoints": [
                        667.6666666666666,
                        940,
                        49.5,
                        940
                    ],
                    "source": [
                        "re-stop-snapshot",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-status-send",
                        0
                    ],
                    "midpoints": [
                        564.6666666666666,
                        708.6491646501236,
                        1709.5,
                        708.6491646501236
                    ],
                    "source": [
                        "re-stop-status",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-stop-delay",
                        0
                    ],
                    "source": [
                        "re-stop-trigger",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-stop-full-selection",
                        0
                    ],
                    "source": [
                        "re-stop-trigger",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-stop-gate",
                        0
                    ],
                    "source": [
                        "re-stop-trigger",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-stop-play",
                        0
                    ],
                    "source": [
                        "re-stop-trigger",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-stop-record",
                        0
                    ],
                    "source": [
                        "re-stop-trigger",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-stop-snapshot",
                        0
                    ],
                    "source": [
                        "re-stop-trigger",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-stop-status",
                        0
                    ],
                    "source": [
                        "re-stop-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-elapsed-out-fan",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        1425,
                        134.5,
                        1425
                    ],
                    "source": [
                        "re-sync-clip",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-sync-clip",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        1375,
                        49.5,
                        1375
                    ],
                    "source": [
                        "re-sync-gate",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-sync-gate",
                        1
                    ],
                    "midpoints": [
                        49.5,
                        1325,
                        85.5,
                        1325
                    ],
                    "source": [
                        "re-sync-nonzero",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-sync-nonzero",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        1275,
                        49.5,
                        1275
                    ],
                    "source": [
                        "re-sync-snapshot",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-selection-end-fan",
                        0
                    ],
                    "midpoints": [
                        505.7,
                        300,
                        819.5,
                        300
                    ],
                    "source": [
                        "re-waveform",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "re-selection-start-fan",
                        0
                    ],
                    "midpoints": [
                        354.3,
                        300,
                        769.5,
                        300
                    ],
                    "source": [
                        "re-waveform",
                        2
                    ]
                }
            }
        ],
        "originid": "pat-220",
        "dependency_cache": [],
        "autosave": 0,
        "bgcolor": [
            0.14,
            0.16,
            0.15,
            1
        ]
    }
}
