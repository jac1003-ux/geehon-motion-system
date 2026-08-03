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
            34,
            101,
            1332,
            941
        ],
        "gridsize": [
            15,
            15
        ],
        "description": "Granular synth module with manual controls and live input buffer.",
        "tags": "granular maxmsp dsp-only",
        "boxes": [
            {
                "box": {
                    "comment": "",
                    "id": "g-in",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        1713.6362124681473,
                        169.27271163463593,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "g-rec",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        1768.1816622018814,
                        228.78785860538483,
                        175,
                        22
                    ],
                    "text": "record~ mt_granular_buffer"
                }
            },
            {
                "box": {
                    "id": "g-buffer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "bang"
                    ],
                    "patching_rect": [
                        1532.3483486175537,
                        229.77270662784576,
                        215,
                        22
                    ],
                    "text": "buffer~ mt_granular_buffer 30000"
                }
            },
            {
                "box": {
                    "id": "g-record-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1768.1816622018814,
                        177.27271163463593,
                        140,
                        22
                    ],
                    "text": "r mt_granular_record"
                }
            },
            {
                "box": {
                    "id": "g-clear-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1384.8483626842499,
                        177.27271163463593,
                        130,
                        22
                    ],
                    "text": "r mt_granular_clear"
                }
            },
            {
                "box": {
                    "id": "g-load-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1532.3483486175537,
                        177.27271163463593,
                        170,
                        22
                    ],
                    "text": "r mt_granular_load_sample"
                }
            },
            {
                "box": {
                    "id": "g-poly",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        38.4615421295166,
                        1235.443021774292,
                        165,
                        22
                    ],
                    "text": "poly~ mt_grain_voice 16"
                }
            },
            {
                "box": {
                    "id": "g-outgain-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        442.25900518894196,
                        1167.0885922908783,
                        165,
                        22
                    ],
                    "text": "r mt_granular_output_gain"
                }
            },
            {
                "box": {
                    "id": "g-outgain-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        442.25900518894196,
                        1326.5822610855103,
                        70,
                        22
                    ],
                    "text": "clip 0. 8."
                }
            },
            {
                "box": {
                    "id": "g-outgain-sig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        442.25900518894196,
                        1359.4936530590057,
                        40,
                        22
                    ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "g-outmul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        38.4615421295166,
                        1450.632892370224,
                        35,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "g-outmul-r",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        154.91723680496216,
                        1450.632892370224,
                        35,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "g-out",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        38.4615421295166,
                        1537.9746633768082,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "g-out-r",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        154.91723680496216,
                        1537.9746633768082,
                        30,
                        30
                    ]
                }
            },
            {
                "box": {
                    "id": "g-density-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        177.27271163463593,
                        145,
                        22
                    ],
                    "text": "r mt_granular_density"
                }
            },
            {
                "box": {
                    "id": "g-density-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        284.9650295972824,
                        80,
                        22
                    ],
                    "text": "clip 1. 80."
                }
            },
            {
                "box": {
                    "id": "g-density-expr",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        40,
                        314.195801615715,
                        110,
                        22
                    ],
                    "text": "expr 1000. / $f1"
                }
            },
            {
                "box": {
                    "id": "g-play-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        38.4615421295166,
                        357.2727288007736,
                        130,
                        22
                    ],
                    "text": "r mt_granular_play"
                }
            },
            {
                "box": {
                    "id": "g-metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        38.4615421295166,
                        389.58042418956757,
                        70,
                        22
                    ],
                    "text": "metro 50"
                }
            },
            {
                "box": {
                    "id": "g-counter",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [
                        "int",
                        "",
                        "",
                        "int"
                    ],
                    "patching_rect": [
                        38.4615421295166,
                        424.96504294872284,
                        90,
                        22
                    ],
                    "text": "counter 1 16"
                }
            },
            {
                "box": {
                    "id": "g-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 7,
                    "outlettype": [
                        "int",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        38.4615421295166,
                        466.086941242218,
                        130,
                        22
                    ],
                    "text": "t i b b b b b b"
                }
            },
            {
                "box": {
                    "id": "g-total-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1124.6154918670654,
                        326.50349509716034,
                        100,
                        22
                    ],
                    "text": "loadmess 4000"
                }
            },
            {
                "box": {
                    "id": "g-total-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1170.7693424224854,
                        357.2727288007736,
                        155,
                        22
                    ],
                    "text": "r mt_granular_total_ms"
                }
            },
            {
                "box": {
                    "id": "g-total-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1124.6154918670654,
                        389.58042418956757,
                        115,
                        22
                    ],
                    "text": "clip 1. 600000."
                }
            },
            {
                "box": {
                    "id": "g-dur-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        536.9231243133545,
                        660.3496807813644,
                        165,
                        22
                    ],
                    "text": "r mt_granular_grain_size"
                }
            },
            {
                "box": {
                    "id": "g-pos-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        736.9231433868408,
                        357.2727288007736,
                        150,
                        22
                    ],
                    "text": "r mt_granular_position"
                }
            },
            {
                "box": {
                    "id": "g-pitch-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        299.6154079437256,
                        777.2727688550949,
                        135,
                        22
                    ],
                    "text": "r mt_granular_pitch"
                }
            },
            {
                "box": {
                    "id": "g-spray-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        187.3077049255371,
                        357.2727288007736,
                        135,
                        22
                    ],
                    "text": "r mt_granular_spray"
                }
            },
            {
                "box": {
                    "id": "g-amp-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        149.23077964782715,
                        932.657399058342,
                        130,
                        22
                    ],
                    "text": "r mt_granular_amp"
                }
            },
            {
                "box": {
                    "id": "g-size-pct-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        307.69233322143555,
                        660.3496807813644,
                        210,
                        22
                    ],
                    "text": "r mt_granular_grain_size_pct"
                }
            },
            {
                "box": {
                    "id": "g-size-pct-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        307.69233322143555,
                        692.6573761701584,
                        85,
                        22
                    ],
                    "text": "clip 0. 100."
                }
            },
            {
                "box": {
                    "id": "g-size-pct-map",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        307.69233322143555,
                        724.9650715589523,
                        220,
                        22
                    ],
                    "text": "expr 20. * pow(25.\\, $f1 / 100.)"
                }
            },
            {
                "box": {
                    "id": "g-spray-pct-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        335.00002670288086,
                        357.2727288007736,
                        180,
                        22
                    ],
                    "text": "r mt_granular_spray_pct"
                }
            },
            {
                "box": {
                    "id": "g-spray-pct-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        320.00002670288086,
                        389.58042418956757,
                        85,
                        22
                    ],
                    "text": "clip 0. 100."
                }
            },
            {
                "box": {
                    "id": "g-spray-pct-map",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        320.00002670288086,
                        424.96504294872284,
                        220,
                        22
                    ],
                    "text": "expr pow($f1 / 100.\\, 2.) * 1000."
                }
            },
            {
                "box": {
                    "id": "g-amp-db-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        292.3077163696289,
                        974.1958645582199,
                        165,
                        22
                    ],
                    "text": "r mt_granular_amp_db"
                }
            },
            {
                "box": {
                    "id": "g-amp-db-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        292.3077163696289,
                        1012.6574066877365,
                        90,
                        22
                    ],
                    "text": "clip -60. -3."
                }
            },
            {
                "box": {
                    "id": "g-amp-dbtoa",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        292.3077163696289,
                        1086.5035675764084,
                        55,
                        22
                    ],
                    "text": "dbtoa"
                }
            },
            {
                "box": {
                    "id": "g-gain-db-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        628.1450788974762,
                        1167.0885922908783,
                        190,
                        22
                    ],
                    "text": "r mt_granular_output_db"
                }
            },
            {
                "box": {
                    "id": "g-gain-db-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        613.1450788974762,
                        1199.9999842643738,
                        85,
                        22
                    ],
                    "text": "clip -60. 12."
                }
            },
            {
                "box": {
                    "id": "g-gain-dbtoa",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        613.1450788974762,
                        1270.8860592842102,
                        55,
                        22
                    ],
                    "text": "dbtoa"
                }
            },
            {
                "box": {
                    "id": "g-density-norm-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        203.0769386291504,
                        177.27271163463593,
                        185,
                        22
                    ],
                    "text": "r mt_granular_density_norm"
                }
            },
            {
                "box": {
                    "id": "g-density-norm-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        203.0769386291504,
                        219.96502196788788,
                        75,
                        22
                    ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "g-density-norm-map",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        203.0769386291504,
                        252.27271735668182,
                        200,
                        22
                    ],
                    "text": "expr 1. + (pow($f1\\, 2.) * 79.)"
                }
            },
            {
                "box": {
                    "id": "g-size-norm-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        82.86154212951661,
                        660.6172475814819,
                        210,
                        22
                    ],
                    "text": "r mt_granular_grain_size_norm"
                }
            },
            {
                "box": {
                    "id": "g-size-norm-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        82.86154212951661,
                        692.7911595702171,
                        75,
                        22
                    ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "g-size-norm-map",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        82.86154212951661,
                        724.9650715589523,
                        165,
                        22
                    ],
                    "text": "expr 20. * pow(25.\\, $f1)"
                }
            },
            {
                "box": {
                    "id": "g-position-norm-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        907.6923904418945,
                        357.2727288007736,
                        200,
                        22
                    ],
                    "text": "r mt_granular_position_norm"
                }
            },
            {
                "box": {
                    "id": "g-position-norm-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        907.6923904418945,
                        389.58042418956757,
                        75,
                        22
                    ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "g-position-norm-map",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        907.6923904418945,
                        426.5035046339035,
                        190,
                        22
                    ],
                    "text": "expr $f1 * max(0.\\, $f2 - 1.)"
                }
            },
            {
                "box": {
                    "id": "g-pitch-norm-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        104.61539077758789,
                        777.2727688550949,
                        175,
                        22
                    ],
                    "text": "r mt_granular_pitch_norm"
                }
            },
            {
                "box": {
                    "id": "g-pitch-norm-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        104.61539077758789,
                        814.1958492994308,
                        75,
                        22
                    ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "g-pitch-norm-map",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        104.61539077758789,
                        849.5804680585861,
                        170,
                        22
                    ],
                    "text": "expr ($f1 * 48.) - 24."
                }
            },
            {
                "box": {
                    "id": "g-spray-norm-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        547.6923561096191,
                        357.2727288007736,
                        175,
                        22
                    ],
                    "text": "r mt_granular_spray_norm"
                }
            },
            {
                "box": {
                    "id": "g-spray-norm-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        547.6923561096191,
                        389.58042418956757,
                        75,
                        22
                    ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "g-spray-norm-map",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        547.6923561096191,
                        424.96504294872284,
                        170,
                        22
                    ],
                    "text": "expr pow($f1\\, 2.) * 1000."
                }
            },
            {
                "box": {
                    "id": "g-amp-norm-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        475.38465690612793,
                        974.1958645582199,
                        165,
                        22
                    ],
                    "text": "r mt_granular_amp_norm"
                }
            },
            {
                "box": {
                    "id": "g-amp-norm-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        475.38465690612793,
                        1012.6574066877365,
                        75,
                        22
                    ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "g-amp-norm-map",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        475.38465690612793,
                        1046.5035637617111,
                        220,
                        22
                    ],
                    "text": "expr -60. + (pow($f1\\, 1.6) * 57.)"
                }
            },
            {
                "box": {
                    "id": "g-amp-norm-dbtoa",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        475.38465690612793,
                        1086.5035675764084,
                        55,
                        22
                    ],
                    "text": "dbtoa"
                }
            },
            {
                "box": {
                    "id": "g-gain-norm-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        806.815962433815,
                        1197.0885922908783,
                        215,
                        22
                    ],
                    "text": "r mt_granular_output_gain_norm"
                }
            },
            {
                "box": {
                    "id": "g-gain-norm-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        806.815962433815,
                        1229.9999842643738,
                        75,
                        22
                    ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "g-gain-norm-map",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        806.815962433815,
                        1265.443021774292,
                        220,
                        22
                    ],
                    "text": "expr -60. + (pow($f1\\, 1.4) * 72.)"
                }
            },
            {
                "box": {
                    "id": "g-gain-norm-dbtoa",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        806.815962433815,
                        1300.8860592842102,
                        55,
                        22
                    ],
                    "text": "dbtoa"
                }
            },
            {
                "box": {
                    "id": "g-rand",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        58.461544036865234,
                        524.6154346466064,
                        85,
                        22
                    ],
                    "text": "random 1000"
                }
            },
            {
                "box": {
                    "id": "g-pos-jitter",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        38.4615421295166,
                        595.0000553131104,
                        420,
                        22
                    ],
                    "text": "expr max(0.\\, min(max(0.\\, $f4 - 1.)\\, $f3 + (($f1 / 999.) - 0.5) * 2. * $f2))"
                }
            },
            {
                "box": {
                    "id": "g-pitch-rate",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        104.61539077758789,
                        881.8881634473801,
                        155,
                        22
                    ],
                    "text": "expr pow(2.\\, $f1 / 12.)"
                }
            },
            {
                "box": {
                    "id": "g-pan-rand",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        129.23078155517578,
                        554.6154346466064,
                        90,
                        22
                    ],
                    "text": "random 1001"
                }
            },
            {
                "box": {
                    "id": "g-pan-scale",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        127.26154212951661,
                        1086.5035675764084,
                        60,
                        22
                    ],
                    "text": "/ 1000."
                }
            },
            {
                "box": {
                    "id": "g-pack",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        38.4615421295166,
                        1153.846263885498,
                        130,
                        22
                    ],
                    "text": "pack i f f f f f"
                }
            },
            {
                "box": {
                    "id": "g-msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        38.4615421295166,
                        1193.670870423317,
                        245,
                        22
                    ],
                    "text": "target $1, grain $2 $3 $4 $5 $6"
                }
            },
            {
                "box": {
                    "id": "mt_granular-wet-r",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        325.8033105134964,
                        1167.0885922908783,
                        105,
                        22
                    ],
                    "text": "r mt_granular_wet"
                }
            },
            {
                "box": {
                    "id": "mt_granular-wet-clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        325.8033105134964,
                        1202.5316298007965,
                        75,
                        22
                    ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "id": "mt_granular-wet-expr",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        325.8033105134964,
                        1237.9746673107147,
                        95,
                        22
                    ],
                    "text": "expr sqrt($f1)"
                }
            },
            {
                "box": {
                    "id": "mt_granular-wet-sig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        325.8033105134964,
                        1273.417704820633,
                        45,
                        22
                    ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "mt_granular-wet-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        38.4615421295166,
                        1326.5822610855103,
                        35,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "mt_granular-wet-mul-r",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        154.91723680496216,
                        1326.5822610855103,
                        35,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "g-c-wet-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1384.8483626842499,
                        287.8787624835968,
                        90,
                        22
                    ],
                    "text": "loadmess 0.8"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-c-wet-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1384.8483626842499,
                        372.7272398471832,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "g-c-wet-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1384.8483626842499,
                        459.09086859226227,
                        150,
                        22
                    ],
                    "text": "s mt_granular_wet"
                }
            },
            {
                "box": {
                    "id": "g-c-density-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1704.5453041791916,
                        287.8787624835968,
                        90,
                        22
                    ],
                    "text": "loadmess 20"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-c-density-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1704.5453041791916,
                        372.7272398471832,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "g-c-density-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1704.5453041791916,
                        459.09086859226227,
                        150,
                        22
                    ],
                    "text": "s mt_granular_density"
                }
            },
            {
                "box": {
                    "id": "g-c-size-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2016.6664887666702,
                        287.8787624835968,
                        90,
                        22
                    ],
                    "text": "loadmess 56"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-c-size-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        2016.6664887666702,
                        372.7272398471832,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "g-c-size-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2016.6664887666702,
                        459.09086859226227,
                        166,
                        22
                    ],
                    "text": "s mt_granular_grain_size_pct"
                }
            },
            {
                "box": {
                    "id": "g-c-pos-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2345.4543385505676,
                        287.8787624835968,
                        90,
                        22
                    ],
                    "text": "loadmess 200"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-c-pos-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        2345.4543385505676,
                        372.7272398471832,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "g-c-pos-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2345.4543385505676,
                        459.09086859226227,
                        150,
                        22
                    ],
                    "text": "s mt_granular_position"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-c-pitch-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1546.9695605039597,
                        374.24239122867584,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "g-c-pitch-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1546.9695605039597,
                        459.09086859226227,
                        150,
                        22
                    ],
                    "text": "s mt_granular_pitch"
                }
            },
            {
                "box": {
                    "id": "g-c-spray-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1860.605896472931,
                        287.8787624835968,
                        90,
                        22
                    ],
                    "text": "loadmess 32"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-c-spray-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        1860.605896472931,
                        372.7272398471832,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "g-c-spray-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1860.605896472931,
                        459.09086859226227,
                        150,
                        22
                    ],
                    "text": "s mt_granular_spray_pct"
                }
            },
            {
                "box": {
                    "id": "g-c-amp-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2189.3937462568283,
                        287.8787624835968,
                        90,
                        22
                    ],
                    "text": "loadmess -32"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-c-amp-num",
                    "maxclass": "flonum",
                    "maximum": -3,
                    "minimum": -60,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        2189.3937462568283,
                        372.7272398471832,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "g-c-amp-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2189.3937462568283,
                        459.09086859226227,
                        150,
                        22
                    ],
                    "text": "s mt_granular_amp_db"
                }
            },
            {
                "box": {
                    "id": "g-c-gain-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2503.0300822257996,
                        287.8787624835968,
                        90,
                        22
                    ],
                    "text": "loadmess 0"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "g-c-gain-num",
                    "maxclass": "flonum",
                    "maximum": 12,
                    "minimum": -60,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        2503.0300822257996,
                        372.7272398471832,
                        62,
                        22
                    ]
                }
            },
            {
                "box": {
                    "id": "g-c-gain-send",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        2503.0300822257996,
                        459.09086859226227,
                        150,
                        22
                    ],
                    "text": "s mt_granular_output_db"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "g-amp-dbtoa",
                        0
                    ],
                    "source": [
                        "g-amp-db-clip",
                        0
                    ],
                    "midpoints": [
                        301.8077163696289,
                        1045,
                        337,
                        1045,
                        320,
                        1045,
                        320,
                        1086.5035675764084
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-amp-db-clip",
                        0
                    ],
                    "source": [
                        "g-amp-db-r",
                        0
                    ],
                    "midpoints": [
                        301.8077163696289,
                        1005,
                        375,
                        1005,
                        337,
                        1005,
                        337,
                        1012.6574066877365
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pack",
                        5
                    ],
                    "midpoints": [
                        301.8077163696289,
                        1130,
                        320,
                        1130,
                        753,
                        1130,
                        753,
                        1153.846263885498
                    ],
                    "source": [
                        "g-amp-dbtoa",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-amp-norm-map",
                        0
                    ],
                    "source": [
                        "g-amp-norm-clip",
                        0
                    ],
                    "midpoints": [
                        484.88465690612793,
                        1045,
                        513,
                        1045,
                        585,
                        1045,
                        585,
                        1046.5035637617111
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pack",
                        5
                    ],
                    "midpoints": [
                        484.88465690612793,
                        1130,
                        503,
                        1130,
                        753,
                        1130,
                        753,
                        1153.846263885498
                    ],
                    "source": [
                        "g-amp-norm-dbtoa",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-amp-norm-dbtoa",
                        0
                    ],
                    "source": [
                        "g-amp-norm-map",
                        0
                    ],
                    "midpoints": [
                        484.88465690612793,
                        1080,
                        585,
                        1080,
                        503,
                        1080,
                        503,
                        1086.5035675764084
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-amp-norm-clip",
                        0
                    ],
                    "source": [
                        "g-amp-norm-r",
                        0
                    ],
                    "midpoints": [
                        484.88465690612793,
                        1005,
                        558,
                        1005,
                        513,
                        1005,
                        513,
                        1012.6574066877365
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pack",
                        5
                    ],
                    "source": [
                        "g-amp-r",
                        0
                    ],
                    "midpoints": [
                        158.73077964782715,
                        1045,
                        214,
                        1045,
                        753,
                        1045,
                        753,
                        1153.846263885498
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-amp-num",
                        0
                    ],
                    "source": [
                        "g-c-amp-load",
                        0
                    ],
                    "midpoints": [
                        2198.8937462568283,
                        340,
                        2234,
                        340,
                        2220,
                        340,
                        2220,
                        372.7272398471832
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-amp-send",
                        0
                    ],
                    "source": [
                        "g-c-amp-num",
                        0
                    ],
                    "midpoints": [
                        2198.8937462568283,
                        425,
                        2220,
                        425,
                        2264,
                        425,
                        2264,
                        459.09086859226227
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-density-num",
                        0
                    ],
                    "source": [
                        "g-c-density-load",
                        0
                    ],
                    "midpoints": [
                        1714.0453041791916,
                        340,
                        1750,
                        340,
                        1736,
                        340,
                        1736,
                        372.7272398471832
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-density-send",
                        0
                    ],
                    "source": [
                        "g-c-density-num",
                        0
                    ],
                    "midpoints": [
                        1714.0453041791916,
                        425,
                        1736,
                        425,
                        1780,
                        425,
                        1780,
                        459.09086859226227
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-gain-num",
                        0
                    ],
                    "source": [
                        "g-c-gain-load",
                        0
                    ],
                    "midpoints": [
                        2512.5300822257996,
                        340,
                        2548,
                        340,
                        2534,
                        340,
                        2534,
                        372.7272398471832
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-gain-send",
                        0
                    ],
                    "source": [
                        "g-c-gain-num",
                        0
                    ],
                    "midpoints": [
                        2512.5300822257996,
                        425,
                        2534,
                        425,
                        2578,
                        425,
                        2578,
                        459.09086859226227
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-pitch-send",
                        0
                    ],
                    "source": [
                        "g-c-pitch-num",
                        0
                    ],
                    "midpoints": [
                        1556.4695605039597,
                        425,
                        1578,
                        425,
                        1622,
                        425,
                        1622,
                        459.09086859226227
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-pos-num",
                        0
                    ],
                    "source": [
                        "g-c-pos-load",
                        0
                    ],
                    "midpoints": [
                        2354.9543385505676,
                        340,
                        2390,
                        340,
                        2376,
                        340,
                        2376,
                        372.7272398471832
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-pos-send",
                        0
                    ],
                    "source": [
                        "g-c-pos-num",
                        0
                    ],
                    "midpoints": [
                        2354.9543385505676,
                        425,
                        2376,
                        425,
                        2420,
                        425,
                        2420,
                        459.09086859226227
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-size-num",
                        0
                    ],
                    "source": [
                        "g-c-size-load",
                        0
                    ],
                    "midpoints": [
                        2026.1664887666702,
                        340,
                        2062,
                        340,
                        2048,
                        340,
                        2048,
                        372.7272398471832
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-size-send",
                        0
                    ],
                    "source": [
                        "g-c-size-num",
                        0
                    ],
                    "midpoints": [
                        2026.1664887666702,
                        425,
                        2048,
                        425,
                        2100,
                        425,
                        2100,
                        459.09086859226227
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-spray-num",
                        0
                    ],
                    "source": [
                        "g-c-spray-load",
                        0
                    ],
                    "midpoints": [
                        1870.105896472931,
                        340,
                        1906,
                        340,
                        1892,
                        340,
                        1892,
                        372.7272398471832
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-spray-send",
                        0
                    ],
                    "source": [
                        "g-c-spray-num",
                        0
                    ],
                    "midpoints": [
                        1870.105896472931,
                        425,
                        1892,
                        425,
                        1936,
                        425,
                        1936,
                        459.09086859226227
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-wet-num",
                        0
                    ],
                    "source": [
                        "g-c-wet-load",
                        0
                    ],
                    "midpoints": [
                        1394.3483626842499,
                        340,
                        1430,
                        340,
                        1416,
                        340,
                        1416,
                        372.7272398471832
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-c-wet-send",
                        0
                    ],
                    "source": [
                        "g-c-wet-num",
                        0
                    ],
                    "midpoints": [
                        1394.3483626842499,
                        425,
                        1416,
                        425,
                        1460,
                        425,
                        1460,
                        459.09086859226227
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-buffer",
                        0
                    ],
                    "midpoints": [
                        1394.3483626842499,
                        215,
                        1450,
                        215,
                        1640,
                        215,
                        1640,
                        229.77270662784576
                    ],
                    "source": [
                        "g-clear-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-trigger",
                        0
                    ],
                    "source": [
                        "g-counter",
                        0
                    ],
                    "midpoints": [
                        47.9615421295166,
                        455,
                        83,
                        455,
                        103,
                        455,
                        103,
                        466.086941242218
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-density-expr",
                        0
                    ],
                    "source": [
                        "g-density-clip",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        310,
                        80,
                        310,
                        95,
                        310,
                        95,
                        314.195801615715
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-metro",
                        1
                    ],
                    "midpoints": [
                        49.5,
                        365,
                        95,
                        365,
                        143,
                        365,
                        143,
                        389.58042418956757
                    ],
                    "source": [
                        "g-density-expr",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-density-norm-map",
                        0
                    ],
                    "source": [
                        "g-density-norm-clip",
                        0
                    ],
                    "midpoints": [
                        212.5769386291504,
                        245,
                        241,
                        245,
                        303,
                        245,
                        303,
                        252.27271735668182
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-density-clip",
                        0
                    ],
                    "midpoints": [
                        212.5769386291504,
                        280,
                        303,
                        280,
                        80,
                        280,
                        80,
                        284.9650295972824
                    ],
                    "source": [
                        "g-density-norm-map",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-density-norm-clip",
                        0
                    ],
                    "source": [
                        "g-density-norm-r",
                        0
                    ],
                    "midpoints": [
                        212.5769386291504,
                        215,
                        296,
                        215,
                        241,
                        215,
                        241,
                        219.96502196788788
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-density-clip",
                        0
                    ],
                    "source": [
                        "g-density-r",
                        0
                    ],
                    "midpoints": [
                        49.5,
                        245,
                        113,
                        245,
                        80,
                        245,
                        80,
                        284.9650295972824
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pack",
                        2
                    ],
                    "midpoints": [
                        546.4231243133545,
                        920,
                        619,
                        920,
                        363,
                        920,
                        363,
                        1153.846263885498
                    ],
                    "source": [
                        "g-dur-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-gain-dbtoa",
                        0
                    ],
                    "source": [
                        "g-gain-db-clip",
                        0
                    ],
                    "midpoints": [
                        622.6450788974762,
                        1255,
                        656,
                        1255,
                        641,
                        1255,
                        641,
                        1270.8860592842102
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-gain-db-clip",
                        0
                    ],
                    "source": [
                        "g-gain-db-r",
                        0
                    ],
                    "midpoints": [
                        637.6450788974762,
                        1190,
                        723,
                        1190,
                        656,
                        1190,
                        656,
                        1199.9999842643738
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-outgain-clip",
                        0
                    ],
                    "midpoints": [
                        622.6450788974762,
                        1320,
                        641,
                        1320,
                        477,
                        1320,
                        477,
                        1326.5822610855103
                    ],
                    "source": [
                        "g-gain-dbtoa",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-gain-norm-map",
                        0
                    ],
                    "source": [
                        "g-gain-norm-clip",
                        0
                    ],
                    "midpoints": [
                        816.315962433815,
                        1255,
                        844,
                        1255,
                        917,
                        1255,
                        917,
                        1265.443021774292
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-outgain-clip",
                        0
                    ],
                    "midpoints": [
                        816.315962433815,
                        1320,
                        834,
                        1320,
                        477,
                        1320,
                        477,
                        1326.5822610855103
                    ],
                    "source": [
                        "g-gain-norm-dbtoa",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-gain-norm-dbtoa",
                        0
                    ],
                    "source": [
                        "g-gain-norm-map",
                        0
                    ],
                    "midpoints": [
                        816.315962433815,
                        1295,
                        917,
                        1295,
                        834,
                        1295,
                        834,
                        1300.8860592842102
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-gain-norm-clip",
                        0
                    ],
                    "source": [
                        "g-gain-norm-r",
                        0
                    ],
                    "midpoints": [
                        816.315962433815,
                        1225,
                        914,
                        1225,
                        844,
                        1225,
                        844,
                        1229.9999842643738
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-rec",
                        0
                    ],
                    "midpoints": [
                        1729,
                        215,
                        1856,
                        215,
                        1856,
                        228.78785860538483
                    ],
                    "source": [
                        "g-in",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-buffer",
                        0
                    ],
                    "source": [
                        "g-load-r",
                        0
                    ],
                    "midpoints": [
                        1541.8483486175537,
                        215,
                        1617,
                        215,
                        1640,
                        215,
                        1640,
                        229.77270662784576
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-counter",
                        0
                    ],
                    "source": [
                        "g-metro",
                        0
                    ],
                    "midpoints": [
                        47.9615421295166,
                        425,
                        73,
                        425,
                        83,
                        425,
                        83,
                        424.96504294872284
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-poly",
                        0
                    ],
                    "source": [
                        "g-msg",
                        0
                    ],
                    "midpoints": [
                        47.9615421295166,
                        1225,
                        161,
                        1225,
                        121,
                        1225,
                        121,
                        1235.443021774292
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-outgain-sig",
                        0
                    ],
                    "source": [
                        "g-outgain-clip",
                        0
                    ],
                    "midpoints": [
                        451.75900518894196,
                        1355,
                        477,
                        1355,
                        462,
                        1355,
                        462,
                        1359.4936530590057
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-outgain-clip",
                        0
                    ],
                    "source": [
                        "g-outgain-r",
                        0
                    ],
                    "midpoints": [
                        451.75900518894196,
                        1255,
                        525,
                        1255,
                        477,
                        1255,
                        477,
                        1326.5822610855103
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-outmul",
                        1
                    ],
                    "midpoints": [
                        451.75900518894196,
                        1405,
                        462,
                        1405,
                        91,
                        1405,
                        91,
                        1450.632892370224
                    ],
                    "order": 1,
                    "source": [
                        "g-outgain-sig",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-outmul-r",
                        1
                    ],
                    "midpoints": [
                        451.75900518894196,
                        1405,
                        462,
                        1405,
                        207,
                        1405,
                        207,
                        1450.632892370224
                    ],
                    "order": 0,
                    "source": [
                        "g-outgain-sig",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-out",
                        0
                    ],
                    "source": [
                        "g-outmul",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-out-r",
                        0
                    ],
                    "source": [
                        "g-outmul-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-msg",
                        0
                    ],
                    "source": [
                        "g-pack",
                        0
                    ],
                    "midpoints": [
                        47.9615421295166,
                        1190,
                        103,
                        1190,
                        161,
                        1190,
                        161,
                        1193.670870423317
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pan-scale",
                        0
                    ],
                    "source": [
                        "g-pan-rand",
                        0
                    ],
                    "midpoints": [
                        138.73078155517578,
                        840,
                        174,
                        840,
                        157,
                        840,
                        157,
                        1086.5035675764084
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pack",
                        4
                    ],
                    "source": [
                        "g-pan-scale",
                        0
                    ],
                    "midpoints": [
                        136.7615421295166,
                        1130,
                        157,
                        1130,
                        623,
                        1130,
                        623,
                        1153.846263885498
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pitch-norm-map",
                        0
                    ],
                    "source": [
                        "g-pitch-norm-clip",
                        0
                    ],
                    "midpoints": [
                        114.11539077758789,
                        840,
                        142,
                        840,
                        190,
                        840,
                        190,
                        849.5804680585861
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pitch-rate",
                        0
                    ],
                    "source": [
                        "g-pitch-norm-map",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pitch-norm-clip",
                        0
                    ],
                    "source": [
                        "g-pitch-norm-r",
                        0
                    ],
                    "midpoints": [
                        114.11539077758789,
                        805,
                        192,
                        805,
                        142,
                        805,
                        142,
                        814.1958492994308
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pitch-rate",
                        0
                    ],
                    "midpoints": [
                        309.1154079437256,
                        840,
                        367,
                        840,
                        182,
                        840,
                        182,
                        881.8881634473801
                    ],
                    "source": [
                        "g-pitch-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pack",
                        3
                    ],
                    "source": [
                        "g-pitch-rate",
                        0
                    ],
                    "midpoints": [
                        114.11539077758789,
                        1045,
                        182,
                        1045,
                        493,
                        1045,
                        493,
                        1153.846263885498
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-metro",
                        0
                    ],
                    "source": [
                        "g-play-r",
                        0
                    ],
                    "midpoints": [
                        47.9615421295166,
                        385,
                        103,
                        385,
                        73,
                        385,
                        73,
                        389.58042418956757
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mt_granular-wet-mul",
                        0
                    ],
                    "source": [
                        "g-poly",
                        0
                    ],
                    "midpoints": [
                        47.9615421295166,
                        1295,
                        121,
                        1295,
                        56,
                        1295,
                        56,
                        1326.5822610855103
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mt_granular-wet-mul-r",
                        0
                    ],
                    "midpoints": [
                        193.9615421295166,
                        1295,
                        286,
                        1295,
                        172,
                        1295,
                        172,
                        1326.5822610855103
                    ],
                    "source": [
                        "g-poly",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pack",
                        1
                    ],
                    "midpoints": [
                        47.9615421295166,
                        885,
                        248,
                        885,
                        233,
                        885,
                        233,
                        1153.846263885498
                    ],
                    "source": [
                        "g-pos-jitter",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pos-jitter",
                        2
                    ],
                    "midpoints": [
                        746.4231433868408,
                        485,
                        812,
                        485,
                        1088,
                        485,
                        1088,
                        595.0000553131104
                    ],
                    "source": [
                        "g-pos-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-position-norm-map",
                        0
                    ],
                    "source": [
                        "g-position-norm-clip",
                        0
                    ],
                    "midpoints": [
                        917.1923904418945,
                        425,
                        945,
                        425,
                        1003,
                        425,
                        1003,
                        426.5035046339035
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pos-jitter",
                        2
                    ],
                    "midpoints": [
                        917.1923904418945,
                        520,
                        1003,
                        520,
                        1088,
                        520,
                        1088,
                        595.0000553131104
                    ],
                    "source": [
                        "g-position-norm-map",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-position-norm-clip",
                        0
                    ],
                    "source": [
                        "g-position-norm-r",
                        0
                    ],
                    "midpoints": [
                        917.1923904418945,
                        385,
                        1008,
                        385,
                        945,
                        385,
                        945,
                        389.58042418956757
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pos-jitter",
                        0
                    ],
                    "midpoints": [
                        67.96154403686523,
                        570,
                        101,
                        570,
                        248,
                        570,
                        248,
                        595.0000553131104
                    ],
                    "source": [
                        "g-rand",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-rec",
                        0
                    ],
                    "source": [
                        "g-record-r",
                        0
                    ],
                    "midpoints": [
                        1777.6816622018814,
                        215,
                        1838,
                        215,
                        1856,
                        215,
                        1856,
                        228.78785860538483
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-size-norm-map",
                        0
                    ],
                    "source": [
                        "g-size-norm-clip",
                        0
                    ],
                    "midpoints": [
                        92.36154212951661,
                        720,
                        120,
                        720,
                        165,
                        720,
                        165,
                        724.9650715589523
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pack",
                        2
                    ],
                    "source": [
                        "g-size-norm-map",
                        0
                    ],
                    "midpoints": [
                        92.36154212951661,
                        950,
                        165,
                        950,
                        363,
                        950,
                        363,
                        1153.846263885498
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-size-norm-clip",
                        0
                    ],
                    "source": [
                        "g-size-norm-r",
                        0
                    ],
                    "midpoints": [
                        92.36154212951661,
                        690,
                        188,
                        690,
                        120,
                        690,
                        120,
                        692.7911595702171
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-size-pct-map",
                        0
                    ],
                    "source": [
                        "g-size-pct-clip",
                        0
                    ],
                    "midpoints": [
                        317.19233322143555,
                        720,
                        350,
                        720,
                        418,
                        720,
                        418,
                        724.9650715589523
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pack",
                        2
                    ],
                    "midpoints": [
                        317.19233322143555,
                        950,
                        418,
                        950,
                        363,
                        950,
                        363,
                        1153.846263885498
                    ],
                    "source": [
                        "g-size-pct-map",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-size-pct-clip",
                        0
                    ],
                    "source": [
                        "g-size-pct-r",
                        0
                    ],
                    "midpoints": [
                        317.19233322143555,
                        690,
                        413,
                        690,
                        350,
                        690,
                        350,
                        692.6573761701584
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-spray-norm-map",
                        0
                    ],
                    "source": [
                        "g-spray-norm-clip",
                        0
                    ],
                    "midpoints": [
                        557.1923561096191,
                        425,
                        585,
                        425,
                        633,
                        425,
                        633,
                        424.96504294872284
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pos-jitter",
                        1
                    ],
                    "midpoints": [
                        557.1923561096191,
                        520,
                        633,
                        520,
                        668,
                        520,
                        668,
                        595.0000553131104
                    ],
                    "source": [
                        "g-spray-norm-map",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-spray-norm-clip",
                        0
                    ],
                    "source": [
                        "g-spray-norm-r",
                        0
                    ],
                    "midpoints": [
                        557.1923561096191,
                        385,
                        635,
                        385,
                        585,
                        385,
                        585,
                        389.58042418956757
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-spray-pct-map",
                        0
                    ],
                    "source": [
                        "g-spray-pct-clip",
                        0
                    ],
                    "midpoints": [
                        329.50002670288086,
                        425,
                        363,
                        425,
                        430,
                        425,
                        430,
                        424.96504294872284
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pos-jitter",
                        1
                    ],
                    "midpoints": [
                        329.50002670288086,
                        520,
                        430,
                        520,
                        668,
                        520,
                        668,
                        595.0000553131104
                    ],
                    "source": [
                        "g-spray-pct-map",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-spray-pct-clip",
                        0
                    ],
                    "source": [
                        "g-spray-pct-r",
                        0
                    ],
                    "midpoints": [
                        344.50002670288086,
                        385,
                        425,
                        385,
                        363,
                        385,
                        363,
                        389.58042418956757
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pos-jitter",
                        1
                    ],
                    "source": [
                        "g-spray-r",
                        0
                    ],
                    "midpoints": [
                        196.8077049255371,
                        485,
                        255,
                        485,
                        668,
                        485,
                        668,
                        595.0000553131104
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pos-jitter",
                        3
                    ],
                    "midpoints": [
                        1134.1154918670654,
                        425,
                        1182,
                        425,
                        1508,
                        425,
                        1508,
                        595.0000553131104
                    ],
                    "order": 1,
                    "source": [
                        "g-total-clip",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-position-norm-map",
                        1
                    ],
                    "midpoints": [
                        1134.1154918670654,
                        425,
                        1182,
                        425,
                        1193,
                        425,
                        1193,
                        426.5035046339035
                    ],
                    "order": 0,
                    "source": [
                        "g-total-clip",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-total-clip",
                        0
                    ],
                    "source": [
                        "g-total-load",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-total-clip",
                        0
                    ],
                    "midpoints": [
                        1180.2693424224854,
                        385,
                        1248,
                        385,
                        1182,
                        385,
                        1182,
                        389.58042418956757
                    ],
                    "source": [
                        "g-total-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pack",
                        0
                    ],
                    "source": [
                        "g-trigger",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-pan-rand",
                        0
                    ],
                    "midpoints": [
                        84.9615421295166,
                        520,
                        363,
                        520,
                        174,
                        520,
                        174,
                        554.6154346466064
                    ],
                    "source": [
                        "g-trigger",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-rand",
                        0
                    ],
                    "midpoints": [
                        66.4615421295166,
                        505,
                        233,
                        505,
                        101,
                        505,
                        101,
                        524.6154346466064
                    ],
                    "source": [
                        "g-trigger",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mt_granular-wet-expr",
                        0
                    ],
                    "source": [
                        "mt_granular-wet-clip",
                        0
                    ],
                    "midpoints": [
                        335.3033105134964,
                        1225,
                        363,
                        1225,
                        373,
                        1225,
                        373,
                        1237.9746673107147
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mt_granular-wet-sig",
                        0
                    ],
                    "source": [
                        "mt_granular-wet-expr",
                        0
                    ],
                    "midpoints": [
                        335.3033105134964,
                        1255,
                        373,
                        1255,
                        348,
                        1255,
                        348,
                        1273.417704820633
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-outmul",
                        0
                    ],
                    "source": [
                        "mt_granular-wet-mul",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "g-outmul-r",
                        0
                    ],
                    "source": [
                        "mt_granular-wet-mul-r",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mt_granular-wet-clip",
                        0
                    ],
                    "source": [
                        "mt_granular-wet-r",
                        0
                    ],
                    "midpoints": [
                        335.3033105134964,
                        1190,
                        378,
                        1190,
                        363,
                        1190,
                        363,
                        1202.5316298007965
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mt_granular-wet-mul",
                        1
                    ],
                    "midpoints": [
                        335.3033105134964,
                        1320,
                        348,
                        1320,
                        91,
                        1320,
                        91,
                        1326.5822610855103
                    ],
                    "order": 1,
                    "source": [
                        "mt_granular-wet-sig",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "mt_granular-wet-mul-r",
                        1
                    ],
                    "midpoints": [
                        335.3033105134964,
                        1320,
                        348,
                        1320,
                        207,
                        1320,
                        207,
                        1326.5822610855103
                    ],
                    "order": 0,
                    "source": [
                        "mt_granular-wet-sig",
                        0
                    ]
                }
            }
        ],
        "originid": "pat-52"
    }
}
