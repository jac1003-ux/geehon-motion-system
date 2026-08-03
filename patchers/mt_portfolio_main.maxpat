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
                        4300,
                        420,
                        346,
                        169
                    ],
                    "pic": "source_detail_shell_v3.png",
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
                        4300,
                        610,
                        346,
                        169
                    ],
                    "pic": "fx_detail_shell_v4.png",
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
                        4300,
                        800,
                        346,
                        169
                    ],
                    "pic": "gesture_detail_shell_v3.png",
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
                        4300,
                        990,
                        346,
                        169
                    ],
                    "pic": "master_detail_shell_v3.png",
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
                        4300,
                        230,
                        346,
                        169
                    ],
                    "pic": "perform_shell_v4.png",
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
                        4300,
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
                        40,
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
                        40,
                        50,
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
                        40,
                        90,
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
                        40,
                        130,
                        850,
                        40
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        730,
                        27,
                        800,
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
                                        40,
                                        30,
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
                                        45.5,
                                        80,
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
                                        45.5,
                                        130,
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
                                        68.5,
                                        250,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_source_shell, script hide ui_fx_shell, script hide ui_gesture_shell, script hide ui_master_shell, script hide ui_source_selector, script hide ui_fx_selector, script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_readout, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_mic_eq, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband"
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
                                        868.5,
                                        250,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_source_shell, script hide ui_fx_shell, script hide ui_gesture_shell, script hide ui_master_shell, script hide ui_source_selector, script hide ui_fx_selector, script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_readout, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_mic_eq, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband"
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
                                        1668.5,
                                        250,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_source_shell, script hide ui_fx_shell, script hide ui_gesture_shell, script hide ui_master_shell, script hide ui_source_selector, script hide ui_fx_selector, script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_readout, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_mic_eq, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband"
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
                                        2468.5,
                                        250,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_source_shell, script hide ui_fx_shell, script hide ui_gesture_shell, script hide ui_master_shell, script hide ui_source_selector, script hide ui_fx_selector, script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_readout, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_mic_eq, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband"
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
                                        3268.5,
                                        250,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_source_shell, script hide ui_fx_shell, script hide ui_gesture_shell, script hide ui_master_shell, script hide ui_source_selector, script hide ui_fx_selector, script hide ui_gesture_target_label, script hide ui_gesture_target, script hide ui_gesture_readout, script hide ui_gesture_status, script hide ui_gesture_zone_note, script hide ui_perform_shell, script hide ui_perform_mic, script hide ui_perform_mic_eq, script hide ui_perform_file, script hide ui_perform_grain, script hide ui_perform_vocoder, script hide ui_perform_bitcrusher, script hide ui_perform_feedback_delay, script hide ui_perform_multiband"
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
                                        1900,
                                        600,
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
                                        45.5,
                                        200,
                                        42,
                                        22
                                    ],
                                    "text": "t b b b b b b"
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
                                        63.900000000000006,
                                        300,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_input_x, script hide ui_gesture_input_y, script hide ui_gesture_input_pinch, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4"
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
                                        59.3,
                                        350,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_gesture_slot4_label, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_master_record_editor, script hide ui_master_monitor, script hide ui_perform_record, script hide ui_perform_stop, script hide ui_perform_record_status, script hide ui_perform_record_time, script hide ui_output_meter_l, script hide ui_output_meter_r, script hide ui_output_dac, script hide ui_output_label, script hide ui_fx_output_mixer, script hide ui_perform_file_play, script hide ui_perform_file_progress, script hide ui_perform_grain_play, script hide ui_perform_grain_preset, script hide ui_perform_grain_wet, script hide ui_perform_grain_density"
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
                                        54.7,
                                        400,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_perform_grain_size, script hide ui_perform_grain_pitch, script hide ui_perform_gesture_readout, script hide ui_perform_gesture_x, script hide ui_perform_gesture_y, script hide ui_perform_gesture_pinch, script hide ui_perform_target, script hide ui_perform_gesture_status, script hide ui_perform_target_vocoder, script hide ui_perform_target_bitcrusher, script hide ui_perform_target_multiband, script hide ui_perform_target_delay, script hide ui_perform_monitor_gain, script hide ui_perform_monitor_mute, script hide ui_perform_monitor_peak, script sendbox ui_gesture_hand presentation_rect 402 172 798 486, script sendbox ui_perform_record presentation_rect 430 814 112 34, script sendbox ui_perform_stop presentation_rect 554 814 96 34, script sendbox ui_perform_record_status presentation_rect 682 814 160 34, script sendbox ui_perform_record_time presentation_rect 1086 814 86 34"
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
                                        50.1,
                                        450,
                                        720,
                                        36
                                    ],
                                    "text": "script sendbox ui_output_meter_l presentation_rect 1402 789 18 58, script sendbox ui_output_meter_r presentation_rect 1430 789 18 58, script show ui_perform_shell, script show ui_perform_mic, script show ui_perform_mic_eq, script show ui_perform_file, script show ui_perform_grain, script show ui_perform_vocoder, script show ui_perform_bitcrusher, script show ui_perform_feedback_delay, script show ui_perform_multiband, script show ui_gesture_hand, script show ui_perform_record, script show ui_perform_stop, script show ui_perform_record_status, script show ui_perform_record_time, script show ui_output_meter_l, script show ui_output_meter_r, script show ui_perform_file_play, script show ui_perform_file_progress"
                                }
                            },
                            {
                                "box": {
                                    "id": "page-msg-0-chunk-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        45.5,
                                        500,
                                        720,
                                        36
                                    ],
                                    "text": "script show ui_perform_grain_play, script show ui_perform_grain_preset, script show ui_perform_grain_wet, script show ui_perform_grain_density, script show ui_perform_grain_size, script show ui_perform_grain_pitch, script show ui_perform_gesture_readout, script show ui_perform_gesture_x, script show ui_perform_gesture_y, script show ui_perform_gesture_pinch, script show ui_perform_target, script show ui_perform_gesture_status, script show ui_perform_target_vocoder, script show ui_perform_target_bitcrusher, script show ui_perform_target_multiband, script show ui_perform_target_delay, script show ui_perform_monitor_gain, script show ui_perform_monitor_mute, script show ui_perform_monitor_peak"
                                }
                            },
                            {
                                "box": {
                                    "id": "page-trigger-1",
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
                                        845.5,
                                        200,
                                        42,
                                        22
                                    ],
                                    "text": "t b b b b b"
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
                                        862.75,
                                        300,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_input_x, script hide ui_gesture_input_y, script hide ui_gesture_input_pinch, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4"
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
                                        857,
                                        350,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_gesture_slot4_label, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_master_record_editor, script hide ui_master_monitor, script hide ui_perform_record, script hide ui_perform_stop, script hide ui_perform_record_status, script hide ui_perform_record_time, script hide ui_output_meter_l, script hide ui_output_meter_r, script hide ui_output_dac, script hide ui_output_label, script hide ui_fx_output_mixer, script hide ui_perform_file_play, script hide ui_perform_file_progress, script hide ui_perform_grain_play, script hide ui_perform_grain_preset, script hide ui_perform_grain_wet, script hide ui_perform_grain_density"
                                }
                            },
                            {
                                "box": {
                                    "id": "page-msg-1-chunk-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        851.25,
                                        400,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_perform_grain_size, script hide ui_perform_grain_pitch, script hide ui_perform_gesture_readout, script hide ui_perform_gesture_x, script hide ui_perform_gesture_y, script hide ui_perform_gesture_pinch, script hide ui_perform_target, script hide ui_perform_gesture_status, script hide ui_perform_target_vocoder, script hide ui_perform_target_bitcrusher, script hide ui_perform_target_multiband, script hide ui_perform_target_delay, script hide ui_perform_monitor_gain, script hide ui_perform_monitor_mute, script hide ui_perform_monitor_peak, script sendbox ui_source_selector set 0, script sendbox ui_source_mic presentation_rect 234 350 420 280, script sendbox ui_source_mixer presentation_rect 904 330 760 320, script show ui_source_shell, script show ui_source_selector"
                                }
                            },
                            {
                                "box": {
                                    "id": "page-msg-1-chunk-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        845.5,
                                        450,
                                        720,
                                        36
                                    ],
                                    "text": "script show ui_source_mic, script show ui_source_mixer"
                                }
                            },
                            {
                                "box": {
                                    "id": "page-trigger-2",
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
                                        1645.5,
                                        200,
                                        42,
                                        22
                                    ],
                                    "text": "t b b b b b"
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
                                        1662.75,
                                        300,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_input_x, script hide ui_gesture_input_y, script hide ui_gesture_input_pinch, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4"
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
                                        1657,
                                        350,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_gesture_slot4_label, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_master_record_editor, script hide ui_master_monitor, script hide ui_perform_record, script hide ui_perform_stop, script hide ui_perform_record_status, script hide ui_perform_record_time, script hide ui_output_meter_l, script hide ui_output_meter_r, script hide ui_output_dac, script hide ui_output_label, script hide ui_fx_output_mixer, script hide ui_perform_file_play, script hide ui_perform_file_progress, script hide ui_perform_grain_play, script hide ui_perform_grain_preset, script hide ui_perform_grain_wet, script hide ui_perform_grain_density"
                                }
                            },
                            {
                                "box": {
                                    "id": "page-msg-2-chunk-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1651.25,
                                        400,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_perform_grain_size, script hide ui_perform_grain_pitch, script hide ui_perform_gesture_readout, script hide ui_perform_gesture_x, script hide ui_perform_gesture_y, script hide ui_perform_gesture_pinch, script hide ui_perform_target, script hide ui_perform_gesture_status, script hide ui_perform_target_vocoder, script hide ui_perform_target_bitcrusher, script hide ui_perform_target_multiband, script hide ui_perform_target_delay, script hide ui_perform_monitor_gain, script hide ui_perform_monitor_mute, script hide ui_perform_monitor_peak, script sendbox ui_fx_selector 1, script sendbox ui_fx_bitcrusher presentation_rect 190 366 760 268, script sendbox ui_fx_output_mixer presentation_rect 1140 270 560 450, script show ui_fx_shell, script show ui_fx_selector"
                                }
                            },
                            {
                                "box": {
                                    "id": "page-msg-2-chunk-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1645.5,
                                        450,
                                        720,
                                        36
                                    ],
                                    "text": "script show ui_fx_bitcrusher, script show ui_fx_output_mixer"
                                }
                            },
                            {
                                "box": {
                                    "id": "page-trigger-3",
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
                                        2445.5,
                                        200,
                                        42,
                                        22
                                    ],
                                    "text": "t b b b b b b"
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
                                        2463.9,
                                        300,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_input_x, script hide ui_gesture_input_y, script hide ui_gesture_input_pinch, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4"
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
                                        2459.3,
                                        350,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_gesture_slot4_label, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_master_record_editor, script hide ui_master_monitor, script hide ui_perform_record, script hide ui_perform_stop, script hide ui_perform_record_status, script hide ui_perform_record_time, script hide ui_output_meter_l, script hide ui_output_meter_r, script hide ui_output_dac, script hide ui_output_label, script hide ui_fx_output_mixer, script hide ui_perform_file_play, script hide ui_perform_file_progress, script hide ui_perform_grain_play, script hide ui_perform_grain_preset, script hide ui_perform_grain_wet, script hide ui_perform_grain_density"
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
                                        2454.7,
                                        400,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_perform_grain_size, script hide ui_perform_grain_pitch, script hide ui_perform_gesture_readout, script hide ui_perform_gesture_x, script hide ui_perform_gesture_y, script hide ui_perform_gesture_pinch, script hide ui_perform_target, script hide ui_perform_gesture_status, script hide ui_perform_target_vocoder, script hide ui_perform_target_bitcrusher, script hide ui_perform_target_multiband, script hide ui_perform_target_delay, script hide ui_perform_monitor_gain, script hide ui_perform_monitor_mute, script hide ui_perform_monitor_peak, script sendbox ui_gesture_hand presentation_rect 64 264 964 507, script sendbox ui_gesture_target presentation_rect 1094 468 574 62, script sendbox ui_gesture_readout presentation_rect 1094 262 574 60, script sendbox ui_gesture_input_x presentation_rect 1110 694 130 30, script sendbox ui_gesture_input_y presentation_rect 1298 694 130 30"
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
                                        2450.1,
                                        450,
                                        720,
                                        36
                                    ],
                                    "text": "script sendbox ui_gesture_input_pinch presentation_rect 1486 694 130 30, script sendbox ui_gesture_slot1_label presentation_rect 1110 776 170 22, script sendbox ui_gesture_slot1 presentation_rect 1110 804 130 30, script sendbox ui_gesture_slot2_label presentation_rect 1298 776 170 22, script sendbox ui_gesture_slot2 presentation_rect 1298 804 130 30, script sendbox ui_gesture_slot3_label presentation_rect 1486 776 170 22, script sendbox ui_gesture_slot3 presentation_rect 1486 804 130 30, script sendbox ui_gesture_status presentation_rect 1094 846 554 34, script show ui_gesture_shell, script show ui_gesture_hand, script show ui_gesture_target, script show ui_gesture_readout, script show ui_gesture_input_x, script show ui_gesture_input_y, script show ui_gesture_input_pinch, script show ui_gesture_slot1, script show ui_gesture_slot1_label, script show ui_gesture_slot2, script show ui_gesture_slot2_label, script show ui_gesture_slot3"
                                }
                            },
                            {
                                "box": {
                                    "id": "page-msg-3-chunk-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2445.5,
                                        500,
                                        720,
                                        36
                                    ],
                                    "text": "script show ui_gesture_slot3_label, script show ui_gesture_status"
                                }
                            },
                            {
                                "box": {
                                    "id": "page-trigger-4",
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
                                        3245.5,
                                        200,
                                        42,
                                        22
                                    ],
                                    "text": "t b b b b"
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
                                        3260.8333333333335,
                                        300,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_input_x, script hide ui_gesture_input_y, script hide ui_gesture_input_pinch, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4"
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
                                        3253.1666666666665,
                                        350,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_gesture_slot4_label, script hide ui_util_eq_title, script hide ui_util_eq_open, script hide ui_master_record_editor, script hide ui_master_monitor, script hide ui_perform_record, script hide ui_perform_stop, script hide ui_perform_record_status, script hide ui_perform_record_time, script hide ui_output_meter_l, script hide ui_output_meter_r, script hide ui_output_dac, script hide ui_output_label, script hide ui_fx_output_mixer, script hide ui_perform_file_play, script hide ui_perform_file_progress, script hide ui_perform_grain_play, script hide ui_perform_grain_preset, script hide ui_perform_grain_wet, script hide ui_perform_grain_density"
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
                                        3245.5,
                                        400,
                                        720,
                                        36
                                    ],
                                    "text": "script hide ui_perform_grain_size, script hide ui_perform_grain_pitch, script hide ui_perform_gesture_readout, script hide ui_perform_gesture_x, script hide ui_perform_gesture_y, script hide ui_perform_gesture_pinch, script hide ui_perform_target, script hide ui_perform_gesture_status, script hide ui_perform_target_vocoder, script hide ui_perform_target_bitcrusher, script hide ui_perform_target_multiband, script hide ui_perform_target_delay, script hide ui_perform_monitor_gain, script hide ui_perform_monitor_mute, script hide ui_perform_monitor_peak, script sendbox ui_master_record_editor presentation_rect 64 266 960 528, script sendbox ui_master_monitor presentation_rect 1094 266 574 578, script show ui_master_shell, script show ui_master_record_editor, script show ui_master_monitor"
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
                                        5
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
                                    ],
                                    "midpoints": [
                                        78,
                                        293,
                                        27.5,
                                        293,
                                        27.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        73.4,
                                        343,
                                        27.5,
                                        343,
                                        27.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        68.8,
                                        393,
                                        27.5,
                                        393,
                                        27.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        64.2,
                                        443,
                                        27.5,
                                        443,
                                        27.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        59.6,
                                        493,
                                        27.5,
                                        493,
                                        27.5,
                                        570,
                                        1915,
                                        570
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
                                        "page-msg-0-chunk-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "page-msg-0-chunk-5",
                                        0
                                    ],
                                    "destination": [
                                        "page-out",
                                        0
                                    ],
                                    "midpoints": [
                                        55,
                                        543,
                                        27.5,
                                        543,
                                        27.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        72,
                                        175,
                                        855,
                                        175
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "page-trigger-1",
                                        4
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
                                    ],
                                    "midpoints": [
                                        878,
                                        293,
                                        827.5,
                                        293,
                                        827.5,
                                        570,
                                        1915,
                                        570
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "page-trigger-1",
                                        3
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
                                    ],
                                    "midpoints": [
                                        872.25,
                                        343,
                                        827.5,
                                        343,
                                        827.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        866.5,
                                        393,
                                        827.5,
                                        393,
                                        827.5,
                                        570,
                                        1915,
                                        570
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
                                        "page-msg-1-chunk-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "page-msg-1-chunk-3",
                                        0
                                    ],
                                    "destination": [
                                        "page-out",
                                        0
                                    ],
                                    "midpoints": [
                                        860.75,
                                        443,
                                        827.5,
                                        443,
                                        827.5,
                                        570,
                                        1915,
                                        570
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
                                        "page-msg-1-chunk-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "page-msg-1-chunk-4",
                                        0
                                    ],
                                    "destination": [
                                        "page-out",
                                        0
                                    ],
                                    "midpoints": [
                                        855,
                                        493,
                                        827.5,
                                        493,
                                        827.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        89,
                                        175,
                                        1655,
                                        175
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "page-trigger-2",
                                        4
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
                                    ],
                                    "midpoints": [
                                        1678,
                                        293,
                                        1627.5,
                                        293,
                                        1627.5,
                                        570,
                                        1915,
                                        570
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "page-trigger-2",
                                        3
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
                                    ],
                                    "midpoints": [
                                        1672.25,
                                        343,
                                        1627.5,
                                        343,
                                        1627.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        1666.5,
                                        393,
                                        1627.5,
                                        393,
                                        1627.5,
                                        570,
                                        1915,
                                        570
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
                                        "page-msg-2-chunk-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "page-msg-2-chunk-3",
                                        0
                                    ],
                                    "destination": [
                                        "page-out",
                                        0
                                    ],
                                    "midpoints": [
                                        1660.75,
                                        443,
                                        1627.5,
                                        443,
                                        1627.5,
                                        570,
                                        1915,
                                        570
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
                                        "page-msg-2-chunk-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "page-msg-2-chunk-4",
                                        0
                                    ],
                                    "destination": [
                                        "page-out",
                                        0
                                    ],
                                    "midpoints": [
                                        1655,
                                        493,
                                        1627.5,
                                        493,
                                        1627.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        106,
                                        175,
                                        2455,
                                        175
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "page-trigger-3",
                                        5
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
                                    ],
                                    "midpoints": [
                                        2478,
                                        293,
                                        2427.5,
                                        293,
                                        2427.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        2473.4,
                                        343,
                                        2427.5,
                                        343,
                                        2427.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        2468.8,
                                        393,
                                        2427.5,
                                        393,
                                        2427.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        2464.2,
                                        443,
                                        2427.5,
                                        443,
                                        2427.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        2459.6,
                                        493,
                                        2427.5,
                                        493,
                                        2427.5,
                                        570,
                                        1915,
                                        570
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
                                        "page-msg-3-chunk-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "page-msg-3-chunk-5",
                                        0
                                    ],
                                    "destination": [
                                        "page-out",
                                        0
                                    ],
                                    "midpoints": [
                                        2455,
                                        543,
                                        2427.5,
                                        543,
                                        2427.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        123,
                                        175,
                                        3255,
                                        175
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
                                    ],
                                    "midpoints": [
                                        3278,
                                        293,
                                        3227.5,
                                        293,
                                        3227.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        3270.3333333333335,
                                        343,
                                        3227.5,
                                        343,
                                        3227.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        3262.6666666666665,
                                        393,
                                        3227.5,
                                        393,
                                        3227.5,
                                        570,
                                        1915,
                                        570
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
                                    ],
                                    "midpoints": [
                                        3255,
                                        443,
                                        3227.5,
                                        443,
                                        3227.5,
                                        570,
                                        1915,
                                        570
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-6"
                    },
                    "patching_rect": [
                        40,
                        190,
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
                        400,
                        350,
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
                        2920,
                        610,
                        90,
                        22
                    ],
                    "presentation": 0,
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
                        3020,
                        610,
                        55,
                        22
                    ],
                    "presentation": 0,
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
                        3090,
                        612,
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
                                    ],
                                    "midpoints": [
                                        219.5,
                                        116,
                                        281,
                                        116
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
                                    ],
                                    "midpoints": [
                                        405.5,
                                        116,
                                        467,
                                        116
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
                                    ],
                                    "midpoints": [
                                        33.5,
                                        116,
                                        95,
                                        116
                                    ]
                                }
                            }
                        ],
                        "originid": "pat-8"
                    },
                    "patching_rect": [
                        40,
                        450,
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
                                    ],
                                    "midpoints": [
                                        33.5,
                                        426,
                                        39,
                                        426
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
                                    ],
                                    "midpoints": [
                                        59.5,
                                        426,
                                        69,
                                        426
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
                                    ],
                                    "midpoints": [
                                        223.5,
                                        426,
                                        229,
                                        426
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
                                    ],
                                    "midpoints": [
                                        249.5,
                                        426,
                                        259,
                                        426
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
                                    ],
                                    "midpoints": [
                                        413.5,
                                        426,
                                        419,
                                        426
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
                                    ],
                                    "midpoints": [
                                        439.5,
                                        426,
                                        449,
                                        426
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
                                    ],
                                    "midpoints": [
                                        603.5,
                                        426,
                                        609,
                                        426
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
                                    ],
                                    "midpoints": [
                                        629.5,
                                        426,
                                        639,
                                        426
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
                                    ],
                                    "midpoints": [
                                        809.5,
                                        406,
                                        815,
                                        406
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        1500,
                        1380,
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
                        40,
                        500,
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
                    "numoutlets": 3,
                    "offset": [
                        0,
                        0
                    ],
                    "outlettype": [
                        "signal",
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        500,
                        500,
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
                        1060,
                        500,
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
                        500,
                        980,
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
                        500,
                        1380,
                        760,
                        225
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        24,
                        160,
                        760,
                        268
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
                        1900,
                        500,
                        620,
                        450
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        402,
                        172,
                        798,
                        486
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
                        3400,
                        900,
                        250,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1094,
                        746,
                        554,
                        18
                    ],
                    "text": "Bitcrusher dual-hand mapping",
                    "varname": "ui_gesture_map_title",
                    "fontface": 0,
                    "fontsize": 10,
                    "textcolor": [
                        0.36,
                        0.5,
                        0.44,
                        1
                    ]
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
                        3400,
                        940,
                        70,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1110,
                        804,
                        130,
                        30
                    ],
                    "varname": "ui_gesture_slot1",
                    "bgcolor": [
                        1,
                        0.98,
                        0.91,
                        1
                    ],
                    "fontface": 1,
                    "fontsize": 20,
                    "numdecimalplaces": 2,
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
                    "hidden": 1,
                    "id": "pm-slot1-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        3480,
                        942,
                        160,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1110,
                        776,
                        170,
                        22
                    ],
                    "text": "Bit Depth (2-24 bit)",
                    "varname": "ui_gesture_slot1_label",
                    "fontsize": 8,
                    "textcolor": [
                        0.49,
                        0.58,
                        0.54,
                        1
                    ]
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
                        3400,
                        980,
                        70,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1298,
                        804,
                        130,
                        30
                    ],
                    "varname": "ui_gesture_slot2",
                    "bgcolor": [
                        1,
                        0.98,
                        0.91,
                        1
                    ],
                    "fontface": 1,
                    "fontsize": 20,
                    "numdecimalplaces": 2,
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
                    "hidden": 1,
                    "id": "pm-slot2-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        3480,
                        982,
                        170,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1298,
                        776,
                        170,
                        22
                    ],
                    "text": "Sample Rate (500-48000 Hz)",
                    "varname": "ui_gesture_slot2_label",
                    "fontsize": 8,
                    "textcolor": [
                        0.49,
                        0.58,
                        0.54,
                        1
                    ]
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
                        3400,
                        1020,
                        70,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1486,
                        804,
                        130,
                        30
                    ],
                    "varname": "ui_gesture_slot3",
                    "bgcolor": [
                        1,
                        0.98,
                        0.91,
                        1
                    ],
                    "fontface": 1,
                    "fontsize": 20,
                    "numdecimalplaces": 2,
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
                    "hidden": 1,
                    "id": "pm-slot3-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        3480,
                        1022,
                        170,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1486,
                        776,
                        170,
                        22
                    ],
                    "text": "Pinch Drive (0-1)",
                    "varname": "ui_gesture_slot3_label",
                    "fontsize": 8,
                    "textcolor": [
                        0.49,
                        0.58,
                        0.54,
                        1
                    ]
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
                        3400,
                        1060,
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
                        3480,
                        1062,
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
                    "text": "GATE: 1-5 TARGET / FIST HOLD",
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
                        1840,
                        2940,
                        120,
                        12
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1402,
                        789,
                        18,
                        58
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
                        1840,
                        2980,
                        120,
                        12
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1430,
                        789,
                        18,
                        58
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
                        1840,
                        3040,
                        45,
                        45
                    ],
                    "presentation": 0,
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
                        1900,
                        3050,
                        100,
                        20
                    ],
                    "presentation": 0,
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
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "hidden": 1,
                    "id": "pm-record-editor",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "mt_record_export_editor.maxpat",
                    "numinlets": 3,
                    "numoutlets": 6,
                    "offset": [
                        0,
                        0
                    ],
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "int",
                        "int",
                        ""
                    ],
                    "patching_rect": [
                        40,
                        2820,
                        960,
                        528
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        64,
                        266,
                        960,
                        528
                    ],
                    "varname": "ui_master_record_editor",
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
                    "id": "pm-master-monitor",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "mt_master_monitor.maxpat",
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
                        1200,
                        2820,
                        574,
                        578
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1094,
                        266,
                        574,
                        578
                    ],
                    "varname": "ui_master_monitor",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "pm-record-audition-bypass",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        1040,
                        3000,
                        128,
                        22
                    ],
                    "text": "mt_serial_bypass"
                }
            },
            {
                "box": {
                    "id": "pm-record-quick-record",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "mode": 0,
                    "text": "●  RECORD",
                    "texton": "●  RECORD",
                    "rounded": 8,
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
                    "textcolor": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "textoncolor": [
                        1,
                        1,
                        1,
                        1
                    ],
                    "patching_rect": [
                        40,
                        3380,
                        112,
                        32
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        430,
                        814,
                        112,
                        34
                    ],
                    "varname": "ui_perform_record"
                }
            },
            {
                "box": {
                    "id": "pm-record-quick-stop",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "mode": 0,
                    "text": "■  STOP",
                    "texton": "■  STOP",
                    "rounded": 8,
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
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "textoncolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "patching_rect": [
                        170,
                        3380,
                        104,
                        32
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        554,
                        814,
                        96,
                        34
                    ],
                    "varname": "ui_perform_stop"
                }
            },
            {
                "box": {
                    "id": "pm-record-command-record",
                    "maxclass": "message",
                    "patching_rect": [
                        40,
                        3430,
                        52,
                        22
                    ],
                    "text": "record"
                }
            },
            {
                "box": {
                    "id": "pm-record-command-stop",
                    "maxclass": "message",
                    "patching_rect": [
                        170,
                        3430,
                        44,
                        22
                    ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "pm-record-quick-status",
                    "maxclass": "comment",
                    "patching_rect": [
                        290,
                        3380,
                        124,
                        32
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        682,
                        814,
                        160,
                        34
                    ],
                    "text": "READY",
                    "fontsize": 11,
                    "textcolor": [
                        0.24,
                        0.4,
                        0.34,
                        1
                    ],
                    "textjustification": 1,
                    "varname": "ui_perform_record_status"
                }
            },
            {
                "box": {
                    "id": "pm-record-quick-status-set",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        290,
                        3430,
                        76,
                        22
                    ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "pm-record-quick-time",
                    "maxclass": "comment",
                    "patching_rect": [
                        430,
                        3380,
                        80,
                        32
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1086,
                        814,
                        86,
                        34
                    ],
                    "text": "00:00",
                    "fontsize": 15,
                    "fontface": 1,
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "textjustification": 1,
                    "varname": "ui_perform_record_time"
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
                        500,
                        1650,
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
                        500,
                        2440,
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
                        500,
                        1980,
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
                    "numoutlets": 15,
                    "outlettype": [
                        "",
                        "",
                        "",
                        "",
                        "",
                        "",
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
                        1900,
                        980,
                        330,
                        22
                    ],
                    "text": "js Patcher:/../javascript/mt_fx_hand_mapper.js",
                    "varname": "gesture_fx_mapper"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 32,
                    "hidden": 1,
                    "id": "pm-gesture-readout",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        3400,
                        1100,
                        220,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1094,
                        262,
                        574,
                        60
                    ],
                    "text": "GESTURE READ: --",
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "varname": "ui_gesture_readout"
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
                        2300,
                        960,
                        120,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1000,
                        190,
                        300,
                        20
                    ],
                    "text": "CONTROL TARGET · MANUAL OR GESTURE SELECT",
                    "textcolor": [
                        0.27,
                        0.38,
                        0.33,
                        1
                    ],
                    "varname": "ui_gesture_target_label"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "pm-gesture-target",
                    "bgcolor": [
                        0.86,
                        0.91,
                        0.87,
                        1
                    ],
                    "fontsize": 10,
                    "htabcolor": [
                        0.94,
                        0.79,
                        0.3,
                        1
                    ],
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
                        2300,
                        1000,
                        220,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1094,
                        468,
                        574,
                        62
                    ],
                    "tabcolor": [
                        0.86,
                        0.91,
                        0.87,
                        1
                    ],
                    "tabs": [
                        "0 HOLD",
                        "1 VOCODER",
                        "2 BITCRUSHER",
                        "3 MULTIBAND",
                        "4 DELAY",
                        "5 ALL"
                    ],
                    "textcolor": [
                        0.19,
                        0.28,
                        0.24,
                        1
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
                        2530,
                        960,
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
                        "int"
                    ],
                    "patching_rect": [
                        2300,
                        1040,
                        70,
                        22
                    ],
                    "text": "t i i i i i i i i i"
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
                        1900,
                        1020,
                        45,
                        22
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "id": "pm-gesture-route-fanout",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        2300,
                        1080,
                        70,
                        22
                    ],
                    "text": "t i i i"
                }
            },
            {
                "box": {
                    "id": "pm-gesture-target-set",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2530,
                        1000,
                        55,
                        22
                    ],
                    "text": "set $1"
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
                        1980,
                        1020,
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
                        1900,
                        1060,
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
                        1980,
                        1060,
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
                        1900,
                        1100,
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
                        1980,
                        1100,
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
                        3400,
                        1140,
                        300,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1094,
                        846,
                        554,
                        34
                    ],
                    "fontface": 1,
                    "fontsize": 11,
                    "text": "HOLD / NO TARGET",
                    "textcolor": [
                        0.94,
                        0.97,
                        0.95,
                        1
                    ],
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
                        3400,
                        1180,
                        450,
                        36
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1000,
                        750,
                        620,
                        36
                    ],
                    "text": "PARAMETER ZONE: MOVE INSIDE RIGHT-SIDE AREA\nGATE: 1 VOCODER / 2 BITCRUSHER / 3 MULTIBAND / 4 DELAY / 5 ALL · FIST HOLD",
                    "varname": "ui_gesture_zone_note"
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
                    "hidden": 1,
                    "htabcolor": [
                        0.941176,
                        0.788235,
                        0.301961,
                        1
                    ],
                    "id": "pm-source-selector",
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
                        40,
                        230,
                        646,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1034,
                        126,
                        646,
                        48
                    ],
                    "tabcolor": [
                        0.862745,
                        0.909804,
                        0.87451,
                        1
                    ],
                    "tabs": [
                        "MIC INPUT",
                        "FILE PLAYER",
                        "GRANULAR"
                    ],
                    "textcolor": [
                        0.192157,
                        0.278431,
                        0.239216,
                        1
                    ],
                    "varname": "ui_source_selector"
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
                    "hidden": 1,
                    "htabcolor": [
                        0.941176,
                        0.788235,
                        0.301961,
                        1
                    ],
                    "id": "pm-fx-selector",
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
                        720,
                        230,
                        1100,
                        48
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        600,
                        126,
                        1100,
                        48
                    ],
                    "tabcolor": [
                        0.862745,
                        0.909804,
                        0.87451,
                        1
                    ],
                    "tabs": [
                        "VOCODER",
                        "BITCRUSHER",
                        "MULTIBAND",
                        "FEEDBACK DELAY"
                    ],
                    "textcolor": [
                        0.192157,
                        0.278431,
                        0.239216,
                        1
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
                                    "text": "script hide ui_source_file, script hide ui_source_grain, script sendbox ui_source_mic presentation_rect 234 350 420 280, script show ui_source_mic"
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
                                    "text": "script hide ui_source_mic, script hide ui_source_grain, script sendbox ui_source_file presentation_rect 184 320 520 340, script show ui_source_file"
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
                                    "text": "script hide ui_source_mic, script hide ui_source_file, script sendbox ui_source_grain presentation_rect 84 270 720 440, script show ui_source_grain"
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
                                    ],
                                    "midpoints": [
                                        39,
                                        62,
                                        33.5,
                                        62
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
                                    ],
                                    "midpoints": [
                                        33.5,
                                        204,
                                        39,
                                        204
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
                                    ],
                                    "midpoints": [
                                        57.16666666666667,
                                        123,
                                        33.5,
                                        123
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
                                    ],
                                    "midpoints": [
                                        33.5,
                                        226,
                                        39,
                                        226
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
                                    ],
                                    "midpoints": [
                                        80.83333333333334,
                                        145,
                                        33.5,
                                        145
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
                                    ],
                                    "midpoints": [
                                        33.5,
                                        248,
                                        39,
                                        248
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        40,
                        295,
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
                                    "text": "script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script sendbox ui_fx_vocoder presentation_rect 190 366 760 268, script show ui_fx_vocoder"
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
                                    "text": "script hide ui_fx_vocoder, script hide ui_fx_feedback_delay, script hide ui_fx_multiband, script sendbox ui_fx_bitcrusher presentation_rect 190 366 760 268, script show ui_fx_bitcrusher"
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
                                    "text": "script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_feedback_delay, script sendbox ui_fx_multiband presentation_rect 20 300 1100 400, script show ui_fx_multiband"
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
                                    "text": "script hide ui_fx_vocoder, script hide ui_fx_bitcrusher, script hide ui_fx_multiband, script sendbox ui_fx_feedback_delay presentation_rect 145 366 850 268, script show ui_fx_feedback_delay"
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
                                    ],
                                    "midpoints": [
                                        39,
                                        62,
                                        33.5,
                                        62
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
                                    ],
                                    "midpoints": [
                                        33.5,
                                        226,
                                        39,
                                        226
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
                                    ],
                                    "midpoints": [
                                        51.25,
                                        123,
                                        33.5,
                                        123
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
                                    ],
                                    "midpoints": [
                                        33.5,
                                        248,
                                        39,
                                        248
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
                                    ],
                                    "midpoints": [
                                        69,
                                        145,
                                        33.5,
                                        145
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
                                    ],
                                    "midpoints": [
                                        33.5,
                                        270,
                                        39,
                                        270
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
                                    ],
                                    "midpoints": [
                                        86.75,
                                        167,
                                        33.5,
                                        167
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
                                    ],
                                    "midpoints": [
                                        33.5,
                                        292,
                                        39,
                                        292
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        720,
                        295,
                        150,
                        22
                    ],
                    "text": "p FX_detail_router"
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
                        130,
                        90,
                        62,
                        22
                    ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "pm-bitcrusher-bypass",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        1300,
                        1760,
                        110,
                        22
                    ],
                    "text": "mt_serial_bypass"
                }
            },
            {
                "box": {
                    "id": "pm-multiband-bypass",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        1630,
                        2160,
                        110,
                        22
                    ],
                    "text": "mt_serial_bypass"
                }
            },
            {
                "box": {
                    "id": "pm-feedback-delay-bypass",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        1400,
                        2560,
                        110,
                        22
                    ],
                    "text": "mt_serial_bypass"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.94,
                        0.96,
                        0.94,
                        1
                    ],
                    "fontface": 1,
                    "fontsize": 20,
                    "hidden": 1,
                    "id": "pm-gesture-input-x",
                    "maxclass": "flonum",
                    "numdecimalplaces": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        3400,
                        1230,
                        90,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1110,
                        694,
                        130,
                        30
                    ],
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "varname": "ui_gesture_input_x"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.94,
                        0.96,
                        0.94,
                        1
                    ],
                    "fontface": 1,
                    "fontsize": 20,
                    "hidden": 1,
                    "id": "pm-gesture-input-y",
                    "maxclass": "flonum",
                    "numdecimalplaces": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        3500,
                        1230,
                        90,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1298,
                        694,
                        130,
                        30
                    ],
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "varname": "ui_gesture_input_y"
                }
            },
            {
                "box": {
                    "bgcolor": [
                        0.94,
                        0.96,
                        0.94,
                        1
                    ],
                    "fontface": 1,
                    "fontsize": 20,
                    "hidden": 1,
                    "id": "pm-gesture-input-pinch",
                    "maxclass": "flonum",
                    "numdecimalplaces": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        3600,
                        1230,
                        90,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1486,
                        694,
                        130,
                        30
                    ],
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "varname": "ui_gesture_input_pinch"
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
                    "id": "pm-fx-output-mixer",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "mt_fx_output_trim_panel.maxpat",
                    "numinlets": 13,
                    "numoutlets": 4,
                    "offset": [
                        0,
                        0
                    ],
                    "outlettype": [
                        "",
                        "",
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1900,
                        1600,
                        560,
                        450
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1140,
                        270,
                        560,
                        450
                    ],
                    "varname": "ui_fx_output_mixer",
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "pm-fx-output-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        1900,
                        2080,
                        62,
                        22
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "pm-fx-output-load-defer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        1975,
                        2080,
                        62,
                        22
                    ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "pm-fx-output-load-trigger",
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
                        2050,
                        2080,
                        76,
                        22
                    ],
                    "text": "t b b b b"
                }
            },
            {
                "box": {
                    "id": "pm-fx-meter-vocoder-enable",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        2500,
                        1600,
                        42,
                        22
                    ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "id": "pm-fx-meter-vocoder-l-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        2500,
                        1640,
                        30,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "pm-fx-meter-vocoder-r-gate",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        2545,
                        1640,
                        30,
                        22
                    ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "pm-fx-output-vocoder-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1900,
                        2120,
                        430,
                        22
                    ],
                    "text": "pattr fx_output_vocoder @bindto ui_fx_vocoder::vocoder_output_gain @autorestore 0 @thru 2"
                }
            },
            {
                "box": {
                    "id": "pm-fx-output-bitcrusher-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1900,
                        2160,
                        430,
                        22
                    ],
                    "text": "pattr fx_output_bitcrusher @bindto ui_fx_bitcrusher::bitcrusher_output_gain @autorestore 0 @thru 2"
                }
            },
            {
                "box": {
                    "id": "pm-fx-output-multiband-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1900,
                        2200,
                        430,
                        22
                    ],
                    "text": "pattr fx_output_multiband @bindto ui_fx_multiband::multiband_filter_output_gain @autorestore 0 @thru 2"
                }
            },
            {
                "box": {
                    "id": "pm-fx-output-feedback-delay-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1900,
                        2240,
                        430,
                        22
                    ],
                    "text": "pattr fx_output_feedback_delay @bindto ui_fx_feedback_delay::delay_output_gain @autorestore 0 @thru 2"
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
                        2700,
                        500,
                        48,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        290,
                        294,
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
                        2764,
                        500,
                        48,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        290,
                        368,
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
                        2828,
                        500,
                        48,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        290,
                        492,
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
                        2892,
                        500,
                        48,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1616,
                        258,
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
                        2956,
                        500,
                        48,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1616,
                        357,
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
                        3020,
                        500,
                        48,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1616,
                        555,
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
                        3084,
                        500,
                        48,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1616,
                        456,
                        48,
                        28
                    ],
                    "varname": "ui_perform_multiband"
                }
            },
            {
                "box": {
                    "id": "pm-perform-mic-eq",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "mode": 0,
                    "text": "OPEN EQ",
                    "rounded": 6,
                    "bgcolor": [
                        0.92,
                        0.94,
                        0.92,
                        1
                    ],
                    "textcolor": [
                        0.15,
                        0.28,
                        0.23,
                        1
                    ],
                    "patching_rect": [
                        2700,
                        460,
                        80,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        196,
                        293,
                        82,
                        30
                    ],
                    "varname": "ui_perform_mic_eq"
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
                                    ],
                                    "midpoints": [
                                        39,
                                        70,
                                        33.5,
                                        70
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
                                    ],
                                    "midpoints": [
                                        33.5,
                                        206,
                                        39,
                                        206
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
                                    ],
                                    "midpoints": [
                                        149,
                                        70,
                                        143.5,
                                        70
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
                                    ],
                                    "midpoints": [
                                        143.5,
                                        206,
                                        149,
                                        206
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
                                    ],
                                    "midpoints": [
                                        259,
                                        70,
                                        253.5,
                                        70
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
                                    ],
                                    "midpoints": [
                                        253.5,
                                        206,
                                        259,
                                        206
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
                                    ],
                                    "midpoints": [
                                        369,
                                        70,
                                        363.5,
                                        70
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
                                    ],
                                    "midpoints": [
                                        363.5,
                                        206,
                                        369,
                                        206
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
                                    ],
                                    "midpoints": [
                                        479,
                                        70,
                                        473.5,
                                        70
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
                                    ],
                                    "midpoints": [
                                        473.5,
                                        206,
                                        479,
                                        206
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
                                    ],
                                    "midpoints": [
                                        589,
                                        70,
                                        583.5,
                                        70
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
                                    ],
                                    "midpoints": [
                                        583.5,
                                        206,
                                        589,
                                        206
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
                                    ],
                                    "midpoints": [
                                        699,
                                        70,
                                        693.5,
                                        70
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
                                    ],
                                    "midpoints": [
                                        693.5,
                                        206,
                                        699,
                                        206
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        2700,
                        550,
                        150,
                        22
                    ],
                    "text": "p Perform_quick_state"
                }
            },
            {
                "box": {
                    "id": "pm-perform-dsp",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "mode": 1,
                    "text": "DSP OFF",
                    "texton": "DSP ON",
                    "rounded": 9,
                    "bgcolor": [
                        0.88,
                        0.92,
                        0.89,
                        1
                    ],
                    "bgoncolor": [
                        0.95,
                        0.79,
                        0.3,
                        1
                    ],
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "textoncolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "patching_rect": [
                        2700,
                        610,
                        120,
                        46
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1582,
                        25,
                        120,
                        46
                    ],
                    "varname": "ui_perform_dsp"
                }
            },
            {
                "box": {
                    "id": "pm-dsp-select",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        2840,
                        622,
                        54,
                        22
                    ],
                    "text": "sel 1 0"
                }
            },
            {
                "box": {
                    "id": "pm-perform-file-play",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "mode": 1,
                    "text": "▶",
                    "texton": "❚❚",
                    "rounded": 5,
                    "patching_rect": [
                        2700,
                        700,
                        32,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        68,
                        420,
                        32,
                        28
                    ],
                    "varname": "ui_perform_file_play"
                }
            },
            {
                "box": {
                    "id": "pm-perform-file-progress",
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "floatoutput": 1,
                    "ignoreclick": 1,
                    "min": 0,
                    "size": 1,
                    "patching_rect": [
                        2745,
                        709,
                        150,
                        10
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        112,
                        424,
                        150,
                        10
                    ],
                    "varname": "ui_perform_file_progress"
                }
            },
            {
                "box": {
                    "id": "pm-perform-grain-play",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "mode": 1,
                    "text": "PLAY",
                    "texton": "STOP",
                    "rounded": 5,
                    "patching_rect": [
                        2700,
                        790,
                        46,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        68,
                        543,
                        46,
                        28
                    ],
                    "varname": "ui_perform_grain_play"
                }
            },
            {
                "box": {
                    "id": "pm-perform-grain-preset",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "items": [
                        "Safe Cloud",
                        ",",
                        "Frozen Pad",
                        ",",
                        "Rhythmic Dust"
                    ],
                    "patching_rect": [
                        2700,
                        880,
                        144,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        126,
                        543,
                        144,
                        28
                    ],
                    "varname": "ui_perform_grain_preset"
                }
            },
            {
                "box": {
                    "id": "pm-perform-grain-wet",
                    "maxclass": "pictctrl",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "frames": 64,
                    "mode": 2,
                    "multiplier": 1,
                    "name": "granular_knob_v1.png",
                    "range": 255,
                    "tracking": 1,
                    "trackhorizontal": 1,
                    "trackvertical": 1,
                    "patching_rect": [
                        2700,
                        970,
                        44,
                        44
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        67,
                        754,
                        44,
                        44
                    ],
                    "varname": "ui_perform_grain_wet"
                }
            },
            {
                "box": {
                    "id": "pm-perform-grain-density",
                    "maxclass": "pictctrl",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "frames": 64,
                    "mode": 2,
                    "multiplier": 1,
                    "name": "granular_knob_v1.png",
                    "range": 255,
                    "tracking": 1,
                    "trackhorizontal": 1,
                    "trackvertical": 1,
                    "patching_rect": [
                        2700,
                        1070,
                        44,
                        44
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        135,
                        754,
                        44,
                        44
                    ],
                    "varname": "ui_perform_grain_density"
                }
            },
            {
                "box": {
                    "id": "pm-perform-grain-size",
                    "maxclass": "pictctrl",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "frames": 64,
                    "mode": 2,
                    "multiplier": 1,
                    "name": "granular_knob_v1.png",
                    "range": 255,
                    "tracking": 1,
                    "trackhorizontal": 1,
                    "trackvertical": 1,
                    "patching_rect": [
                        2700,
                        1170,
                        44,
                        44
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        203,
                        754,
                        44,
                        44
                    ],
                    "varname": "ui_perform_grain_size"
                }
            },
            {
                "box": {
                    "id": "pm-perform-grain-pitch",
                    "maxclass": "pictctrl",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "frames": 64,
                    "mode": 2,
                    "multiplier": 1,
                    "name": "granular_knob_v1.png",
                    "range": 255,
                    "tracking": 1,
                    "trackhorizontal": 1,
                    "trackvertical": 1,
                    "patching_rect": [
                        2700,
                        1270,
                        44,
                        44
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        271,
                        754,
                        44,
                        44
                    ],
                    "varname": "ui_perform_grain_pitch"
                }
            },
            {
                "box": {
                    "id": "pm-perform-gesture-readout",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "fontsize": 11,
                    "fontface": 1,
                    "text": "GESTURE READ: --",
                    "textcolor": [
                        0.97,
                        0.99,
                        0.97,
                        1
                    ],
                    "patching_rect": [
                        3400,
                        1280,
                        202,
                        36
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        418,
                        590,
                        202,
                        36
                    ],
                    "varname": "ui_perform_gesture_readout"
                }
            },
            {
                "box": {
                    "id": "pm-perform-gesture-fanout",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "list",
                        "list"
                    ],
                    "patching_rect": [
                        3400,
                        1325,
                        42,
                        22
                    ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "pm-perform-gesture-x",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "ignoreclick": 1,
                    "numdecimalplaces": 2,
                    "triangle": 0,
                    "bgcolor": [
                        0.94,
                        0.96,
                        0.94,
                        1
                    ],
                    "bordercolor": [
                        0.76,
                        0.82,
                        0.79,
                        1
                    ],
                    "fontsize": 11,
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "patching_rect": [
                        3400,
                        1365,
                        82,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        418,
                        628,
                        92,
                        24
                    ],
                    "varname": "ui_perform_gesture_x"
                }
            },
            {
                "box": {
                    "id": "pm-perform-gesture-y",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "ignoreclick": 1,
                    "numdecimalplaces": 2,
                    "triangle": 0,
                    "bgcolor": [
                        0.94,
                        0.96,
                        0.94,
                        1
                    ],
                    "bordercolor": [
                        0.76,
                        0.82,
                        0.79,
                        1
                    ],
                    "fontsize": 11,
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "patching_rect": [
                        3500,
                        1365,
                        82,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        526,
                        628,
                        92,
                        24
                    ],
                    "varname": "ui_perform_gesture_y"
                }
            },
            {
                "box": {
                    "id": "pm-perform-gesture-pinch",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "ignoreclick": 1,
                    "numdecimalplaces": 2,
                    "triangle": 0,
                    "bgcolor": [
                        0.94,
                        0.96,
                        0.94,
                        1
                    ],
                    "bordercolor": [
                        0.76,
                        0.82,
                        0.79,
                        1
                    ],
                    "fontsize": 11,
                    "textcolor": [
                        0.12,
                        0.25,
                        0.21,
                        1
                    ],
                    "patching_rect": [
                        3600,
                        1365,
                        82,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        634,
                        628,
                        110,
                        24
                    ],
                    "varname": "ui_perform_gesture_pinch"
                }
            },
            {
                "box": {
                    "id": "pm-perform-target",
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "ignoreclick": 1,
                    "items": [
                        "HOLD",
                        ",",
                        "VOCODER",
                        ",",
                        "BITCRUSHER",
                        ",",
                        "MULTIBAND",
                        ",",
                        "DELAY",
                        ",",
                        "ALL"
                    ],
                    "patching_rect": [
                        3400,
                        1405,
                        220,
                        36
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        964,
                        590,
                        220,
                        36
                    ],
                    "varname": "ui_perform_target"
                }
            },
            {
                "box": {
                    "id": "pm-perform-gesture-status",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "fontsize": 9,
                    "text": "CONTROL IDLE",
                    "patching_rect": [
                        3630,
                        1405,
                        180,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1008,
                        628,
                        176,
                        20
                    ],
                    "varname": "ui_perform_gesture_status"
                }
            },
            {
                "box": {
                    "id": "pm-perform-status-fanout",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "list",
                        "list"
                    ],
                    "patching_rect": [
                        3630,
                        1445,
                        42,
                        22
                    ],
                    "text": "t l l"
                }
            },
            {
                "box": {
                    "id": "pm-perform-target-vocoder",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "ignoreclick": 1,
                    "mode": 1,
                    "rounded": 11,
                    "text": "",
                    "texton": "TARGET",
                    "bgcolor": [
                        0.94,
                        0.96,
                        0.94,
                        1
                    ],
                    "bgoncolor": [
                        0.95,
                        0.79,
                        0.3,
                        1
                    ],
                    "fontsize": 9,
                    "patching_rect": [
                        3400,
                        1485,
                        76,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1522,
                        244,
                        76,
                        22
                    ],
                    "varname": "ui_perform_target_vocoder"
                }
            },
            {
                "box": {
                    "id": "pm-perform-target-bitcrusher",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "ignoreclick": 1,
                    "mode": 1,
                    "rounded": 11,
                    "text": "",
                    "texton": "TARGET",
                    "bgcolor": [
                        0.94,
                        0.96,
                        0.94,
                        1
                    ],
                    "bgoncolor": [
                        0.95,
                        0.79,
                        0.3,
                        1
                    ],
                    "fontsize": 9,
                    "patching_rect": [
                        3490,
                        1485,
                        76,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1522,
                        343,
                        76,
                        22
                    ],
                    "varname": "ui_perform_target_bitcrusher"
                }
            },
            {
                "box": {
                    "id": "pm-perform-target-multiband",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "ignoreclick": 1,
                    "mode": 1,
                    "rounded": 11,
                    "text": "",
                    "texton": "TARGET",
                    "bgcolor": [
                        0.94,
                        0.96,
                        0.94,
                        1
                    ],
                    "bgoncolor": [
                        0.95,
                        0.79,
                        0.3,
                        1
                    ],
                    "fontsize": 9,
                    "patching_rect": [
                        3580,
                        1485,
                        76,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1522,
                        442,
                        76,
                        22
                    ],
                    "varname": "ui_perform_target_multiband"
                }
            },
            {
                "box": {
                    "id": "pm-perform-target-delay",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "ignoreclick": 1,
                    "mode": 1,
                    "rounded": 11,
                    "text": "",
                    "texton": "TARGET",
                    "bgcolor": [
                        0.94,
                        0.96,
                        0.94,
                        1
                    ],
                    "bgoncolor": [
                        0.95,
                        0.79,
                        0.3,
                        1
                    ],
                    "fontsize": 9,
                    "patching_rect": [
                        3670,
                        1485,
                        76,
                        22
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1522,
                        541,
                        76,
                        22
                    ],
                    "varname": "ui_perform_target_delay"
                }
            },
            {
                "box": {
                    "id": "pm-perform-target-vocoder-eq",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        3400,
                        1520,
                        36,
                        22
                    ],
                    "text": "== 1"
                }
            },
            {
                "box": {
                    "id": "pm-perform-target-bitcrusher-eq",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        3490,
                        1520,
                        36,
                        22
                    ],
                    "text": "== 2"
                }
            },
            {
                "box": {
                    "id": "pm-perform-target-multiband-eq",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        3580,
                        1520,
                        36,
                        22
                    ],
                    "text": "== 3"
                }
            },
            {
                "box": {
                    "id": "pm-perform-target-delay-eq",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        3670,
                        1520,
                        36,
                        22
                    ],
                    "text": "== 4"
                }
            },
            {
                "box": {
                    "id": "pm-perform-monitor-gain",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_mmin": -70,
                            "parameter_mmax": 6,
                            "parameter_type": 0,
                            "parameter_unitstyle": 4,
                            "parameter_shortname": "Monitor Level"
                        }
                    },
                    "patching_rect": [
                        2700,
                        1370,
                        52,
                        52
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1270,
                        797,
                        52,
                        52
                    ],
                    "varname": "ui_perform_monitor_gain"
                }
            },
            {
                "box": {
                    "id": "pm-perform-monitor-mute",
                    "maxclass": "textbutton",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "mode": 1,
                    "rounded": 6,
                    "text": "MUTE",
                    "texton": "MUTED",
                    "bgcolor": [
                        1,
                        0.98,
                        0.91,
                        1
                    ],
                    "bgoncolor": [
                        0.95,
                        0.79,
                        0.3,
                        1
                    ],
                    "patching_rect": [
                        2700,
                        1470,
                        104,
                        28
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1472,
                        830,
                        104,
                        28
                    ],
                    "varname": "ui_perform_monitor_mute"
                }
            },
            {
                "box": {
                    "id": "pm-perform-monitor-peak",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "ignoreclick": 1,
                    "numdecimalplaces": 1,
                    "patching_rect": [
                        2700,
                        1550,
                        98,
                        24
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1474,
                        800,
                        98,
                        24
                    ],
                    "varname": "ui_perform_monitor_peak"
                }
            },
            {
                "box": {
                    "id": "pm-perform-file-play-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2700,
                        740,
                        520,
                        22
                    ],
                    "text": "pattr perform_file_play @bindto ui_source_file::file_play @autorestore 0 @thru 2"
                }
            },
            {
                "box": {
                    "id": "pm-perform-grain-play-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2700,
                        830,
                        520,
                        22
                    ],
                    "text": "pattr perform_grain_play @bindto ui_source_grain::granular_play @autorestore 0 @thru 2"
                }
            },
            {
                "box": {
                    "id": "pm-perform-grain-preset-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2700,
                        920,
                        520,
                        22
                    ],
                    "text": "pattr perform_grain_preset @bindto ui_source_grain::granular_preset @autorestore 0 @thru 2"
                }
            },
            {
                "box": {
                    "id": "pm-perform-grain-wet-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2700,
                        1020,
                        520,
                        22
                    ],
                    "text": "pattr perform_grain_wet @bindto ui_source_grain::granular_wet @autorestore 0 @thru 2"
                }
            },
            {
                "box": {
                    "id": "pm-perform-grain-density-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2700,
                        1120,
                        520,
                        22
                    ],
                    "text": "pattr perform_grain_density @bindto ui_source_grain::granular_density @autorestore 0 @thru 2"
                }
            },
            {
                "box": {
                    "id": "pm-perform-grain-size-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2700,
                        1220,
                        520,
                        22
                    ],
                    "text": "pattr perform_grain_size @bindto ui_source_grain::granular_grain_size @autorestore 0 @thru 2"
                }
            },
            {
                "box": {
                    "id": "pm-perform-grain-pitch-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2700,
                        1320,
                        520,
                        22
                    ],
                    "text": "pattr perform_grain_pitch @bindto ui_source_grain::granular_pitch @autorestore 0 @thru 2"
                }
            },
            {
                "box": {
                    "id": "pm-perform-monitor-gain-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2700,
                        1430,
                        520,
                        22
                    ],
                    "text": "pattr perform_monitor_gain @bindto ui_master_monitor::master_monitor_gain @autorestore 0 @thru 2"
                }
            },
            {
                "box": {
                    "id": "pm-perform-monitor-mute-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2700,
                        1510,
                        520,
                        22
                    ],
                    "text": "pattr perform_monitor_mute @bindto ui_master_monitor::master_monitor_mute @autorestore 0 @thru 2"
                }
            },
            {
                "box": {
                    "id": "pm-perform-monitor-peak-bind",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        2700,
                        1590,
                        520,
                        22
                    ],
                    "text": "pattr perform_monitor_peak @bindto ui_master_monitor::master_monitor_peak @autorestore 0 @thru 2"
                }
            },
            {
                "box": {
                    "id": "pm-perform-bind-load",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        3300,
                        700,
                        62,
                        22
                    ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "pm-perform-bind-defer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        3375,
                        700,
                        62,
                        22
                    ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "id": "pm-perform-bind-trigger",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 10,
                    "outlettype": [
                        "bang",
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
                        3450,
                        700,
                        152,
                        22
                    ],
                    "text": "t b b b b b b b b b b"
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
                        210.5,
                        510,
                        1250.5,
                        510
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
                        130,
                        510,
                        1157.875,
                        510
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
                        49.5,
                        510,
                        1065.25,
                        510
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
                        3029.5,
                        670,
                        1849.5,
                        670
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
                        2929.5,
                        670,
                        1849.5,
                        670
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
                        760,
                        880,
                        787.375,
                        880
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
                        509.5,
                        880,
                        694.75,
                        880
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
                        1770.5,
                        960,
                        972.625,
                        960
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
                        1069.5,
                        960,
                        880,
                        960
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
                        450.5,
                        820,
                        602.125,
                        820
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
                    ],
                    "midpoints": [
                        49.5,
                        820,
                        509.5,
                        820
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
                    ],
                    "midpoints": [
                        49.5,
                        250,
                        409.5,
                        250
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
                        "p-FX-state-router",
                        0
                    ],
                    "destination": [
                        "pm-vocoder",
                        2
                    ],
                    "midpoints": [
                        1509.5,
                        1430,
                        721.2142857142858,
                        1430
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
                    ],
                    "midpoints": [
                        1549.75,
                        1440,
                        805.9,
                        1440
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
                    ],
                    "midpoints": [
                        1590,
                        1440,
                        786.5,
                        1440
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
                    ],
                    "midpoints": [
                        1630.25,
                        1440,
                        941.9,
                        1440
                    ]
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
                    ],
                    "midpoints": [
                        1670.5,
                        1430,
                        827.0714285714286,
                        1430
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
                    ],
                    "midpoints": [
                        2510.5,
                        970,
                        1909.5,
                        970
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
                    ],
                    "midpoints": [
                        2539.5,
                        1000,
                        2309.5,
                        1000
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
                    ],
                    "midpoints": [
                        2328.625,
                        1090,
                        2220.5,
                        1090
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-gesture-route-fanout",
                        2
                    ],
                    "destination": [
                        "pm-gesture-x-gate",
                        0
                    ],
                    "midpoints": [
                        2360.5,
                        1130,
                        1989.5,
                        1130
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-gesture-route-fanout",
                        1
                    ],
                    "destination": [
                        "pm-gesture-y-gate",
                        0
                    ],
                    "midpoints": [
                        2335,
                        1130,
                        1989.5,
                        1130
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-gesture-route-fanout",
                        0
                    ],
                    "destination": [
                        "pm-gesture-pinch-gate",
                        0
                    ],
                    "midpoints": [
                        2309.5,
                        1130,
                        1989.5,
                        1130
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-bitcrusher-hand-mapper",
                        9
                    ],
                    "destination": [
                        "pm-gesture-route-fanout",
                        0
                    ],
                    "midpoints": [
                        2109.4285714285716,
                        1040,
                        2309.5,
                        1040
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-bitcrusher-hand-mapper",
                        10
                    ],
                    "destination": [
                        "pm-gesture-target-set",
                        0
                    ],
                    "midpoints": [
                        2131.6428571428573,
                        1030,
                        2539.5,
                        1030
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-gesture-target-set",
                        0
                    ],
                    "destination": [
                        "pm-gesture-target",
                        0
                    ],
                    "midpoints": [
                        2539.5,
                        1050,
                        2309.5,
                        1050
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
                    ],
                    "midpoints": [
                        1935.5,
                        1070,
                        3409.5,
                        1070
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
                    ],
                    "midpoints": [
                        1909.5,
                        1070,
                        2032.5,
                        1070
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
                    ],
                    "midpoints": [
                        1931.7142857142858,
                        1030,
                        1909.5,
                        1030
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
                    ],
                    "midpoints": [
                        1935.5,
                        1110,
                        3409.5,
                        1110
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
                    ],
                    "midpoints": [
                        1909.5,
                        1110,
                        2032.5,
                        1110
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
                    ],
                    "midpoints": [
                        1953.9285714285713,
                        1040,
                        1909.5,
                        1040
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
                    ],
                    "midpoints": [
                        1935.5,
                        1150,
                        3409.5,
                        1150
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
                    ],
                    "midpoints": [
                        1909.5,
                        1150,
                        2032.5,
                        1150
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
                    ],
                    "midpoints": [
                        1976.142857142857,
                        1030,
                        3409.5,
                        1030
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
                    ],
                    "midpoints": [
                        2020.5714285714287,
                        1030,
                        3489.5,
                        1030
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
                    ],
                    "midpoints": [
                        2042.7857142857142,
                        1030,
                        3489.5,
                        1030
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
                    ],
                    "midpoints": [
                        2065,
                        1020,
                        3489.5,
                        1020
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
                    ],
                    "midpoints": [
                        2087.214285714286,
                        1030,
                        3409.5,
                        1030
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
                    ],
                    "midpoints": [
                        1989.5,
                        1080,
                        1250.5,
                        1080
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
                    ],
                    "midpoints": [
                        2003.8333333333333,
                        1080,
                        1102.3,
                        1080
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
                    ],
                    "midpoints": [
                        2018.1666666666667,
                        1080,
                        925,
                        1080
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
                    ],
                    "midpoints": [
                        2032.5,
                        1080,
                        1158.1,
                        1080
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
                    ],
                    "midpoints": [
                        1989.5,
                        1120,
                        932.9285714285714,
                        1120
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
                    ],
                    "midpoints": [
                        2003.8333333333333,
                        1120,
                        954.1,
                        1120
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
                    ],
                    "midpoints": [
                        2018.1666666666667,
                        1120,
                        1063.5,
                        1120
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
                    ],
                    "midpoints": [
                        2032.5,
                        1120,
                        1374.3,
                        1120
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
                    ],
                    "midpoints": [
                        1989.5,
                        1160,
                        1038.7857142857142,
                        1160
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
                    ],
                    "midpoints": [
                        2003.8333333333333,
                        1160,
                        1250.5,
                        1160
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
                    ],
                    "midpoints": [
                        2018.1666666666667,
                        1160,
                        1340.5,
                        1160
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
                    ],
                    "midpoints": [
                        2032.5,
                        1160,
                        1590.5,
                        1160
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
                    "order": 0,
                    "midpoints": [
                        1250.5,
                        1340,
                        615.3571428571429,
                        1340
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-bitcrusher",
                        0
                    ],
                    "destination": [
                        "pm-bitcrusher-bypass",
                        2
                    ],
                    "midpoints": [
                        509.5,
                        1950,
                        1355,
                        1950
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
                        "pm-bitcrusher-bypass",
                        3
                    ],
                    "midpoints": [
                        1250.5,
                        1950,
                        1377.75,
                        1950
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
                        "pm-bitcrusher-bypass",
                        4
                    ],
                    "midpoints": [
                        1569.875,
                        1440,
                        1400.5,
                        1440
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-bitcrusher-bypass",
                        0
                    ],
                    "destination": [
                        "pm-multiband",
                        0
                    ],
                    "order": 0,
                    "midpoints": [
                        1309.5,
                        1820,
                        509.5,
                        1820
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-bitcrusher-bypass",
                        1
                    ],
                    "destination": [
                        "pm-multiband",
                        1
                    ],
                    "order": 0,
                    "midpoints": [
                        1400.5,
                        1820,
                        725.7,
                        1820
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-bitcrusher-bypass",
                        0
                    ],
                    "destination": [
                        "pm-multiband-bypass",
                        0
                    ],
                    "order": 1,
                    "midpoints": [
                        1309.5,
                        1820,
                        1639.5,
                        1820
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-bitcrusher-bypass",
                        1
                    ],
                    "destination": [
                        "pm-multiband-bypass",
                        1
                    ],
                    "order": 1,
                    "midpoints": [
                        1400.5,
                        1820,
                        1662.25,
                        1820
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-multiband",
                        0
                    ],
                    "destination": [
                        "pm-multiband-bypass",
                        2
                    ],
                    "midpoints": [
                        509.5,
                        2410,
                        1685,
                        2410
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
                        "pm-multiband-bypass",
                        3
                    ],
                    "midpoints": [
                        1590.5,
                        2410,
                        1707.75,
                        2410
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
                        "pm-multiband-bypass",
                        4
                    ],
                    "midpoints": [
                        1650.375,
                        1440,
                        1730.5,
                        1440
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-multiband-bypass",
                        0
                    ],
                    "destination": [
                        "pm-feedback-delay",
                        0
                    ],
                    "order": 0,
                    "midpoints": [
                        1639.5,
                        2220,
                        509.5,
                        2220
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-multiband-bypass",
                        1
                    ],
                    "destination": [
                        "pm-feedback-delay",
                        1
                    ],
                    "order": 0,
                    "midpoints": [
                        1730.5,
                        2220,
                        648,
                        2220
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-multiband-bypass",
                        0
                    ],
                    "destination": [
                        "pm-feedback-delay-bypass",
                        0
                    ],
                    "order": 1,
                    "midpoints": [
                        1639.5,
                        2220,
                        1409.5,
                        2220
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-multiband-bypass",
                        1
                    ],
                    "destination": [
                        "pm-feedback-delay-bypass",
                        1
                    ],
                    "order": 1,
                    "midpoints": [
                        1730.5,
                        2220,
                        1432.25,
                        2220
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-feedback-delay",
                        0
                    ],
                    "destination": [
                        "pm-feedback-delay-bypass",
                        2
                    ],
                    "midpoints": [
                        509.5,
                        2740,
                        1455,
                        2740
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
                        "pm-feedback-delay-bypass",
                        3
                    ],
                    "midpoints": [
                        1340.5,
                        2740,
                        1477.75,
                        2740
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
                        "pm-feedback-delay-bypass",
                        4
                    ],
                    "midpoints": [
                        1610.125,
                        1440,
                        1500.5,
                        1440
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-vocoder",
                        0
                    ],
                    "destination": [
                        "pm-bitcrusher",
                        0
                    ],
                    "order": 0
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-vocoder",
                        1
                    ],
                    "destination": [
                        "pm-bitcrusher",
                        1
                    ],
                    "order": 0,
                    "midpoints": [
                        1250.5,
                        1630,
                        657.7,
                        1630
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-vocoder",
                        0
                    ],
                    "destination": [
                        "pm-bitcrusher-bypass",
                        0
                    ],
                    "order": 1,
                    "midpoints": [
                        509.5,
                        1650,
                        1309.5,
                        1650
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
                        "pm-bitcrusher-bypass",
                        1
                    ],
                    "order": 1,
                    "midpoints": [
                        1250.5,
                        1650,
                        1332.25,
                        1650
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-bitcrusher-hand-mapper",
                        12
                    ],
                    "destination": [
                        "pm-gesture-input-x",
                        0
                    ],
                    "midpoints": [
                        2176.0714285714284,
                        1040,
                        3409.5,
                        1040
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-bitcrusher-hand-mapper",
                        13
                    ],
                    "destination": [
                        "pm-gesture-input-y",
                        0
                    ],
                    "midpoints": [
                        2198.285714285714,
                        1040,
                        3509.5,
                        1040
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-bitcrusher-hand-mapper",
                        14
                    ],
                    "destination": [
                        "pm-gesture-input-pinch",
                        0
                    ],
                    "midpoints": [
                        2220.5,
                        1040,
                        3609.5,
                        1040
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
                    ],
                    "midpoints": [
                        49.5,
                        340,
                        409.5,
                        340
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
                    ],
                    "midpoints": [
                        729.5,
                        340,
                        409.5,
                        340
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
                    ],
                    "midpoints": [
                        49.5,
                        140,
                        139.5,
                        140
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
                    ],
                    "midpoints": [
                        139.5,
                        130,
                        49.5,
                        130
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-feedback-delay-bypass",
                        0
                    ],
                    "destination": [
                        "pm-record-editor",
                        0
                    ],
                    "midpoints": [
                        1409.5,
                        2620,
                        49.5,
                        2620
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-feedback-delay-bypass",
                        1
                    ],
                    "destination": [
                        "pm-record-editor",
                        1
                    ],
                    "midpoints": [
                        1500.5,
                        2620,
                        520,
                        2620
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-feedback-delay-bypass",
                        0
                    ],
                    "destination": [
                        "pm-record-audition-bypass",
                        0
                    ],
                    "midpoints": [
                        1409.5,
                        2620,
                        1049.5,
                        2620
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-feedback-delay-bypass",
                        1
                    ],
                    "destination": [
                        "pm-record-audition-bypass",
                        1
                    ],
                    "midpoints": [
                        1500.5,
                        2620,
                        1076.75,
                        2620
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-record-editor",
                        0
                    ],
                    "destination": [
                        "pm-record-audition-bypass",
                        2
                    ],
                    "midpoints": [
                        49.5,
                        3380,
                        1104,
                        3380
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-record-editor",
                        1
                    ],
                    "destination": [
                        "pm-record-audition-bypass",
                        3
                    ],
                    "midpoints": [
                        237.7,
                        3380,
                        1131.25,
                        3380
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-record-editor",
                        4
                    ],
                    "destination": [
                        "pm-record-audition-bypass",
                        4
                    ],
                    "midpoints": [
                        802.3,
                        3380,
                        1158.5,
                        3380
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-record-audition-bypass",
                        0
                    ],
                    "destination": [
                        "pm-master-monitor",
                        0
                    ],
                    "midpoints": [
                        1049.5,
                        3050,
                        1209.5,
                        3050
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-record-audition-bypass",
                        1
                    ],
                    "destination": [
                        "pm-master-monitor",
                        1
                    ],
                    "midpoints": [
                        1158.5,
                        3050,
                        1764.5,
                        3050
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-master-monitor",
                        0
                    ],
                    "destination": [
                        "pm-dac",
                        0
                    ],
                    "midpoints": [
                        1209.5,
                        3430,
                        1849.5,
                        3430
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-master-monitor",
                        1
                    ],
                    "destination": [
                        "pm-dac",
                        1
                    ],
                    "midpoints": [
                        1764.5,
                        3430,
                        1875.5,
                        3430
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-master-monitor",
                        0
                    ],
                    "destination": [
                        "pm-meter-l",
                        0
                    ],
                    "midpoints": [
                        1209.5,
                        3430,
                        1849.5,
                        3430
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-master-monitor",
                        1
                    ],
                    "destination": [
                        "pm-meter-r",
                        0
                    ],
                    "midpoints": [
                        1764.5,
                        3430,
                        1849.5,
                        3430
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-record-quick-record",
                        0
                    ],
                    "destination": [
                        "pm-record-command-record",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-record-command-record",
                        0
                    ],
                    "destination": [
                        "pm-record-editor",
                        2
                    ],
                    "midpoints": [
                        49.5,
                        3480,
                        990.5,
                        3480
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-record-quick-stop",
                        0
                    ],
                    "destination": [
                        "pm-record-command-stop",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-record-command-stop",
                        0
                    ],
                    "destination": [
                        "pm-record-editor",
                        2
                    ],
                    "midpoints": [
                        179.5,
                        3480,
                        990.5,
                        3480
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-record-editor",
                        2
                    ],
                    "destination": [
                        "pm-record-quick-status-set",
                        0
                    ],
                    "midpoints": [
                        425.9,
                        3390,
                        299.5,
                        3390
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-record-quick-status-set",
                        0
                    ],
                    "destination": [
                        "pm-record-quick-status",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-record-editor",
                        5
                    ],
                    "destination": [
                        "pm-record-quick-time",
                        0
                    ],
                    "midpoints": [
                        990.5,
                        3370,
                        439.5,
                        3370
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-load",
                        0
                    ],
                    "destination": [
                        "pm-fx-output-load-defer",
                        0
                    ],
                    "midpoints": [
                        1909.5,
                        2130,
                        1984.5,
                        2130
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-load-defer",
                        0
                    ],
                    "destination": [
                        "pm-fx-output-load-trigger",
                        0
                    ],
                    "midpoints": [
                        1984.5,
                        2130,
                        2059.5,
                        2130
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-mixer",
                        0
                    ],
                    "destination": [
                        "pm-fx-output-vocoder-bind",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-vocoder-bind",
                        0
                    ],
                    "destination": [
                        "pm-fx-output-mixer",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-load-trigger",
                        3
                    ],
                    "destination": [
                        "pm-fx-output-vocoder-bind",
                        0
                    ],
                    "midpoints": [
                        2116.5,
                        2120,
                        1909.5,
                        2120
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-mixer",
                        1
                    ],
                    "destination": [
                        "pm-fx-output-bitcrusher-bind",
                        0
                    ],
                    "midpoints": [
                        2089.8333333333335,
                        2090,
                        1909.5,
                        2090
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-bitcrusher-bind",
                        0
                    ],
                    "destination": [
                        "pm-fx-output-mixer",
                        1
                    ],
                    "midpoints": [
                        1909.5,
                        2210,
                        1954.5833333333333,
                        2210
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-load-trigger",
                        2
                    ],
                    "destination": [
                        "pm-fx-output-bitcrusher-bind",
                        0
                    ],
                    "midpoints": [
                        2097.5,
                        2130,
                        1909.5,
                        2130
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-mixer",
                        2
                    ],
                    "destination": [
                        "pm-fx-output-multiband-bind",
                        0
                    ],
                    "midpoints": [
                        2270.1666666666665,
                        2090,
                        1909.5,
                        2090
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-multiband-bind",
                        0
                    ],
                    "destination": [
                        "pm-fx-output-mixer",
                        2
                    ],
                    "midpoints": [
                        1909.5,
                        2250,
                        1999.6666666666667,
                        2250
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-load-trigger",
                        1
                    ],
                    "destination": [
                        "pm-fx-output-multiband-bind",
                        0
                    ],
                    "midpoints": [
                        2078.5,
                        2140,
                        1909.5,
                        2140
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-mixer",
                        3
                    ],
                    "destination": [
                        "pm-fx-output-feedback-delay-bind",
                        0
                    ],
                    "midpoints": [
                        2450.5,
                        2090,
                        1909.5,
                        2090
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-feedback-delay-bind",
                        0
                    ],
                    "destination": [
                        "pm-fx-output-mixer",
                        3
                    ],
                    "midpoints": [
                        1909.5,
                        2290,
                        2044.75,
                        2290
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-output-load-trigger",
                        0
                    ],
                    "destination": [
                        "pm-fx-output-feedback-delay-bind",
                        0
                    ],
                    "midpoints": [
                        2059.5,
                        2140,
                        1909.5,
                        2140
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
                        "pm-fx-output-mixer",
                        4
                    ],
                    "midpoints": [
                        729.5,
                        320,
                        2089.8333333333335,
                        320
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
                        "pm-fx-meter-vocoder-enable",
                        0
                    ],
                    "midpoints": [
                        1529.625,
                        1440,
                        2509.5,
                        1440
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-meter-vocoder-enable",
                        0
                    ],
                    "destination": [
                        "pm-fx-meter-vocoder-l-gate",
                        1
                    ],
                    "midpoints": [
                        2509.5,
                        1640,
                        2520.5,
                        1640
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-meter-vocoder-enable",
                        1
                    ],
                    "destination": [
                        "pm-fx-meter-vocoder-r-gate",
                        1
                    ],
                    "midpoints": [
                        2532.5,
                        1640,
                        2565.5,
                        1640
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-vocoder",
                        0
                    ],
                    "destination": [
                        "pm-fx-meter-vocoder-l-gate",
                        0
                    ],
                    "midpoints": [
                        509.5,
                        1630,
                        2509.5,
                        1630
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
                        "pm-fx-meter-vocoder-r-gate",
                        0
                    ],
                    "midpoints": [
                        1250.5,
                        1630,
                        2554.5,
                        1630
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-meter-vocoder-l-gate",
                        0
                    ],
                    "destination": [
                        "pm-fx-output-mixer",
                        5
                    ],
                    "midpoints": [
                        2509.5,
                        1690,
                        2134.9166666666665,
                        1690
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-fx-meter-vocoder-r-gate",
                        0
                    ],
                    "destination": [
                        "pm-fx-output-mixer",
                        6
                    ],
                    "midpoints": [
                        2554.5,
                        1690,
                        2180,
                        1690
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-bitcrusher",
                        0
                    ],
                    "destination": [
                        "pm-fx-output-mixer",
                        7
                    ],
                    "midpoints": [
                        509.5,
                        1950,
                        2225.0833333333335,
                        1950
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
                        "pm-fx-output-mixer",
                        8
                    ],
                    "midpoints": [
                        1250.5,
                        1950,
                        2270.1666666666665,
                        1950
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-multiband",
                        0
                    ],
                    "destination": [
                        "pm-fx-output-mixer",
                        9
                    ],
                    "midpoints": [
                        509.5,
                        2410,
                        2315.25,
                        2410
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
                        "pm-fx-output-mixer",
                        10
                    ],
                    "midpoints": [
                        1590.5,
                        2410,
                        2360.3333333333335,
                        2410
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "pm-feedback-delay",
                        0
                    ],
                    "destination": [
                        "pm-fx-output-mixer",
                        11
                    ],
                    "midpoints": [
                        509.5,
                        2740,
                        2405.4166666666665,
                        2740
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
                        "pm-fx-output-mixer",
                        12
                    ],
                    "midpoints": [
                        1340.5,
                        2740,
                        2450.5,
                        2740
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
                        "pm-perform-mic-eq",
                        0
                    ],
                    "destination": [
                        "pm-mic",
                        1
                    ],
                    "midpoints": [
                        2709.5,
                        510,
                        450.5,
                        510
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
                    ],
                    "midpoints": [
                        2773.5,
                        550,
                        2731.3333333333335,
                        550
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
                    ],
                    "midpoints": [
                        2731.3333333333335,
                        600,
                        2773.5,
                        600
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
                    ],
                    "midpoints": [
                        2837.5,
                        550,
                        2753.1666666666665,
                        550
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
                    ],
                    "midpoints": [
                        2753.1666666666665,
                        600,
                        2837.5,
                        600
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
                    ],
                    "midpoints": [
                        2901.5,
                        550,
                        2775,
                        550
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
                    ],
                    "midpoints": [
                        2775,
                        600,
                        2901.5,
                        600
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
                    ],
                    "midpoints": [
                        2965.5,
                        550,
                        2796.8333333333335,
                        550
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
                    ],
                    "midpoints": [
                        2796.8333333333335,
                        600,
                        2965.5,
                        600
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
                    ],
                    "midpoints": [
                        3029.5,
                        550,
                        2818.6666666666665,
                        550
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
                    ],
                    "midpoints": [
                        2818.6666666666665,
                        600,
                        3029.5,
                        600
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
                    ],
                    "midpoints": [
                        3093.5,
                        550,
                        2840.5,
                        550
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
                    ],
                    "midpoints": [
                        2840.5,
                        600,
                        3093.5,
                        600
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
                        "pm-perform-dsp",
                        0
                    ],
                    "destination": [
                        "pm-dsp-select",
                        0
                    ],
                    "midpoints": [
                        2709.5,
                        690,
                        2849.5,
                        690
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
                        "pm-dsp-select",
                        0
                    ],
                    "destination": [
                        "pm-dsp-on",
                        0
                    ],
                    "midpoints": [
                        2849.5,
                        670,
                        2929.5,
                        670
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
                        "pm-dsp-select",
                        1
                    ],
                    "destination": [
                        "pm-dsp-off",
                        0
                    ],
                    "midpoints": [
                        2884.5,
                        670,
                        3029.5,
                        670
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
                        "pm-file",
                        2
                    ],
                    "destination": [
                        "pm-perform-file-progress",
                        0
                    ],
                    "midpoints": [
                        1010.5,
                        870,
                        2754.5,
                        870
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
                        "pm-bitcrusher-hand-mapper",
                        11
                    ],
                    "destination": [
                        "pm-perform-gesture-fanout",
                        0
                    ],
                    "midpoints": [
                        2153.8571428571427,
                        1040,
                        3409.5,
                        1040
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
                        "pm-perform-gesture-fanout",
                        0
                    ],
                    "destination": [
                        "pm-gesture-readout",
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
                        "pm-perform-gesture-fanout",
                        1
                    ],
                    "destination": [
                        "pm-perform-gesture-readout",
                        0
                    ],
                    "midpoints": [
                        3432.5,
                        1380,
                        3409.5,
                        1380
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
                        "pm-gesture-input-x",
                        0
                    ],
                    "destination": [
                        "pm-perform-gesture-x",
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
                        "pm-gesture-input-y",
                        0
                    ],
                    "destination": [
                        "pm-perform-gesture-y",
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
                        "pm-gesture-input-pinch",
                        0
                    ],
                    "destination": [
                        "pm-perform-gesture-pinch",
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
                        "pm-bitcrusher-hand-mapper",
                        4
                    ],
                    "destination": [
                        "pm-perform-status-fanout",
                        0
                    ],
                    "midpoints": [
                        1998.357142857143,
                        1040,
                        3639.5,
                        1040
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
                        "pm-perform-status-fanout",
                        0
                    ],
                    "destination": [
                        "pm-gesture-status",
                        0
                    ],
                    "midpoints": [
                        3639.5,
                        1500,
                        3409.5,
                        1500
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
                        "pm-perform-status-fanout",
                        1
                    ],
                    "destination": [
                        "pm-perform-gesture-status",
                        0
                    ],
                    "midpoints": [
                        3662.5,
                        1500,
                        3639.5,
                        1500
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
                        "pm-perform-bind-load",
                        0
                    ],
                    "destination": [
                        "pm-perform-bind-defer",
                        0
                    ],
                    "midpoints": [
                        3309.5,
                        750,
                        3384.5,
                        750
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
                        "pm-perform-bind-defer",
                        0
                    ],
                    "destination": [
                        "pm-perform-bind-trigger",
                        0
                    ],
                    "midpoints": [
                        3384.5,
                        750,
                        3459.5,
                        750
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
                        "pm-perform-file-play",
                        0
                    ],
                    "destination": [
                        "pm-perform-file-play-bind",
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
                        "pm-perform-file-play-bind",
                        0
                    ],
                    "destination": [
                        "pm-perform-file-play",
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
                        "pm-perform-bind-trigger",
                        9
                    ],
                    "destination": [
                        "pm-perform-file-play-bind",
                        0
                    ],
                    "midpoints": [
                        3592.5,
                        740,
                        2709.5,
                        740
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
                        "pm-perform-grain-play",
                        0
                    ],
                    "destination": [
                        "pm-perform-grain-play-bind",
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
                        "pm-perform-grain-play-bind",
                        0
                    ],
                    "destination": [
                        "pm-perform-grain-play",
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
                        "pm-perform-bind-trigger",
                        8
                    ],
                    "destination": [
                        "pm-perform-grain-play-bind",
                        0
                    ],
                    "midpoints": [
                        3577.722222222222,
                        760,
                        2709.5,
                        760
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
                        "pm-perform-grain-preset",
                        0
                    ],
                    "destination": [
                        "pm-perform-grain-preset-bind",
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
                        "pm-perform-grain-preset-bind",
                        0
                    ],
                    "destination": [
                        "pm-perform-grain-preset",
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
                        "pm-perform-bind-trigger",
                        7
                    ],
                    "destination": [
                        "pm-perform-grain-preset-bind",
                        0
                    ],
                    "midpoints": [
                        3562.9444444444443,
                        760,
                        2709.5,
                        760
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
                        "pm-perform-grain-wet",
                        0
                    ],
                    "destination": [
                        "pm-perform-grain-wet-bind",
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
                        "pm-perform-grain-wet-bind",
                        0
                    ],
                    "destination": [
                        "pm-perform-grain-wet",
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
                        "pm-perform-bind-trigger",
                        6
                    ],
                    "destination": [
                        "pm-perform-grain-wet-bind",
                        0
                    ],
                    "midpoints": [
                        3548.1666666666665,
                        760,
                        2709.5,
                        760
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
                        "pm-perform-grain-density",
                        0
                    ],
                    "destination": [
                        "pm-perform-grain-density-bind",
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
                        "pm-perform-grain-density-bind",
                        0
                    ],
                    "destination": [
                        "pm-perform-grain-density",
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
                        "pm-perform-bind-trigger",
                        5
                    ],
                    "destination": [
                        "pm-perform-grain-density-bind",
                        0
                    ],
                    "midpoints": [
                        3533.3888888888887,
                        760,
                        2709.5,
                        760
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
                        "pm-perform-grain-size",
                        0
                    ],
                    "destination": [
                        "pm-perform-grain-size-bind",
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
                        "pm-perform-grain-size-bind",
                        0
                    ],
                    "destination": [
                        "pm-perform-grain-size",
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
                        "pm-perform-bind-trigger",
                        4
                    ],
                    "destination": [
                        "pm-perform-grain-size-bind",
                        0
                    ],
                    "midpoints": [
                        3518.6111111111113,
                        760,
                        2709.5,
                        760
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
                        "pm-perform-grain-pitch",
                        0
                    ],
                    "destination": [
                        "pm-perform-grain-pitch-bind",
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
                        "pm-perform-grain-pitch-bind",
                        0
                    ],
                    "destination": [
                        "pm-perform-grain-pitch",
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
                        "pm-perform-bind-trigger",
                        3
                    ],
                    "destination": [
                        "pm-perform-grain-pitch-bind",
                        0
                    ],
                    "midpoints": [
                        3503.8333333333335,
                        760,
                        2709.5,
                        760
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
                        "pm-perform-monitor-gain",
                        0
                    ],
                    "destination": [
                        "pm-perform-monitor-gain-bind",
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
                        "pm-perform-monitor-gain-bind",
                        0
                    ],
                    "destination": [
                        "pm-perform-monitor-gain",
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
                        "pm-perform-bind-trigger",
                        2
                    ],
                    "destination": [
                        "pm-perform-monitor-gain-bind",
                        0
                    ],
                    "midpoints": [
                        3489.0555555555557,
                        760,
                        2709.5,
                        760
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
                        "pm-perform-monitor-mute",
                        0
                    ],
                    "destination": [
                        "pm-perform-monitor-mute-bind",
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
                        "pm-perform-monitor-mute-bind",
                        0
                    ],
                    "destination": [
                        "pm-perform-monitor-mute",
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
                        "pm-perform-bind-trigger",
                        1
                    ],
                    "destination": [
                        "pm-perform-monitor-mute-bind",
                        0
                    ],
                    "midpoints": [
                        3474.277777777778,
                        760,
                        2709.5,
                        760
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
                        "pm-perform-monitor-peak",
                        0
                    ],
                    "destination": [
                        "pm-perform-monitor-peak-bind",
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
                        "pm-perform-monitor-peak-bind",
                        0
                    ],
                    "destination": [
                        "pm-perform-monitor-peak",
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
                        "pm-perform-bind-trigger",
                        0
                    ],
                    "destination": [
                        "pm-perform-monitor-peak-bind",
                        0
                    ],
                    "midpoints": [
                        3459.5,
                        760,
                        2709.5,
                        760
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
                        "pm-gesture-target-fanout",
                        4
                    ],
                    "destination": [
                        "pm-perform-target",
                        0
                    ],
                    "midpoints": [
                        2335,
                        1100,
                        3409.5,
                        1100
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
                        "pm-gesture-target-fanout",
                        5
                    ],
                    "destination": [
                        "pm-perform-target-vocoder-eq",
                        0
                    ],
                    "midpoints": [
                        2341.375,
                        1100,
                        3409.5,
                        1100
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
                        "pm-perform-target-vocoder-eq",
                        0
                    ],
                    "destination": [
                        "pm-perform-target-vocoder",
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
                        "pm-gesture-target-fanout",
                        6
                    ],
                    "destination": [
                        "pm-perform-target-bitcrusher-eq",
                        0
                    ],
                    "midpoints": [
                        2347.75,
                        1100,
                        3499.5,
                        1100
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
                        "pm-perform-target-bitcrusher-eq",
                        0
                    ],
                    "destination": [
                        "pm-perform-target-bitcrusher",
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
                        "pm-gesture-target-fanout",
                        7
                    ],
                    "destination": [
                        "pm-perform-target-multiband-eq",
                        0
                    ],
                    "midpoints": [
                        2354.125,
                        1100,
                        3589.5,
                        1100
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
                        "pm-perform-target-multiband-eq",
                        0
                    ],
                    "destination": [
                        "pm-perform-target-multiband",
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
                        "pm-gesture-target-fanout",
                        8
                    ],
                    "destination": [
                        "pm-perform-target-delay-eq",
                        0
                    ],
                    "midpoints": [
                        2360.5,
                        1100,
                        3679.5,
                        1100
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
                        "pm-perform-target-delay-eq",
                        0
                    ],
                    "destination": [
                        "pm-perform-target-delay",
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
                "name": "perform_shell_v4.png",
                "patcherrelativepath": "../assets/ui",
                "type": "PNG",
                "implicit": 1
            },
            {
                "name": "main_shell_v1.png",
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
                "name": "mt_serial_bypass.maxpat",
                "patcherrelativepath": "dsp",
                "type": "JSON",
                "implicit": 1
            },
            {
                "name": "mt_record_export_editor.maxpat",
                "patcherrelativepath": ".",
                "type": "JSON",
                "implicit": 1
            },
            {
                "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/assets/ui",
                "name": "source_detail_shell_v3.png",
                "type": "PNG "
            },
            {
                "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/assets/ui",
                "name": "fx_detail_shell_v4.png",
                "type": "PNG "
            },
            {
                "name": "mt_fx_output_trim_panel.maxpat",
                "patcherrelativepath": "mixers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/assets/ui",
                "name": "gesture_detail_shell_v3.png",
                "type": "PNG "
            },
            {
                "name": "mt_master_monitor.maxpat",
                "patcherrelativepath": "mixers",
                "type": "JSON",
                "implicit": 1
            },
            {
                "bootpath": "~/Documents/maxmsp插件制作/geehon-motion-system/assets/ui",
                "name": "master_detail_shell_v3.png",
                "type": "PNG "
            }
        ],
        "autosave": 0
    }
}
