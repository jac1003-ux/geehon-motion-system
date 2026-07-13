{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 101.0, 1732.0, 941.0 ],
		"bglocked" : 1,
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "pm-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 20.0, 620.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 18.0, 520.0, 20.0 ],
					"text" : "MT Portfolio Main - original + parallel FX layers"
				}

			}
, 			{
				"box" : 				{
					"id" : "pm-note",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 48.0, 1240.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 47.0, 760.0, 20.0 ],
					"text" : "Mic / File / Granular feed the Input Mixer. The FX Mixer below blends Original with independent Vocoder, Chop, and Tremolo layers."
				}

			}
, 			{
				"box" : 				{
					"id" : "pm-page-load",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1900.0, 20.0, 78.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.862745, 0.909804, 0.87451, 1.0 ],
					"fontsize" : 14.0,
					"htabcolor" : [ 0.941176, 0.788235, 0.301961, 1.0 ],
					"id" : "pm-page-tab",
					"maxclass" : "tab",
					"multiline" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1900.0, 58.0, 700.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 820.0, 28.0, 700.0, 42.0 ],
					"tabcolor" : [ 0.862745, 0.909804, 0.87451, 1.0 ],
					"tabs" : [ "SOURCE", "FX", "GESTURE", "MASTER" ],
					"textcolor" : [ 0.192157, 0.278431, 0.239216, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "pm-page-router",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 120.0, 120.0, 840.0, 470.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "page-in",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 24.0, 24.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "page-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 72.0, 62.0, 22.0 ],
									"text" : "clip 0 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "page-select",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 24.0, 112.0, 88.0, 22.0 ],
									"text" : "sel 0 1 2 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "page-msg-0",
									"linecount" : 5,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 160.0, 760.0, 42.0 ],
									"text" : "script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_chop, script hide ui_fx_tremolo, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script show ui_source_mic, script show ui_source_file, script show ui_source_grain, script show ui_source_mixer"
								}

							}
, 							{
								"box" : 								{
									"id" : "page-msg-1",
									"linecount" : 5,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 212.0, 760.0, 42.0 ],
									"text" : "script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_chop, script hide ui_fx_tremolo, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script show ui_fx_vocoder, script show ui_fx_chop, script show ui_fx_tremolo"
								}

							}
, 							{
								"box" : 								{
									"id" : "page-msg-2",
									"linecount" : 7,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 264.0, 760.0, 42.0 ],
									"text" : "script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_chop, script hide ui_fx_tremolo, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script show ui_gesture_hand, script show ui_gesture_map_title, script show ui_gesture_slot1, script show ui_gesture_slot1_label, script show ui_gesture_slot2, script show ui_gesture_slot2_label, script show ui_gesture_slot3, script show ui_gesture_slot3_label, script show ui_gesture_slot4, script show ui_gesture_slot4_label"
								}

							}
, 							{
								"box" : 								{
									"id" : "page-msg-3",
									"linecount" : 5,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 316.0, 760.0, 42.0 ],
									"text" : "script hide ui_source_mic, script hide ui_source_file, script hide ui_source_grain, script hide ui_source_mixer, script hide ui_fx_vocoder, script hide ui_fx_chop, script hide ui_fx_tremolo, script hide ui_gesture_hand, script hide ui_gesture_map_title, script hide ui_gesture_slot1, script hide ui_gesture_slot1_label, script hide ui_gesture_slot2, script hide ui_gesture_slot2_label, script hide ui_gesture_slot3, script hide ui_gesture_slot3_label, script hide ui_gesture_slot4, script hide ui_gesture_slot4_label, script hide ui_master_returns, script show ui_master_returns"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "page-out",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 390.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "page-select", 0 ],
									"source" : [ "page-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "page-clip", 0 ],
									"source" : [ "page-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "page-out", 0 ],
									"source" : [ "page-msg-0", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "page-out", 0 ],
									"source" : [ "page-msg-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "page-out", 0 ],
									"source" : [ "page-msg-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "page-out", 0 ],
									"source" : [ "page-msg-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "page-msg-0", 0 ],
									"source" : [ "page-select", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "page-msg-1", 0 ],
									"source" : [ "page-select", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "page-msg-2", 0 ],
									"source" : [ "page-select", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "page-msg-3", 0 ],
									"source" : [ "page-select", 3 ]
								}

							}
 ],
						"originid" : "pat-6"
					}
,
					"patching_rect" : [ 1900.0, 115.0, 132.0, 22.0 ],
					"text" : "p Main_page_router"
				}

			}
, 			{
				"box" : 				{
					"id" : "pm-thispatcher",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1900.0, 155.0, 78.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "pm-dsp-on",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 102.0, 90.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 900.0, 90.0, 22.0 ],
					"text" : "startwindow"
				}

			}
, 			{
				"box" : 				{
					"id" : "pm-dsp-off",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 124.0, 102.0, 55.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 124.0, 900.0, 55.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "pm-dsp-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 104.0, 55.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 190.0, 902.0, 55.0, 20.0 ],
					"text" : "DSP"
				}

			}
, 			{
				"box" : 				{
					"id" : "p-Source-state-router",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 80.0, 80.0, 650.0, 230.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "pms-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 20.0, 560.0, 22.0 ],
									"text" : "SOURCE STATE ROUTER: shared module state -> Input Mixer enable inputs"
								}

							}
, 							{
								"box" : 								{
									"id" : "pms-mic-recv",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 70.0, 155.0, 22.0 ],
									"text" : "r mt_mic_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "pms-file-recv",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 70.0, 155.0, 22.0 ],
									"text" : "r mt_file_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "pms-grain-recv",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 396.0, 70.0, 190.0, 22.0 ],
									"text" : "r mt_granular_enable_state"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "pms-mic-out",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 80.0, 140.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "pms-file-out",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 266.0, 140.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "pms-grain-out",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 452.0, 140.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "pms-file-out", 0 ],
									"source" : [ "pms-file-recv", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "pms-grain-out", 0 ],
									"source" : [ "pms-grain-recv", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "pms-mic-out", 0 ],
									"source" : [ "pms-mic-recv", 0 ]
								}

							}
 ],
						"originid" : "pat-8"
					}
,
					"patching_rect" : [ 24.0, 155.0, 180.0, 22.0 ],
					"text" : "p Source_state_router"
				}

			}
, 			{
				"box" : 				{
					"id" : "p-FX-state-router",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 8,
					"outlettype" : [ "int", "int", "int", "int", "int", "int", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 134.0, 173.0, 900.0, 290.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "pmf-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 20.0, 620.0, 20.0 ],
									"text" : "FX STATE ROUTER: shared enable -> module/return; parallel FX wet defaults"
								}

							}
, 							{
								"box" : 								{
									"id" : "pmf-voc-recv",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 70.0, 180.0, 22.0 ],
									"text" : "r mt_vocoder_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "pmf-voc-sync",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 24.0, 110.0, 45.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "pmf-chop-recv",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 230.0, 70.0, 165.0, 22.0 ],
									"text" : "r mt_chop_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "pmf-chop-sync",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 230.0, 110.0, 45.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "pmf-trem-recv",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 420.0, 70.0, 180.0, 22.0 ],
									"text" : "r mt_tremolo_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "pmf-trem-sync",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 420.0, 110.0, 45.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "pmf-voc-wet",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 630.0, 70.0, 95.0, 22.0 ],
									"text" : "loadmess 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "pmf-chop-wet",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 750.0, 70.0, 95.0, 22.0 ],
									"text" : "loadmess 1."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "pmf-voc-module",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 190.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "pmf-voc-return",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 190.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "pmf-chop-module",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 190.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "pmf-chop-return",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 256.0, 190.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "pmf-trem-module",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 420.0, 190.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "pmf-trem-return",
									"index" : 6,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 446.0, 190.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "pmf-voc-wet-out",
									"index" : 7,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 630.0, 190.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "pmf-chop-wet-out",
									"index" : 8,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 750.0, 190.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "pmf-chop-sync", 0 ],
									"source" : [ "pmf-chop-recv", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "pmf-chop-module", 0 ],
									"source" : [ "pmf-chop-sync", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "pmf-chop-return", 0 ],
									"source" : [ "pmf-chop-sync", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "pmf-chop-wet-out", 0 ],
									"source" : [ "pmf-chop-wet", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "pmf-trem-sync", 0 ],
									"source" : [ "pmf-trem-recv", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "pmf-trem-module", 0 ],
									"source" : [ "pmf-trem-sync", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "pmf-trem-return", 0 ],
									"source" : [ "pmf-trem-sync", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "pmf-voc-sync", 0 ],
									"source" : [ "pmf-voc-recv", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "pmf-voc-module", 0 ],
									"source" : [ "pmf-voc-sync", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "pmf-voc-return", 0 ],
									"source" : [ "pmf-voc-sync", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "pmf-voc-wet-out", 0 ],
									"source" : [ "pmf-voc-wet", 0 ]
								}

							}
 ],
						"originid" : "pat-10"
					}
,
					"patching_rect" : [ 948.799999999999955, 906.0, 180.0, 22.0 ],
					"text" : "p FX_state_router"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "pm-mic",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "mt_input_mic_ui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 24.0, 200.0, 420.0, 280.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 160.0, 420.0, 280.0 ],
					"varname" : "ui_source_mic",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "pm-file",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "mt_input_file_ui.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 470.0, 200.0, 520.0, 340.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 468.0, 160.0, 520.0, 340.0 ],
					"varname" : "ui_source_file",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "pm-grain",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "mt_input_granular_ui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1015.0, 200.0, 720.0, 440.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1012.0, 160.0, 720.0, 440.0 ],
					"varname" : "ui_source_grain",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "pm-mixer",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "mt_input_mixer_ui.maxpat",
					"numinlets" : 9,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 24.137932300567627, 693.103484630584717, 760.0, 320.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 520.0, 760.0, 320.0 ],
					"varname" : "ui_source_mixer",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "pm-vocoder",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "mt_mod_vocoder.maxpat",
					"numinlets" : 8,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 154.0, 1046.0, 760.0, 225.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 160.0, 760.0, 225.0 ],
					"varname" : "ui_fx_vocoder",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "pm-chop",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "mt_mod_vocal_chop.maxpat",
					"numinlets" : 11,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 293.0, 1326.0, 1040.0, 245.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 409.0, 1040.0, 245.0 ],
					"varname" : "ui_fx_chop",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "pm-tremolo",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "mt_mod_tremolo.maxpat",
					"numinlets" : 9,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 428.0, 1636.0, 770.0, 190.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 808.0, 160.0, 770.0, 190.0 ],
					"varname" : "ui_fx_tremolo",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "pm-fx-return",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "mt_fx_return_mixer.maxpat",
					"numinlets" : 12,
					"numoutlets" : 5,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "int", "int", "int" ],
					"patching_rect" : [ 24.0, 1882.0, 760.0, 300.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 160.0, 760.0, 300.0 ],
					"varname" : "ui_master_returns",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "pm-hand",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "mt_control_hand_jweb.maxpat",
					"numinlets" : 0,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 1862.0, 200.0, 620.0, 450.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 160.0, 620.0, 450.0 ],
					"varname" : "ui_gesture_hand",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "pm-hand-map-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1862.0, 814.0, 250.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 680.0, 190.0, 250.0, 20.0 ],
					"text" : "Jweb hand mapping",
					"varname" : "ui_gesture_map_title"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"hidden" : 1,
					"id" : "pm-slot1-monitor",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1862.0, 678.0, 70.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 680.0, 230.0, 70.0, 22.0 ],
					"varname" : "ui_gesture_slot1"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "pm-slot1-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1942.0, 680.0, 160.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 760.0, 232.0, 190.0, 20.0 ],
					"text" : "hand_x -> trem rate",
					"varname" : "ui_gesture_slot1_label"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"hidden" : 1,
					"id" : "pm-slot2-monitor",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2062.0, 728.0, 70.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 680.0, 270.0, 70.0, 22.0 ],
					"varname" : "ui_gesture_slot2"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "pm-slot2-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2142.0, 730.0, 170.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 760.0, 272.0, 190.0, 20.0 ],
					"text" : "hand_y -> trem depth",
					"varname" : "ui_gesture_slot2_label"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"hidden" : 1,
					"id" : "pm-slot3-monitor",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2262.0, 768.0, 70.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 680.0, 310.0, 70.0, 22.0 ],
					"varname" : "ui_gesture_slot3"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "pm-slot3-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2342.0, 770.0, 170.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 760.0, 312.0, 190.0, 20.0 ],
					"text" : "pinch -> trem stereo",
					"varname" : "ui_gesture_slot3_label"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"hidden" : 1,
					"id" : "pm-slot4-monitor",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2464.0, 812.0, 70.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 680.0, 350.0, 70.0, 22.0 ],
					"varname" : "ui_gesture_slot4"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "pm-slot4-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2544.0, 814.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 760.0, 352.0, 150.0, 20.0 ],
					"text" : "palm spare",
					"varname" : "ui_gesture_slot4_label"
				}

			}
, 			{
				"box" : 				{
					"id" : "pm-meter-l",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 24.0, 2226.0, 120.0, 12.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1390.0, 902.0, 120.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "pm-meter-r",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 24.0, 2258.0, 120.0, 12.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1390.0, 928.0, 120.0, 12.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "pm-dac",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 2279.5, 45.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1530.0, 895.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "pm-output-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 83.221480131149292, 2292.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1590.0, 907.0, 100.0, 20.0 ],
					"text" : "Main out"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "pm-chop", 8 ],
					"source" : [ "p-FX-state-router", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-chop", 2 ],
					"midpoints" : [ 1004.299999999999955, 1298.025816644541919, 506.699999999999989, 1298.025816644541919 ],
					"source" : [ "p-FX-state-router", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-fx-return", 11 ],
					"midpoints" : [ 1073.299999999999955, 1854.264043604023755, 774.5, 1854.264043604023755 ],
					"source" : [ "p-FX-state-router", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-fx-return", 10 ],
					"midpoints" : [ 1027.299999999999955, 1853.335601567290723, 707.136363636363626, 1853.335601567290723 ],
					"source" : [ "p-FX-state-router", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-fx-return", 9 ],
					"midpoints" : [ 981.299999999999955, 1853.816806281451136, 639.772727272727252, 1853.816806281451136 ],
					"source" : [ "p-FX-state-router", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-tremolo", 2 ],
					"midpoints" : [ 1050.299999999999955, 1602.991850504651666, 625.25, 1602.991850504651666 ],
					"source" : [ "p-FX-state-router", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-vocoder", 3 ],
					"midpoints" : [ 1096.299999999999955, 1029.515851804055274, 481.071428571428555, 1029.515851804055274 ],
					"source" : [ "p-FX-state-router", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-vocoder", 2 ],
					"midpoints" : [ 958.299999999999955, 1029.58944781916216, 375.214285714285722, 1029.58944781916216 ],
					"source" : [ "p-FX-state-router", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-mixer", 8 ],
					"midpoints" : [ 194.5, 674.856429815292358, 774.637932300567627, 674.856429815292358 ],
					"source" : [ "p-Source-state-router", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-mixer", 7 ],
					"midpoints" : [ 114.0, 675.227489429526031, 682.012932300567627, 675.227489429526031 ],
					"source" : [ "p-Source-state-router", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-mixer", 6 ],
					"midpoints" : [ 33.5, 674.692367315292358, 589.387932300567627, 674.692367315292358 ],
					"source" : [ "p-Source-state-router", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-fx-return", 5 ],
					"midpoints" : [ 1323.5, 1853.849412294570357, 370.318181818181813, 1853.849412294570357 ],
					"source" : [ "pm-chop", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-fx-return", 4 ],
					"source" : [ "pm-chop", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-dac", 0 ],
					"midpoints" : [ 133.5, 1854.279444049112499, 33.5, 1854.279444049112499 ],
					"source" : [ "pm-dsp-off", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-dac", 0 ],
					"midpoints" : [ 33.5, 1853.928447669371963, 33.5, 1853.928447669371963 ],
					"source" : [ "pm-dsp-on", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-mixer", 3 ],
					"midpoints" : [ 980.5, 675.031420693499967, 311.512932300567627, 675.031420693499967 ],
					"source" : [ "pm-file", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-mixer", 2 ],
					"midpoints" : [ 479.5, 674.270911782747135, 218.887932300567627, 674.270911782747135 ],
					"source" : [ "pm-file", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-dac", 1 ],
					"midpoints" : [ 218.75, 2273.76594146899879, 59.5, 2273.76594146899879 ],
					"order" : 0,
					"source" : [ "pm-fx-return", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-dac", 0 ],
					"order" : 0,
					"source" : [ "pm-fx-return", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-meter-l", 0 ],
					"order" : 1,
					"source" : [ "pm-fx-return", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-meter-r", 0 ],
					"midpoints" : [ 218.75, 2273.657196126645431, 33.5, 2273.657196126645431 ],
					"order" : 1,
					"source" : [ "pm-fx-return", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-mixer", 5 ],
					"midpoints" : [ 1725.5, 675.874890189385042, 496.762932300567627, 675.874890189385042 ],
					"source" : [ "pm-grain", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-mixer", 4 ],
					"midpoints" : [ 1024.5, 675.688219820382074, 404.137932300567627, 675.688219820382074 ],
					"source" : [ "pm-grain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-slot1-monitor", 0 ],
					"source" : [ "pm-hand", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-slot2-monitor", 0 ],
					"source" : [ "pm-hand", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-slot3-monitor", 0 ],
					"source" : [ "pm-hand", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-slot4-monitor", 0 ],
					"source" : [ "pm-hand", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-mixer", 1 ],
					"midpoints" : [ 434.5, 674.359409779077396, 126.262932300567627, 674.359409779077396 ],
					"source" : [ "pm-mic", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-mixer", 0 ],
					"source" : [ "pm-mic", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-chop", 1 ],
					"midpoints" : [ 774.637932300567627, 1297.682404616381973, 404.600000000000023, 1297.682404616381973 ],
					"order" : 1,
					"source" : [ "pm-mixer", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-chop", 0 ],
					"midpoints" : [ 33.637932300567627, 1298.548573101870716, 302.5, 1298.548573101870716 ],
					"order" : 1,
					"source" : [ "pm-mixer", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-fx-return", 1 ],
					"midpoints" : [ 774.637932300567627, 1853.756455849856138, 100.86363636363636, 1853.756455849856138 ],
					"order" : 3,
					"source" : [ "pm-mixer", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-fx-return", 0 ],
					"order" : 3,
					"source" : [ "pm-mixer", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-tremolo", 1 ],
					"midpoints" : [ 774.637932300567627, 1602.42765043117106, 531.375, 1602.42765043117106 ],
					"order" : 2,
					"source" : [ "pm-mixer", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-tremolo", 0 ],
					"midpoints" : [ 33.637932300567627, 1600.310349688865244, 437.5, 1600.310349688865244 ],
					"order" : 0,
					"source" : [ "pm-mixer", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-vocoder", 1 ],
					"midpoints" : [ 774.637932300567627, 1029.551742315292358, 269.35714285714289, 1029.551742315292358 ],
					"order" : 0,
					"source" : [ "pm-mixer", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-vocoder", 0 ],
					"midpoints" : [ 33.637932300567627, 1029.551742315292358, 163.5, 1029.551742315292358 ],
					"order" : 2,
					"source" : [ "pm-mixer", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-page-tab", 0 ],
					"source" : [ "pm-page-load", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-thispatcher", 0 ],
					"source" : [ "pm-page-router", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-page-router", 0 ],
					"source" : [ "pm-page-tab", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-fx-return", 7 ],
					"midpoints" : [ 687.833333333333371, 1854.0, 505.045454545454561, 1854.0 ],
					"source" : [ "pm-tremolo", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-fx-return", 6 ],
					"source" : [ "pm-tremolo", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-fx-return", 3 ],
					"midpoints" : [ 904.5, 1853.872058473993093, 235.590909090909093, 1853.872058473993093 ],
					"source" : [ "pm-vocoder", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "pm-fx-return", 2 ],
					"source" : [ "pm-vocoder", 0 ]
				}

			}
 ],
		"originid" : "pat-4",
		"parameters" : 		{
			"pm-chop::chm-gain" : [ "live.gain~[1]", "Vocal Chop Out", 0 ],
			"pm-file::f-drop" : [ "file_drop", "file_drop", 0 ],
			"pm-file::f-gain" : [ "file_output_gain", "File Input", 0 ],
			"pm-fx-return::fx-chop-gain" : [ "fx_return_chop_gain", "Chop FX", 0 ],
			"pm-fx-return::fx-dry-gain" : [ "fx_return_dry_gain", "Original", 0 ],
			"pm-fx-return::fx-master" : [ "fx_return_master_gain", "FX Master", 0 ],
			"pm-fx-return::fx-trem-gain" : [ "fx_return_tremolo_gain", "Tremolo FX", 0 ],
			"pm-fx-return::fx-voc-gain" : [ "fx_return_vocoder_gain", "Vocoder FX", 0 ],
			"pm-grain::g-drop" : [ "granular_drop", "granular_drop", 0 ],
			"pm-grain::g-gain" : [ "granular_output_gain", "Granular Input", 0 ],
			"pm-mic::m-gain" : [ "mic_output_gain", "Mic Input", 0 ],
			"pm-mixer::mx-file-gain" : [ "mixer_file_gain", "File Mix", 0 ],
			"pm-mixer::mx-grain-gain" : [ "mixer_granular_gain", "Granular Mix", 0 ],
			"pm-mixer::mx-master-gain" : [ "mixer_master_gain", "Input Master", 0 ],
			"pm-mixer::mx-mic-gain" : [ "mixer_mic_gain", "Mic Mix", 0 ],
			"pm-tremolo::tm-gain" : [ "live.gain~", "Tremolo Out", 0 ],
			"pm-tremolo::tm-polarity" : [ "live.text", "Polarity", 0 ],
			"pm-tremolo::tm-shape" : [ "live.menu", "Shape", 0 ],
			"pm-vocoder::vm-gain" : [ "live.gain~[2]", "Vocoder Out", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"pm-chop::chm-gain" : 				{
					"parameter_longname" : "live.gain~[1]"
				}
,
				"pm-mixer::mx-file-gain" : 				{
					"parameter_longname" : "mixer_file_gain"
				}
,
				"pm-mixer::mx-grain-gain" : 				{
					"parameter_longname" : "mixer_granular_gain"
				}
,
				"pm-mixer::mx-master-gain" : 				{
					"parameter_longname" : "mixer_master_gain"
				}
,
				"pm-mixer::mx-mic-gain" : 				{
					"parameter_longname" : "mixer_mic_gain"
				}
,
				"pm-tremolo::tm-gain" : 				{
					"parameter_longname" : "live.gain~"
				}
,
				"pm-tremolo::tm-polarity" : 				{
					"parameter_longname" : "live.text"
				}
,
				"pm-tremolo::tm-shape" : 				{
					"parameter_longname" : "live.menu"
				}
,
				"pm-vocoder::vm-gain" : 				{
					"parameter_longname" : "live.gain~[2]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "file_panel_v1.png",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "fx_return_mixer_panel_v1.png",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "granular_knob_gain_v1.png",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "granular_knob_v1.png",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "granular_panel_v1.png",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "input_mixer_panel_v1.png",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "mic_panel_v1.png",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "mt_control_hand_jweb.maxpat",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mt_fx_return_mixer.maxpat",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mt_grain_voice.maxpat",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mt_granular_synth.maxpat",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mt_input_file_ui.maxpat",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mt_input_granular_ui.maxpat",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mt_input_mic_ui.maxpat",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mt_input_mixer_ui.maxpat",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mt_mod_tremolo.maxpat",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mt_mod_vocal_chop.maxpat",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mt_mod_vocoder.maxpat",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mt_vocoder_pfft.maxpat",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
