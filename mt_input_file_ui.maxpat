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
		"rect" : [ 444.0, 114.0, 772.0, 448.0 ],
		"bglocked" : 1,
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"autofit" : 1,
					"background" : 1,
					"forceaspect" : 1,
					"id" : "f-bg",
					"ignoreclick" : 1,
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 0.0, 0.0, 520.0, 340.0 ],
					"pic" : "file_panel_v1.png",
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 520.0, 340.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "f-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 14.0, 130.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 25.925926119089127, 7.0, 130.0, 20.0 ],
					"text" : "FILE INPUT"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-note",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 35.0, 260.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 25.925926119089127, 28.0, 260.0, 20.0 ],
					"text" : "drop / load / seek / loop / 20 ms ramp"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-enable",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.0, 82.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 72.0, 24.0, 24.0 ],
					"varname" : "file_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-enable-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.0, 108.0, 46.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 15.14814817160368, 103.629630208015442, 46.0, 20.0 ],
					"text" : "Enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-play",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 74.0, 82.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 72.0, 24.0, 24.0 ],
					"varname" : "file_play"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-play-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 108.0, 34.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 66.175926446914673, 103.629630208015442, 32.0, 20.0 ],
					"text" : "Play"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-loop",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 118.0, 82.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 114.0, 72.0, 24.0, 24.0 ],
					"varname" : "file_loop"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-loop-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 115.0, 108.0, 36.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 108.699074923992157, 103.629630208015442, 35.0, 20.0 ],
					"text" : "Loop"
				}

			}
, 			{
				"box" : 				{
					"decodemode" : 0,
					"id" : "f-drop",
					"maxclass" : "live.drop",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 170.0, 76.0, 164.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 170.0, 84.0, 164.0, 28.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "file_drop",
							"parameter_modmode" : 0,
							"parameter_shortname" : "file_drop",
							"parameter_type" : 4
						}

					}
,
					"varname" : "file_drop"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-load-button",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 359.0, 82.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 348.0, 86.0, 24.0, 24.0 ],
					"varname" : "file_load"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-load-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 350.0, 109.0, 44.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 353.5, 108.0, 35.0, 20.0 ],
					"text" : "Load"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-open",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 639.999956130981445, 28.96551525592804, 90.0, 22.0 ],
					"text" : "opendialog"
				}

			}
, 			{
				"box" : 				{
					"buffername" : "#0_file_buffer",
					"id" : "f-waveform",
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 18.0, 136.0, 424.0, 124.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 152.0, 412.0, 100.0 ],
					"setmode" : 1,
					"varname" : "file_waveform"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-name",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 28.0, 285.0, 245.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 28.0, 292.0, 242.0, 22.0 ],
					"text" : "No file loaded"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-time-current",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 298.0, 285.0, 52.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 298.0, 292.0, 52.0, 22.0 ],
					"text" : "00:00"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-time-separator",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 354.0, 285.0, 18.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 354.0, 293.0, 18.0, 20.0 ],
					"text" : "/"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-time-total",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 368.0, 285.0, 52.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.0, 292.0, 52.0, 22.0 ],
					"text" : "00:00"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-status-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 265.0, 40.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 30.0, 286.0, 40.0, 20.0 ],
					"text" : "FILE"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-time-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 298.0, 265.0, 40.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 340.0, 309.0, 37.0, 20.0 ],
					"text" : "TIME"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-gain",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 569.862972259521484, 150.0, 54.0, 190.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 465.5, 105.5, 28.0, 171.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_longname" : "file_output_gain",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "File Input",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"varname" : "file_output_gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "f-gain-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 461.0, 71.0, 45.0, 20.0 ],
					"presentation" : 0,
					"presentation_rect" : [ 457.0, 76.0, 45.0, 20.0 ],
					"text" : "Output"
				}

			}
, 			{
				"box" : 				{
					"comment" : "Enable 0/1",
					"id" : "f-ext-enable",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 571.232835173606873, 17.123297333717346, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Play 0/1",
					"id" : "f-ext-play",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 598.630093455314636, 17.123297333717346, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "p-File-control",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 12,
					"outlettype" : [ "", "int", "", "", "int", "", "int", "", "", "", "", "" ],
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
						"rect" : [ 53.0, 473.0, 940.0, 603.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "fc-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 25.0, 620.0, 20.0 ],
									"text" : "File control: external state / local UI / file change / time display"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-ext-enable",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 61.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-ui-enable",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 111.0, 514.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-ext-play",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 242.0, 61.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-ui-play",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 327.0, 59.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-ui-loop",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 406.0, 59.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-path",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 530.0, 61.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-elapsed",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 680.0, 61.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-duration",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 800.0, 61.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-ext-enable-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 116.0, 70.0, 22.0 ],
									"text" : "clip 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-enable-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 111.0, 573.0, 150.0, 22.0 ],
									"text" : "s mt_file_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-enable-receive",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 171.0, 150.0, 22.0 ],
									"text" : "r mt_file_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-enable-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 30.0, 226.0, 50.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-enable-set",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 255.0, 58.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-ext-play-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 242.0, 116.0, 70.0, 22.0 ],
									"text" : "clip 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-ui-play-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 327.0, 116.0, 70.0, 22.0 ],
									"text" : "clip 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-play-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 242.0, 203.0, 50.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-play-set",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 242.0, 242.0, 58.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-loop-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 406.0, 116.0, 70.0, 22.0 ],
									"text" : "clip 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-loop-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 406.0, 203.0, 50.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-loop-set",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 406.0, 242.0, 58.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-path-order",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "bang" ],
									"patching_rect" : [ 530.0, 116.0, 60.0, 22.0 ],
									"text" : "t l b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-file-stop",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 571.0, 147.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-seek-reset",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 550.0, 147.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-path-fanout",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 530.0, 226.0, 50.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-strip-path",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 561.0, 255.0, 70.0, 22.0 ],
									"text" : "strippath"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-name-set",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 561.0, 284.0, 90.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-elapsed-int",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 680.0, 116.0, 35.0, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-elapsed-parts",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 680.0, 171.0, 50.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-elapsed-min",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 680.0, 226.0, 45.0, 22.0 ],
									"text" : "/ 60"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-elapsed-sec",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 721.0, 226.0, 45.0, 22.0 ],
									"text" : "% 60"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-elapsed-pack",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 680.0, 255.0, 60.0, 22.0 ],
									"text" : "pak i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-elapsed-format",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 680.0, 284.0, 125.0, 22.0 ],
									"text" : "sprintf %02ld:%02ld"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-elapsed-set",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 680.0, 381.0, 90.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-duration-int",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 800.0, 116.0, 35.0, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-duration-parts",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 800.0, 171.0, 50.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-duration-min",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 800.0, 226.0, 45.0, 22.0 ],
									"text" : "/ 60"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-duration-sec",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 841.0, 226.0, 45.0, 22.0 ],
									"text" : "% 60"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-duration-pack",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 800.0, 255.0, 60.0, 22.0 ],
									"text" : "pak i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-duration-format",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 800.0, 284.0, 125.0, 22.0 ],
									"text" : "sprintf %02ld:%02ld"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-duration-set",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 800.0, 381.0, 90.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-loadbang",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 30.0, 331.0, 65.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-init-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang" ],
									"patching_rect" : [ 30.0, 381.0, 100.0, 22.0 ],
									"text" : "t b b b b b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-init-enable",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 111.0, 431.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-init-play",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 95.0, 431.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-init-loop",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 79.0, 431.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-init-gain",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 62.0, 431.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-init-current",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 46.0, 407.0, 72.0, 22.0 ],
									"text" : "set 00:00"
								}

							}
, 							{
								"box" : 								{
									"id" : "fc-init-total",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 500.0, 72.0, 22.0 ],
									"text" : "set 00:00"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-enable-out",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 61.0, 296.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-play-out",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 272.0, 318.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-loop-out",
									"index" : 7,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 437.0, 318.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-path-out",
									"index" : 8,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 530.0, 318.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-seek-reset-out",
									"index" : 9,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 550.0, 182.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-enable-ui-out",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 296.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-play-ui-out",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 242.0, 318.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-loop-ui-out",
									"index" : 6,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 406.0, 318.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-name-ui-out",
									"index" : 10,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 561.0, 318.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-current-ui-out",
									"index" : 11,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 680.0, 423.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-total-ui-out",
									"index" : 12,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 800.0, 423.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fc-gain-ui-out",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 62.0, 468.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-duration-int", 0 ],
									"source" : [ "fc-duration", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-duration-set", 0 ],
									"source" : [ "fc-duration-format", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-duration-parts", 0 ],
									"source" : [ "fc-duration-int", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-duration-pack", 0 ],
									"source" : [ "fc-duration-min", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-duration-format", 0 ],
									"source" : [ "fc-duration-pack", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-duration-min", 0 ],
									"source" : [ "fc-duration-parts", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-duration-sec", 0 ],
									"midpoints" : [ 840.5, 209.5, 850.5, 209.5 ],
									"source" : [ "fc-duration-parts", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-duration-pack", 1 ],
									"source" : [ "fc-duration-sec", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-total-ui-out", 0 ],
									"source" : [ "fc-duration-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-elapsed-int", 0 ],
									"source" : [ "fc-elapsed", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-elapsed-set", 0 ],
									"source" : [ "fc-elapsed-format", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-elapsed-parts", 0 ],
									"source" : [ "fc-elapsed-int", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-elapsed-pack", 0 ],
									"source" : [ "fc-elapsed-min", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-elapsed-format", 0 ],
									"source" : [ "fc-elapsed-pack", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-elapsed-min", 0 ],
									"source" : [ "fc-elapsed-parts", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-elapsed-sec", 0 ],
									"midpoints" : [ 720.5, 209.5, 730.5, 209.5 ],
									"source" : [ "fc-elapsed-parts", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-elapsed-pack", 1 ],
									"source" : [ "fc-elapsed-sec", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-current-ui-out", 0 ],
									"source" : [ "fc-elapsed-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-enable-trigger", 0 ],
									"source" : [ "fc-enable-receive", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-enable-ui-out", 0 ],
									"source" : [ "fc-enable-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-enable-out", 0 ],
									"source" : [ "fc-enable-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-enable-set", 0 ],
									"source" : [ "fc-enable-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-ext-enable-clip", 0 ],
									"source" : [ "fc-ext-enable", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-enable-trigger", 0 ],
									"source" : [ "fc-ext-enable-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-ext-play-clip", 0 ],
									"source" : [ "fc-ext-play", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-play-trigger", 0 ],
									"source" : [ "fc-ext-play-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-play-trigger", 0 ],
									"midpoints" : [ 580.5, 193.607233047485352, 251.5, 193.607233047485352 ],
									"source" : [ "fc-file-stop", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-current-ui-out", 0 ],
									"midpoints" : [ 55.5, 413.109021808486432, 372.600000000000023, 413.109021808486432, 372.600000000000023, 413.0, 689.5, 413.0 ],
									"source" : [ "fc-init-current", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-enable-send", 0 ],
									"source" : [ "fc-init-enable", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-gain-ui-out", 0 ],
									"source" : [ "fc-init-gain", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-loop-trigger", 0 ],
									"midpoints" : [ 88.5, 463.0, 178.338056015968334, 463.0, 178.338056015968334, 193.483870148658752, 415.5, 193.483870148658752 ],
									"source" : [ "fc-init-loop", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-play-trigger", 0 ],
									"midpoints" : [ 104.5, 463.0, 177.787097656726843, 463.0, 177.787097656726843, 193.483870148658752, 251.5, 193.483870148658752 ],
									"source" : [ "fc-init-play", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-total-ui-out", 0 ],
									"midpoints" : [ 39.5, 413.020948113873601, 424.5, 413.020948113873601, 424.5, 413.0, 809.5, 413.0 ],
									"source" : [ "fc-init-total", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-init-current", 0 ],
									"source" : [ "fc-init-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-init-enable", 0 ],
									"source" : [ "fc-init-trigger", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-init-gain", 0 ],
									"source" : [ "fc-init-trigger", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-init-loop", 0 ],
									"source" : [ "fc-init-trigger", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-init-play", 0 ],
									"source" : [ "fc-init-trigger", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-init-total", 0 ],
									"source" : [ "fc-init-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-init-trigger", 0 ],
									"source" : [ "fc-loadbang", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-loop-trigger", 0 ],
									"source" : [ "fc-loop-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-loop-ui-out", 0 ],
									"source" : [ "fc-loop-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-loop-out", 0 ],
									"source" : [ "fc-loop-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-loop-set", 0 ],
									"source" : [ "fc-loop-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-name-ui-out", 0 ],
									"source" : [ "fc-name-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-path-order", 0 ],
									"source" : [ "fc-path", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-path-out", 0 ],
									"source" : [ "fc-path-fanout", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-strip-path", 0 ],
									"source" : [ "fc-path-fanout", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-file-stop", 0 ],
									"source" : [ "fc-path-order", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-path-fanout", 0 ],
									"source" : [ "fc-path-order", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-seek-reset", 0 ],
									"source" : [ "fc-path-order", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-play-ui-out", 0 ],
									"source" : [ "fc-play-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-play-out", 0 ],
									"source" : [ "fc-play-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-play-set", 0 ],
									"source" : [ "fc-play-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-seek-reset-out", 0 ],
									"source" : [ "fc-seek-reset", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fc-name-set", 0 ],
									"source" : [ "fc-strip-path", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-enable-send", 0 ],
									"source" : [ "fc-ui-enable", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-loop-clip", 0 ],
									"source" : [ "fc-ui-loop", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-ui-play-clip", 0 ],
									"source" : [ "fc-ui-play", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fc-play-trigger", 0 ],
									"midpoints" : [ 336.5, 193.923008859157562, 251.5, 193.923008859157562 ],
									"source" : [ "fc-ui-play-clip", 0 ]
								}

							}
 ],
						"originid" : "pat-298"
					}
,
					"patching_rect" : [ 571.232835173606873, 77.397265553474426, 115.0, 22.0 ],
					"text" : "p File_control"
				}

			}
, 			{
				"box" : 				{
					"id" : "p-File-input",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "float" ],
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
						"rect" : [ 1211.0, 101.0, 654.0, 677.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "fi-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 25.0, 760.0, 20.0 ],
									"text" : "File DSP: #0 buffer -> groove transport -> waveform feedback -> 20 ms enable ramp -> L/R"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fi-enable",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 302.739704012870789, 423.287640452384949, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fi-path",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 185.0, 63.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fi-play",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 345.0, 63.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fi-loop",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 65.957446336746216, 252.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fi-seek",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 181.0, 252.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-enable-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.739704012870789, 484.931471586227417, 55.0, 22.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-enable-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 302.739704012870789, 534.246536493301392, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-replace",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 185.0, 108.0, 120.0, 22.0 ],
									"text" : "prepend replace"
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-buffer",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 185.0, 158.0, 225.0, 22.0 ],
									"text" : "buffer~ #0_file_buffer 30000 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-info",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 10,
									"outlettype" : [ "float", "list", "float", "float", "float", "float", "float", "", "int", "" ],
									"patching_rect" : [ 391.0, 217.0, 160.0, 22.0 ],
									"text" : "info~ #0_file_buffer"
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-duration",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 485.0, 256.0, 80.0, 22.0 ],
									"text" : "f 30000."
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-duration-sec",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 485.0, 301.0, 70.0, 22.0 ],
									"text" : "/ 1000."
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-play-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 345.0, 108.0, 70.0, 22.0 ],
									"text" : "clip 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-play-sig",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 345.0, 158.0, 50.0, 22.0 ],
									"text" : "sig~"
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-loop-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.957446336746216, 301.0, 70.0, 22.0 ],
									"text" : "clip 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-loop-msg",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.957446336746216, 349.936169862747192, 90.0, 22.0 ],
									"text" : "prepend loop"
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-seek-safe",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 181.0, 301.0, 245.0, 22.0 ],
									"text" : "expr min(max(0.\\, $f1)\\, max(0.\\, $f2 - 1.))"
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-groove",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "signal", "signal" ],
									"patching_rect" : [ 181.0, 390.410930514335632, 190.0, 22.0 ],
									"text" : "groove~ #0_file_buffer 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-progress-snap",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 352.0, 427.287640452384949, 95.0, 22.0 ],
									"text" : "snapshot~ 33"
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-progress-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 352.054768919944763, 457.534213304519653, 80.0, 22.0 ],
									"text" : "clip 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-progress-line",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 352.0, 591.780778884887695, 90.0, 22.0 ],
									"text" : "prepend line"
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-elapsed-ms",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 352.0, 508.931471586227417, 55.0, 22.0 ],
									"text" : "* 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-elapsed-sec",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 443.780815243721008, 591.780778884887695, 70.0, 22.0 ],
									"text" : "/ 1000."
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-gate-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 181.568499326705933, 591.780778884887695, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "fi-gate-r",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 266.5, 591.780778884887695, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fi-out-l",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 181.568499326705933, 628.767077565193176, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fi-out-r",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 266.5, 628.767077565193176, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fi-out-playhead",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 352.0, 628.767077565193176, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fi-out-elapsed",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 443.780815243721008, 628.767077565193176, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fi-out-duration",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 485.0, 345.936169862747192, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-info", 0 ],
									"source" : [ "fi-buffer", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-duration-sec", 0 ],
									"order" : 0,
									"source" : [ "fi-duration", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-elapsed-ms", 1 ],
									"midpoints" : [ 494.5, 289.75748134823516, 397.5, 289.75748134823516 ],
									"order" : 2,
									"source" : [ "fi-duration", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-seek-safe", 1 ],
									"midpoints" : [ 494.5, 289.5, 416.5, 289.5 ],
									"order" : 1,
									"source" : [ "fi-duration", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-out-duration", 0 ],
									"source" : [ "fi-duration-sec", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-elapsed-sec", 0 ],
									"midpoints" : [ 361.5, 574.027357190847397, 453.280815243721008, 574.027357190847397 ],
									"order" : 0,
									"source" : [ "fi-elapsed-ms", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-progress-line", 0 ],
									"order" : 1,
									"source" : [ "fi-elapsed-ms", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-out-elapsed", 0 ],
									"source" : [ "fi-elapsed-sec", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fi-enable-msg", 0 ],
									"source" : [ "fi-enable", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fi-gate-l", 1 ],
									"midpoints" : [ 312.239704012870789, 574.013657689094543, 227.068499326705933, 574.013657689094543 ],
									"order" : 1,
									"source" : [ "fi-enable-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fi-gate-r", 1 ],
									"order" : 0,
									"source" : [ "fi-enable-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fi-enable-line", 0 ],
									"source" : [ "fi-enable-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "fi-out-l", 0 ],
									"source" : [ "fi-gate-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "fi-out-r", 0 ],
									"source" : [ "fi-gate-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "fi-gate-l", 0 ],
									"source" : [ "fi-groove", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "fi-gate-r", 0 ],
									"source" : [ "fi-groove", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "fi-progress-snap", 0 ],
									"source" : [ "fi-groove", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-duration", 0 ],
									"source" : [ "fi-info", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fi-loop-clip", 0 ],
									"source" : [ "fi-loop", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fi-loop-msg", 0 ],
									"source" : [ "fi-loop-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fi-groove", 0 ],
									"midpoints" : [ 75.457446336746216, 381.173550188541412, 190.5, 381.173550188541412 ],
									"source" : [ "fi-loop-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-replace", 0 ],
									"source" : [ "fi-path", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fi-play-clip", 0 ],
									"source" : [ "fi-play", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "fi-play-sig", 0 ],
									"source" : [ "fi-play-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "fi-groove", 0 ],
									"midpoints" : [ 354.5, 285.205465257167816, 190.5, 285.205465257167816 ],
									"source" : [ "fi-play-sig", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-elapsed-ms", 0 ],
									"source" : [ "fi-progress-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-out-playhead", 0 ],
									"source" : [ "fi-progress-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-progress-clip", 0 ],
									"source" : [ "fi-progress-snap", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-buffer", 0 ],
									"source" : [ "fi-replace", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-seek-safe", 0 ],
									"source" : [ "fi-seek", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "fi-groove", 0 ],
									"source" : [ "fi-seek-safe", 0 ]
								}

							}
 ],
						"originid" : "pat-300"
					}
,
					"patching_rect" : [ 571.232835173606873, 114.383564233779907, 115.0, 22.0 ],
					"text" : "p File_input"
				}

			}
, 			{
				"box" : 				{
					"comment" : "File audio L",
					"id" : "f-out-l",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 569.862972259521484, 365.068477511405945, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "File audio R",
					"id" : "f-out-r",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 598.630093455314636, 365.068477511405945, 30.0, 30.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-File-control", 5 ],
					"midpoints" : [ 179.5, 116.300130344228819, 553.088327353154909, 116.300130344228819, 553.088327353154909, 67.397265553474426, 649.304263745035428, 67.397265553474426 ],
					"source" : [ "f-drop", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-File-control", 1 ],
					"midpoints" : [ 39.5, 116.0, 338.728117216943872, 116.0, 338.728117216943872, 67.576302007539198, 594.447120887892538, 67.576302007539198 ],
					"source" : [ "f-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-File-control", 0 ],
					"source" : [ "f-ext-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-File-control", 2 ],
					"source" : [ "f-ext-play", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "f-out-l", 0 ],
					"source" : [ "f-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "f-out-r", 0 ],
					"midpoints" : [ 588.112972259521484, 352.534238755702972, 608.130093455314636, 352.534238755702972 ],
					"source" : [ "f-gain", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "f-open", 0 ],
					"midpoints" : [ 368.5, 116.065445028245449, 750.765051361173391, 116.065445028245449, 750.765051361173391, 7.123297333717346, 649.499956130981445, 7.123297333717346 ],
					"source" : [ "f-load-button", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-File-control", 4 ],
					"midpoints" : [ 127.5, 116.0, 338.903158356601921, 116.0, 338.903158356601921, 67.677213463466614, 635.589978030749762, 67.677213463466614 ],
					"source" : [ "f-loop", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-File-control", 5 ],
					"midpoints" : [ 649.499956130981445, 66.727414483902976, 649.304263745035428, 66.727414483902976 ],
					"source" : [ "f-open", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-File-control", 3 ],
					"midpoints" : [ 83.5, 116.0, 339.058289191519293, 116.0, 339.058289191519293, 67.397265553474426, 621.875692316463983, 67.397265553474426 ],
					"source" : [ "f-play", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-File-input", 1 ],
					"midpoints" : [ 189.5, 270.0, 549.472443342208862, 270.0, 549.472443342208862, 115.715779905905947, 604.732835173606873, 115.715779905905947 ],
					"source" : [ "f-waveform", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "f-enable", 0 ],
					"midpoints" : [ 580.732835173606873, 116.651437903055921, 338.603411287767813, 116.651437903055921, 338.603411287767813, 72.0, 39.5, 72.0 ],
					"source" : [ "p-File-control", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "f-gain", 0 ],
					"midpoints" : [ 598.187380628152368, 106.189960726071149, 579.362972259521484, 106.189960726071149 ],
					"source" : [ "p-File-control", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "f-loop", 0 ],
					"midpoints" : [ 624.369198809970499, 107.00886090262793, 338.83544901834631, 107.00886090262793, 338.83544901834631, 72.0, 127.5, 72.0 ],
					"source" : [ "p-File-control", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "f-name", 0 ],
					"midpoints" : [ 659.278289719061377, 270.444299515569583, 37.5, 270.444299515569583 ],
					"source" : [ "p-File-control", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "f-play", 0 ],
					"midpoints" : [ 606.914653355425116, 116.242406476521865, 338.72417856714776, 116.242406476521865, 338.72417856714776, 72.0, 83.5, 72.0 ],
					"source" : [ "p-File-control", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "f-time-current", 0 ],
					"midpoints" : [ 668.005562446334125, 270.164112988393754, 307.5, 270.164112988393754 ],
					"source" : [ "p-File-control", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "f-time-total", 0 ],
					"midpoints" : [ 676.732835173606873, 269.812345961574465, 377.5, 269.812345961574465 ],
					"source" : [ "p-File-control", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-File-input", 1 ],
					"midpoints" : [ 650.551016991788629, 106.798382822657004, 604.732835173606873, 106.798382822657004 ],
					"source" : [ "p-File-control", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-File-input", 2 ],
					"midpoints" : [ 641.823744264515994, 106.890414893627167, 628.732835173606873, 106.890414893627167 ],
					"source" : [ "p-File-control", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-File-input", 0 ],
					"midpoints" : [ 633.096471537243247, 106.315725739346817, 580.732835173606873, 106.315725739346817 ],
					"source" : [ "p-File-control", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-File-input", 4 ],
					"midpoints" : [ 615.641926082697751, 106.890414893627167, 676.732835173606873, 106.890414893627167 ],
					"source" : [ "p-File-control", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-File-input", 3 ],
					"midpoints" : [ 589.460107900879621, 106.890414893627167, 652.732835173606873, 106.890414893627167 ],
					"source" : [ "p-File-control", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "f-gain", 1 ],
					"midpoints" : [ 604.732835173606873, 143.191782116889954, 614.362972259521484, 143.191782116889954 ],
					"source" : [ "p-File-input", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "f-gain", 0 ],
					"source" : [ "p-File-input", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "f-waveform", 0 ],
					"midpoints" : [ 628.732835173606873, 116.285908701363951, 328.116417586803436, 116.285908701363951, 328.116417586803436, 116.472005435498431, 27.5, 116.472005435498431 ],
					"source" : [ "p-File-input", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-File-control", 7 ],
					"source" : [ "p-File-input", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-File-control", 6 ],
					"midpoints" : [ 652.732835173606873, 146.383564233779907, 750.423706391959286, 146.383564233779907, 750.423706391959286, 66.788967311615124, 663.018549459321207, 66.788967311615124 ],
					"source" : [ "p-File-input", 3 ]
				}

			}
 ],
		"originid" : "pat-296",
		"parameters" : 		{
			"f-drop" : [ "file_drop", "file_drop", 0 ],
			"f-gain" : [ "file_output_gain", "File Input", 0 ],
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
				"name" : "file_panel_v1.png",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
