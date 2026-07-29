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
      1732,
      941
    ],
    "bglocked": 1,
    "openinpresentation": 1,
    "gridsize": [
      15,
      15
    ],
    "boxes": [
      {
        "box": {
          "autofit": 1,
          "background": 1,
          "forceaspect": 1,
          "id": "pm-perform-bg",
          "ignoreclick": 1,
          "maxclass": "fpic",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "jit_matrix"
          ],
          "patching_rect": [
            1980,
            20,
            346,
            169
          ],
          "pic": "perform_shell_v2.png",
          "presentation": 1,
          "presentation_rect": [
            0,
            96,
            1732,
            845
          ],
          "varname": "ui_perform_shell"
        }
      },
      {
        "box": {
          "autofit": 1,
          "background": 1,
          "forceaspect": 1,
          "id": "pm-shell-bg",
          "ignoreclick": 1,
          "maxclass": "fpic",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "jit_matrix"
          ],
          "patching_rect": [
            1600,
            20,
            346,
            188
          ],
          "pic": "main_shell_v1.png",
          "presentation": 1,
          "presentation_rect": [
            0,
            0,
            1732,
            941
          ],
          "varname": "ui_main_shell"
        }
      },
      {
        "box": {
          "id": "pm-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            20,
            620,
            20
          ],
          "presentation": 0,
          "presentation_rect": [
            24,
            18,
            520,
            20
          ],
          "text": "MT Portfolio Main - original + parallel FX layers"
        }
      },
      {
        "box": {
          "id": "pm-note",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            48,
            1240,
            20
          ],
          "presentation": 0,
          "presentation_rect": [
            24,
            47,
            760,
            20
          ],
          "text": "Mic / File / Granular feed the Input Mixer. The FX Mixer below blends Original with independent Vocoder, Chop, and Tremolo layers."
        }
      },
      {
        "box": {
          "id": "pm-page-load",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1900,
            20,
            78,
            22
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "bgcolor": [
            0.862745,
            0.909804,
            0.87451,
            1
          ],
          "fontsize": 14,
          "htabcolor": [
            0.941176,
            0.788235,
            0.301961,
            1
          ],
          "id": "pm-page-tab",
          "maxclass": "tab",
          "multiline": 0,
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            1900,
            58,
            850,
            40
          ],
          "presentation": 1,
          "presentation_rect": [
            840,
            27,
            850,
            42
          ],
          "tabcolor": [
            0.862745,
            0.909804,
            0.87451,
            1
          ],
          "tabs": [
            "PERFORM",
            "SOURCE",
            "FX",
            "GESTURE",
            "MASTER"
          ],
          "textcolor": [
            0.192157,
            0.278431,
            0.239216,
            1
          ]
        }
      },
      {
        "box": {
          "id": "pm-page-router",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
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
              120,
              120,
              840,
              470
            ],
            "gridsize": [
              15,
              15
            ],
            "boxes": [
              {
                "box": {
                  "comment": "",
                  "id": "page-in",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    "int"
                  ],
                  "patching_rect": [
                    24,
                    24,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "page-clip",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    72,
                    62,
                    22
                  ],
                  "text": "clip 0 4"
                }
              },
              {
                "box": {
                  "id": "page-select",
                  "maxclass": "newobj",
                  "numinlets": 6,
                  "numoutlets": 6,
                  "outlettype": [
                    "bang",
                    "bang",
                    "bang",
                    "bang",
                    "bang",
                    ""
                  ],
                  "patching_rect": [
                    24,
                    112,
                    104,
                    22
                  ],
                  "text": "sel 0 1 2 3 4"
                }
              },
              {
                "box": {
                  "id": "page-msg-0",
                  "linecount": 11,
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    160,
                    760,
                    42
                  ],
                  "text": "script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband, script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_util_rec_title, script hide ui_util_rec_open_label, script hide ui_util_rec_start_label, script hide ui_util_rec_stop_label, script hide ui_util_rec_open, script hide ui_util_rec_start, script hide ui_util_rec_stop, script sendbox ui_gesture_hand presentation_rect 402 222 798 420, script sendbox ui_output_meter_l presentation_rect 1284 842 164 12, script sendbox ui_output_meter_r presentation_rect 1284 866 164 12, script sendbox ui_output_dac presentation_rect 1584 826 42 42, script sendbox ui_output_label presentation_rect 1464 884 114 18, script sendbox ui_util_eq_open presentation_rect 620 838 82 24, script sendbox ui_util_rec_open presentation_rect 918 838 82 24, script sendbox ui_util_rec_start presentation_rect 1010 838 44 24, script sendbox ui_util_rec_stop presentation_rect 1064 838 44 24, script show ui_perform_shell, script show ui_perform_mic, script show ui_perform_file, script show ui_perform_grain, script show ui_perform_vocoder, script show ui_perform_bitcrusher, script show ui_perform_feedback_delay, script show ui_perform_multiband, script show ui_gesture_hand, script show ui_util_eq_open, script show ui_util_rec_open, script show ui_util_rec_start, script show ui_util_rec_stop"
                }
              },
              {
                "box": {
                  "id": "page-msg-1",
                  "linecount": 8,
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    212,
                    760,
                    42
                  ],
                  "text": "script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband, script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_util_rec_title, script hide ui_util_rec_open_label, script hide ui_util_rec_start_label, script hide ui_util_rec_stop_label, script hide ui_util_rec_open, script hide ui_util_rec_start, script hide ui_util_rec_stop, script sendbox ui_source_mixer presentation_rect 24 520 760 320, script sendbox ui_output_meter_l presentation_rect 1390 902 120 12, script sendbox ui_output_meter_r presentation_rect 1390 928 120 12, script sendbox ui_output_dac presentation_rect 1530 895 45 45, script sendbox ui_output_label presentation_rect 1590 907 100 20, script show ui_source_mic, script show ui_source_file, script show ui_source_grain, script show ui_source_mixer"
                }
              },
              {
                "box": {
                  "id": "page-msg-2",
                  "linecount": 8,
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    264,
                    760,
                    42
                  ],
                  "text": "script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband, script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_util_rec_title, script hide ui_util_rec_open_label, script hide ui_util_rec_start_label, script hide ui_util_rec_stop_label, script hide ui_util_rec_open, script hide ui_util_rec_start, script hide ui_util_rec_stop, script show ui_fx_vocoder, script show ui_fx_bitcrusher, script show ui_fx_feedback_delay, script show ui_fx_multiband"
                }
              },
              {
                "box": {
                  "id": "page-msg-3",
                  "linecount": 9,
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    316,
                    760,
                    42
                  ],
                  "text": "script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband, script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_util_rec_title, script hide ui_util_rec_open_label, script hide ui_util_rec_start_label, script hide ui_util_rec_stop_label, script hide ui_util_rec_open, script hide ui_util_rec_start, script hide ui_util_rec_stop, script sendbox ui_gesture_hand presentation_rect 24 160 798 420, script sendbox ui_output_meter_l presentation_rect 1390 902 120 12, script sendbox ui_output_meter_r presentation_rect 1390 928 120 12, script sendbox ui_output_dac presentation_rect 1530 895 45 45, script sendbox ui_output_label presentation_rect 1590 907 100 20, script show ui_gesture_hand, script show ui_gesture_map_title, script show ui_gesture_slot1, script show ui_gesture_slot1_label, script show ui_gesture_slot2, script show ui_gesture_slot2_label, script show ui_gesture_slot3, script show ui_gesture_slot3_label, script show ui_gesture_slot4, script show ui_gesture_slot4_label, script show ui_gesture_target_label, script show ui_gesture_target, script show ui_gesture_status, script show ui_gesture_zone_note"
                }
              },
              {
                "box": {
                  "id": "page-msg-4",
                  "linecount": 10,
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    368,
                    760,
                    42
                  ],
                  "text": "script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband, script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_util_rec_title, script hide ui_util_rec_open_label, script hide ui_util_rec_start_label, script hide ui_util_rec_stop_label, script hide ui_util_rec_open, script hide ui_util_rec_start, script hide ui_util_rec_stop, script sendbox ui_master_returns presentation_rect 24 160 905 300, script sendbox ui_output_meter_l presentation_rect 1238 716 142 12, script sendbox ui_output_meter_r presentation_rect 1238 740 142 12, script sendbox ui_output_dac presentation_rect 1388 707 36 36, script sendbox ui_output_label presentation_rect 1238 760 130 18, script show ui_master_returns, script show ui_util_eq_title, script show ui_util_eq_open, script show ui_util_rec_title, script show ui_util_rec_open_label, script show ui_util_rec_start_label, script show ui_util_rec_stop_label, script show ui_util_rec_open, script show ui_util_rec_start, script show ui_util_rec_stop"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "page-out",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24,
                    430,
                    30,
                    30
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "page-select",
                    0
                  ],
                  "source": [
                    "page-clip",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "page-clip",
                    0
                  ],
                  "source": [
                    "page-in",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "page-out",
                    0
                  ],
                  "source": [
                    "page-msg-0",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "page-out",
                    0
                  ],
                  "source": [
                    "page-msg-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "page-out",
                    0
                  ],
                  "source": [
                    "page-msg-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "page-out",
                    0
                  ],
                  "source": [
                    "page-msg-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "page-out",
                    0
                  ],
                  "source": [
                    "page-msg-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "page-msg-0",
                    0
                  ],
                  "source": [
                    "page-select",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "page-msg-1",
                    0
                  ],
                  "source": [
                    "page-select",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "page-msg-2",
                    0
                  ],
                  "source": [
                    "page-select",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "page-msg-3",
                    0
                  ],
                  "source": [
                    "page-select",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "page-msg-4",
                    0
                  ],
                  "source": [
                    "page-select",
                    4
                  ]
                }
              }
            ],
            "originid": "pat-6"
          },
          "patching_rect": [
            1900,
            115,
            132,
            22
          ],
          "text": "p Main_page_router"
        }
      },
      {
        "box": {
          "id": "pm-thispatcher",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            1900,
            155,
            78,
            22
          ],
          "save": [
            "#N",
            "thispatcher",
            ";",
            "#Q",
            "end",
            ";"
          ],
          "text": "thispatcher"
        }
      },
      {
        "box": {
          "id": "pm-dsp-on",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            24,
            102,
            90,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            900,
            90,
            22
          ],
          "text": "startwindow"
        }
      },
      {
        "box": {
          "id": "pm-dsp-off",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            124,
            102,
            55,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            124,
            900,
            55,
            22
          ],
          "text": "stop"
        }
      },
      {
        "box": {
          "id": "pm-dsp-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            190,
            104,
            55,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            190,
            902,
            55,
            20
          ],
          "text": "DSP"
        }
      },
      {
        "box": {
          "id": "p-Source-state-router",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
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
              650,
              230
            ],
            "gridsize": [
              15,
              15
            ],
            "boxes": [
              {
                "box": {
                  "id": "pms-title",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24,
                    20,
                    560,
                    22
                  ],
                  "text": "SOURCE STATE ROUTER: shared module state -> Input Mixer enable inputs"
                }
              },
              {
                "box": {
                  "id": "pms-mic-recv",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    70,
                    155,
                    22
                  ],
                  "text": "r mt_mic_enable_state"
                }
              },
              {
                "box": {
                  "id": "pms-file-recv",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    210,
                    70,
                    155,
                    22
                  ],
                  "text": "r mt_file_enable_state"
                }
              },
              {
                "box": {
                  "id": "pms-grain-recv",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    396,
                    70,
                    190,
                    22
                  ],
                  "text": "r mt_granular_enable_state"
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "pms-mic-out",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    80,
                    140,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "pms-file-out",
                  "index": 2,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    266,
                    140,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "comment": "",
                  "id": "pms-grain-out",
                  "index": 3,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    452,
                    140,
                    30,
                    30
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "destination": [
                    "pms-file-out",
                    0
                  ],
                  "source": [
                    "pms-file-recv",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "pms-grain-out",
                    0
                  ],
                  "source": [
                    "pms-grain-recv",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "destination": [
                    "pms-mic-out",
                    0
                  ],
                  "source": [
                    "pms-mic-recv",
                    0
                  ]
                }
              }
            ],
            "originid": "pat-8"
          },
          "patching_rect": [
            24,
            155,
            180,
            22
          ],
          "text": "p Source_state_router"
        }
      },
      {
        "box": {
          "id": "p-FX-state-router",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 9,
          "outlettype": [
            "int",
            "int",
            "int",
            "int",
            "int",
            "int",
            "int",
            "int",
            ""
          ],
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
              134,
              173,
              980,
              290
            ],
            "gridsize": [
              15,
              15
            ],
            "boxes": [
              {
                "box": {
                  "id": "pmf-title",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24,
                    20,
                    720,
                    20
                  ],
                  "text": "FX STATE ROUTER: shared enable -> processor and return gate"
                }
              },
              {
                "box": {
                  "id": "pmf-voc-recv",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    70,
                    180,
                    22
                  ],
                  "text": "r mt_vocoder_enable_state"
                }
              },
              {
                "box": {
                  "id": "pmf-voc-sync",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    24,
                    110,
                    45,
                    22
                  ],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "pmf-voc-module",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "index": 1,
                  "comment": "",
                  "patching_rect": [
                    24,
                    720,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "pmf-voc-return",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "index": 2,
                  "comment": "",
                  "patching_rect": [
                    54,
                    720,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "pmf-bit-recv",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    214,
                    70,
                    180,
                    22
                  ],
                  "text": "r mt_bitcrusher_enable_state"
                }
              },
              {
                "box": {
                  "id": "pmf-bit-sync",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    214,
                    110,
                    45,
                    22
                  ],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "pmf-bit-module",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "index": 3,
                  "comment": "",
                  "patching_rect": [
                    214,
                    720,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "pmf-bit-return",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "index": 4,
                  "comment": "",
                  "patching_rect": [
                    244,
                    720,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "pmf-delay-recv",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    404,
                    70,
                    180,
                    22
                  ],
                  "text": "r mt_feedback_delay_enable_state"
                }
              },
              {
                "box": {
                  "id": "pmf-delay-sync",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    404,
                    110,
                    45,
                    22
                  ],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "pmf-delay-module",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "index": 5,
                  "comment": "",
                  "patching_rect": [
                    404,
                    720,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "pmf-delay-return",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "index": 6,
                  "comment": "",
                  "patching_rect": [
                    434,
                    720,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "pmf-multi-recv",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    594,
                    70,
                    180,
                    22
                  ],
                  "text": "r mt_multiband_filter_enable_state"
                }
              },
              {
                "box": {
                  "id": "pmf-multi-sync",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "patching_rect": [
                    594,
                    110,
                    45,
                    22
                  ],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "pmf-multi-module",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "index": 7,
                  "comment": "",
                  "patching_rect": [
                    594,
                    720,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "pmf-multi-return",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "index": 8,
                  "comment": "",
                  "patching_rect": [
                    624,
                    720,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "pmf-voc-wet",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    800,
                    70,
                    95,
                    22
                  ],
                  "text": "loadmess 1."
                }
              },
              {
                "box": {
                  "id": "pmf-voc-wet-out",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "index": 9,
                  "comment": "",
                  "patching_rect": [
                    800,
                    720,
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
                    "pmf-voc-recv",
                    0
                  ],
                  "destination": [
                    "pmf-voc-sync",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pmf-voc-sync",
                    0
                  ],
                  "destination": [
                    "pmf-voc-module",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pmf-voc-sync",
                    1
                  ],
                  "destination": [
                    "pmf-voc-return",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pmf-bit-recv",
                    0
                  ],
                  "destination": [
                    "pmf-bit-sync",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pmf-bit-sync",
                    0
                  ],
                  "destination": [
                    "pmf-bit-module",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pmf-bit-sync",
                    1
                  ],
                  "destination": [
                    "pmf-bit-return",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pmf-delay-recv",
                    0
                  ],
                  "destination": [
                    "pmf-delay-sync",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pmf-delay-sync",
                    0
                  ],
                  "destination": [
                    "pmf-delay-module",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pmf-delay-sync",
                    1
                  ],
                  "destination": [
                    "pmf-delay-return",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pmf-multi-recv",
                    0
                  ],
                  "destination": [
                    "pmf-multi-sync",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pmf-multi-sync",
                    0
                  ],
                  "destination": [
                    "pmf-multi-module",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pmf-multi-sync",
                    1
                  ],
                  "destination": [
                    "pmf-multi-return",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pmf-voc-wet",
                    0
                  ],
                  "destination": [
                    "pmf-voc-wet-out",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            948.8,
            906,
            180,
            22
          ],
          "text": "p FX_state_router"
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "pm-mic",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "mt_input_mic_ui.maxpat",
          "numinlets": 1,
          "numoutlets": 2,
          "offset": [
            0,
            0
          ],
          "outlettype": [
            "signal",
            "signal"
          ],
          "patching_rect": [
            24,
            200,
            420,
            280
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            160,
            420,
            280
          ],
          "varname": "ui_source_mic",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "pm-file",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "mt_input_file_ui.maxpat",
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
          "patching_rect": [
            470,
            200,
            520,
            340
          ],
          "presentation": 1,
          "presentation_rect": [
            468,
            160,
            520,
            340
          ],
          "varname": "ui_source_file",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "pm-grain",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "mt_input_granular_ui.maxpat",
          "numinlets": 1,
          "numoutlets": 2,
          "offset": [
            0,
            0
          ],
          "outlettype": [
            "signal",
            "signal"
          ],
          "patching_rect": [
            1015,
            200,
            720,
            440
          ],
          "presentation": 1,
          "presentation_rect": [
            1012,
            160,
            720,
            440
          ],
          "varname": "ui_source_grain",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "id": "pm-mixer",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "mt_input_mixer_ui.maxpat",
          "numinlets": 9,
          "numoutlets": 2,
          "offset": [
            0,
            0
          ],
          "outlettype": [
            "signal",
            "signal"
          ],
          "patching_rect": [
            24.137932300567627,
            693.1034846305847,
            760,
            320
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            520,
            760,
            320
          ],
          "varname": "ui_source_mixer",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "hidden": 1,
          "id": "pm-vocoder",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
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
          "patching_rect": [
            154,
            1046,
            760,
            225
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            160,
            760,
            225
          ],
          "varname": "ui_fx_vocoder",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "hidden": 1,
          "id": "pm-fx-return",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "mt_fx_return_mixer.maxpat",
          "numinlets": 15,
          "numoutlets": 6,
          "offset": [
            0,
            0
          ],
          "outlettype": [
            "signal",
            "signal",
            "int",
            "int",
            "int",
            "int"
          ],
          "patching_rect": [
            24,
            2380,
            905,
            300
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            160,
            905,
            300
          ],
          "varname": "ui_master_returns",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "hidden": 1,
          "id": "pm-hand",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
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
          "patching_rect": [
            1862,
            200,
            620,
            450
          ],
          "presentation": 1,
          "presentation_rect": [
            402,
            222,
            798,
            420
          ],
          "varname": "ui_gesture_hand",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "pm-hand-map-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1862,
            814,
            250,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            860,
            224,
            520,
            22
          ],
          "text": "Bitcrusher dual-hand mapping",
          "varname": "ui_gesture_map_title"
        }
      },
      {
        "box": {
          "format": 6,
          "hidden": 1,
          "id": "pm-slot1-monitor",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            1862,
            678,
            70,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            860,
            270,
            88,
            22
          ],
          "varname": "ui_gesture_slot1"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "pm-slot1-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            1942,
            680,
            160,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            962,
            272,
            360,
            20
          ],
          "text": "Bit Depth (2-24 bit)",
          "varname": "ui_gesture_slot1_label"
        }
      },
      {
        "box": {
          "format": 6,
          "hidden": 1,
          "id": "pm-slot2-monitor",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            2062,
            728,
            70,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            860,
            315,
            88,
            22
          ],
          "varname": "ui_gesture_slot2"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "pm-slot2-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            2142,
            730,
            170,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            962,
            317,
            360,
            20
          ],
          "text": "Sample Rate (500-48000 Hz)",
          "varname": "ui_gesture_slot2_label"
        }
      },
      {
        "box": {
          "format": 6,
          "hidden": 1,
          "id": "pm-slot3-monitor",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            2262,
            768,
            70,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            860,
            360,
            88,
            22
          ],
          "varname": "ui_gesture_slot3"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "pm-slot3-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            2342,
            770,
            170,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            962,
            362,
            360,
            20
          ],
          "text": "Pinch Drive (0-1)",
          "varname": "ui_gesture_slot3_label"
        }
      },
      {
        "box": {
          "format": 6,
          "hidden": 1,
          "id": "pm-slot4-monitor",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            2464,
            812,
            70,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            860,
            405,
            88,
            22
          ],
          "varname": "ui_gesture_slot4"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "pm-slot4-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            2544,
            814,
            120,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            962,
            407,
            410,
            20
          ],
          "text": "PHYSICAL LEFT: 0 HOLD / 1 CONTROL",
          "varname": "ui_gesture_slot4_label"
        }
      },
      {
        "box": {
          "id": "pm-meter-l",
          "maxclass": "meter~",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            24,
            2226,
            120,
            12
          ],
          "presentation": 1,
          "presentation_rect": [
            1284,
            842,
            164,
            12
          ],
          "varname": "ui_output_meter_l"
        }
      },
      {
        "box": {
          "id": "pm-meter-r",
          "maxclass": "meter~",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            24,
            2258,
            120,
            12
          ],
          "presentation": 1,
          "presentation_rect": [
            1284,
            866,
            164,
            12
          ],
          "varname": "ui_output_meter_r"
        }
      },
      {
        "box": {
          "id": "pm-dac",
          "maxclass": "ezdac~",
          "numinlets": 2,
          "numoutlets": 0,
          "patching_rect": [
            24,
            2279.5,
            45,
            45
          ],
          "presentation": 1,
          "presentation_rect": [
            1584,
            826,
            42,
            42
          ],
          "varname": "ui_output_dac"
        }
      },
      {
        "box": {
          "id": "pm-output-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            83.22148013114929,
            2292,
            100,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            1464,
            884,
            114,
            18
          ],
          "text": "Main out",
          "varname": "ui_output_label"
        }
      },
      {
        "box": {
          "id": "pm-rec-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            220,
            2210,
            180,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            1034,
            700,
            160,
            18
          ],
          "text": "MASTER RECORD",
          "varname": "ui_util_rec_title"
        }
      },
      {
        "box": {
          "id": "pm-rec-open-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            220,
            2235,
            72,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            1034,
            722,
            72,
            18
          ],
          "text": "Choose File",
          "varname": "ui_util_rec_open_label"
        }
      },
      {
        "box": {
          "id": "pm-rec-start-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            304,
            2235,
            52,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            1114,
            722,
            52,
            18
          ],
          "text": "Record",
          "varname": "ui_util_rec_start_label"
        }
      },
      {
        "box": {
          "id": "pm-rec-stop-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            368,
            2235,
            42,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            1174,
            722,
            42,
            18
          ],
          "text": "Stop",
          "varname": "ui_util_rec_stop_label"
        }
      },
      {
        "box": {
          "id": "pm-rec-open",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            220,
            2258,
            72,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            918,
            838,
            82,
            24
          ],
          "text": "open wave",
          "varname": "ui_util_rec_open"
        }
      },
      {
        "box": {
          "id": "pm-rec-start",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            304,
            2258,
            32,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            1010,
            838,
            44,
            24
          ],
          "text": "1",
          "varname": "ui_util_rec_start"
        }
      },
      {
        "box": {
          "id": "pm-rec-stop",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            368,
            2258,
            32,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            1064,
            838,
            44,
            24
          ],
          "text": "0",
          "varname": "ui_util_rec_stop"
        }
      },
      {
        "box": {
          "id": "pm-recorder",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            220,
            2294,
            92,
            22
          ],
          "text": "sfrecord~ 2"
        }
      },
      {
        "box": {
          "id": "pm-perform-chop",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "mode": 1,
          "text": "OFF",
          "texton": "ON",
          "rounded": 14,
          "bgcolor": [
            0.88,
            0.92,
            0.89,
            1
          ],
          "bgoncolor": [
            0.3,
            0.56,
            0.45,
            1
          ],
          "textcolor": [
            0.35,
            0.46,
            0.41,
            1
          ],
          "textoncolor": [
            0.97,
            0.99,
            0.97,
            1
          ],
          "patching_rect": [
            2148,
            980,
            48,
            28
          ],
          "presentation": 1,
          "presentation_rect": [
            1620,
            380,
            48,
            28
          ],
          "varname": "ui_perform_chop"
        }
      },
      {
        "box": {
          "id": "pm-perform-tremolo",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "mode": 1,
          "text": "OFF",
          "texton": "ON",
          "rounded": 14,
          "bgcolor": [
            0.88,
            0.92,
            0.89,
            1
          ],
          "bgoncolor": [
            0.3,
            0.56,
            0.45,
            1
          ],
          "textcolor": [
            0.35,
            0.46,
            0.41,
            1
          ],
          "textoncolor": [
            0.97,
            0.99,
            0.97,
            1
          ],
          "patching_rect": [
            2220,
            980,
            48,
            28
          ],
          "presentation": 1,
          "presentation_rect": [
            1620,
            504,
            48,
            28
          ],
          "varname": "ui_perform_tremolo"
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "hidden": 1,
          "id": "pm-bitcrusher",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "mt_mod_bitcrusher.maxpat",
          "numinlets": 6,
          "numoutlets": 2,
          "offset": [
            0,
            0
          ],
          "outlettype": [
            "signal",
            "signal"
          ],
          "patching_rect": [
            154,
            1326,
            760,
            268
          ],
          "presentation": 1,
          "presentation_rect": [
            808,
            160,
            760,
            268
          ],
          "varname": "ui_fx_bitcrusher",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "hidden": 1,
          "id": "pm-feedback-delay",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "mt_mod_feedback_delay.maxpat",
          "numinlets": 7,
          "numoutlets": 2,
          "offset": [
            0,
            0
          ],
          "outlettype": [
            "signal",
            "signal"
          ],
          "patching_rect": [
            154,
            1626,
            850,
            268
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            450,
            850,
            268
          ],
          "varname": "ui_fx_feedback_delay",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "bgmode": 0,
          "border": 0,
          "clickthrough": 0,
          "enablehscroll": 0,
          "enablevscroll": 0,
          "hidden": 1,
          "id": "pm-multiband",
          "lockeddragscroll": 0,
          "lockedsize": 0,
          "maxclass": "bpatcher",
          "name": "mt_mod_multiband_filter_v2.maxpat",
          "numinlets": 6,
          "numoutlets": 2,
          "offset": [
            0,
            0
          ],
          "outlettype": [
            "signal",
            "signal"
          ],
          "patching_rect": [
            154,
            1926,
            1100,
            400
          ],
          "presentation": 1,
          "presentation_rect": [
            24,
            750,
            1100,
            400
          ],
          "varname": "ui_fx_multiband",
          "viewvisibility": 1
        }
      },
      {
        "box": {
          "id": "pm-perform-mic",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "mode": 1,
          "text": "OFF",
          "texton": "ON",
          "rounded": 14,
          "bgcolor": [
            0.88,
            0.92,
            0.89,
            1
          ],
          "bgoncolor": [
            0.3,
            0.56,
            0.45,
            1
          ],
          "textcolor": [
            0.35,
            0.46,
            0.41,
            1
          ],
          "textoncolor": [
            0.97,
            0.99,
            0.97,
            1
          ],
          "patching_rect": [
            1860,
            980,
            48,
            28
          ],
          "presentation": 1,
          "presentation_rect": [
            282,
            256,
            48,
            28
          ],
          "varname": "ui_perform_mic"
        }
      },
      {
        "box": {
          "id": "pm-perform-file",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "mode": 1,
          "text": "OFF",
          "texton": "ON",
          "rounded": 14,
          "bgcolor": [
            0.88,
            0.92,
            0.89,
            1
          ],
          "bgoncolor": [
            0.3,
            0.56,
            0.45,
            1
          ],
          "textcolor": [
            0.35,
            0.46,
            0.41,
            1
          ],
          "textoncolor": [
            0.97,
            0.99,
            0.97,
            1
          ],
          "patching_rect": [
            1932,
            980,
            48,
            28
          ],
          "presentation": 1,
          "presentation_rect": [
            282,
            380,
            48,
            28
          ],
          "varname": "ui_perform_file"
        }
      },
      {
        "box": {
          "id": "pm-perform-grain",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "mode": 1,
          "text": "OFF",
          "texton": "ON",
          "rounded": 14,
          "bgcolor": [
            0.88,
            0.92,
            0.89,
            1
          ],
          "bgoncolor": [
            0.3,
            0.56,
            0.45,
            1
          ],
          "textcolor": [
            0.35,
            0.46,
            0.41,
            1
          ],
          "textoncolor": [
            0.97,
            0.99,
            0.97,
            1
          ],
          "patching_rect": [
            2004,
            980,
            48,
            28
          ],
          "presentation": 1,
          "presentation_rect": [
            282,
            504,
            48,
            28
          ],
          "varname": "ui_perform_grain"
        }
      },
      {
        "box": {
          "id": "pm-perform-vocoder",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "mode": 1,
          "text": "OFF",
          "texton": "ON",
          "rounded": 14,
          "bgcolor": [
            0.88,
            0.92,
            0.89,
            1
          ],
          "bgoncolor": [
            0.3,
            0.56,
            0.45,
            1
          ],
          "textcolor": [
            0.35,
            0.46,
            0.41,
            1
          ],
          "textoncolor": [
            0.97,
            0.99,
            0.97,
            1
          ],
          "patching_rect": [
            2076,
            980,
            48,
            28
          ],
          "presentation": 1,
          "presentation_rect": [
            1620,
            238,
            48,
            28
          ],
          "varname": "ui_perform_vocoder"
        }
      },
      {
        "box": {
          "id": "pm-perform-bitcrusher",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "mode": 1,
          "text": "OFF",
          "texton": "ON",
          "rounded": 14,
          "bgcolor": [
            0.88,
            0.92,
            0.89,
            1
          ],
          "bgoncolor": [
            0.3,
            0.56,
            0.45,
            1
          ],
          "textcolor": [
            0.35,
            0.46,
            0.41,
            1
          ],
          "textoncolor": [
            0.97,
            0.99,
            0.97,
            1
          ],
          "patching_rect": [
            2148,
            980,
            48,
            28
          ],
          "presentation": 1,
          "presentation_rect": [
            1620,
            337,
            48,
            28
          ],
          "varname": "ui_perform_bitcrusher"
        }
      },
      {
        "box": {
          "id": "pm-perform-feedback-delay",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "mode": 1,
          "text": "OFF",
          "texton": "ON",
          "rounded": 14,
          "bgcolor": [
            0.88,
            0.92,
            0.89,
            1
          ],
          "bgoncolor": [
            0.3,
            0.56,
            0.45,
            1
          ],
          "textcolor": [
            0.35,
            0.46,
            0.41,
            1
          ],
          "textoncolor": [
            0.97,
            0.99,
            0.97,
            1
          ],
          "patching_rect": [
            2220,
            980,
            48,
            28
          ],
          "presentation": 1,
          "presentation_rect": [
            1620,
            436,
            48,
            28
          ],
          "varname": "ui_perform_feedback_delay"
        }
      },
      {
        "box": {
          "id": "pm-perform-multiband",
          "maxclass": "textbutton",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "mode": 1,
          "text": "OFF",
          "texton": "ON",
          "rounded": 14,
          "bgcolor": [
            0.88,
            0.92,
            0.89,
            1
          ],
          "bgoncolor": [
            0.3,
            0.56,
            0.45,
            1
          ],
          "textcolor": [
            0.35,
            0.46,
            0.41,
            1
          ],
          "textoncolor": [
            0.97,
            0.99,
            0.97,
            1
          ],
          "patching_rect": [
            2292,
            980,
            48,
            28
          ],
          "presentation": 1,
          "presentation_rect": [
            1620,
            535,
            48,
            28
          ],
          "varname": "ui_perform_multiband"
        }
      },
      {
        "box": {
          "id": "pm-perform-state",
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
              120,
              120,
              700,
              290
            ],
            "gridsize": [
              15,
              15
            ],
            "boxes": [
              {
                "box": {
                  "id": "quick-in-0",
                  "index": 1,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    28,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "quick-send-0",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24,
                    82,
                    100,
                    22
                  ],
                  "text": "s mt_mic_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-recv-0",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    130,
                    100,
                    22
                  ],
                  "text": "r mt_mic_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-set-0",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    170,
                    80,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "quick-out-0",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24,
                    220,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "quick-in-1",
                  "index": 2,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    134,
                    28,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "quick-send-1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    134,
                    82,
                    100,
                    22
                  ],
                  "text": "s mt_file_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-recv-1",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    134,
                    130,
                    100,
                    22
                  ],
                  "text": "r mt_file_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-set-1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    134,
                    170,
                    80,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "quick-out-1",
                  "index": 2,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    134,
                    220,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "quick-in-2",
                  "index": 3,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    244,
                    28,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "quick-send-2",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    244,
                    82,
                    100,
                    22
                  ],
                  "text": "s mt_granular_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-recv-2",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    244,
                    130,
                    100,
                    22
                  ],
                  "text": "r mt_granular_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-set-2",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    244,
                    170,
                    80,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "quick-out-2",
                  "index": 3,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    244,
                    220,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "quick-in-3",
                  "index": 4,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    354,
                    28,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "quick-send-3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    354,
                    82,
                    100,
                    22
                  ],
                  "text": "s mt_vocoder_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-recv-3",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    354,
                    130,
                    100,
                    22
                  ],
                  "text": "r mt_vocoder_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-set-3",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    354,
                    170,
                    80,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "quick-out-3",
                  "index": 4,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    354,
                    220,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "quick-in-4",
                  "index": 5,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    464,
                    28,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "quick-send-4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    464,
                    82,
                    100,
                    22
                  ],
                  "text": "s mt_bitcrusher_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-recv-4",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    464,
                    130,
                    100,
                    22
                  ],
                  "text": "r mt_bitcrusher_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-set-4",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    464,
                    170,
                    80,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "quick-out-4",
                  "index": 5,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    464,
                    220,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "quick-in-5",
                  "index": 6,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    574,
                    28,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "quick-send-5",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    574,
                    82,
                    100,
                    22
                  ],
                  "text": "s mt_feedback_delay_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-recv-5",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    574,
                    130,
                    100,
                    22
                  ],
                  "text": "r mt_feedback_delay_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-set-5",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    574,
                    170,
                    80,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "quick-out-5",
                  "index": 6,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    574,
                    220,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "quick-in-6",
                  "index": 7,
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    684,
                    28,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "quick-send-6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    684,
                    82,
                    100,
                    22
                  ],
                  "text": "s mt_multiband_filter_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-recv-6",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    684,
                    130,
                    100,
                    22
                  ],
                  "text": "r mt_multiband_filter_enable_state"
                }
              },
              {
                "box": {
                  "id": "quick-set-6",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    684,
                    170,
                    80,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "quick-out-6",
                  "index": 7,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    684,
                    220,
                    30,
                    30
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-in-0",
                    0
                  ],
                  "destination": [
                    "quick-send-0",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-recv-0",
                    0
                  ],
                  "destination": [
                    "quick-set-0",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-set-0",
                    0
                  ],
                  "destination": [
                    "quick-out-0",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-in-1",
                    0
                  ],
                  "destination": [
                    "quick-send-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-recv-1",
                    0
                  ],
                  "destination": [
                    "quick-set-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-set-1",
                    0
                  ],
                  "destination": [
                    "quick-out-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-in-2",
                    0
                  ],
                  "destination": [
                    "quick-send-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-recv-2",
                    0
                  ],
                  "destination": [
                    "quick-set-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-set-2",
                    0
                  ],
                  "destination": [
                    "quick-out-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-in-3",
                    0
                  ],
                  "destination": [
                    "quick-send-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-recv-3",
                    0
                  ],
                  "destination": [
                    "quick-set-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-set-3",
                    0
                  ],
                  "destination": [
                    "quick-out-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-in-4",
                    0
                  ],
                  "destination": [
                    "quick-send-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-recv-4",
                    0
                  ],
                  "destination": [
                    "quick-set-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-set-4",
                    0
                  ],
                  "destination": [
                    "quick-out-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-in-5",
                    0
                  ],
                  "destination": [
                    "quick-send-5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-recv-5",
                    0
                  ],
                  "destination": [
                    "quick-set-5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-set-5",
                    0
                  ],
                  "destination": [
                    "quick-out-5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-in-6",
                    0
                  ],
                  "destination": [
                    "quick-send-6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-recv-6",
                    0
                  ],
                  "destination": [
                    "quick-set-6",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "color": [
                    0.44,
                    0.72,
                    1,
                    1
                  ],
                  "source": [
                    "quick-set-6",
                    0
                  ],
                  "destination": [
                    "quick-out-6",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            1860,
            1040,
            150,
            22
          ],
          "text": "p Perform_quick_state"
        }
      },
      {
        "box": {
          "id": "pm-bitcrusher-hand-mapper",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 9,
          "outlettype": [
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            1862,
            860,
            330,
            22
          ],
          "text": "js Patcher:/../javascript/mt_fx_hand_mapper.js",
          "varname": "gesture_fx_mapper"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "pm-gesture-target-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            2210,
            860,
            120,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            860,
            160,
            160,
            20
          ],
          "text": "CONTROL TARGET",
          "varname": "ui_gesture_target_label"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "pm-gesture-target",
          "items": [
            "Off",
            ",",
            "Vocoder",
            ",",
            "Bitcrusher",
            ",",
            "Feedback Delay",
            ",",
            "Multiband Filter"
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "parameter_enable": 0,
          "patching_rect": [
            2210,
            890,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            860,
            184,
            300,
            26
          ],
          "varname": "ui_gesture_target"
        }
      },
      {
        "box": {
          "id": "pm-gesture-target-init",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            2210,
            825,
            70,
            22
          ],
          "text": "loadmess 0"
        }
      },
      {
        "box": {
          "id": "pm-gesture-target-fanout",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "int",
            "int",
            "int",
            "int"
          ],
          "patching_rect": [
            2210,
            925,
            70,
            22
          ],
          "text": "t i i i i"
        }
      },
      {
        "box": {
          "id": "pm-gesture-x-fanout",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "float"
          ],
          "patching_rect": [
            2210,
            955,
            45,
            22
          ],
          "text": "t f f"
        }
      },
      {
        "box": {
          "id": "pm-gesture-x-gate",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            2290,
            955,
            62,
            22
          ],
          "text": "gate 4"
        }
      },
      {
        "box": {
          "id": "pm-gesture-y-fanout",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "float"
          ],
          "patching_rect": [
            2210,
            985,
            45,
            22
          ],
          "text": "t f f"
        }
      },
      {
        "box": {
          "id": "pm-gesture-y-gate",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            2290,
            985,
            62,
            22
          ],
          "text": "gate 4"
        }
      },
      {
        "box": {
          "id": "pm-gesture-pinch-fanout",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "float",
            "float"
          ],
          "patching_rect": [
            2210,
            1015,
            45,
            22
          ],
          "text": "t f f"
        }
      },
      {
        "box": {
          "id": "pm-gesture-pinch-gate",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            2290,
            1015,
            62,
            22
          ],
          "text": "gate 4"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "pm-gesture-status",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            2380,
            955,
            300,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            860,
            455,
            440,
            26
          ],
          "text": "OFF",
          "varname": "ui_gesture_status"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "pm-gesture-zone-note",
          "linecount": 2,
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            2380,
            985,
            450,
            36
          ],
          "presentation": 1,
          "presentation_rect": [
            860,
            500,
            610,
            40
          ],
          "text": "PHYSICAL RIGHT: MOVE INSIDE RIGHT-SIDE ZONE\nPHYSICAL LEFT: FIST HOLD / OPEN CONTROL",
          "varname": "ui_gesture_zone_note"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "pm-recorder",
            0
          ],
          "source": [
            "pm-rec-open",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-recorder",
            0
          ],
          "source": [
            "pm-rec-start",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-recorder",
            0
          ],
          "source": [
            "pm-rec-stop",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-mixer",
            8
          ],
          "midpoints": [
            194.5,
            674.8564298152924,
            774.6379323005676,
            674.8564298152924
          ],
          "source": [
            "p-Source-state-router",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-mixer",
            7
          ],
          "midpoints": [
            114,
            675.227489429526,
            682.0129323005676,
            675.227489429526
          ],
          "source": [
            "p-Source-state-router",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-mixer",
            6
          ],
          "midpoints": [
            33.5,
            674.6923673152924,
            589.3879323005676,
            674.6923673152924
          ],
          "source": [
            "p-Source-state-router",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-dac",
            0
          ],
          "midpoints": [
            133.5,
            1854.2794440491125,
            33.5,
            1854.2794440491125
          ],
          "source": [
            "pm-dsp-off",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-dac",
            0
          ],
          "midpoints": [
            33.5,
            1853.928447669372,
            33.5,
            1853.928447669372
          ],
          "source": [
            "pm-dsp-on",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-mixer",
            3
          ],
          "midpoints": [
            980.5,
            675.0314206935,
            311.5129323005676,
            675.0314206935
          ],
          "source": [
            "pm-file",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-mixer",
            2
          ],
          "midpoints": [
            479.5,
            674.2709117827471,
            218.88793230056763,
            674.2709117827471
          ],
          "source": [
            "pm-file",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-mixer",
            5
          ],
          "midpoints": [
            1725.5,
            675.874890189385,
            496.7629323005676,
            675.874890189385
          ],
          "source": [
            "pm-grain",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-mixer",
            4
          ],
          "midpoints": [
            1024.5,
            675.6882198203821,
            404.1379323005676,
            675.6882198203821
          ],
          "source": [
            "pm-grain",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-mixer",
            1
          ],
          "midpoints": [
            434.5,
            674.3594097790774,
            126.26293230056763,
            674.3594097790774
          ],
          "source": [
            "pm-mic",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-mixer",
            0
          ],
          "source": [
            "pm-mic",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-page-tab",
            0
          ],
          "source": [
            "pm-page-load",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-thispatcher",
            0
          ],
          "source": [
            "pm-page-router",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "pm-page-router",
            0
          ],
          "source": [
            "pm-page-tab",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-mixer",
            0
          ],
          "destination": [
            "pm-vocoder",
            0
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "pm-mixer",
            1
          ],
          "destination": [
            "pm-vocoder",
            1
          ],
          "order": 0
        }
      },
      {
        "patchline": {
          "source": [
            "pm-vocoder",
            0
          ],
          "destination": [
            "pm-fx-return",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-vocoder",
            1
          ],
          "destination": [
            "pm-fx-return",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-FX-state-router",
            0
          ],
          "destination": [
            "pm-vocoder",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-FX-state-router",
            1
          ],
          "destination": [
            "pm-fx-return",
            11
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-mixer",
            0
          ],
          "destination": [
            "pm-bitcrusher",
            0
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "pm-mixer",
            1
          ],
          "destination": [
            "pm-bitcrusher",
            1
          ],
          "order": 1
        }
      },
      {
        "patchline": {
          "source": [
            "pm-bitcrusher",
            0
          ],
          "destination": [
            "pm-fx-return",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-bitcrusher",
            1
          ],
          "destination": [
            "pm-fx-return",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-FX-state-router",
            2
          ],
          "destination": [
            "pm-bitcrusher",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-FX-state-router",
            3
          ],
          "destination": [
            "pm-fx-return",
            12
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-mixer",
            0
          ],
          "destination": [
            "pm-feedback-delay",
            0
          ],
          "order": 2
        }
      },
      {
        "patchline": {
          "source": [
            "pm-mixer",
            1
          ],
          "destination": [
            "pm-feedback-delay",
            1
          ],
          "order": 2
        }
      },
      {
        "patchline": {
          "source": [
            "pm-feedback-delay",
            0
          ],
          "destination": [
            "pm-fx-return",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-feedback-delay",
            1
          ],
          "destination": [
            "pm-fx-return",
            7
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-FX-state-router",
            4
          ],
          "destination": [
            "pm-feedback-delay",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-FX-state-router",
            5
          ],
          "destination": [
            "pm-fx-return",
            13
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-mixer",
            0
          ],
          "destination": [
            "pm-multiband",
            0
          ],
          "order": 3
        }
      },
      {
        "patchline": {
          "source": [
            "pm-mixer",
            1
          ],
          "destination": [
            "pm-multiband",
            1
          ],
          "order": 3
        }
      },
      {
        "patchline": {
          "source": [
            "pm-multiband",
            0
          ],
          "destination": [
            "pm-fx-return",
            8
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-multiband",
            1
          ],
          "destination": [
            "pm-fx-return",
            9
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-FX-state-router",
            6
          ],
          "destination": [
            "pm-multiband",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "p-FX-state-router",
            7
          ],
          "destination": [
            "pm-fx-return",
            14
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-mixer",
            0
          ],
          "destination": [
            "pm-fx-return",
            0
          ],
          "order": 4
        }
      },
      {
        "patchline": {
          "source": [
            "pm-mixer",
            1
          ],
          "destination": [
            "pm-fx-return",
            1
          ],
          "order": 4
        }
      },
      {
        "patchline": {
          "source": [
            "p-FX-state-router",
            8
          ],
          "destination": [
            "pm-vocoder",
            3
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-mic",
            0
          ],
          "destination": [
            "pm-perform-state",
            0
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-state",
            0
          ],
          "destination": [
            "pm-perform-mic",
            0
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-file",
            0
          ],
          "destination": [
            "pm-perform-state",
            1
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-state",
            1
          ],
          "destination": [
            "pm-perform-file",
            0
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-grain",
            0
          ],
          "destination": [
            "pm-perform-state",
            2
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-state",
            2
          ],
          "destination": [
            "pm-perform-grain",
            0
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-vocoder",
            0
          ],
          "destination": [
            "pm-perform-state",
            3
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-state",
            3
          ],
          "destination": [
            "pm-perform-vocoder",
            0
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-bitcrusher",
            0
          ],
          "destination": [
            "pm-perform-state",
            4
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-state",
            4
          ],
          "destination": [
            "pm-perform-bitcrusher",
            0
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-feedback-delay",
            0
          ],
          "destination": [
            "pm-perform-state",
            5
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-state",
            5
          ],
          "destination": [
            "pm-perform-feedback-delay",
            0
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-multiband",
            0
          ],
          "destination": [
            "pm-perform-state",
            6
          ]
        }
      },
      {
        "patchline": {
          "color": [
            0.44,
            0.72,
            1,
            1
          ],
          "source": [
            "pm-perform-state",
            6
          ],
          "destination": [
            "pm-perform-multiband",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-fx-return",
            0
          ],
          "destination": [
            "pm-dac",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-fx-return",
            1
          ],
          "destination": [
            "pm-dac",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-fx-return",
            0
          ],
          "destination": [
            "pm-meter-l",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-fx-return",
            1
          ],
          "destination": [
            "pm-meter-r",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-fx-return",
            0
          ],
          "destination": [
            "pm-recorder",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-fx-return",
            1
          ],
          "destination": [
            "pm-recorder",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-hand",
            4
          ],
          "destination": [
            "pm-bitcrusher-hand-mapper",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-target-init",
            0
          ],
          "destination": [
            "pm-gesture-target",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-target",
            0
          ],
          "destination": [
            "pm-gesture-target-fanout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-target-fanout",
            3
          ],
          "destination": [
            "pm-bitcrusher-hand-mapper",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-target-fanout",
            2
          ],
          "destination": [
            "pm-gesture-x-gate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-target-fanout",
            1
          ],
          "destination": [
            "pm-gesture-y-gate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-target-fanout",
            0
          ],
          "destination": [
            "pm-gesture-pinch-gate",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-bitcrusher-hand-mapper",
            0
          ],
          "destination": [
            "pm-gesture-x-fanout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-x-fanout",
            1
          ],
          "destination": [
            "pm-slot1-monitor",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-x-fanout",
            0
          ],
          "destination": [
            "pm-gesture-x-gate",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-bitcrusher-hand-mapper",
            1
          ],
          "destination": [
            "pm-gesture-y-fanout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-y-fanout",
            1
          ],
          "destination": [
            "pm-slot2-monitor",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-y-fanout",
            0
          ],
          "destination": [
            "pm-gesture-y-gate",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-bitcrusher-hand-mapper",
            2
          ],
          "destination": [
            "pm-gesture-pinch-fanout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-pinch-fanout",
            1
          ],
          "destination": [
            "pm-slot3-monitor",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-pinch-fanout",
            0
          ],
          "destination": [
            "pm-gesture-pinch-gate",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-bitcrusher-hand-mapper",
            3
          ],
          "destination": [
            "pm-slot4-monitor",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-bitcrusher-hand-mapper",
            4
          ],
          "destination": [
            "pm-gesture-status",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-bitcrusher-hand-mapper",
            5
          ],
          "destination": [
            "pm-slot1-label",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-bitcrusher-hand-mapper",
            6
          ],
          "destination": [
            "pm-slot2-label",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-bitcrusher-hand-mapper",
            7
          ],
          "destination": [
            "pm-slot3-label",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-bitcrusher-hand-mapper",
            8
          ],
          "destination": [
            "pm-hand-map-title",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-x-gate",
            0
          ],
          "destination": [
            "pm-vocoder",
            7
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-x-gate",
            1
          ],
          "destination": [
            "pm-bitcrusher",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-x-gate",
            2
          ],
          "destination": [
            "pm-feedback-delay",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-x-gate",
            3
          ],
          "destination": [
            "pm-multiband",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-y-gate",
            0
          ],
          "destination": [
            "pm-vocoder",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-y-gate",
            1
          ],
          "destination": [
            "pm-bitcrusher",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-y-gate",
            2
          ],
          "destination": [
            "pm-feedback-delay",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-y-gate",
            3
          ],
          "destination": [
            "pm-multiband",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-pinch-gate",
            0
          ],
          "destination": [
            "pm-vocoder",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-pinch-gate",
            1
          ],
          "destination": [
            "pm-bitcrusher",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-pinch-gate",
            2
          ],
          "destination": [
            "pm-feedback-delay",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-gesture-pinch-gate",
            3
          ],
          "destination": [
            "pm-multiband",
            5
          ]
        }
      }
    ],
    "originid": "pat-4",
    "parameters": {
      "pm-file::f-drop": [
        "file_drop",
        "file_drop",
        0
      ],
      "pm-file::f-gain": [
        "file_output_gain",
        "File Input",
        0
      ],
      "pm-fx-return::fx-dry-gain": [
        "fx_return_dry_gain",
        "Original",
        0
      ],
      "pm-fx-return::fx-master": [
        "fx_return_master_gain",
        "FX Master",
        0
      ],
      "pm-fx-return::fx-voc-gain": [
        "fx_return_vocoder_gain",
        "Vocoder FX",
        0
      ],
      "pm-grain::g-drop": [
        "granular_drop",
        "granular_drop",
        0
      ],
      "pm-grain::g-gain": [
        "granular_output_gain",
        "Granular Input",
        0
      ],
      "pm-mic::m-gain": [
        "mic_output_gain",
        "Mic Input",
        0
      ],
      "pm-mixer::mx-file-gain": [
        "mixer_file_gain",
        "File Mix",
        0
      ],
      "pm-mixer::mx-grain-gain": [
        "mixer_granular_gain",
        "Granular Mix",
        0
      ],
      "pm-mixer::mx-master-gain": [
        "mixer_master_gain",
        "Input Master",
        0
      ],
      "pm-mixer::mx-mic-gain": [
        "mixer_mic_gain",
        "Mic Mix",
        0
      ],
      "pm-vocoder::vm-gain": [
        "live.gain~[2]",
        "Vocoder Out",
        0
      ],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": [
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-"
          ]
        }
      },
      "parameter_overrides": {
        "pm-chop::chm-gain": {
          "parameter_longname": "live.gain~[1]"
        },
        "pm-mixer::mx-file-gain": {
          "parameter_longname": "mixer_file_gain"
        },
        "pm-mixer::mx-grain-gain": {
          "parameter_longname": "mixer_granular_gain"
        },
        "pm-mixer::mx-master-gain": {
          "parameter_longname": "mixer_master_gain"
        },
        "pm-mixer::mx-mic-gain": {
          "parameter_longname": "mixer_mic_gain"
        },
        "pm-tremolo::tm-gain": {
          "parameter_longname": "live.gain~"
        },
        "pm-tremolo::tm-polarity": {
          "parameter_longname": "live.text"
        },
        "pm-tremolo::tm-shape": {
          "parameter_longname": "live.menu"
        },
        "pm-vocoder::vm-gain": {
          "parameter_longname": "live.gain~[2]"
        }
      },
      "inherited_shortname": 1
    },
    "dependency_cache": [
      {
        "name": "main_shell_v1.png",
        "patcherrelativepath": "../assets/ui",
        "type": "PNG",
        "implicit": 1
      },
      {
        "name": "perform_shell_v2.png",
        "patcherrelativepath": "../assets/ui",
        "type": "PNG",
        "implicit": 1
      },
      {
        "name": "file_panel_v1.png",
        "patcherrelativepath": "../assets/ui",
        "type": "PNG",
        "implicit": 1
      },
      {
        "name": "fx_return_mixer_panel_v1.png",
        "patcherrelativepath": "../assets/ui",
        "type": "PNG",
        "implicit": 1
      },
      {
        "name": "granular_knob_gain_v1.png",
        "patcherrelativepath": "../assets/ui",
        "type": "PNG",
        "implicit": 1
      },
      {
        "name": "granular_knob_v1.png",
        "patcherrelativepath": "../assets/ui",
        "type": "PNG",
        "implicit": 1
      },
      {
        "name": "granular_panel_v1.png",
        "patcherrelativepath": "../assets/ui",
        "type": "PNG",
        "implicit": 1
      },
      {
        "name": "input_mixer_panel_v1.png",
        "patcherrelativepath": "../assets/ui",
        "type": "PNG",
        "implicit": 1
      },
      {
        "name": "mic_panel_v1.png",
        "patcherrelativepath": "../assets/ui",
        "type": "PNG",
        "implicit": 1
      },
      {
        "name": "mt_control_hand_jweb.maxpat",
        "patcherrelativepath": "control",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "mt_fx_return_mixer.maxpat",
        "patcherrelativepath": "mixers",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "mt_grain_voice.maxpat",
        "patcherrelativepath": "dsp",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "mt_granular_synth.maxpat",
        "patcherrelativepath": "dsp",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "mt_input_file_ui.maxpat",
        "patcherrelativepath": "inputs",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "mt_input_granular_ui.maxpat",
        "patcherrelativepath": "inputs",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "mt_input_mic_ui.maxpat",
        "patcherrelativepath": "inputs",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "mt_input_mixer_ui.maxpat",
        "patcherrelativepath": "mixers",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "mt_mod_vocoder.maxpat",
        "patcherrelativepath": "effects",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "mt_vocoder_pfft.maxpat",
        "patcherrelativepath": "effects",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "mt_mod_bitcrusher.maxpat",
        "patcherrelativepath": "effects",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "mt_mod_feedback_delay.maxpat",
        "patcherrelativepath": "effects",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "mt_mod_multiband_filter_v2.maxpat",
        "patcherrelativepath": "effects",
        "type": "JSON",
        "implicit": 1
      },
      {
        "name": "mt_multiband_filter_controller.js",
        "patcherrelativepath": "effects",
        "type": "TEXT",
        "implicit": 1
      },
      {
        "name": "mt_multiband_filter_visual.js",
        "patcherrelativepath": "effects",
        "type": "TEXT",
        "implicit": 1
      },
      {
        "name": "mt_fx_hand_mapper.js",
        "patcherrelativepath": "../javascript",
        "type": "TEXT",
        "implicit": 1
      }
    ],
    "autosave": 0
  }
}
