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
		"rect" : [ 137.0, 302.0, 820.0, 580.0 ],
		"bglocked" : 1,
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "m-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 35.0, 410.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 8.0, 302.0, 22.0 ],
					"text" : "MT Input Mic - clean engineering layout sample",
					"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "m-note",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 68.0, 724.0, 20.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 12.0, 30.0, 300.0, 47.0 ],
					"text" : "Readable patching-mode version: state, source selection, DSP core, and output are separated. Presentation remains bpatcher-friendly.",
					"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "m-enable-section",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 135.0, 150.0, 21.0 ],
					"text" : "01 ENABLE STATE",
					"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "m-ext-enable-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 55.0, 170.0, 145.0, 20.0 ],
					"text" : "in 1: external enable",
					"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "m-ext-enable",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 55.0, 200.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "m-enable",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 55.0, 255.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 82.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "m-enable-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 95.0, 258.0, 70.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 44.0, 84.0, 70.0, 20.0 ],
					"text" : "Enable",
					"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "m-enable-set",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 55.0, 305.0, 60.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "m-enable-state-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 55.0, 350.0, 155.0, 22.0 ],
					"text" : "s mt_mic_enable_state"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "m-select-section",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 290.0, 135.0, 160.0, 21.0 ],
					"text" : "02 SOURCE SELECT",
					"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "m-channel-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 310.0, 170.0, 140.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 124.0, 114.0, 20.0 ],
					"text" : "Mono Channel 0-8",
					"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "m-channel",
					"maxclass" : "number",
					"maximum" : 8,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 310.0, 200.0, 70.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 148.0, 68.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "m-channel-default",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 310.0, 245.0, 80.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "m-pair-label",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 476.0, 159.0, 69.0, 87.0 ],
					"presentation" : 1,
					"presentation_linecount" : 6,
					"presentation_rect" : [ 158.0, 130.0, 69.0, 87.0 ],
					"text" : "Stereo Pair\n0 off\n1 1-2\n2 3-4\n3 5-6\n4 7-8",
					"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"disabled" : [ 0, 0, 0, 0, 0 ],
					"id" : "m-pair",
					"itemtype" : 0,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 550.0, 172.0, 20.0, 82.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 128.0, 20.0, 82.0 ],
					"size" : 5,
					"value" : -1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "m-dsp-section",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 290.0, 330.0, 120.0, 21.0 ],
					"text" : "03 DSP CORE",
					"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "p-Mic-input",
					"maxclass" : "newobj",
					"numinlets" : 3,
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
						"rect" : [ 80.0, 80.0, 940.0, 940.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "mi-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 35.0, 360.0, 26.0 ],
									"text" : "MIC_INPUT INTERNAL SIGNAL FLOW",
									"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "mi-note",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 68.0, 820.0, 22.0 ],
									"text" : "Local ADC bus keeps the eight mic channels readable. Blue=enable, orange=control, cyan=raw ADC, green=audio.",
									"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "mi-control-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 135.0, 180.0, 22.0 ],
									"text" : "01 CONTROL INPUTS",
									"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "mi-enable-label",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 170.0, 90.0, 22.0 ],
									"text" : "enable",
									"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mi-enable",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 55.0, 200.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-enable-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 255.0, 60.0, 22.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-enable-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 55.0, 310.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "mi-channel-label",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 185.0, 170.0, 140.0, 22.0 ],
									"text" : "mono channel 0-8",
									"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mi-channel",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 185.0, 200.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-channel-clears-pair",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 185.0, 255.0, 45.0, 22.0 ],
									"text" : "t 0"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "mi-pair-label",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 365.0, 170.0, 365.0, 22.0 ],
									"text" : "stereo pair 0/off, 1=1-2, 2=3-4, 3=5-6, 4=7-8",
									"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mi-pair",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.0, 200.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-gt0",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 365.0, 255.0, 45.0, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-sel",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 365.0, 300.0, 45.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-clear-mono",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.0, 345.0, 35.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "mi-adc-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 595.0, 135.0, 150.0, 22.0 ],
									"text" : "02 ADC BUS",
									"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-adc",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 600.0, 185.0, 185.0, 22.0 ],
									"text" : "adc~ 1 2 3 4 5 6 7 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-adc-send-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 600.0, 235.0, 65.0, 22.0 ],
									"text" : "s~ #0a1"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-adc-send-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 680.0, 235.0, 65.0, 22.0 ],
									"text" : "s~ #0a2"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-adc-send-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 760.0, 235.0, 65.0, 22.0 ],
									"text" : "s~ #0a3"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-adc-send-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 840.0, 235.0, 65.0, 22.0 ],
									"text" : "s~ #0a4"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-adc-send-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 600.0, 280.0, 65.0, 22.0 ],
									"text" : "s~ #0a5"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-adc-send-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 680.0, 280.0, 65.0, 22.0 ],
									"text" : "s~ #0a6"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-adc-send-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 760.0, 280.0, 65.0, 22.0 ],
									"text" : "s~ #0a7"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-adc-send-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 840.0, 280.0, 65.0, 22.0 ],
									"text" : "s~ #0a8"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "mi-select-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 375.0, 260.0, 22.0 ],
									"text" : "03 MONO / STEREO SELECTION",
									"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-mono-r-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 410.0, 62.0, 22.0 ],
									"text" : "r~ #0a1"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-mono-r-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 115.0, 410.0, 62.0, 22.0 ],
									"text" : "r~ #0a2"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-mono-r-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 185.0, 410.0, 62.0, 22.0 ],
									"text" : "r~ #0a3"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-mono-r-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 255.0, 410.0, 62.0, 22.0 ],
									"text" : "r~ #0a4"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-mono-r-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 325.0, 410.0, 62.0, 22.0 ],
									"text" : "r~ #0a5"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-mono-r-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 395.0, 410.0, 62.0, 22.0 ],
									"text" : "r~ #0a6"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-mono-r-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 465.0, 410.0, 62.0, 22.0 ],
									"text" : "r~ #0a7"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-mono-r-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 535.0, 410.0, 62.0, 22.0 ],
									"text" : "r~ #0a8"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-mono-selector",
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 460.0, 552.0, 22.0 ],
									"text" : "selector~ 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-l-r-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 535.0, 62.0, 22.0 ],
									"text" : "r~ #0a1"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-l-r-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 120.0, 535.0, 62.0, 22.0 ],
									"text" : "r~ #0a3"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-l-r-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 195.0, 535.0, 62.0, 22.0 ],
									"text" : "r~ #0a5"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-l-r-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 270.0, 535.0, 62.0, 22.0 ],
									"text" : "r~ #0a7"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-selector-l",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 45.0, 585.0, 282.0, 22.0 ],
									"text" : "selector~ 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-r-r-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 385.0, 535.0, 62.0, 22.0 ],
									"text" : "r~ #0a2"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-r-r-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 460.0, 535.0, 62.0, 22.0 ],
									"text" : "r~ #0a4"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-r-r-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 535.0, 535.0, 62.0, 22.0 ],
									"text" : "r~ #0a6"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-r-r-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 610.0, 535.0, 62.0, 22.0 ],
									"text" : "r~ #0a8"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-selector-r",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 385.0, 585.0, 282.0, 22.0 ],
									"text" : "selector~ 4"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "mi-output-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 660.0, 290.0, 22.0 ],
									"text" : "04 SUM + ENABLE RAMP + OUTPUT",
									"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-sum-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 200.0, 705.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-sum-r",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 460.0, 705.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-gate-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 200.0, 765.0, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-gate-r",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 460.0, 765.0, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mi-out-l",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 200.0, 835.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mi-out-r",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 460.0, 835.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.12, 0.135, 0.145, 1 ],
									"bordercolor" : [ 0.34, 0.43, 0.47, 1.0 ],
									"id" : "mi-panel-header",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 20.0, 885.0, 85.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.12, 0.135, 0.145, 1 ],
									"bordercolor" : [ 0.34, 0.43, 0.47, 1.0 ],
									"id" : "mi-panel-control",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 120.0, 535.0, 270.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.12, 0.135, 0.145, 1 ],
									"bordercolor" : [ 0.34, 0.43, 0.47, 1.0 ],
									"id" : "mi-panel-adc",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 575.0, 120.0, 330.0, 270.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.12, 0.135, 0.145, 1 ],
									"bordercolor" : [ 0.34, 0.43, 0.47, 1.0 ],
									"id" : "mi-panel-select",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 400.0, 885.0, 235.0 ],
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.12, 0.135, 0.145, 1 ],
									"bordercolor" : [ 0.34, 0.43, 0.47, 1.0 ],
									"id" : "mi-panel-output",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 645.0, 630.0, 245.0 ],
									"rounded" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-adc-send-1", 0 ],
									"source" : [ "mi-adc", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-adc-send-2", 0 ],
									"source" : [ "mi-adc", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-adc-send-3", 0 ],
									"source" : [ "mi-adc", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-adc-send-4", 0 ],
									"source" : [ "mi-adc", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-adc-send-5", 0 ],
									"source" : [ "mi-adc", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-adc-send-6", 0 ],
									"source" : [ "mi-adc", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-adc-send-7", 0 ],
									"source" : [ "mi-adc", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-adc-send-8", 0 ],
									"source" : [ "mi-adc", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-channel-clears-pair", 0 ],
									"order" : 0,
									"source" : [ "mi-channel", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-mono-selector", 0 ],
									"midpoints" : [ 194.5, 235.0, 45.0, 235.0, 45.0, 450.0 ],
									"order" : 1,
									"source" : [ "mi-channel", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 0 ],
									"midpoints" : [ 194.5, 290.0, 35.0, 290.0, 35.0, 578.0 ],
									"order" : 1,
									"source" : [ "mi-channel-clears-pair", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 0 ],
									"midpoints" : [ 194.5, 290.0, 375.0, 290.0, 375.0, 578.0 ],
									"order" : 0,
									"source" : [ "mi-channel-clears-pair", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-mono-selector", 0 ],
									"midpoints" : [ 374.5, 388.0, 35.0, 388.0, 35.0, 450.0 ],
									"source" : [ "mi-clear-mono", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.45, 0.68, 1.0, 1.0 ],
									"destination" : [ "mi-enable-msg", 0 ],
									"source" : [ "mi-enable", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.45, 0.68, 1.0, 1.0 ],
									"destination" : [ "mi-gate-l", 1 ],
									"midpoints" : [ 64.5, 350.0, 275.0, 350.0, 275.0, 775.0 ],
									"order" : 1,
									"source" : [ "mi-enable-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.45, 0.68, 1.0, 1.0 ],
									"destination" : [ "mi-gate-r", 1 ],
									"midpoints" : [ 64.5, 350.0, 535.0, 350.0, 535.0, 775.0 ],
									"order" : 0,
									"source" : [ "mi-enable-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.45, 0.68, 1.0, 1.0 ],
									"destination" : [ "mi-enable-line", 0 ],
									"source" : [ "mi-enable-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.62, 0.9, 0.34, 1.0 ],
									"destination" : [ "mi-out-l", 0 ],
									"source" : [ "mi-gate-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.62, 0.9, 0.34, 1.0 ],
									"destination" : [ "mi-out-r", 0 ],
									"source" : [ "mi-gate-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-mono-selector", 1 ],
									"source" : [ "mi-mono-r-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-mono-selector", 2 ],
									"source" : [ "mi-mono-r-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-mono-selector", 3 ],
									"source" : [ "mi-mono-r-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-mono-selector", 4 ],
									"source" : [ "mi-mono-r-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-mono-selector", 5 ],
									"source" : [ "mi-mono-r-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-mono-selector", 6 ],
									"source" : [ "mi-mono-r-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-mono-selector", 7 ],
									"source" : [ "mi-mono-r-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-mono-selector", 8 ],
									"source" : [ "mi-mono-r-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.62, 0.9, 0.34, 1.0 ],
									"destination" : [ "mi-sum-l", 0 ],
									"midpoints" : [ 54.5, 492.0, 217.0, 492.0, 217.0, 700.0 ],
									"order" : 1,
									"source" : [ "mi-mono-selector", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.62, 0.9, 0.34, 1.0 ],
									"destination" : [ "mi-sum-r", 0 ],
									"midpoints" : [ 54.5, 492.0, 477.0, 492.0, 477.0, 700.0 ],
									"order" : 0,
									"source" : [ "mi-mono-selector", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-gt0", 0 ],
									"order" : 1,
									"source" : [ "mi-pair", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 0 ],
									"midpoints" : [ 374.5, 235.0, 35.0, 235.0, 35.0, 578.0 ],
									"order" : 2,
									"source" : [ "mi-pair", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 0 ],
									"midpoints" : [ 374.5, 235.0, 375.0, 235.0, 375.0, 578.0 ],
									"order" : 0,
									"source" : [ "mi-pair", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-sel", 0 ],
									"source" : [ "mi-pair-gt0", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 1 ],
									"source" : [ "mi-pair-l-r-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 2 ],
									"source" : [ "mi-pair-l-r-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 3 ],
									"source" : [ "mi-pair-l-r-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 4 ],
									"source" : [ "mi-pair-l-r-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 1 ],
									"source" : [ "mi-pair-r-r-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 2 ],
									"source" : [ "mi-pair-r-r-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 3 ],
									"source" : [ "mi-pair-r-r-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.35, 0.88, 1.0, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 4 ],
									"source" : [ "mi-pair-r-r-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-clear-mono", 0 ],
									"source" : [ "mi-pair-sel", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.62, 0.9, 0.34, 1.0 ],
									"destination" : [ "mi-sum-l", 1 ],
									"midpoints" : [ 54.5, 615.0, 235.0, 615.0, 235.0, 700.0 ],
									"source" : [ "mi-pair-selector-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.62, 0.9, 0.34, 1.0 ],
									"destination" : [ "mi-sum-r", 1 ],
									"midpoints" : [ 394.5, 615.0, 495.0, 615.0, 495.0, 700.0 ],
									"source" : [ "mi-pair-selector-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.62, 0.9, 0.34, 1.0 ],
									"destination" : [ "mi-gate-l", 0 ],
									"source" : [ "mi-sum-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.62, 0.9, 0.34, 1.0 ],
									"destination" : [ "mi-gate-r", 0 ],
									"source" : [ "mi-sum-r", 0 ]
								}

							}
 ],
						"originid" : "pat-148"
					}
,
					"patching_rect" : [ 310.0, 375.0, 135.0, 22.0 ],
					"text" : "p Mic_input"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "m-output-section",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 620.0, 135.0, 110.0, 21.0 ],
					"text" : "04 OUTPUT",
					"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "m-gain",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 655.0, 185.0, 54.0, 150.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 246.0, 78.0, 54.0, 138.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -12 ],
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Mic Input",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "m-out-l",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 760.0, 220.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "m-out-r",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 760.0, 305.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "m-out-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 635.0, 360.0, 160.0, 20.0 ],
					"text" : "out 1/2: audio L/R",
					"textcolor" : [ 0.82, 0.87, 0.9, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.12, 0.135, 0.145, 1 ],
					"bordercolor" : [ 0.34, 0.43, 0.47, 1.0 ],
					"id" : "m-panel-header",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 20.0, 840.0, 85.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.12, 0.135, 0.145, 1 ],
					"bordercolor" : [ 0.34, 0.43, 0.47, 1.0 ],
					"id" : "m-panel-enable",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 120.0, 230.0, 290.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.12, 0.135, 0.145, 1 ],
					"bordercolor" : [ 0.34, 0.43, 0.47, 1.0 ],
					"id" : "m-panel-select",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 275.0, 120.0, 315.0, 190.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.12, 0.135, 0.145, 1 ],
					"bordercolor" : [ 0.34, 0.43, 0.47, 1.0 ],
					"id" : "m-panel-dsp",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 275.0, 315.0, 315.0, 120.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.12, 0.135, 0.145, 1 ],
					"bordercolor" : [ 0.34, 0.43, 0.47, 1.0 ],
					"id" : "m-panel-output",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 610.0, 120.0, 250.0, 315.0 ],
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Mic-input", 1 ],
					"midpoints" : [ 319.95703125, 235.0, 319.95703125, 370.0 ],
					"source" : [ "m-channel", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "m-channel", 0 ],
					"source" : [ "m-channel-default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.45, 0.68, 1.0, 1.0 ],
					"destination" : [ "m-enable-state-send", 0 ],
					"order" : 1,
					"source" : [ "m-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.45, 0.68, 1.0, 1.0 ],
					"destination" : [ "p-Mic-input", 0 ],
					"midpoints" : [ 64.5, 285.0, 266.0234375, 285.0, 266.0234375, 386.0 ],
					"order" : 0,
					"source" : [ "m-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.45, 0.68, 1.0, 1.0 ],
					"destination" : [ "m-enable", 0 ],
					"source" : [ "m-enable-set", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.45, 0.68, 1.0, 1.0 ],
					"destination" : [ "m-enable-set", 0 ],
					"order" : 1,
					"source" : [ "m-ext-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.45, 0.68, 1.0, 1.0 ],
					"destination" : [ "p-Mic-input", 0 ],
					"midpoints" : [ 64.5, 235.0, 265.0, 235.0, 265.0, 386.0 ],
					"order" : 0,
					"source" : [ "m-ext-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.62, 0.9, 0.34, 1.0 ],
					"destination" : [ "m-out-l", 0 ],
					"midpoints" : [ 664.5, 345.0, 732.4296875, 345.0, 732.4296875, 210.0, 769.5, 210.0 ],
					"source" : [ "m-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.62, 0.9, 0.34, 1.0 ],
					"destination" : [ "m-out-r", 0 ],
					"midpoints" : [ 673.25, 345.0, 732.80859375, 345.0, 732.80859375, 295.0, 769.5, 295.0 ],
					"source" : [ "m-gain", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Mic-input", 2 ],
					"midpoints" : [ 559.5, 369.23828125, 542.3046875, 369.23828125, 542.3046875, 370.0 ],
					"source" : [ "m-pair", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.62, 0.9, 0.34, 1.0 ],
					"destination" : [ "m-gain", 1 ],
					"midpoints" : [ 435.5, 407.0, 623.765625, 407.0, 623.765625, 166.69921875, 699.5, 166.69921875 ],
					"source" : [ "p-Mic-input", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.62, 0.9, 0.34, 1.0 ],
					"destination" : [ "m-gain", 0 ],
					"midpoints" : [ 319.5, 407.0, 623.90234375, 407.0, 623.90234375, 175.0, 664.5, 175.0 ],
					"source" : [ "p-Mic-input", 0 ]
				}

			}
 ],
		"originid" : "pat-4",
		"parameters" : 		{
			"m-gain" : [ "live.gain~", "Mic Input", 0 ],
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
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
