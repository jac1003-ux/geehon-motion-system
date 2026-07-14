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
		"rect" : [ 134.0, 122.0, 1200.0, 920.0 ],
		"bglocked" : 1,
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "g-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 13.0, 190.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 24.0, 5.5, 190.0, 20.0 ],
					"text" : "GRANULAR INPUT"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-note",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 35.0, 260.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 24.0, 27.5, 260.0, 20.0 ],
					"text" : "record / load / shape / perform"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-enable",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 78.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 41.0, 70.0, 24.0, 24.0 ],
					"varname" : "granular_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-enable-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 105.0, 48.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 21.300000477582216, 46.75, 46.0, 20.0 ],
					"text" : "Enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-record",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 104.0, 78.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 123.0, 70.0, 24.0, 24.0 ],
					"varname" : "granular_record"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-record-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 82.0, 105.0, 72.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 81.452261298894882, 46.75, 69.095478951931, 20.0 ],
					"text" : "Record Mic"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-play",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 190.0, 78.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 225.0, 70.0, 24.0, 24.0 ],
					"varname" : "granular_play"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-play-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 105.0, 82.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 176.518646523356438, 46.75, 74.120604693889618, 20.0 ],
					"text" : "Play Texture"
				}

			}
, 			{
				"box" : 				{
					"decodemode" : 0,
					"id" : "g-drop",
					"maxclass" : "live.drop",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 274.0, 72.0, 128.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 296.0, 70.0, 132.0, 34.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "granular_drop",
							"parameter_modmode" : 0,
							"parameter_shortname" : "granular_drop",
							"parameter_type" : 4
						}

					}
,
					"varname" : "granular_drop"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-drop-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 293.0, 105.0, 88.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 320.875, 46.75, 79.0, 20.0 ],
					"text" : "Drop Sample"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-load",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 425.0, 78.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 449.0, 75.0, 24.0, 24.0 ],
					"varname" : "granular_load"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-load-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 417.0, 105.0, 42.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 441.5, 46.75, 36.5, 20.0 ],
					"text" : "Load"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-open",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1142.0, 146.0, 90.0, 22.0 ],
					"text" : "opendialog"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-preset",
					"items" : [ "Safe Cloud", ",", "Frozen Pad" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 484.0, 79.0, 130.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 506.0, 79.0, 114.0, 22.0 ],
					"varname" : "granular_preset"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-preset-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 522.0, 105.0, 50.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 541.125, 46.75, 43.0, 20.0 ],
					"text" : "Preset"
				}

			}
, 			{
				"box" : 				{
					"buffername" : "mt_granular_buffer",
					"id" : "g-waveform",
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 18.0, 132.0, 620.0, 160.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 145.0, 606.0, 138.0 ],
					"setmode" : 1,
					"varname" : "granular_waveform"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-file",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 310.0, 225.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 312.0, 230.0, 22.0 ],
					"text" : "No material"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-status",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 268.0, 310.0, 140.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 312.0, 170.0, 22.0 ],
					"text" : "Idle"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-duration",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 310.0, 74.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 444.0, 312.0, 186.0, 22.0 ],
					"text" : "00:00"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-file-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 294.0, 70.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 23.0, 290.285727262496948, 70.0, 20.0 ],
					"text" : "MATERIAL"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-status-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 268.0, 294.0, 55.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 264.000011801719666, 290.285727262496948, 55.0, 20.0 ],
					"text" : "STATUS"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-duration-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 294.0, 45.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 444.857162743806839, 290.285727262496948, 45.0, 20.0 ],
					"text" : "TIME"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-gain",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1068.0, 284.883710741996765, 54.0, 210.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 660.888893812894821, 112.000000834465027, 34.0, 230.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_longname" : "granular_output_gain",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Granular Input",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"varname" : "granular_output_gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-gain-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 662.0, 80.0, 48.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 654.888893641531467, 76.75, 46.000000342726707, 20.0 ],
					"text" : "Output"
				}

			}
, 			{
				"box" : 				{
					"comment" : "Enable 0/1",
					"id" : "g-ext-enable",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1061.0, 127.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "p-Granular-control",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 18,
					"outlettype" : [ "int", "int", "int", "", "", "", "", "", "", "", "", "float", "float", "float", "float", "float", "float", "float" ],
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
						"rect" : [ 134.0, 173.0, 1120.0, 800.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "gc-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 25.0, 760.0, 20.0 ],
									"text" : "Granular control: linked enable / material state / presets / status formatting"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-ext-enable",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-ui-enable",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 120.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-record",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 210.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-play",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 300.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-path",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-preset",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 500.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-duration",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 610.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-ext-enable-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 130.0, 70.0, 22.0 ],
									"text" : "clip 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-enable-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 120.0, 569.0, 180.0, 22.0 ],
									"text" : "s mt_granular_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-enable-receive",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 180.0, 180.0, 22.0 ],
									"text" : "r mt_granular_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-enable-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 30.0, 230.0, 50.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-enable-set",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 275.0, 58.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-record-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 130.0, 70.0, 22.0 ],
									"text" : "clip 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-record-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 210.0, 423.0, 50.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-record-set",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 489.0, 58.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-record-status",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 241.0, 449.0, 60.0, 22.0 ],
									"text" : "sel 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-status-idle",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 241.0, 529.0, 62.0, 22.0 ],
									"text" : "set Idle"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-status-recording",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 316.0, 529.0, 92.0, 22.0 ],
									"text" : "set Recording"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-play-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 130.0, 70.0, 22.0 ],
									"text" : "clip 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-play-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 390.0, 449.0, 50.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-play-set",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 489.0, 58.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-path-order",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "bang" ],
									"patching_rect" : [ 500.0, 130.0, 58.0, 22.0 ],
									"text" : "t l b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-path-stop-record",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 539.0, 180.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-path-stop-play",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 519.5, 180.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-path-fanout",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "bang" ],
									"patching_rect" : [ 500.0, 230.0, 55.0, 22.0 ],
									"text" : "t l l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-strip-path",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 518.0, 280.0, 70.0, 22.0 ],
									"text" : "strippath"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-file-set",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 518.0, 329.0, 90.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-status-loaded",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 536.0, 309.0, 78.0, 22.0 ],
									"text" : "set Loaded"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-preset-select",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 760.0, 130.0, 60.0, 22.0 ],
									"text" : "sel 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-safe-values",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 760.0, 180.0, 166.0, 22.0 ],
									"text" : "90 28 129.370483 0 57.6 -32 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-frozen-values",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 930.0, 180.0, 165.0, 22.0 ],
									"text" : "95 56 280.117862 0 6.4 -32 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-param-unpack",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 7,
									"outlettype" : [ "float", "float", "float", "float", "float", "float", "float" ],
									"patching_rect" : [ 760.0, 638.0, 170.0, 22.0 ],
									"text" : "unpack f f f f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-duration-sec",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 610.0, 329.0, 70.0, 22.0 ],
									"text" : "/ 1000."
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-duration-int",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 610.0, 369.0, 35.0, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-duration-parts",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 610.0, 409.0, 50.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-duration-min",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 610.0, 449.0, 45.0, 22.0 ],
									"text" : "/ 60"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-duration-rem",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 651.0, 449.0, 45.0, 22.0 ],
									"text" : "% 60"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-duration-pack",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 610.0, 489.0, 60.0, 22.0 ],
									"text" : "pak i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-duration-format",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 610.0, 529.0, 125.0, 22.0 ],
									"text" : "sprintf %02ld:%02ld"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-duration-set",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 610.0, 569.0, 90.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-loadbang",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 30.0, 309.0, 65.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-init-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang" ],
									"patching_rect" : [ 30.0, 349.0, 135.0, 22.0 ],
									"text" : "t b b b b b b b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-init-enable",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.0, 399.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-init-record",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 129.0, 399.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-init-play",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 112.0, 399.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-init-file",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 96.0, 423.0, 100.0, 22.0 ],
									"text" : "set No material"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-init-status",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 79.0, 447.0, 62.0, 22.0 ],
									"text" : "set Idle"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-init-duration",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 63.0, 465.0, 76.0, 22.0 ],
									"text" : "set 00:00"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-init-gain",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 46.0, 489.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "gc-init-params",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 513.0, 166.0, 22.0 ],
									"text" : "90 28 129.370483 0 57.6 -32 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-enable-out",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-record-out",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 85.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-play-out",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-path-out",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 195.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-enable-ui",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-record-ui",
									"index" : 6,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 305.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-play-ui",
									"index" : 7,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 360.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-file-ui",
									"index" : 8,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 415.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-status-ui",
									"index" : 9,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 470.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-duration-ui",
									"index" : 10,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 525.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-gain-ui",
									"index" : 11,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 580.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-wet-ui",
									"index" : 12,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 635.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-density-ui",
									"index" : 13,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 690.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-size-ui",
									"index" : 14,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 745.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-pitch-ui",
									"index" : 15,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 800.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-spray-ui",
									"index" : 16,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 854.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-amp-ui",
									"index" : 17,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 910.0, 700.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gc-makeup-ui",
									"index" : 18,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 965.0, 700.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-duration-sec", 0 ],
									"source" : [ "gc-duration", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-duration-set", 0 ],
									"source" : [ "gc-duration-format", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-duration-parts", 0 ],
									"source" : [ "gc-duration-int", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-duration-pack", 0 ],
									"source" : [ "gc-duration-min", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-duration-format", 0 ],
									"source" : [ "gc-duration-pack", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-duration-min", 0 ],
									"source" : [ "gc-duration-parts", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-duration-rem", 0 ],
									"midpoints" : [ 650.5, 440.0, 660.5, 440.0 ],
									"source" : [ "gc-duration-parts", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-duration-pack", 1 ],
									"source" : [ "gc-duration-rem", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-duration-int", 0 ],
									"source" : [ "gc-duration-sec", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-duration-ui", 0 ],
									"midpoints" : [ 619.5, 604.58203125, 534.5, 604.58203125 ],
									"source" : [ "gc-duration-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-enable-trigger", 0 ],
									"source" : [ "gc-enable-receive", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-enable-ui", 0 ],
									"midpoints" : [ 39.5, 604.046875, 259.5, 604.046875 ],
									"source" : [ "gc-enable-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-enable-out", 0 ],
									"midpoints" : [ 70.5, 604.30859375, 39.5, 604.30859375 ],
									"source" : [ "gc-enable-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-enable-set", 0 ],
									"source" : [ "gc-enable-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-ext-enable-clip", 0 ],
									"source" : [ "gc-ext-enable", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-enable-trigger", 0 ],
									"source" : [ "gc-ext-enable-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-file-ui", 0 ],
									"midpoints" : [ 527.5, 605.09375, 424.5, 605.09375 ],
									"source" : [ "gc-file-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-param-unpack", 0 ],
									"midpoints" : [ 939.5, 604.0703125, 769.5, 604.0703125 ],
									"source" : [ "gc-frozen-values", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-duration-ui", 0 ],
									"midpoints" : [ 72.5, 604.984375, 534.5, 604.984375 ],
									"source" : [ "gc-init-duration", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-enable-send", 0 ],
									"midpoints" : [ 155.5, 495.0, 129.5, 495.0 ],
									"source" : [ "gc-init-enable", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-file-ui", 0 ],
									"midpoints" : [ 105.5, 605.1015625, 424.5, 605.1015625 ],
									"source" : [ "gc-init-file", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-gain-ui", 0 ],
									"midpoints" : [ 55.5, 605.5, 589.5, 605.5 ],
									"source" : [ "gc-init-gain", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-param-unpack", 0 ],
									"midpoints" : [ 39.5, 604.53125, 769.5, 604.53125 ],
									"source" : [ "gc-init-params", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-play-trigger", 0 ],
									"midpoints" : [ 121.5, 435.0, 399.5, 435.0 ],
									"source" : [ "gc-init-play", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-record-trigger", 0 ],
									"midpoints" : [ 138.5, 422.0, 219.5, 422.0 ],
									"source" : [ "gc-init-record", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-status-ui", 0 ],
									"midpoints" : [ 88.5, 604.8203125, 479.5, 604.8203125 ],
									"source" : [ "gc-init-status", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-init-duration", 0 ],
									"source" : [ "gc-init-trigger", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-init-enable", 0 ],
									"source" : [ "gc-init-trigger", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-init-file", 0 ],
									"source" : [ "gc-init-trigger", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-init-gain", 0 ],
									"source" : [ "gc-init-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-init-params", 0 ],
									"source" : [ "gc-init-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-init-play", 0 ],
									"source" : [ "gc-init-trigger", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-init-record", 0 ],
									"source" : [ "gc-init-trigger", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-init-status", 0 ],
									"source" : [ "gc-init-trigger", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-init-trigger", 0 ],
									"source" : [ "gc-loadbang", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-amp-ui", 0 ],
									"midpoints" : [ 895.333333333333258, 680.0, 919.5, 680.0 ],
									"source" : [ "gc-param-unpack", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-density-ui", 0 ],
									"midpoints" : [ 794.666666666666629, 680.0, 699.5, 680.0 ],
									"source" : [ "gc-param-unpack", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-makeup-ui", 0 ],
									"midpoints" : [ 920.5, 680.0, 974.5, 680.0 ],
									"source" : [ "gc-param-unpack", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-pitch-ui", 0 ],
									"midpoints" : [ 845.0, 680.0, 809.5, 680.0 ],
									"source" : [ "gc-param-unpack", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-size-ui", 0 ],
									"midpoints" : [ 819.833333333333371, 680.0, 754.5, 680.0 ],
									"source" : [ "gc-param-unpack", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-spray-ui", 0 ],
									"midpoints" : [ 870.166666666666629, 680.0, 863.5, 680.0 ],
									"source" : [ "gc-param-unpack", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-wet-ui", 0 ],
									"midpoints" : [ 769.5, 680.0, 644.5, 680.0 ],
									"source" : [ "gc-param-unpack", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-path-order", 0 ],
									"midpoints" : [ 399.5, 120.0, 509.5, 120.0 ],
									"source" : [ "gc-path", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-path-out", 0 ],
									"midpoints" : [ 509.5, 604.87890625, 204.5, 604.87890625 ],
									"source" : [ "gc-path-fanout", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-status-loaded", 0 ],
									"source" : [ "gc-path-fanout", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-strip-path", 0 ],
									"source" : [ "gc-path-fanout", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-path-fanout", 0 ],
									"source" : [ "gc-path-order", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-path-stop-play", 0 ],
									"source" : [ "gc-path-order", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-path-stop-record", 0 ],
									"source" : [ "gc-path-order", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-play-trigger", 0 ],
									"midpoints" : [ 529.0, 399.9453125, 399.5, 399.9453125 ],
									"source" : [ "gc-path-stop-play", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-record-trigger", 0 ],
									"midpoints" : [ 548.5, 399.92578125, 219.5, 399.92578125 ],
									"source" : [ "gc-path-stop-record", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-play-clip", 0 ],
									"midpoints" : [ 309.5, 120.0, 399.5, 120.0 ],
									"source" : [ "gc-play", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-play-trigger", 0 ],
									"source" : [ "gc-play-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-play-ui", 0 ],
									"midpoints" : [ 399.5, 605.5, 369.5, 605.5 ],
									"source" : [ "gc-play-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-play-out", 0 ],
									"midpoints" : [ 430.5, 604.390625, 149.5, 604.390625 ],
									"source" : [ "gc-play-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-play-set", 0 ],
									"source" : [ "gc-play-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-preset-select", 0 ],
									"midpoints" : [ 509.5, 120.0, 769.5, 120.0 ],
									"source" : [ "gc-preset", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-frozen-values", 0 ],
									"midpoints" : [ 790.0, 166.0, 939.5, 166.0 ],
									"source" : [ "gc-preset-select", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-safe-values", 0 ],
									"source" : [ "gc-preset-select", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-record-clip", 0 ],
									"source" : [ "gc-record", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-record-trigger", 0 ],
									"source" : [ "gc-record-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-record-ui", 0 ],
									"midpoints" : [ 219.5, 605.5, 314.5, 605.5 ],
									"source" : [ "gc-record-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-status-idle", 0 ],
									"source" : [ "gc-record-status", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-status-recording", 0 ],
									"midpoints" : [ 271.0, 500.0, 325.5, 500.0 ],
									"source" : [ "gc-record-status", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-record-out", 0 ],
									"midpoints" : [ 250.5, 605.171875, 94.5, 605.171875 ],
									"order" : 1,
									"source" : [ "gc-record-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-record-set", 0 ],
									"source" : [ "gc-record-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-record-status", 0 ],
									"order" : 0,
									"source" : [ "gc-record-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-param-unpack", 0 ],
									"source" : [ "gc-safe-values", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-status-ui", 0 ],
									"midpoints" : [ 250.5, 605.05078125, 479.5, 605.05078125 ],
									"source" : [ "gc-status-idle", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-status-ui", 0 ],
									"midpoints" : [ 545.5, 605.88671875, 479.5, 605.88671875 ],
									"source" : [ "gc-status-loaded", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-status-ui", 0 ],
									"midpoints" : [ 325.5, 605.4765625, 479.5, 605.4765625 ],
									"source" : [ "gc-status-recording", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gc-file-set", 0 ],
									"source" : [ "gc-strip-path", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gc-enable-send", 0 ],
									"source" : [ "gc-ui-enable", 0 ]
								}

							}
 ],
						"originid" : "pat-6"
					}
,
					"patching_rect" : [ 1061.0, 192.0, 140.0, 22.0 ],
					"text" : "p Granular_control"
				}

			}
, 			{
				"box" : 				{
					"id" : "p-Granular-input",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "", "" ],
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
						"rect" : [ 134.0, 173.0, 860.0, 610.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "gi-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 25.0, 820.0, 20.0 ],
									"text" : "Granular DSP: mic record / sample replace -> synth -> position -> 20 ms enable ramp -> L/R"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gi-enable",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 176.0, 270.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gi-record",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 140.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gi-play",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 532.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gi-path",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gi-position",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 532.0, 384.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-enable-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 176.0, 319.0, 55.0, 22.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-enable-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 176.0, 354.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-adc",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 140.0, 135.0, 65.0, 22.0 ],
									"text" : "adc~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-record-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 180.0, 150.0, 22.0 ],
									"text" : "s mt_granular_record"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-play-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 532.0, 130.0, 140.0, 22.0 ],
									"text" : "s mt_granular_play"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-replace",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 360.0, 130.0, 120.0, 22.0 ],
									"text" : "prepend replace"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-load-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 360.0, 180.0, 50.0, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-load-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 430.0, 225.0, 175.0, 22.0 ],
									"text" : "s mt_granular_load_sample"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-info-delay",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 360.0, 225.0, 60.0, 22.0 ],
									"text" : "del 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-info",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 10,
									"outlettype" : [ "float", "list", "float", "float", "float", "float", "float", "", "int", "" ],
									"patching_rect" : [ 360.0, 260.0, 180.0, 22.0 ],
									"text" : "info~ mt_granular_buffer"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-duration",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 467.333333333333314, 296.0, 115.0, 22.0 ],
									"text" : "clip 1. 600000."
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-duration-store",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 758.0, 354.0, 80.0, 22.0 ],
									"text" : "f 30000."
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-total-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 506.0, 349.0, 175.0, 22.0 ],
									"text" : "s mt_granular_total_ms"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-position-safe",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 532.0, 424.0, 245.0, 22.0 ],
									"text" : "expr min(max(0.\\, $f1)\\, max(0.\\, $f2 - 1.))"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-position-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 532.0, 465.0, 165.0, 22.0 ],
									"text" : "s mt_granular_position"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-position-receive",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 352.112680673599243, 424.0, 165.0, 22.0 ],
									"text" : "r mt_granular_position"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-position-line",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 352.112680673599243, 465.0, 90.0, 22.0 ],
									"text" : "prepend line"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-synth",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 140.0, 225.0, 135.0, 22.0 ],
									"text" : "mt_granular_synth"
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-gate-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 140.0, 410.0, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "gi-gate-r",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 256.0, 410.0, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gi-out-l",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 510.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gi-out-r",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 256.0, 510.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gi-duration-out",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 467.333333333333314, 510.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gi-position-out",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 352.112680673599243, 510.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "gi-synth", 0 ],
									"source" : [ "gi-adc", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-duration-out", 0 ],
									"order" : 2,
									"source" : [ "gi-duration", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-duration-store", 0 ],
									"midpoints" : [ 476.833333333333314, 333.810299267061055, 767.5, 333.810299267061055 ],
									"order" : 0,
									"source" : [ "gi-duration", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-total-send", 0 ],
									"midpoints" : [ 476.833333333333314, 333.5, 515.5, 333.5 ],
									"order" : 1,
									"source" : [ "gi-duration", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-position-safe", 1 ],
									"source" : [ "gi-duration-store", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gi-enable-msg", 0 ],
									"source" : [ "gi-enable", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gi-gate-l", 1 ],
									"order" : 1,
									"source" : [ "gi-enable-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gi-gate-r", 1 ],
									"midpoints" : [ 185.5, 393.0, 301.5, 393.0 ],
									"order" : 0,
									"source" : [ "gi-enable-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gi-enable-line", 0 ],
									"source" : [ "gi-enable-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "gi-out-l", 0 ],
									"source" : [ "gi-gate-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "gi-out-r", 0 ],
									"source" : [ "gi-gate-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-duration", 0 ],
									"source" : [ "gi-info", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-info", 0 ],
									"source" : [ "gi-info-delay", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-info-delay", 0 ],
									"source" : [ "gi-load-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-load-send", 0 ],
									"midpoints" : [ 400.5, 213.5, 439.5, 213.5 ],
									"source" : [ "gi-load-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-replace", 0 ],
									"source" : [ "gi-path", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gi-play-send", 0 ],
									"source" : [ "gi-play", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-position-safe", 0 ],
									"source" : [ "gi-position", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-position-out", 0 ],
									"source" : [ "gi-position-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-position-line", 0 ],
									"source" : [ "gi-position-receive", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-position-send", 0 ],
									"source" : [ "gi-position-safe", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "gi-record-send", 0 ],
									"source" : [ "gi-record", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gi-load-trigger", 0 ],
									"source" : [ "gi-replace", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "gi-gate-l", 0 ],
									"source" : [ "gi-synth", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "gi-gate-r", 0 ],
									"source" : [ "gi-synth", 1 ]
								}

							}
 ],
						"originid" : "pat-8"
					}
,
					"patching_rect" : [ 1068.0, 242.0, 130.0, 22.0 ],
					"text" : "p Granular_input"
				}

			}
, 			{
				"box" : 				{
					"id" : "p-Granular-params",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 0,
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
						"rect" : [ 134.0, 173.0, 1420.0, 300.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "gp-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 25.0, 620.0, 20.0 ],
									"text" : "Granular parameters: commercial display units -> existing engine units"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gp-wet-in",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gp-wet-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 190.0, 110.0, 22.0 ],
									"text" : "s mt_granular_wet"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gp-density-in",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 230.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gp-density-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 230.0, 135.0, 127.0, 22.0 ],
									"text" : "s mt_granular_density"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gp-size-in",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 400.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gp-size-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 400.0, 190.0, 166.0, 22.0 ],
									"text" : "s mt_granular_grain_size_pct"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gp-pitch-in",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 660.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gp-pitch-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 660.0, 135.0, 114.0, 22.0 ],
									"text" : "s mt_granular_pitch"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gp-spray-in",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 820.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gp-spray-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 820.0, 190.0, 141.0, 22.0 ],
									"text" : "s mt_granular_spray_pct"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gp-amp-in",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1060.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gp-amp-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1060.0, 135.0, 132.0, 22.0 ],
									"text" : "s mt_granular_amp_db"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gp-makeup-in",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1240.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gp-makeup-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1240.0, 135.0, 142.0, 22.0 ],
									"text" : "s mt_granular_output_db"
								}

							}
, 							{
								"box" : 								{
									"id" : "gp-wet-convert",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 135.0, 190.0, 22.0 ],
									"text" : "expr $f1 / 100."
								}

							}
, 							{
								"box" : 								{
									"id" : "gp-size-convert",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 400.0, 135.0, 240.0, 22.0 ],
									"text" : "expr 100. * log($f1 / 20.) / log(25.)"
								}

							}
, 							{
								"box" : 								{
									"id" : "gp-spray-convert",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 820.0, 135.0, 210.0, 22.0 ],
									"text" : "expr 100. * sqrt($f1 / 1000.)"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gp-amp-send", 0 ],
									"source" : [ "gp-amp-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gp-density-send", 0 ],
									"source" : [ "gp-density-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gp-makeup-send", 0 ],
									"source" : [ "gp-makeup-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gp-pitch-send", 0 ],
									"source" : [ "gp-pitch-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gp-size-send", 0 ],
									"source" : [ "gp-size-convert", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gp-size-convert", 0 ],
									"source" : [ "gp-size-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gp-spray-send", 0 ],
									"source" : [ "gp-spray-convert", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gp-spray-convert", 0 ],
									"source" : [ "gp-spray-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gp-wet-send", 0 ],
									"source" : [ "gp-wet-convert", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gp-wet-convert", 0 ],
									"source" : [ "gp-wet-in", 0 ]
								}

							}
 ],
						"originid" : "pat-44"
					}
,
					"patching_rect" : [ 30.0, 510.0, 135.0, 22.0 ],
					"text" : "p Granular_params"
				}

			}
, 			{
				"box" : 				{
					"comment" : "Granular audio L",
					"id" : "g-out-l",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1068.0, 531.395329833030701, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Granular audio R",
					"id" : "g-out-r",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1107.534882307052612, 531.395329833030701, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "g-wet-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 342.0, 84.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 16.0, 342.0, 84.0, 18.0 ],
					"text" : "Wet (%)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"frames" : 64,
					"id" : "g-wet-dial",
					"maxclass" : "pictctrl",
					"mode" : 2,
					"multiplier" : 1,
					"name" : "granular_knob_v1.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 36.0, 360.0, 44.0, 44.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 36.0, 365.0, 44.0, 44.0 ],
					"range" : 255,
					"trackhorizontal" : 1,
					"tracking" : 1,
					"trackvertical" : 1,
					"varname" : "granular_wet"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-wet-value",
					"maxclass" : "flonum",
					"maximum" : 100.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 407.0, 56.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 30.0, 406.0, 56.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "g-density-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 342.0, 84.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 105.0, 342.0, 84.0, 18.0 ],
					"text" : "Density (gr/s)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"frames" : 64,
					"id" : "g-density-dial",
					"maxclass" : "pictctrl",
					"mode" : 2,
					"multiplier" : 1,
					"name" : "granular_knob_v1.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 125.0, 360.0, 44.0, 44.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 125.0, 365.0, 44.0, 44.0 ],
					"range" : 255,
					"trackhorizontal" : 1,
					"tracking" : 1,
					"trackvertical" : 1,
					"varname" : "granular_density"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-density-value",
					"maxclass" : "flonum",
					"maximum" : 80.0,
					"minimum" : 1.0,
					"numdecimalplaces" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 119.0, 407.0, 56.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.0, 406.0, 56.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "g-size-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 194.0, 342.0, 84.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 194.0, 342.0, 84.0, 18.0 ],
					"text" : "Size (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"frames" : 64,
					"id" : "g-size-dial",
					"maxclass" : "pictctrl",
					"mode" : 2,
					"multiplier" : 1,
					"name" : "granular_knob_v1.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 214.0, 360.0, 44.0, 44.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 214.0, 365.0, 44.0, 44.0 ],
					"range" : 255,
					"trackhorizontal" : 1,
					"tracking" : 1,
					"trackvertical" : 1,
					"varname" : "granular_grain_size"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-size-value",
					"maxclass" : "flonum",
					"maximum" : 500.0,
					"minimum" : 20.0,
					"numdecimalplaces" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 208.0, 407.0, 56.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 208.0, 406.0, 56.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "g-pitch-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 283.0, 342.0, 84.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 283.0, 342.0, 84.0, 18.0 ],
					"text" : "Pitch (st)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"frames" : 64,
					"id" : "g-pitch-dial",
					"maxclass" : "pictctrl",
					"mode" : 2,
					"multiplier" : 1,
					"name" : "granular_knob_v1.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 303.0, 360.0, 44.0, 44.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 303.0, 365.0, 44.0, 44.0 ],
					"range" : 255,
					"trackhorizontal" : 1,
					"tracking" : 1,
					"trackvertical" : 1,
					"varname" : "granular_pitch"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-pitch-value",
					"maxclass" : "flonum",
					"maximum" : 24.0,
					"minimum" : -24.0,
					"numdecimalplaces" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 297.0, 407.0, 56.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 297.0, 406.0, 56.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "g-spray-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 372.0, 342.0, 84.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 372.0, 342.0, 84.0, 18.0 ],
					"text" : "Spray (ms)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"frames" : 64,
					"id" : "g-spray-dial",
					"maxclass" : "pictctrl",
					"mode" : 2,
					"multiplier" : 1,
					"name" : "granular_knob_v1.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 392.0, 360.0, 44.0, 44.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 392.0, 365.0, 44.0, 44.0 ],
					"range" : 255,
					"trackhorizontal" : 1,
					"tracking" : 1,
					"trackvertical" : 1,
					"varname" : "granular_spray"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-spray-value",
					"maxclass" : "flonum",
					"maximum" : 1000.0,
					"minimum" : 0.0,
					"numdecimalplaces" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 386.0, 407.0, 56.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 386.0, 406.0, 56.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "g-amp-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 461.0, 342.0, 84.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 461.0, 342.0, 84.0, 18.0 ],
					"text" : "Grain Amp (dB)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"frames" : 64,
					"id" : "g-amp-dial",
					"maxclass" : "pictctrl",
					"mode" : 2,
					"multiplier" : 1,
					"name" : "granular_knob_gain_v1.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 481.0, 360.0, 44.0, 44.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 481.0, 365.0, 44.0, 44.0 ],
					"range" : 255,
					"trackhorizontal" : 1,
					"tracking" : 1,
					"trackvertical" : 1,
					"varname" : "granular_grain_amp"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-amp-value",
					"maxclass" : "flonum",
					"maximum" : -3.0,
					"minimum" : -60.0,
					"numdecimalplaces" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 475.0, 407.0, 56.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 475.0, 406.0, 56.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "g-makeup-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 550.0, 342.0, 92.0, 18.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 550.0, 342.0, 92.0, 18.0 ],
					"text" : "Texture Gain (dB)",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"frames" : 64,
					"id" : "g-makeup-dial",
					"maxclass" : "pictctrl",
					"mode" : 2,
					"multiplier" : 1,
					"name" : "granular_knob_gain_v1.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 570.0, 360.0, 44.0, 44.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 570.0, 365.0, 44.0, 44.0 ],
					"range" : 255,
					"trackhorizontal" : 1,
					"tracking" : 1,
					"trackvertical" : 1,
					"varname" : "granular_makeup"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-makeup-value",
					"maxclass" : "flonum",
					"maximum" : 12.0,
					"minimum" : -60.0,
					"numdecimalplaces" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 564.0, 407.0, 56.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 564.0, 406.0, 56.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"background" : 1,
					"forceaspect" : 1,
					"id" : "g-bg",
					"ignoreclick" : 1,
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 0.0, 0.0, 720.0, 440.0 ],
					"pic" : "granular_panel_v1.png",
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 720.0, 440.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "p-Granular-knob-map",
					"maxclass" : "newobj",
					"numinlets" : 14,
					"numoutlets" : 14,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
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
						"rect" : [ 34.0, 173.0, 1732.0, 590.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "gkm-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 25.0, 20.0, 820.0, 20.0 ],
									"text" : "Granular knob map: pictctrl range 255 outputs 0-254; set paths do not output"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-wet-raw-in",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 25.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-wet-value-in",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1000.0, 250.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-wet-raw-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 25.0, 115.0, 80.0, 22.0 ],
									"text" : "clip 0 254"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-wet-to-value",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 25.0, 160.0, 125.0, 22.0 ],
									"text" : "scale 0 254 0. 100."
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-wet-value-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1000.0, 295.0, 100.0, 22.0 ],
									"text" : "clip 0. 100."
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-wet-to-raw",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1000.0, 340.0, 125.0, 22.0 ],
									"text" : "scale 0. 100. 0 254"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-wet-raw-int",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1000.0, 385.0, 35.0, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-wet-set",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1000.0, 430.0, 90.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-wet-value-out",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 25.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-wet-set-out",
									"index" : 8,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1000.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-density-raw-in",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 160.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-density-value-in",
									"index" : 9,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1135.0, 250.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-density-raw-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.0, 115.0, 80.0, 22.0 ],
									"text" : "clip 0 254"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-density-to-value",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.0, 160.0, 125.0, 22.0 ],
									"text" : "scale 0 254 1. 80."
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-density-value-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1135.0, 295.0, 100.0, 22.0 ],
									"text" : "clip 1. 80."
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-density-to-raw",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1135.0, 340.0, 125.0, 22.0 ],
									"text" : "scale 1. 80. 0 254"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-density-raw-int",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1135.0, 385.0, 35.0, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-density-set",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1135.0, 430.0, 90.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-density-value-out",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-density-set-out",
									"index" : 9,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1135.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-size-raw-in",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 295.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-size-value-in",
									"index" : 10,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1270.0, 250.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-size-raw-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 295.0, 115.0, 80.0, 22.0 ],
									"text" : "clip 0 254"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-size-to-value",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 295.0, 160.0, 167.0, 22.0 ],
									"text" : "expr 20. * pow(25.\\, $f1 / 254.)"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-size-value-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1270.0, 295.0, 100.0, 22.0 ],
									"text" : "clip 20. 500."
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-size-to-raw",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1270.0, 340.0, 188.0, 22.0 ],
									"text" : "expr 254. * log($f1 / 20.) / log(25.)"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-size-raw-int",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1270.0, 385.0, 35.0, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-size-set",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1270.0, 430.0, 90.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-size-value-out",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 295.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-size-set-out",
									"index" : 10,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1270.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-pitch-raw-in",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 430.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-pitch-value-in",
									"index" : 11,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1405.0, 250.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-pitch-raw-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 430.0, 115.0, 80.0, 22.0 ],
									"text" : "clip 0 254"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-pitch-to-value",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 430.0, 160.0, 125.0, 22.0 ],
									"text" : "scale 0 254 -24. 24."
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-pitch-value-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1405.0, 295.0, 100.0, 22.0 ],
									"text" : "clip -24. 24."
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-pitch-to-raw",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1405.0, 340.0, 125.0, 22.0 ],
									"text" : "scale -24. 24. 0 254"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-pitch-raw-int",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1405.0, 385.0, 35.0, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-pitch-set",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1405.0, 430.0, 90.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-pitch-value-out",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 430.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-pitch-set-out",
									"index" : 11,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1405.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-spray-raw-in",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 565.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-spray-value-in",
									"index" : 12,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1540.0, 250.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-spray-raw-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 565.0, 115.0, 80.0, 22.0 ],
									"text" : "clip 0 254"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-spray-to-value",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 565.0, 160.0, 173.0, 22.0 ],
									"text" : "expr pow($f1 / 254.\\, 2.) * 1000."
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-spray-value-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1540.0, 295.0, 100.0, 22.0 ],
									"text" : "clip 0. 1000."
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-spray-to-raw",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1540.0, 340.0, 155.0, 22.0 ],
									"text" : "expr 254. * sqrt($f1 / 1000.)"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-spray-raw-int",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1540.0, 385.0, 35.0, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-spray-set",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1540.0, 430.0, 90.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-spray-value-out",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 565.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-spray-set-out",
									"index" : 12,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1540.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-amp-raw-in",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 700.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-amp-value-in",
									"index" : 13,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1675.0, 250.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-amp-raw-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 700.0, 115.0, 80.0, 22.0 ],
									"text" : "clip 0 254"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-amp-to-value",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 700.0, 160.0, 125.0, 22.0 ],
									"text" : "scale 0 254 -60. -3."
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-amp-value-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1675.0, 295.0, 100.0, 22.0 ],
									"text" : "clip -60. -3."
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-amp-to-raw",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1675.0, 340.0, 125.0, 22.0 ],
									"text" : "scale -60. -3. 0 254"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-amp-raw-int",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1675.0, 385.0, 35.0, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-amp-set",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1675.0, 430.0, 90.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-amp-value-out",
									"index" : 6,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 700.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-amp-set-out",
									"index" : 13,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1675.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-makeup-raw-in",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 835.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-makeup-value-in",
									"index" : 14,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1810.0, 250.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-makeup-raw-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 835.0, 115.0, 80.0, 22.0 ],
									"text" : "clip 0 254"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-makeup-to-value",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 835.0, 160.0, 125.0, 22.0 ],
									"text" : "scale 0 254 -60. 12."
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-makeup-value-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1810.0, 295.0, 100.0, 22.0 ],
									"text" : "clip -60. 12."
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-makeup-to-raw",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1810.0, 340.0, 125.0, 22.0 ],
									"text" : "scale -60. 12. 0 254"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-makeup-raw-int",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1810.0, 385.0, 35.0, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "gkm-makeup-set",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1810.0, 430.0, 90.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-makeup-value-out",
									"index" : 7,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 835.0, 500.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "gkm-makeup-set-out",
									"index" : 14,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1810.0, 500.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-amp-to-value", 0 ],
									"source" : [ "gkm-amp-raw-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-amp-raw-clip", 0 ],
									"source" : [ "gkm-amp-raw-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-amp-set", 0 ],
									"source" : [ "gkm-amp-raw-int", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-amp-set-out", 0 ],
									"source" : [ "gkm-amp-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-amp-raw-int", 0 ],
									"source" : [ "gkm-amp-to-raw", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-amp-value-out", 0 ],
									"source" : [ "gkm-amp-to-value", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-amp-to-raw", 0 ],
									"source" : [ "gkm-amp-value-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-amp-value-clip", 0 ],
									"source" : [ "gkm-amp-value-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-density-to-value", 0 ],
									"source" : [ "gkm-density-raw-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-density-raw-clip", 0 ],
									"source" : [ "gkm-density-raw-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-density-set", 0 ],
									"source" : [ "gkm-density-raw-int", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-density-set-out", 0 ],
									"source" : [ "gkm-density-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-density-raw-int", 0 ],
									"source" : [ "gkm-density-to-raw", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-density-value-out", 0 ],
									"source" : [ "gkm-density-to-value", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-density-to-raw", 0 ],
									"source" : [ "gkm-density-value-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-density-value-clip", 0 ],
									"source" : [ "gkm-density-value-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-makeup-to-value", 0 ],
									"source" : [ "gkm-makeup-raw-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-makeup-raw-clip", 0 ],
									"source" : [ "gkm-makeup-raw-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-makeup-set", 0 ],
									"source" : [ "gkm-makeup-raw-int", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-makeup-set-out", 0 ],
									"source" : [ "gkm-makeup-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-makeup-raw-int", 0 ],
									"source" : [ "gkm-makeup-to-raw", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-makeup-value-out", 0 ],
									"source" : [ "gkm-makeup-to-value", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-makeup-to-raw", 0 ],
									"source" : [ "gkm-makeup-value-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-makeup-value-clip", 0 ],
									"source" : [ "gkm-makeup-value-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-pitch-to-value", 0 ],
									"source" : [ "gkm-pitch-raw-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-pitch-raw-clip", 0 ],
									"source" : [ "gkm-pitch-raw-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-pitch-set", 0 ],
									"source" : [ "gkm-pitch-raw-int", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-pitch-set-out", 0 ],
									"source" : [ "gkm-pitch-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-pitch-raw-int", 0 ],
									"source" : [ "gkm-pitch-to-raw", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-pitch-value-out", 0 ],
									"source" : [ "gkm-pitch-to-value", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-pitch-to-raw", 0 ],
									"source" : [ "gkm-pitch-value-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-pitch-value-clip", 0 ],
									"source" : [ "gkm-pitch-value-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-size-to-value", 0 ],
									"source" : [ "gkm-size-raw-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-size-raw-clip", 0 ],
									"source" : [ "gkm-size-raw-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-size-set", 0 ],
									"source" : [ "gkm-size-raw-int", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-size-set-out", 0 ],
									"source" : [ "gkm-size-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-size-raw-int", 0 ],
									"source" : [ "gkm-size-to-raw", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-size-value-out", 0 ],
									"source" : [ "gkm-size-to-value", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-size-to-raw", 0 ],
									"source" : [ "gkm-size-value-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-size-value-clip", 0 ],
									"source" : [ "gkm-size-value-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-spray-to-value", 0 ],
									"source" : [ "gkm-spray-raw-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-spray-raw-clip", 0 ],
									"source" : [ "gkm-spray-raw-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-spray-set", 0 ],
									"source" : [ "gkm-spray-raw-int", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-spray-set-out", 0 ],
									"source" : [ "gkm-spray-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-spray-raw-int", 0 ],
									"source" : [ "gkm-spray-to-raw", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-spray-value-out", 0 ],
									"source" : [ "gkm-spray-to-value", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-spray-to-raw", 0 ],
									"source" : [ "gkm-spray-value-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-spray-value-clip", 0 ],
									"source" : [ "gkm-spray-value-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-wet-to-value", 0 ],
									"source" : [ "gkm-wet-raw-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-wet-raw-clip", 0 ],
									"source" : [ "gkm-wet-raw-in", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-wet-set", 0 ],
									"source" : [ "gkm-wet-raw-int", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-wet-set-out", 0 ],
									"source" : [ "gkm-wet-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-wet-raw-int", 0 ],
									"source" : [ "gkm-wet-to-raw", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-wet-value-out", 0 ],
									"source" : [ "gkm-wet-to-value", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-wet-to-raw", 0 ],
									"source" : [ "gkm-wet-value-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "gkm-wet-value-clip", 0 ],
									"source" : [ "gkm-wet-value-in", 0 ]
								}

							}
 ],
						"originid" : "pat-46"
					}
,
					"patching_rect" : [ 877.0, 360.0, 165.0, 22.0 ],
					"text" : "p Granular_knob_map"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 5 ],
					"midpoints" : [ 490.5, 439.308865373954177, 754.660257545228205, 439.308865373954177, 754.660257545228205, 350.0, 942.653846153846189, 350.0 ],
					"source" : [ "g-amp-dial", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 12 ],
					"midpoints" : [ 484.5, 439.0, 752.884615384615358, 439.0, 752.884615384615358, 350.0, 1021.269230769230717, 350.0 ],
					"order" : 0,
					"source" : [ "g-amp-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-params", 5 ],
					"midpoints" : [ 484.5, 469.5, 136.166666666666686, 469.5 ],
					"order" : 1,
					"source" : [ "g-amp-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 1 ],
					"midpoints" : [ 134.5, 439.699490359984338, 753.644037527623254, 439.699490359984338, 753.644037527623254, 350.0, 897.730769230769283, 350.0 ],
					"source" : [ "g-density-dial", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 8 ],
					"midpoints" : [ 128.5, 439.0, 753.485582915206351, 439.0, 753.485582915206351, 350.0, 976.346153846153811, 350.0 ],
					"order" : 0,
					"source" : [ "g-density-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-params", 1 ],
					"midpoints" : [ 128.5, 469.5, 58.833333333333329, 469.5 ],
					"order" : 1,
					"source" : [ "g-density-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-control", 4 ],
					"midpoints" : [ 283.5, 126.1015625, 1151.166666666666742, 126.1015625 ],
					"source" : [ "g-drop", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-Granular-control", 1 ],
					"midpoints" : [ 39.5, 126.44140625, 1090.666666666666742, 126.44140625 ],
					"source" : [ "g-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-Granular-control", 0 ],
					"source" : [ "g-ext-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "g-out-l", 0 ],
					"source" : [ "g-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "g-out-r", 0 ],
					"midpoints" : [ 1086.25, 513.139520287513733, 1117.034882307052612, 513.139520287513733 ],
					"source" : [ "g-gain", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-open", 0 ],
					"midpoints" : [ 434.5, 125.6875, 1151.5, 125.6875 ],
					"source" : [ "g-load", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 6 ],
					"midpoints" : [ 579.5, 439.130209082271904, 754.627203166072832, 439.130209082271904, 754.627203166072832, 350.0, 953.884615384615358, 350.0 ],
					"source" : [ "g-makeup-dial", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 13 ],
					"midpoints" : [ 573.5, 439.0, 755.63671875, 439.0, 755.63671875, 350.0, 1032.5, 350.0 ],
					"order" : 0,
					"source" : [ "g-makeup-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-params", 6 ],
					"midpoints" : [ 573.5, 469.5, 155.5, 469.5 ],
					"order" : 1,
					"source" : [ "g-makeup-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-control", 4 ],
					"source" : [ "g-open", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 3 ],
					"midpoints" : [ 312.5, 439.118095031939447, 753.598762103266836, 439.118095031939447, 753.598762103266836, 350.0, 920.192307692307736, 350.0 ],
					"source" : [ "g-pitch-dial", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 10 ],
					"midpoints" : [ 306.5, 439.0, 753.356974155033186, 439.0, 753.356974155033186, 350.0, 998.807692307692264, 350.0 ],
					"order" : 0,
					"source" : [ "g-pitch-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-params", 3 ],
					"midpoints" : [ 306.5, 469.5, 97.5, 469.5 ],
					"order" : 1,
					"source" : [ "g-pitch-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-Granular-control", 3 ],
					"midpoints" : [ 199.5, 126.02734375, 1131.0, 126.02734375 ],
					"source" : [ "g-play", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-control", 5 ],
					"midpoints" : [ 493.5, 126.78125, 1171.333333333333258, 126.78125 ],
					"source" : [ "g-preset", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-Granular-control", 2 ],
					"midpoints" : [ 113.5, 126.625, 1110.833333333333258, 126.625 ],
					"source" : [ "g-record", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 2 ],
					"midpoints" : [ 223.5, 437.601016597822309, 754.360983170819736, 437.601016597822309, 754.360983170819736, 350.0, 908.961538461538453, 350.0 ],
					"source" : [ "g-size-dial", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 9 ],
					"midpoints" : [ 217.5, 439.0, 754.369195230036553, 439.0, 754.369195230036553, 350.0, 987.576923076923094, 350.0 ],
					"order" : 0,
					"source" : [ "g-size-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-params", 2 ],
					"midpoints" : [ 217.5, 469.5, 78.166666666666657, 469.5 ],
					"order" : 1,
					"source" : [ "g-size-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 4 ],
					"midpoints" : [ 401.5, 438.323218606878072, 754.534457752982576, 438.323218606878072, 754.534457752982576, 350.0, 931.423076923076906, 350.0 ],
					"source" : [ "g-spray-dial", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 11 ],
					"midpoints" : [ 395.5, 439.0, 753.396836444717565, 439.0, 753.396836444717565, 350.0, 1010.038461538461547, 350.0 ],
					"order" : 0,
					"source" : [ "g-spray-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-params", 4 ],
					"midpoints" : [ 395.5, 469.5, 116.833333333333329, 469.5 ],
					"order" : 1,
					"source" : [ "g-spray-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-input", 4 ],
					"midpoints" : [ 267.899999999999977, 297.4140625, 739.817417279411757, 297.4140625, 739.817417279411757, 221.76171875, 1188.5, 221.76171875 ],
					"source" : [ "g-waveform", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 0 ],
					"midpoints" : [ 45.5, 437.264897423796356, 755.682300299871713, 437.264897423796356, 755.682300299871713, 350.0, 886.5, 350.0 ],
					"source" : [ "g-wet-dial", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-knob-map", 7 ],
					"midpoints" : [ 39.5, 439.0, 754.260824816480635, 439.0, 754.260824816480635, 350.0, 965.115384615384642, 350.0 ],
					"order" : 0,
					"source" : [ "g-wet-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-params", 0 ],
					"order" : 1,
					"source" : [ "g-wet-value", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-amp-value", 0 ],
					"midpoints" : [ 1184.38235294117635, 439.45703125, 484.5, 439.45703125 ],
					"source" : [ "p-Granular-control", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-density-value", 0 ],
					"midpoints" : [ 1155.911764705882206, 440.16015625, 128.5, 440.16015625 ],
					"source" : [ "p-Granular-control", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-duration", 0 ],
					"midpoints" : [ 1134.558823529411711, 297.2734375, 459.5, 297.2734375 ],
					"source" : [ "p-Granular-control", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "g-enable", 0 ],
					"midpoints" : [ 1098.970588235294144, 221.76171875, 741.164981617647072, 221.76171875, 741.164981617647072, 68.0, 39.5, 68.0 ],
					"source" : [ "p-Granular-control", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-file", 0 ],
					"midpoints" : [ 1120.323529411764639, 297.8984375, 33.5, 297.8984375 ],
					"source" : [ "p-Granular-control", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-gain", 0 ],
					"midpoints" : [ 1141.676470588235134, 228.1328125, 1077.5, 228.1328125 ],
					"source" : [ "p-Granular-control", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-makeup-value", 0 ],
					"midpoints" : [ 1191.5, 438.8125, 573.5, 438.8125 ],
					"source" : [ "p-Granular-control", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-pitch-value", 0 ],
					"midpoints" : [ 1170.147058823529278, 439.91796875, 306.5, 439.91796875 ],
					"source" : [ "p-Granular-control", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "g-play", 0 ],
					"midpoints" : [ 1113.205882352940989, 221.79296875, 741.688878676470608, 221.79296875, 741.688878676470608, 68.0, 199.5, 68.0 ],
					"source" : [ "p-Granular-control", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "g-record", 0 ],
					"midpoints" : [ 1106.088235294117567, 221.86328125, 740.723805147058783, 221.86328125, 740.723805147058783, 68.0, 113.5, 68.0 ],
					"source" : [ "p-Granular-control", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-size-value", 0 ],
					"midpoints" : [ 1163.029411764705856, 439.94140625, 217.5, 439.94140625 ],
					"source" : [ "p-Granular-control", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-spray-value", 0 ],
					"midpoints" : [ 1177.264705882352928, 439.7734375, 395.5, 439.7734375 ],
					"source" : [ "p-Granular-control", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-status", 0 ],
					"midpoints" : [ 1127.441176470588061, 298.44921875, 277.5, 298.44921875 ],
					"source" : [ "p-Granular-control", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-wet-value", 0 ],
					"midpoints" : [ 1148.794117647058783, 440.25390625, 39.5, 440.25390625 ],
					"source" : [ "p-Granular-control", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-input", 2 ],
					"midpoints" : [ 1091.852941176470495, 228.0, 1133.0, 228.0 ],
					"source" : [ "p-Granular-control", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-Granular-input", 3 ],
					"midpoints" : [ 1084.735294117647072, 228.0, 1160.75, 228.0 ],
					"source" : [ "p-Granular-control", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-Granular-input", 0 ],
					"source" : [ "p-Granular-control", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-Granular-input", 1 ],
					"midpoints" : [ 1070.5, 228.0, 1105.25, 228.0 ],
					"source" : [ "p-Granular-control", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "g-gain", 1 ],
					"midpoints" : [ 1114.5, 274.441855370998383, 1112.5, 274.441855370998383 ],
					"source" : [ "p-Granular-input", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "g-gain", 0 ],
					"source" : [ "p-Granular-input", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-waveform", 0 ],
					"midpoints" : [ 1151.5, 297.781340795103461, 740.769761029411711, 297.781340795103461, 740.769761029411711, 126.91796875, 27.5, 126.91796875 ],
					"source" : [ "p-Granular-input", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Granular-control", 6 ],
					"source" : [ "p-Granular-input", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-amp-dial", 0 ],
					"midpoints" : [ 1021.269230769230717, 403.0, 755.884615384615358, 403.0, 755.884615384615358, 350.0, 490.5, 350.0 ],
					"source" : [ "p-Granular-knob-map", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-amp-value", 0 ],
					"midpoints" : [ 942.653846153846189, 440.135417900863104, 484.5, 440.135417900863104 ],
					"source" : [ "p-Granular-knob-map", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-density-dial", 0 ],
					"midpoints" : [ 976.346153846153811, 403.0, 753.680889423076906, 403.0, 753.680889423076906, 350.0, 134.5, 350.0 ],
					"source" : [ "p-Granular-knob-map", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-density-value", 0 ],
					"midpoints" : [ 897.730769230769283, 439.953126213280484, 128.5, 439.953126213280484 ],
					"source" : [ "p-Granular-knob-map", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-makeup-dial", 0 ],
					"midpoints" : [ 1032.5, 403.0, 755.140625, 403.0, 755.140625, 350.0, 579.5, 350.0 ],
					"source" : [ "p-Granular-knob-map", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-makeup-value", 0 ],
					"midpoints" : [ 953.884615384615358, 437.959450577152893, 573.5, 437.959450577152893 ],
					"source" : [ "p-Granular-knob-map", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-pitch-dial", 0 ],
					"midpoints" : [ 998.807692307692264, 403.0, 755.153846153846189, 403.0, 755.153846153846189, 350.0, 312.5, 350.0 ],
					"source" : [ "p-Granular-knob-map", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-pitch-value", 0 ],
					"midpoints" : [ 920.192307692307736, 439.442709532682784, 306.5, 439.442709532682784 ],
					"source" : [ "p-Granular-knob-map", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-size-dial", 0 ],
					"midpoints" : [ 987.576923076923094, 403.0, 754.225961538461547, 403.0, 754.225961538461547, 350.0, 223.5, 350.0 ],
					"source" : [ "p-Granular-knob-map", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-size-value", 0 ],
					"midpoints" : [ 908.961538461538453, 439.423736323835328, 217.5, 439.423736323835328 ],
					"source" : [ "p-Granular-knob-map", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-spray-dial", 0 ],
					"midpoints" : [ 1010.038461538461547, 403.0, 754.874699519230717, 403.0, 754.874699519230717, 350.0, 401.5, 350.0 ],
					"source" : [ "p-Granular-knob-map", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-spray-value", 0 ],
					"midpoints" : [ 931.423076923076906, 439.271950607420877, 395.5, 439.271950607420877 ],
					"source" : [ "p-Granular-knob-map", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-wet-dial", 0 ],
					"midpoints" : [ 965.115384615384642, 403.0, 754.788161057692378, 403.0, 754.788161057692378, 350.0, 45.5, 350.0 ],
					"source" : [ "p-Granular-knob-map", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "g-wet-value", 0 ],
					"midpoints" : [ 886.5, 440.059152989299037, 39.5, 440.059152989299037 ],
					"source" : [ "p-Granular-knob-map", 0 ]
				}

			}
 ],
		"originid" : "pat-4",
		"parameters" : 		{
			"g-drop" : [ "granular_drop", "granular_drop", 0 ],
			"g-gain" : [ "granular_output_gain", "Granular Input", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "granular_knob_v1.png",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "granular_knob_gain_v1.png",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "granular_panel_v1.png",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "mt_grain_voice.maxpat",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mt_granular_synth.maxpat",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
