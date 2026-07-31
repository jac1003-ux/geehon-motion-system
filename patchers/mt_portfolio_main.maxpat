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
          "id": "pm-project-paths",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            24,
            24,
            720,
            22
          ],
          "text": "declare -path inputs -path mixers -path effects -path control -path dsp -path ../javascript -path ../assets/ui"
        }
      },
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
                  "linecount": 13,
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    110,
                    720,
                    36
                  ],
                  "text": "script hide ui_source_shell, script hide ui_fx_shell, script hide ui_gesture_shell, script hide ui_master_shell, script hide ui_source_selector, script hide ui_fx_selector, script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband, script hide ui_source_mic, script hide ui_source_file"
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
                    170,
                    164,
                    720,
                    36
                  ],
                  "text": "script hide ui_source_shell, script hide ui_fx_shell, script hide ui_gesture_shell, script hide ui_master_shell, script hide ui_source_selector, script hide ui_fx_selector, script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband, script hide ui_source_mic, script hide ui_source_file"
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
                    170,
                    218,
                    720,
                    36
                  ],
                  "text": "script hide ui_source_shell, script hide ui_fx_shell, script hide ui_gesture_shell, script hide ui_master_shell, script hide ui_source_selector, script hide ui_fx_selector, script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband, script hide ui_source_mic, script hide ui_source_file"
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
                    170,
                    272,
                    720,
                    36
                  ],
                  "text": "script hide ui_source_shell, script hide ui_fx_shell, script hide ui_gesture_shell, script hide ui_master_shell, script hide ui_source_selector, script hide ui_fx_selector, script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband, script hide ui_source_mic, script hide ui_source_file"
                }
              },
              {
                "box": {
                  "id": "page-msg-4",
                  "linecount": 13,
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    326,
                    720,
                    36
                  ],
                  "text": "script hide ui_source_shell, script hide ui_fx_shell, script hide ui_gesture_shell, script hide ui_master_shell, script hide ui_source_selector, script hide ui_fx_selector, script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband, script hide ui_source_mic, script hide ui_source_file"
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
              },
              {
                "box": {
                  "id": "page-trigger-0",
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
                    120,
                    110,
                    42,
                    22
                  ],
                  "text": "t b b b b b"
                }
              },
              {
                "box": {
                  "id": "page-msg-0-chunk-1",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    148,
                    720,
                    36
                  ],
                  "text": "script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_util_rec_title"
                }
              },
              {
                "box": {
                  "id": "page-msg-0-chunk-2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    186,
                    720,
                    36
                  ],
                  "text": "script hide ui_util_rec_open_label, script hide ui_util_rec_start_label, script hide ui_util_rec_stop_label, script hide ui_util_rec_open, script hide ui_util_rec_start, script hide ui_util_rec_stop, script hide ui_util_rec_file, script hide ui_util_rec_status, script hide ui_util_rec_time, script hide ui_output_meter_l, script hide ui_output_meter_r, script hide ui_output_dac, script hide ui_output_label, script sendbox ui_gesture_hand presentation_rect 402 222 798 420, script sendbox ui_util_rec_title presentation_rect 760 842 300 20, script sendbox ui_util_rec_open presentation_rect 760 876 110 28, script sendbox ui_util_rec_start presentation_rect 880 876 82 28, script sendbox ui_util_rec_stop presentation_rect 972 876 70 28, script sendbox ui_util_rec_file presentation_rect 760 916 320 24, script sendbox ui_util_rec_status presentation_rect 760 956 120 24"
                }
              },
              {
                "box": {
                  "id": "page-msg-0-chunk-3",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    224,
                    720,
                    36
                  ],
                  "text": "script sendbox ui_util_rec_time presentation_rect 900 956 90 24, script sendbox ui_output_meter_l presentation_rect 1230 918 300 14, script sendbox ui_output_meter_r presentation_rect 1230 948 300 14, script sendbox ui_output_dac presentation_rect 1570 908 52 52, script sendbox ui_output_label presentation_rect 1230 978 180 20, script show ui_perform_shell, script show ui_perform_mic, script show ui_perform_file, script show ui_perform_grain, script show ui_perform_vocoder, script show ui_perform_bitcrusher, script show ui_perform_feedback_delay, script show ui_perform_multiband, script show ui_gesture_hand, script show ui_util_rec_title, script show ui_util_rec_open, script show ui_util_rec_start, script show ui_util_rec_stop, script show ui_util_rec_file, script show ui_util_rec_status"
                }
              },
              {
                "box": {
                  "id": "page-msg-0-chunk-4",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    262,
                    720,
                    36
                  ],
                  "text": "script show ui_util_rec_time, script show ui_output_meter_l, script show ui_output_meter_r, script show ui_output_dac, script show ui_output_label"
                }
              },
              {
                "box": {
                  "id": "page-trigger-1",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "bang",
                    "bang",
                    "bang"
                  ],
                  "patching_rect": [
                    120,
                    164,
                    42,
                    22
                  ],
                  "text": "t b b b"
                }
              },
              {
                "box": {
                  "id": "page-msg-1-chunk-1",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    202,
                    720,
                    36
                  ],
                  "text": "script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_util_rec_title"
                }
              },
              {
                "box": {
                  "id": "page-msg-1-chunk-2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    240,
                    720,
                    36
                  ],
                  "text": "script hide ui_util_rec_open_label, script hide ui_util_rec_start_label, script hide ui_util_rec_stop_label, script hide ui_util_rec_open, script hide ui_util_rec_start, script hide ui_util_rec_stop, script hide ui_util_rec_file, script hide ui_util_rec_status, script hide ui_util_rec_time, script hide ui_output_meter_l, script hide ui_output_meter_r, script hide ui_output_dac, script hide ui_output_label, script sendbox ui_source_selector set 0, script sendbox ui_source_mic presentation_rect 225 300 420 280, script sendbox ui_source_mixer presentation_rect 897 300 760 320, script show ui_source_shell, script show ui_source_selector, script show ui_source_mic, script show ui_source_mixer"
                }
              },
              {
                "box": {
                  "id": "page-trigger-2",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "bang",
                    "bang",
                    "bang"
                  ],
                  "patching_rect": [
                    120,
                    218,
                    42,
                    22
                  ],
                  "text": "t b b b"
                }
              },
              {
                "box": {
                  "id": "page-msg-2-chunk-1",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    256,
                    720,
                    36
                  ],
                  "text": "script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_util_rec_title"
                }
              },
              {
                "box": {
                  "id": "page-msg-2-chunk-2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    294,
                    720,
                    36
                  ],
                  "text": "script hide ui_util_rec_open_label, script hide ui_util_rec_start_label, script hide ui_util_rec_stop_label, script hide ui_util_rec_open, script hide ui_util_rec_start, script hide ui_util_rec_stop, script hide ui_util_rec_file, script hide ui_util_rec_status, script hide ui_util_rec_time, script hide ui_output_meter_l, script hide ui_output_meter_r, script hide ui_output_dac, script hide ui_output_label, script sendbox ui_fx_selector set 1, script sendbox ui_fx_bitcrusher presentation_rect 55 278 760 268, script sendbox ui_master_returns presentation_rect 824 300 905 300, script show ui_fx_shell, script show ui_fx_selector, script show ui_fx_bitcrusher, script show ui_master_returns"
                }
              },
              {
                "box": {
                  "id": "page-trigger-3",
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
                    120,
                    272,
                    42,
                    22
                  ],
                  "text": "t b b b b b"
                }
              },
              {
                "box": {
                  "id": "page-msg-3-chunk-1",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    310,
                    720,
                    36
                  ],
                  "text": "script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_util_rec_title"
                }
              },
              {
                "box": {
                  "id": "page-msg-3-chunk-2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    348,
                    720,
                    36
                  ],
                  "text": "script hide ui_util_rec_open_label, script hide ui_util_rec_start_label, script hide ui_util_rec_stop_label, script hide ui_util_rec_open, script hide ui_util_rec_start, script hide ui_util_rec_stop, script hide ui_util_rec_file, script hide ui_util_rec_status, script hide ui_util_rec_time, script hide ui_output_meter_l, script hide ui_output_meter_r, script hide ui_output_dac, script hide ui_output_label, script sendbox ui_gesture_hand presentation_rect 48 190 900 474, script sendbox ui_gesture_target_label presentation_rect 1000 190 180 20, script sendbox ui_gesture_target presentation_rect 1000 216 620 28, script sendbox ui_gesture_map_title presentation_rect 1000 278 520 22, script sendbox ui_gesture_slot1 presentation_rect 1000 326 96 24, script sendbox ui_gesture_slot1_label presentation_rect 1110 328 430 20, script sendbox ui_gesture_slot2 presentation_rect 1000 372 96 24"
                }
              },
              {
                "box": {
                  "id": "page-msg-3-chunk-3",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    386,
                    720,
                    36
                  ],
                  "text": "script sendbox ui_gesture_slot2_label presentation_rect 1110 374 430 20, script sendbox ui_gesture_slot3 presentation_rect 1000 418 96 24, script sendbox ui_gesture_slot3_label presentation_rect 1110 420 430 20, script sendbox ui_gesture_slot4 presentation_rect 1000 464 96 24, script sendbox ui_gesture_slot4_label presentation_rect 1110 466 480 20, script sendbox ui_gesture_status presentation_rect 1000 536 520 28, script sendbox ui_gesture_zone_note presentation_rect 1000 590 610 46, script show ui_gesture_shell, script show ui_gesture_hand, script show ui_gesture_target_label, script show ui_gesture_target, script show ui_gesture_map_title, script show ui_gesture_slot1, script show ui_gesture_slot1_label, script show ui_gesture_slot2, script show ui_gesture_slot2_label, script show ui_gesture_slot3, script show ui_gesture_slot3_label, script show ui_gesture_slot4, script show ui_gesture_slot4_label"
                }
              },
              {
                "box": {
                  "id": "page-msg-3-chunk-4",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    424,
                    720,
                    36
                  ],
                  "text": "script show ui_gesture_status, script show ui_gesture_zone_note"
                }
              },
              {
                "box": {
                  "id": "page-trigger-4",
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
                    120,
                    326,
                    42,
                    22
                  ],
                  "text": "t b b b b b"
                }
              },
              {
                "box": {
                  "id": "page-msg-4-chunk-1",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    364,
                    720,
                    36
                  ],
                  "text": "script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_util_rec_title"
                }
              },
              {
                "box": {
                  "id": "page-msg-4-chunk-2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    402,
                    720,
                    36
                  ],
                  "text": "script hide ui_util_rec_open_label, script hide ui_util_rec_start_label, script hide ui_util_rec_stop_label, script hide ui_util_rec_open, script hide ui_util_rec_start, script hide ui_util_rec_stop, script hide ui_util_rec_file, script hide ui_util_rec_status, script hide ui_util_rec_time, script hide ui_output_meter_l, script hide ui_output_meter_r, script hide ui_output_dac, script hide ui_output_label, script sendbox ui_master_returns presentation_rect 92 300 905 300, script sendbox ui_util_rec_title presentation_rect 1120 292 300 20, script sendbox ui_util_rec_open presentation_rect 1120 332 110 28, script sendbox ui_util_rec_start presentation_rect 1240 332 82 28, script sendbox ui_util_rec_stop presentation_rect 1332 332 70 28, script sendbox ui_util_rec_open_label presentation_rect 1120 382 90 18, script sendbox ui_util_rec_file presentation_rect 1120 406 440 24"
                }
              },
              {
                "box": {
                  "id": "page-msg-4-chunk-3",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    440,
                    720,
                    36
                  ],
                  "text": "script sendbox ui_util_rec_start_label presentation_rect 1120 454 60 18, script sendbox ui_util_rec_status presentation_rect 1120 478 140 24, script sendbox ui_util_rec_stop_label presentation_rect 1280 454 60 18, script sendbox ui_util_rec_time presentation_rect 1280 478 100 24, script sendbox ui_output_meter_l presentation_rect 1120 602 400 14, script sendbox ui_output_meter_r presentation_rect 1120 632 400 14, script sendbox ui_output_dac presentation_rect 1580 136 52 52, script sendbox ui_output_label presentation_rect 1120 668 180 20, script show ui_master_shell, script show ui_master_returns, script show ui_util_rec_title, script show ui_util_rec_open_label, script show ui_util_rec_start_label, script show ui_util_rec_stop_label, script show ui_util_rec_open, script show ui_util_rec_start, script show ui_util_rec_stop, script show ui_util_rec_file, script show ui_util_rec_status, script show ui_util_rec_time"
                }
              },
              {
                "box": {
                  "id": "page-msg-4-chunk-4",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    478,
                    720,
                    36
                  ],
                  "text": "script show ui_output_meter_l, script show ui_output_meter_r, script show ui_output_dac, script show ui_output_label"
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
                  "source": [
                    "page-select",
                    0
                  ],
                  "destination": [
                    "page-trigger-0",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-0",
                    4
                  ],
                  "destination": [
                    "page-msg-0",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-0",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-0",
                    3
                  ],
                  "destination": [
                    "page-msg-0-chunk-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-0-chunk-1",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-0",
                    2
                  ],
                  "destination": [
                    "page-msg-0-chunk-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-0-chunk-2",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-0",
                    1
                  ],
                  "destination": [
                    "page-msg-0-chunk-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-0-chunk-3",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-0",
                    0
                  ],
                  "destination": [
                    "page-msg-0-chunk-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-0-chunk-4",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-select",
                    1
                  ],
                  "destination": [
                    "page-trigger-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-1",
                    2
                  ],
                  "destination": [
                    "page-msg-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-1",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-1",
                    1
                  ],
                  "destination": [
                    "page-msg-1-chunk-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-1-chunk-1",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-1",
                    0
                  ],
                  "destination": [
                    "page-msg-1-chunk-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-1-chunk-2",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-select",
                    2
                  ],
                  "destination": [
                    "page-trigger-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-2",
                    2
                  ],
                  "destination": [
                    "page-msg-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-2",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-2",
                    1
                  ],
                  "destination": [
                    "page-msg-2-chunk-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-2-chunk-1",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-2",
                    0
                  ],
                  "destination": [
                    "page-msg-2-chunk-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-2-chunk-2",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-select",
                    3
                  ],
                  "destination": [
                    "page-trigger-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-3",
                    4
                  ],
                  "destination": [
                    "page-msg-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-3",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-3",
                    3
                  ],
                  "destination": [
                    "page-msg-3-chunk-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-3-chunk-1",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-3",
                    2
                  ],
                  "destination": [
                    "page-msg-3-chunk-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-3-chunk-2",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-3",
                    1
                  ],
                  "destination": [
                    "page-msg-3-chunk-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-3-chunk-3",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-3",
                    0
                  ],
                  "destination": [
                    "page-msg-3-chunk-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-3-chunk-4",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-select",
                    4
                  ],
                  "destination": [
                    "page-trigger-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-4",
                    4
                  ],
                  "destination": [
                    "page-msg-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-4",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-4",
                    3
                  ],
                  "destination": [
                    "page-msg-4-chunk-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-4-chunk-1",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-4",
                    2
                  ],
                  "destination": [
                    "page-msg-4-chunk-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-4-chunk-2",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-4",
                    1
                  ],
                  "destination": [
                    "page-msg-4-chunk-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-4-chunk-3",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-trigger-4",
                    0
                  ],
                  "destination": [
                    "page-msg-4-chunk-4",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "page-msg-4-chunk-4",
                    0
                  ],
                  "destination": [
                    "page-out",
                    0
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
            844,
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
            864,
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
            878,
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
            1000,
            500,
            220,
            20
          ],
          "text": "MASTER RECORD / WAV EXPORT",
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
            1000,
            570,
            90,
            18
          ],
          "text": "Destination",
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
            1000,
            624,
            60,
            18
          ],
          "text": "Status",
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
            1120,
            624,
            60,
            18
          ],
          "text": "Elapsed",
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
            88,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            760,
            842,
            82,
            22
          ],
          "text": "Choose File",
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
            320,
            2258,
            62,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            850,
            842,
            58,
            22
          ],
          "text": "Record",
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
            394,
            2258,
            52,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            916,
            842,
            50,
            22
          ],
          "text": "Stop",
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
            2390,
            92,
            22
          ],
          "text": "sfrecord~ 2"
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
      },
      {
        "box": {
          "id": "pm-rec-control",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            220,
            2298,
            170,
            22
          ],
          "text": "p Master_recorder_control",
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
              760,
              560
            ],
            "gridsize": [
              15,
              15
            ],
            "boxes": [
              {
                "box": {
                  "id": "rc-open-in",
                  "maxclass": "inlet",
                  "comment": "choose WAV destination",
                  "index": 1,
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
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
                  "id": "rc-record-in",
                  "maxclass": "inlet",
                  "comment": "start recording",
                  "index": 2,
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    260,
                    24,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "rc-stop-in",
                  "maxclass": "inlet",
                  "comment": "stop recording",
                  "index": 3,
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    500,
                    24,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "rc-command-out",
                  "maxclass": "outlet",
                  "comment": "commands to sfrecord~",
                  "index": 1,
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "rc-file-out",
                  "maxclass": "outlet",
                  "comment": "set filename display",
                  "index": 2,
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    250,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "rc-status-out",
                  "maxclass": "outlet",
                  "comment": "set status display",
                  "index": 3,
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    390,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "rc-time-out",
                  "maxclass": "outlet",
                  "comment": "set elapsed display",
                  "index": 4,
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    530,
                    500,
                    30,
                    30
                  ]
                }
              },
              {
                "box": {
                  "id": "rc-open-bang",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    24,
                    72,
                    36,
                    22
                  ],
                  "text": "t b"
                }
              },
              {
                "box": {
                  "id": "rc-save-dialog",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    108,
                    76,
                    22
                  ],
                  "text": "savedialog"
                }
              },
              {
                "box": {
                  "id": "rc-path-trigger",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "symbol",
                    "symbol",
                    "bang"
                  ],
                  "patching_rect": [
                    24,
                    144,
                    62,
                    22
                  ],
                  "text": "t s s b"
                }
              },
              {
                "box": {
                  "id": "rc-open-command",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    216,
                    128,
                    22
                  ],
                  "text": "prepend open wave"
                }
              },
              {
                "box": {
                  "id": "rc-strip-path",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    180,
                    68,
                    22
                  ],
                  "text": "strippath"
                }
              },
              {
                "box": {
                  "id": "rc-file-set",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    170,
                    216,
                    82,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "rc-ready-trigger",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "bang",
                    "bang"
                  ],
                  "patching_rect": [
                    300,
                    180,
                    46,
                    22
                  ],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "rc-gate-open",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    300,
                    216,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "rc-status-ready",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    350,
                    216,
                    82,
                    22
                  ],
                  "text": "set READY"
                }
              },
              {
                "box": {
                  "id": "rc-record-bang",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    260,
                    72,
                    36,
                    22
                  ],
                  "text": "t b"
                }
              },
              {
                "box": {
                  "id": "rc-record-gate",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    260,
                    108,
                    52,
                    22
                  ],
                  "text": "gate 1"
                }
              },
              {
                "box": {
                  "id": "rc-record-trigger",
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
                    260,
                    288,
                    74,
                    22
                  ],
                  "text": "t b b b b"
                }
              },
              {
                "box": {
                  "id": "rc-reset-trigger",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "bang",
                    "bang"
                  ],
                  "patching_rect": [
                    390,
                    324,
                    46,
                    22
                  ],
                  "text": "t b b"
                }
              },
              {
                "box": {
                  "id": "rc-counter-reset",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    390,
                    360,
                    46,
                    22
                  ],
                  "text": "reset"
                }
              },
              {
                "box": {
                  "id": "rc-time-reset",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    450,
                    360,
                    76,
                    22
                  ],
                  "text": "set 00:00"
                }
              },
              {
                "box": {
                  "id": "rc-metro-on",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    330,
                    324,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "rc-status-recording",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    260,
                    360,
                    104,
                    22
                  ],
                  "text": "set RECORDING"
                }
              },
              {
                "box": {
                  "id": "rc-command-record",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    260,
                    396,
                    30,
                    22
                  ],
                  "text": "1"
                }
              },
              {
                "box": {
                  "id": "rc-stop-trigger",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "bang",
                    "bang",
                    "bang"
                  ],
                  "patching_rect": [
                    500,
                    72,
                    62,
                    22
                  ],
                  "text": "t b b b"
                }
              },
              {
                "box": {
                  "id": "rc-metro-off",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    500,
                    108,
                    30,
                    22
                  ],
                  "text": "0"
                }
              },
              {
                "box": {
                  "id": "rc-status-stopped",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    540,
                    108,
                    94,
                    22
                  ],
                  "text": "set STOPPED"
                }
              },
              {
                "box": {
                  "id": "rc-command-stop",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    646,
                    108,
                    30,
                    22
                  ],
                  "text": "0"
                }
              },
              {
                "box": {
                  "id": "rc-metro",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "bang"
                  ],
                  "patching_rect": [
                    500,
                    216,
                    76,
                    22
                  ],
                  "text": "metro 1000"
                }
              },
              {
                "box": {
                  "id": "rc-counter",
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
                    500,
                    252,
                    58,
                    22
                  ],
                  "text": "counter"
                }
              },
              {
                "box": {
                  "id": "rc-time-trigger",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "int",
                    "int"
                  ],
                  "patching_rect": [
                    500,
                    288,
                    42,
                    22
                  ],
                  "text": "t i i"
                }
              },
              {
                "box": {
                  "id": "rc-seconds",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    590,
                    324,
                    42,
                    22
                  ],
                  "text": "% 60"
                }
              },
              {
                "box": {
                  "id": "rc-minutes",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    500,
                    324,
                    42,
                    22
                  ],
                  "text": "/ 60"
                }
              },
              {
                "box": {
                  "id": "rc-time-pack",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    "list"
                  ],
                  "patching_rect": [
                    500,
                    360,
                    62,
                    22
                  ],
                  "text": "pack i i"
                }
              },
              {
                "box": {
                  "id": "rc-time-format",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    500,
                    396,
                    126,
                    22
                  ],
                  "text": "sprintf %02ld:%02ld"
                }
              },
              {
                "box": {
                  "id": "rc-time-set",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    500,
                    432,
                    82,
                    22
                  ],
                  "text": "prepend set"
                }
              },
              {
                "box": {
                  "id": "rc-format-int24",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    460,
                    146,
                    22
                  ],
                  "text": "loadmess samptype int24"
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "rc-open-in",
                    0
                  ],
                  "destination": [
                    "rc-open-bang",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-open-bang",
                    0
                  ],
                  "destination": [
                    "rc-save-dialog",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-save-dialog",
                    0
                  ],
                  "destination": [
                    "rc-path-trigger",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-path-trigger",
                    0
                  ],
                  "destination": [
                    "rc-open-command",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-open-command",
                    0
                  ],
                  "destination": [
                    "rc-command-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-path-trigger",
                    1
                  ],
                  "destination": [
                    "rc-strip-path",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-strip-path",
                    0
                  ],
                  "destination": [
                    "rc-file-set",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-file-set",
                    0
                  ],
                  "destination": [
                    "rc-file-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-path-trigger",
                    2
                  ],
                  "destination": [
                    "rc-ready-trigger",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-ready-trigger",
                    1
                  ],
                  "destination": [
                    "rc-status-ready",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-status-ready",
                    0
                  ],
                  "destination": [
                    "rc-status-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-ready-trigger",
                    0
                  ],
                  "destination": [
                    "rc-gate-open",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-gate-open",
                    0
                  ],
                  "destination": [
                    "rc-record-gate",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-record-in",
                    0
                  ],
                  "destination": [
                    "rc-record-bang",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-record-bang",
                    0
                  ],
                  "destination": [
                    "rc-record-gate",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-record-gate",
                    0
                  ],
                  "destination": [
                    "rc-record-trigger",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-record-trigger",
                    3
                  ],
                  "destination": [
                    "rc-reset-trigger",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-reset-trigger",
                    1
                  ],
                  "destination": [
                    "rc-time-reset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-time-reset",
                    0
                  ],
                  "destination": [
                    "rc-time-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-reset-trigger",
                    0
                  ],
                  "destination": [
                    "rc-counter-reset",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-counter-reset",
                    0
                  ],
                  "destination": [
                    "rc-counter",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-record-trigger",
                    2
                  ],
                  "destination": [
                    "rc-metro-on",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-metro-on",
                    0
                  ],
                  "destination": [
                    "rc-metro",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-record-trigger",
                    1
                  ],
                  "destination": [
                    "rc-status-recording",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-status-recording",
                    0
                  ],
                  "destination": [
                    "rc-status-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-record-trigger",
                    0
                  ],
                  "destination": [
                    "rc-command-record",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-command-record",
                    0
                  ],
                  "destination": [
                    "rc-command-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-stop-in",
                    0
                  ],
                  "destination": [
                    "rc-stop-trigger",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-stop-trigger",
                    2
                  ],
                  "destination": [
                    "rc-metro-off",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-metro-off",
                    0
                  ],
                  "destination": [
                    "rc-metro",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-stop-trigger",
                    1
                  ],
                  "destination": [
                    "rc-status-stopped",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-status-stopped",
                    0
                  ],
                  "destination": [
                    "rc-status-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-stop-trigger",
                    0
                  ],
                  "destination": [
                    "rc-command-stop",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-command-stop",
                    0
                  ],
                  "destination": [
                    "rc-command-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-metro",
                    0
                  ],
                  "destination": [
                    "rc-counter",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-counter",
                    0
                  ],
                  "destination": [
                    "rc-time-trigger",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-time-trigger",
                    1
                  ],
                  "destination": [
                    "rc-seconds",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-seconds",
                    0
                  ],
                  "destination": [
                    "rc-time-pack",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-time-trigger",
                    0
                  ],
                  "destination": [
                    "rc-minutes",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-minutes",
                    0
                  ],
                  "destination": [
                    "rc-time-pack",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-time-pack",
                    0
                  ],
                  "destination": [
                    "rc-time-format",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-time-format",
                    0
                  ],
                  "destination": [
                    "rc-time-set",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-time-set",
                    0
                  ],
                  "destination": [
                    "rc-time-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "rc-format-int24",
                    0
                  ],
                  "destination": [
                    "rc-command-out",
                    0
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "pm-rec-file-display",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            420,
            2298,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            974,
            842,
            250,
            22
          ],
          "text": "No file selected",
          "varname": "ui_util_rec_file"
        }
      },
      {
        "box": {
          "id": "pm-rec-status-display",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            420,
            2330,
            110,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            760,
            868,
            110,
            20
          ],
          "text": "NO FILE",
          "varname": "ui_util_rec_status"
        }
      },
      {
        "box": {
          "id": "pm-rec-time-display",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            542,
            2330,
            80,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            880,
            868,
            80,
            20
          ],
          "text": "00:00",
          "varname": "ui_util_rec_time"
        }
      },
      {
        "box": {
          "autofit": 1,
          "background": 1,
          "forceaspect": 1,
          "hidden": 1,
          "id": "pm-source-bg",
          "ignoreclick": 1,
          "maxclass": "fpic",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "jit_matrix"
          ],
          "patching_rect": [
            2360,
            20,
            346,
            169
          ],
          "pic": "source_detail_shell_v1.png",
          "presentation": 1,
          "presentation_rect": [
            0,
            96,
            1732,
            845
          ],
          "varname": "ui_source_shell"
        }
      },
      {
        "box": {
          "autofit": 1,
          "background": 1,
          "forceaspect": 1,
          "hidden": 1,
          "id": "pm-fx-bg",
          "ignoreclick": 1,
          "maxclass": "fpic",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "jit_matrix"
          ],
          "patching_rect": [
            2720,
            20,
            346,
            169
          ],
          "pic": "fx_detail_shell_v1.png",
          "presentation": 1,
          "presentation_rect": [
            0,
            96,
            1732,
            845
          ],
          "varname": "ui_fx_shell"
        }
      },
      {
        "box": {
          "autofit": 1,
          "background": 1,
          "forceaspect": 1,
          "hidden": 1,
          "id": "pm-gesture-bg",
          "ignoreclick": 1,
          "maxclass": "fpic",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "jit_matrix"
          ],
          "patching_rect": [
            3080,
            20,
            346,
            169
          ],
          "pic": "gesture_detail_shell_v1.png",
          "presentation": 1,
          "presentation_rect": [
            0,
            96,
            1732,
            845
          ],
          "varname": "ui_gesture_shell"
        }
      },
      {
        "box": {
          "autofit": 1,
          "background": 1,
          "forceaspect": 1,
          "hidden": 1,
          "id": "pm-master-bg",
          "ignoreclick": 1,
          "maxclass": "fpic",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "jit_matrix"
          ],
          "patching_rect": [
            3440,
            20,
            346,
            169
          ],
          "pic": "master_detail_shell_v1.png",
          "presentation": 1,
          "presentation_rect": [
            0,
            96,
            1732,
            845
          ],
          "varname": "ui_master_shell"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "pm-source-selector",
          "items": [
            "Mic Input",
            ",",
            "File Player",
            ",",
            "Granular"
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
            2360,
            220,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            574,
            136,
            220,
            28
          ],
          "varname": "ui_source_selector"
        }
      },
      {
        "box": {
          "hidden": 1,
          "id": "pm-fx-selector",
          "items": [
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
            2720,
            220,
            220,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            574,
            136,
            220,
            28
          ],
          "varname": "ui_fx_selector"
        }
      },
      {
        "box": {
          "id": "pm-source-detail-router",
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
              720,
              360
            ],
            "gridsize": [
              15,
              15
            ],
            "boxes": [
              {
                "box": {
                  "id": "pm-source-detail-router-in",
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
                  "id": "pm-source-detail-router-sel",
                  "maxclass": "newobj",
                  "numinlets": 4,
                  "numoutlets": 4,
                  "outlettype": [
                    "bang",
                    "bang",
                    "bang",
                    ""
                  ],
                  "patching_rect": [
                    24,
                    70,
                    90,
                    22
                  ],
                  "text": "sel 0 1 2"
                }
              },
              {
                "box": {
                  "id": "pm-source-detail-router-msg-0",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    110,
                    660,
                    36
                  ],
                  "text": "script hide ui_source_file, script hide ui_source_grain, script sendbox ui_source_mic presentation_rect 225 300 420 280, script show ui_source_mic"
                }
              },
              {
                "box": {
                  "id": "pm-source-detail-router-msg-1",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    154,
                    660,
                    36
                  ],
                  "text": "script hide ui_source_mic, script hide ui_source_grain, script sendbox ui_source_file presentation_rect 175 270 520 340, script show ui_source_file"
                }
              },
              {
                "box": {
                  "id": "pm-source-detail-router-msg-2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    198,
                    660,
                    36
                  ],
                  "text": "script hide ui_source_mic, script hide ui_source_file, script sendbox ui_source_grain presentation_rect 75 230 720 440, script show ui_source_grain"
                }
              },
              {
                "box": {
                  "id": "pm-source-detail-router-out",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24,
                    262,
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
                    "pm-source-detail-router-in",
                    0
                  ],
                  "destination": [
                    "pm-source-detail-router-sel",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-source-detail-router-sel",
                    0
                  ],
                  "destination": [
                    "pm-source-detail-router-msg-0",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-source-detail-router-msg-0",
                    0
                  ],
                  "destination": [
                    "pm-source-detail-router-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-source-detail-router-sel",
                    1
                  ],
                  "destination": [
                    "pm-source-detail-router-msg-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-source-detail-router-msg-1",
                    0
                  ],
                  "destination": [
                    "pm-source-detail-router-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-source-detail-router-sel",
                    2
                  ],
                  "destination": [
                    "pm-source-detail-router-msg-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-source-detail-router-msg-2",
                    0
                  ],
                  "destination": [
                    "pm-source-detail-router-out",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            2380,
            220,
            150,
            22
          ],
          "text": "p Source_detail_router"
        }
      },
      {
        "box": {
          "id": "pm-fx-detail-router",
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
              720,
              360
            ],
            "gridsize": [
              15,
              15
            ],
            "boxes": [
              {
                "box": {
                  "id": "pm-fx-detail-router-in",
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
                  "id": "pm-fx-detail-router-sel",
                  "maxclass": "newobj",
                  "numinlets": 5,
                  "numoutlets": 5,
                  "outlettype": [
                    "bang",
                    "bang",
                    "bang",
                    "bang",
                    ""
                  ],
                  "patching_rect": [
                    24,
                    70,
                    90,
                    22
                  ],
                  "text": "sel 0 1 2 3"
                }
              },
              {
                "box": {
                  "id": "pm-fx-detail-router-msg-0",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    110,
                    660,
                    36
                  ],
                  "text": "script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script sendbox ui_fx_vocoder presentation_rect 55 300 760 225, script show ui_fx_vocoder"
                }
              },
              {
                "box": {
                  "id": "pm-fx-detail-router-msg-1",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    154,
                    660,
                    36
                  ],
                  "text": "script hide ui_fx_vocoder, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script sendbox ui_fx_bitcrusher presentation_rect 55 278 760 268, script show ui_fx_bitcrusher"
                }
              },
              {
                "box": {
                  "id": "pm-fx-detail-router-msg-2",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    198,
                    660,
                    36
                  ],
                  "text": "script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_multiband, script sendbox ui_fx_feedback_delay presentation_rect 10 278 850 268, script show ui_fx_feedback_delay"
                }
              },
              {
                "box": {
                  "id": "pm-fx-detail-router-msg-3",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "patching_rect": [
                    24,
                    242,
                    660,
                    36
                  ],
                  "text": "script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script sendbox ui_fx_multiband presentation_rect 38 200 794 500, script show ui_fx_multiband"
                }
              },
              {
                "box": {
                  "id": "pm-fx-detail-router-out",
                  "index": 1,
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "patching_rect": [
                    24,
                    306,
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
                    "pm-fx-detail-router-in",
                    0
                  ],
                  "destination": [
                    "pm-fx-detail-router-sel",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-fx-detail-router-sel",
                    0
                  ],
                  "destination": [
                    "pm-fx-detail-router-msg-0",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-fx-detail-router-msg-0",
                    0
                  ],
                  "destination": [
                    "pm-fx-detail-router-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-fx-detail-router-sel",
                    1
                  ],
                  "destination": [
                    "pm-fx-detail-router-msg-1",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-fx-detail-router-msg-1",
                    0
                  ],
                  "destination": [
                    "pm-fx-detail-router-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-fx-detail-router-sel",
                    2
                  ],
                  "destination": [
                    "pm-fx-detail-router-msg-2",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-fx-detail-router-msg-2",
                    0
                  ],
                  "destination": [
                    "pm-fx-detail-router-out",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-fx-detail-router-sel",
                    3
                  ],
                  "destination": [
                    "pm-fx-detail-router-msg-3",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "pm-fx-detail-router-msg-3",
                    0
                  ],
                  "destination": [
                    "pm-fx-detail-router-out",
                    0
                  ]
                }
              }
            ]
          },
          "patching_rect": [
            2380,
            220,
            150,
            22
          ],
          "text": "p FX_detail_router"
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
          "id": "pm-page-defer",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            1990,
            20,
            62,
            22
          ],
          "text": "deferlow"
        }
      }
    ],
    "lines": [
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
      },
      {
        "patchline": {
          "source": [
            "pm-rec-open",
            0
          ],
          "destination": [
            "pm-rec-control",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-rec-start",
            0
          ],
          "destination": [
            "pm-rec-control",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-rec-stop",
            0
          ],
          "destination": [
            "pm-rec-control",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-rec-control",
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
            "pm-rec-control",
            1
          ],
          "destination": [
            "pm-rec-file-display",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-rec-control",
            2
          ],
          "destination": [
            "pm-rec-status-display",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-rec-control",
            3
          ],
          "destination": [
            "pm-rec-time-display",
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
            "pm-source-selector",
            0
          ],
          "destination": [
            "pm-source-detail-router",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-source-detail-router",
            0
          ],
          "destination": [
            "pm-thispatcher",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-fx-selector",
            0
          ],
          "destination": [
            "pm-fx-detail-router",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-fx-detail-router",
            0
          ],
          "destination": [
            "pm-thispatcher",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-page-load",
            0
          ],
          "destination": [
            "pm-page-defer",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pm-page-defer",
            0
          ],
          "destination": [
            "pm-page-tab",
            0
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
      },
      {
        "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/assets/ui",
        "name": "source_detail_shell_v1.png",
        "type": "PNG "
      },
      {
        "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/assets/ui",
        "name": "fx_detail_shell_v1.png",
        "type": "PNG "
      },
      {
        "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/assets/ui",
        "name": "gesture_detail_shell_v1.png",
        "type": "PNG "
      },
      {
        "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/assets/ui",
        "name": "master_detail_shell_v1.png",
        "type": "PNG "
      }
    ],
    "autosave": 0
  }
}
