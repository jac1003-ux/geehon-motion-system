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
		"rect" : [ 34.0, 101.0, 1732.0, 942.0 ],
		"bglocked" : 1,
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "fx-shell-note",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 20.0, 720.0, 20.0 ],
					"text" : "FX RETURN SHELL: 12 inputs -> Return_lanes -> four gains -> Return_sum -> master -> 5 outputs"
				}

			}
, 			{
				"box" : 				{
					"comment" : "Dry audio L",
					"id" : "fx-dry-l",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 70.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Dry audio R",
					"id" : "fx-dry-r",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.066666666666663, 70.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Vocoder return L",
					"id" : "fx-voc-l",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 116.13333333333334, 70.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Vocoder return R",
					"id" : "fx-voc-r",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 162.199999999999989, 70.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Chop return L",
					"id" : "fx-chop-l",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 208.26666666666668, 70.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Chop return R",
					"id" : "fx-chop-r",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 254.333333333333371, 70.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Tremolo return L",
					"id" : "fx-trem-l",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 300.399999999999977, 70.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Tremolo return R",
					"id" : "fx-trem-r",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 346.46666666666664, 70.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Dry Enable 0/1",
					"id" : "fx-dry-enable-in",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 392.53333333333336, 70.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Vocoder Enable 0/1",
					"id" : "fx-voc-enable-in",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 438.600000000000023, 70.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Chop Enable 0/1",
					"id" : "fx-chop-enable-in",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 484.666666666666686, 70.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Tremolo Enable 0/1",
					"id" : "fx-trem-enable-in",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 530.733333333333348, 70.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "fx-dry-enable",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 576.799999999999955, 70.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 111.0, 57.0, 24.0, 24.0 ],
					"varname" : "fx_return_dry_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "fx-voc-enable",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 622.866666666666674, 70.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 256.0, 57.0, 24.0, 24.0 ],
					"varname" : "fx_return_vocoder_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "fx-chop-enable",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 668.93333333333328, 70.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 401.0, 57.0, 24.0, 24.0 ],
					"varname" : "fx_return_chop_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "fx-trem-enable",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 715.0, 70.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 546.0, 57.0, 24.0, 24.0 ],
					"varname" : "fx_return_tremolo_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "p-Return-lanes",
					"maxclass" : "newobj",
					"numinlets" : 16,
					"numoutlets" : 15,
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "", "", "", "", "int", "int", "int" ],
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
						"rect" : [ 134.0, 173.0, 1190.0, 520.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "fxc-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 20.0, 760.0, 20.0 ],
									"text" : "RETURN_LANES: audio + external/local enable -> 20 ms ramp -> gated stereo"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-dry-l",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-dry-r",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 113.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-voc-l",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 170.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-voc-r",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 257.5, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-chop-l",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 316.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-chop-r",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 400.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-trem-l",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 457.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-trem-r",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 543.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-dry-ext",
									"index" : 9,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 600.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-voc-ext",
									"index" : 10,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 655.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-chop-ext",
									"index" : 11,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 721.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-trem-ext",
									"index" : 12,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 788.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-dry-local",
									"index" : 13,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 900.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-voc-local",
									"index" : 14,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 970.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-chop-local",
									"index" : 15,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1040.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-trem-local",
									"index" : 16,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1110.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-dry-ext-route",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 40.0, 195.0, 45.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-dry-ui-set",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 590.0, 295.0, 60.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-dry-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.0, 295.0, 55.0, 22.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-dry-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 66.0, 335.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-dry-gate-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 30.0, 393.0, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-dry-gate-r",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 113.0, 393.0, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-dry-default",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 114.0, 90.0, 22.0 ],
									"text" : "loadmess 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-voc-ext-route",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 655.0, 195.0, 45.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-voc-ui-set",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 655.0, 295.0, 60.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-voc-local-route",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 206.0, 195.0, 60.0, 22.0 ],
									"text" : "t i i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-voc-state-send",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 247.0, 244.0, 144.0, 49.0 ],
									"text" : "s mt_vocoder_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-voc-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 206.0, 295.0, 55.0, 22.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-voc-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 206.0, 335.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-voc-gate-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 170.0, 393.0, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-voc-gate-r",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 257.5, 393.0, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-chop-ext-route",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 721.0, 195.0, 45.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-chop-ui-set",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 721.0, 295.0, 60.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-chop-local-route",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 352.0, 195.0, 60.0, 22.0 ],
									"text" : "t i i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-chop-state-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 393.0, 244.0, 140.0, 22.0 ],
									"text" : "s mt_chop_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-chop-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 352.0, 295.0, 55.0, 22.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-chop-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 352.0, 335.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-chop-gate-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 316.0, 393.0, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-chop-gate-r",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 400.0, 393.0, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-trem-ext-route",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 788.0, 195.0, 45.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-trem-ui-set",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 788.0, 295.0, 60.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-trem-local-route",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 493.0, 195.0, 60.0, 22.0 ],
									"text" : "t i i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-trem-state-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 535.0, 244.0, 155.0, 22.0 ],
									"text" : "s mt_tremolo_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-trem-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 493.0, 295.0, 55.0, 22.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-trem-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 493.0, 335.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-trem-gate-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 457.0, 393.0, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "fxc-trem-gate-r",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 543.0, 393.0, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-dry-out-l",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-dry-out-r",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 113.0, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-voc-out-l",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 170.0, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-voc-out-r",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 257.5, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-chop-out-l",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 316.0, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-chop-out-r",
									"index" : 6,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 400.0, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-trem-out-l",
									"index" : 7,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 457.0, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-trem-out-r",
									"index" : 8,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 543.0, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-dry-ui-out",
									"index" : 9,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 590.0, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-voc-ui-out",
									"index" : 10,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 655.0, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-chop-ui-out",
									"index" : 11,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 721.0, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-trem-ui-out",
									"index" : 12,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 788.0, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-voc-state-out",
									"index" : 13,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 900.0, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-chop-state-out",
									"index" : 14,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 970.0, 430.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxc-trem-state-out",
									"index" : 15,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1040.0, 430.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-chop-ext-route", 0 ],
									"source" : [ "fxc-chop-ext", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-chop-msg", 0 ],
									"midpoints" : [ 756.5, 233.828125, 361.5, 233.828125 ],
									"source" : [ "fxc-chop-ext-route", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-chop-ui-set", 0 ],
									"source" : [ "fxc-chop-ext-route", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-chop-out-l", 0 ],
									"source" : [ "fxc-chop-gate-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-chop-out-r", 0 ],
									"source" : [ "fxc-chop-gate-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-chop-gate-l", 0 ],
									"source" : [ "fxc-chop-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-chop-gate-l", 1 ],
									"order" : 1,
									"source" : [ "fxc-chop-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-chop-gate-r", 1 ],
									"midpoints" : [ 361.5, 375.0, 445.5, 375.0 ],
									"order" : 0,
									"source" : [ "fxc-chop-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-chop-local-route", 0 ],
									"midpoints" : [ 1049.5, 147.5, 361.5, 147.5 ],
									"source" : [ "fxc-chop-local", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-chop-msg", 0 ],
									"source" : [ "fxc-chop-local-route", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-chop-state-out", 0 ],
									"midpoints" : [ 382.0, 323.5, 979.5, 323.5 ],
									"source" : [ "fxc-chop-local-route", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-chop-state-send", 0 ],
									"source" : [ "fxc-chop-local-route", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-chop-line", 0 ],
									"source" : [ "fxc-chop-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-chop-gate-r", 0 ],
									"source" : [ "fxc-chop-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-chop-ui-out", 0 ],
									"source" : [ "fxc-chop-ui-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-dry-ext-route", 0 ],
									"source" : [ "fxc-dry-default", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-dry-ext-route", 0 ],
									"midpoints" : [ 609.5, 147.5, 49.5, 147.5 ],
									"source" : [ "fxc-dry-ext", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-dry-msg", 0 ],
									"source" : [ "fxc-dry-ext-route", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-dry-ui-set", 0 ],
									"midpoints" : [ 49.5, 233.390625, 599.5, 233.390625 ],
									"source" : [ "fxc-dry-ext-route", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-dry-out-l", 0 ],
									"source" : [ "fxc-dry-gate-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-dry-out-r", 0 ],
									"source" : [ "fxc-dry-gate-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-dry-gate-l", 0 ],
									"source" : [ "fxc-dry-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-dry-gate-l", 1 ],
									"order" : 1,
									"source" : [ "fxc-dry-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-dry-gate-r", 1 ],
									"midpoints" : [ 75.5, 375.0, 158.5, 375.0 ],
									"order" : 0,
									"source" : [ "fxc-dry-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-dry-msg", 0 ],
									"midpoints" : [ 909.5, 233.43359375, 75.5, 233.43359375 ],
									"source" : [ "fxc-dry-local", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-dry-line", 0 ],
									"source" : [ "fxc-dry-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-dry-gate-r", 0 ],
									"source" : [ "fxc-dry-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-dry-ui-out", 0 ],
									"source" : [ "fxc-dry-ui-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-trem-ext-route", 0 ],
									"source" : [ "fxc-trem-ext", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-trem-msg", 0 ],
									"midpoints" : [ 823.5, 233.78125, 502.5, 233.78125 ],
									"source" : [ "fxc-trem-ext-route", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-trem-ui-set", 0 ],
									"source" : [ "fxc-trem-ext-route", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-trem-out-l", 0 ],
									"source" : [ "fxc-trem-gate-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-trem-out-r", 0 ],
									"source" : [ "fxc-trem-gate-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-trem-gate-l", 0 ],
									"source" : [ "fxc-trem-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-trem-gate-l", 1 ],
									"order" : 1,
									"source" : [ "fxc-trem-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-trem-gate-r", 1 ],
									"midpoints" : [ 502.5, 375.0, 588.5, 375.0 ],
									"order" : 0,
									"source" : [ "fxc-trem-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-trem-local-route", 0 ],
									"midpoints" : [ 1119.5, 147.5, 502.5, 147.5 ],
									"source" : [ "fxc-trem-local", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-trem-msg", 0 ],
									"source" : [ "fxc-trem-local-route", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-trem-state-out", 0 ],
									"midpoints" : [ 523.0, 323.5, 1049.5, 323.5 ],
									"source" : [ "fxc-trem-local-route", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-trem-state-send", 0 ],
									"source" : [ "fxc-trem-local-route", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-trem-line", 0 ],
									"source" : [ "fxc-trem-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-trem-gate-r", 0 ],
									"source" : [ "fxc-trem-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-trem-ui-out", 0 ],
									"source" : [ "fxc-trem-ui-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-voc-ext-route", 0 ],
									"source" : [ "fxc-voc-ext", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-voc-msg", 0 ],
									"midpoints" : [ 690.5, 233.9765625, 215.5, 233.9765625 ],
									"source" : [ "fxc-voc-ext-route", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-voc-ui-set", 0 ],
									"source" : [ "fxc-voc-ext-route", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-voc-out-l", 0 ],
									"source" : [ "fxc-voc-gate-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-voc-out-r", 0 ],
									"source" : [ "fxc-voc-gate-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-voc-gate-l", 0 ],
									"source" : [ "fxc-voc-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-voc-gate-l", 1 ],
									"order" : 1,
									"source" : [ "fxc-voc-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-voc-gate-r", 1 ],
									"midpoints" : [ 215.5, 375.0, 303.0, 375.0 ],
									"order" : 0,
									"source" : [ "fxc-voc-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-voc-local-route", 0 ],
									"midpoints" : [ 979.5, 147.5, 215.5, 147.5 ],
									"source" : [ "fxc-voc-local", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.95, 0.55, 0.16, 1.0 ],
									"destination" : [ "fxc-voc-msg", 0 ],
									"source" : [ "fxc-voc-local-route", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-voc-state-out", 0 ],
									"midpoints" : [ 236.0, 323.5, 909.5, 323.5 ],
									"source" : [ "fxc-voc-local-route", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-voc-state-send", 0 ],
									"source" : [ "fxc-voc-local-route", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-voc-line", 0 ],
									"source" : [ "fxc-voc-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxc-voc-gate-r", 0 ],
									"source" : [ "fxc-voc-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.65, 0.95, 1.0 ],
									"destination" : [ "fxc-voc-ui-out", 0 ],
									"source" : [ "fxc-voc-ui-set", 0 ]
								}

							}
 ],
						"originid" : "pat-12"
					}
,
					"patching_rect" : [ 24.0, 155.0, 710.0, 22.0 ],
					"text" : "p Return_lanes"
				}

			}
, 			{
				"box" : 				{
					"id" : "fx-dry-gain",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 24.0, 221.348332285881042, 54.0, 130.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 75.28090488910675, 107.865177154541016, 54.0, 139.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_longname" : "fx_return_dry_gain",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Original",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"varname" : "fx_return_dry_gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "fx-voc-gain",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 122.714285714285722, 221.348332285881042, 54.0, 130.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 220.22473669052124, 107.865177154541016, 54.0, 139.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -10 ],
							"parameter_longname" : "fx_return_vocoder_gain",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Vocoder FX",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"varname" : "fx_return_vocoder_gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "fx-chop-gain",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 221.428571428571416, 221.348332285881042, 54.0, 130.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 365.16856849193573, 107.865177154541016, 54.0, 139.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_longname" : "fx_return_chop_gain",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Chop FX",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"varname" : "fx_return_chop_gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "fx-trem-gain",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 320.142857142857167, 221.348332285881042, 54.0, 130.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 510.11240029335022, 107.865177154541016, 54.0, 139.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -10 ],
							"parameter_longname" : "fx_return_tremolo_gain",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Tremolo FX",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"varname" : "fx_return_tremolo_gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "p-Return-sum",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
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
						"rect" : [ 80.0, 80.0, 640.0, 450.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "fxs-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 20.0, 520.0, 22.0 ],
									"text" : "RETURN_SUM: four stereo lanes -> balanced L/R sum"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxs-dry-l",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 30.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxs-dry-r",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 70.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxs-voc-l",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 170.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxs-voc-r",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 210.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxs-chop-l",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 310.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxs-chop-r",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 350.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxs-trem-l",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 450.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxs-trem-r",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 490.0, 70.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "fxs-sum-l-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 90.0, 150.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxs-sum-r-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 150.0, 150.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxs-sum-l-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 230.0, 220.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxs-sum-r-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 290.0, 220.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxs-sum-l-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 370.0, 290.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "fxs-sum-r-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 430.0, 290.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxs-out-l",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 370.0, 360.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "fxs-out-r",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 430.0, 360.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "fxs-sum-l-2", 1 ],
									"source" : [ "fxs-chop-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxs-sum-r-2", 1 ],
									"source" : [ "fxs-chop-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxs-sum-l-1", 0 ],
									"source" : [ "fxs-dry-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxs-sum-r-1", 0 ],
									"source" : [ "fxs-dry-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxs-sum-l-2", 0 ],
									"source" : [ "fxs-sum-l-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxs-sum-l-3", 0 ],
									"source" : [ "fxs-sum-l-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxs-out-l", 0 ],
									"source" : [ "fxs-sum-l-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxs-sum-r-2", 0 ],
									"source" : [ "fxs-sum-r-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxs-sum-r-3", 0 ],
									"source" : [ "fxs-sum-r-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxs-out-r", 0 ],
									"source" : [ "fxs-sum-r-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxs-sum-l-3", 1 ],
									"source" : [ "fxs-trem-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxs-sum-r-3", 1 ],
									"source" : [ "fxs-trem-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxs-sum-l-1", 1 ],
									"source" : [ "fxs-voc-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "fxs-sum-r-1", 1 ],
									"source" : [ "fxs-voc-r", 0 ]
								}

							}
 ],
						"originid" : "pat-14"
					}
,
					"patching_rect" : [ 24.0, 420.0, 710.0, 22.0 ],
					"text" : "p Return_sum"
				}

			}
, 			{
				"box" : 				{
					"id" : "fx-master",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 24.0, 475.28093683719635, 54.0, 150.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 595.50566554069519, 103.370794773101807, 54.0, 144.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -10 ],
							"parameter_longname" : "fx_return_master_gain",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "FX Master",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"varname" : "fx_return_master_gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "fx-meter-l",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 179.775295257568359, 652.831511378288269, 120.0, 12.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 670.0, 96.0, 12.0, 150.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "fx-meter-r",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 179.775295257568359, 679.797805666923523, 120.0, 12.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 690.0, 96.0, 12.0, 150.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Mixed audio L",
					"id" : "fx-out-l",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 661.797805666923523, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Mixed audio R",
					"id" : "fx-out-r",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 661.797805666923523, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Vocoder Enable state",
					"id" : "fx-voc-enable-out",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 616.123587608337402, 329.213509440422058, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Chop Enable state",
					"id" : "fx-chop-enable-out",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 665.561793804168701, 329.213509440422058, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Tremolo Enable state",
					"id" : "fx-trem-enable-out",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 715.0, 329.213509440422058, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"background" : 1,
					"forceaspect" : 1,
					"id" : "fx-bg",
					"ignoreclick" : 1,
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 1000.0, 20.0, 380.0, 150.0 ],
					"pic" : "fx_return_mixer_panel_v1.png",
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 760.0, 300.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 0.95, 0.55, 0.16, 1.0 ],
					"destination" : [ "p-Return-lanes", 14 ],
					"source" : [ "fx-chop-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.95, 0.55, 0.16, 1.0 ],
					"destination" : [ "p-Return-lanes", 10 ],
					"source" : [ "fx-chop-enable-in", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-sum", 5 ],
					"midpoints" : [ 239.678571428571416, 385.674166142940521, 527.071428571428555, 385.674166142940521 ],
					"source" : [ "fx-chop-gain", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-sum", 4 ],
					"midpoints" : [ 230.928571428571416, 385.674166142940521, 428.357142857142833, 385.674166142940521 ],
					"source" : [ "fx-chop-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-lanes", 4 ],
					"source" : [ "fx-chop-l", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-lanes", 5 ],
					"source" : [ "fx-chop-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.95, 0.55, 0.16, 1.0 ],
					"destination" : [ "p-Return-lanes", 12 ],
					"source" : [ "fx-dry-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.95, 0.55, 0.16, 1.0 ],
					"destination" : [ "p-Return-lanes", 8 ],
					"source" : [ "fx-dry-enable-in", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-sum", 1 ],
					"midpoints" : [ 42.25, 385.674166142940521, 132.214285714285722, 385.674166142940521 ],
					"source" : [ "fx-dry-gain", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-sum", 0 ],
					"source" : [ "fx-dry-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-lanes", 0 ],
					"source" : [ "fx-dry-l", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-lanes", 1 ],
					"source" : [ "fx-dry-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-meter-l", 0 ],
					"midpoints" : [ 33.5, 639.05622410774231, 189.275295257568359, 639.05622410774231 ],
					"order" : 0,
					"source" : [ "fx-master", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-meter-r", 0 ],
					"midpoints" : [ 42.25, 638.79727043537423, 189.275295257568359, 638.79727043537423 ],
					"order" : 0,
					"source" : [ "fx-master", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-out-l", 0 ],
					"order" : 1,
					"source" : [ "fx-master", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-out-r", 0 ],
					"midpoints" : [ 42.25, 643.539371252059937, 65.5, 643.539371252059937 ],
					"order" : 1,
					"source" : [ "fx-master", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.95, 0.55, 0.16, 1.0 ],
					"destination" : [ "p-Return-lanes", 15 ],
					"source" : [ "fx-trem-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.95, 0.55, 0.16, 1.0 ],
					"destination" : [ "p-Return-lanes", 11 ],
					"source" : [ "fx-trem-enable-in", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-sum", 7 ],
					"midpoints" : [ 338.392857142857167, 385.674166142940521, 724.5, 385.674166142940521 ],
					"source" : [ "fx-trem-gain", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-sum", 6 ],
					"midpoints" : [ 329.642857142857167, 385.674166142940521, 625.785714285714334, 385.674166142940521 ],
					"source" : [ "fx-trem-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-lanes", 6 ],
					"source" : [ "fx-trem-l", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-lanes", 7 ],
					"source" : [ "fx-trem-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.95, 0.55, 0.16, 1.0 ],
					"destination" : [ "p-Return-lanes", 13 ],
					"source" : [ "fx-voc-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.95, 0.55, 0.16, 1.0 ],
					"destination" : [ "p-Return-lanes", 9 ],
					"source" : [ "fx-voc-enable-in", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-sum", 3 ],
					"midpoints" : [ 140.964285714285722, 385.674166142940521, 329.642857142857167, 385.674166142940521 ],
					"source" : [ "fx-voc-gain", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-sum", 2 ],
					"midpoints" : [ 132.214285714285722, 385.674166142940521, 230.928571428571416, 385.674166142940521 ],
					"source" : [ "fx-voc-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-lanes", 2 ],
					"source" : [ "fx-voc-l", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Return-lanes", 3 ],
					"source" : [ "fx-voc-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.35, 0.65, 0.95, 1.0 ],
					"destination" : [ "fx-chop-enable", 0 ],
					"midpoints" : [ 527.071428571428555, 187.0, 786.684102103721671, 187.0, 786.684102103721671, 60.0, 678.43333333333328, 60.0 ],
					"source" : [ "p-Return-lanes", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.35, 0.65, 0.95, 1.0 ],
					"destination" : [ "fx-chop-enable-out", 0 ],
					"source" : [ "p-Return-lanes", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-chop-gain", 1 ],
					"midpoints" : [ 280.285714285714278, 199.174166142940521, 265.928571428571445, 199.174166142940521 ],
					"source" : [ "p-Return-lanes", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-chop-gain", 0 ],
					"source" : [ "p-Return-lanes", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.35, 0.65, 0.95, 1.0 ],
					"destination" : [ "fx-dry-enable", 0 ],
					"midpoints" : [ 428.357142857142833, 187.0, 786.085616164867361, 187.0, 786.085616164867361, 60.0, 586.299999999999955, 60.0 ],
					"source" : [ "p-Return-lanes", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-dry-gain", 1 ],
					"midpoints" : [ 82.857142857142861, 199.174166142940521, 68.5, 199.174166142940521 ],
					"source" : [ "p-Return-lanes", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-dry-gain", 0 ],
					"source" : [ "p-Return-lanes", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.35, 0.65, 0.95, 1.0 ],
					"destination" : [ "fx-trem-enable", 0 ],
					"midpoints" : [ 576.428571428571445, 187.0, 786.287681393990624, 187.0, 786.287681393990624, 60.0, 724.5, 60.0 ],
					"source" : [ "p-Return-lanes", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.35, 0.65, 0.95, 1.0 ],
					"destination" : [ "fx-trem-enable-out", 0 ],
					"source" : [ "p-Return-lanes", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-trem-gain", 1 ],
					"midpoints" : [ 379.0, 199.174166142940521, 364.642857142857167, 199.174166142940521 ],
					"source" : [ "p-Return-lanes", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-trem-gain", 0 ],
					"source" : [ "p-Return-lanes", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.35, 0.65, 0.95, 1.0 ],
					"destination" : [ "fx-voc-enable", 0 ],
					"midpoints" : [ 477.714285714285722, 187.0, 786.22904802634423, 187.0, 786.22904802634423, 60.0, 632.366666666666674, 60.0 ],
					"source" : [ "p-Return-lanes", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.35, 0.65, 0.95, 1.0 ],
					"destination" : [ "fx-voc-enable-out", 0 ],
					"source" : [ "p-Return-lanes", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-voc-gain", 1 ],
					"midpoints" : [ 181.571428571428584, 199.174166142940521, 167.214285714285722, 199.174166142940521 ],
					"source" : [ "p-Return-lanes", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-voc-gain", 0 ],
					"source" : [ "p-Return-lanes", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-master", 1 ],
					"midpoints" : [ 724.5, 458.640468418598175, 68.5, 458.640468418598175 ],
					"source" : [ "p-Return-sum", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "fx-master", 0 ],
					"source" : [ "p-Return-sum", 0 ]
				}

			}
 ],
		"originid" : "pat-4",
		"parameters" : 		{
			"fx-chop-gain" : [ "fx_return_chop_gain", "Chop FX", 0 ],
			"fx-dry-gain" : [ "fx_return_dry_gain", "Original", 0 ],
			"fx-master" : [ "fx_return_master_gain", "FX Master", 0 ],
			"fx-trem-gain" : [ "fx_return_tremolo_gain", "Tremolo FX", 0 ],
			"fx-voc-gain" : [ "fx_return_vocoder_gain", "Vocoder FX", 0 ],
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
				"name" : "fx_return_mixer_panel_v1.png",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
