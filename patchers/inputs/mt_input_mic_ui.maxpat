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
		"rect" : [ 34.0, 101.0, 1332.0, 941.0 ],
		"bglocked" : 1,
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"autofit" : 1,
					"background" : 1,
					"forceaspect" : 1,
					"id" : "m-bg",
					"ignoreclick" : 1,
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 0.0, 0.0, 420.0, 280.0 ],
					"pic" : "mic_panel_v1.png",
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 420.0, 280.0 ]
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
					"patching_rect" : [ 43.0, 96.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 38.0, 109.0, 28.0, 28.0 ],
					"varname" : "mic_enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "m-channel",
					"maxclass" : "number",
					"maximum" : 8,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 138.0, 113.0, 58.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 115.428576588630676, 132.500005923211575, 75.285717651247978, 22.0 ],
					"varname" : "mic_mono_channel"
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
					"patching_rect" : [ 237.0, 98.0, 20.0, 82.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 231.0, 123.0, 20.0, 82.0 ],
					"size" : 5,
					"value" : 0,
					"varname" : "mic_stereo_pair"
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
					"patching_rect" : [ 437.333346366882324, 152.666670858860016, 36.0, 145.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 351.0, 112.0, 36.0, 98.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_longname" : "mic_output_gain",
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
					"varname" : "mic_output_gain"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 9.0,
					"id" : "m-gate-title",
					"maxclass" : "comment",
					"patching_rect" : [ 24.0, 223.0, 72.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 223.0, 72.0, 18.0 ],
					"text" : "NOISE GATE",
					"textcolor" : [ 0.24, 0.33, 0.29, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.72, 0.78, 0.74, 1.0 ],
					"id" : "m-gate-state",
					"ignoreclick" : 1,
					"maxclass" : "led",
					"numinlets" : 1,
					"numoutlets" : 1,
					"oncolor" : [ 0.93, 0.75, 0.24, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 84.0, 223.0, 14.0, 14.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 84.0, 223.0, 14.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 8.0,
					"id" : "m-threshold-label",
					"maxclass" : "comment",
					"patching_rect" : [ 110.0, 221.0, 82.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 110.0, 221.0, 82.0, 18.0 ],
					"text" : "THRESHOLD dBFS",
					"textcolor" : [ 0.34, 0.43, 0.39, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "m-threshold",
					"maxclass" : "flonum",
					"maximum" : -10.0,
					"minimum" : -70.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 110.0, 240.0, 72.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 110.0, 240.0, 72.0, 20.0 ],
					"varname" : "mic_gate_threshold"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 8.0,
					"id" : "m-release-label",
					"maxclass" : "comment",
					"patching_rect" : [ 208.0, 221.0, 76.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 208.0, 221.0, 76.0, 18.0 ],
					"text" : "RELEASE ms",
					"textcolor" : [ 0.34, 0.43, 0.39, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "m-release",
					"maxclass" : "number",
					"maximum" : 500,
					"minimum" : 20,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 208.0, 240.0, 64.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 208.0, 240.0, 64.0, 20.0 ],
					"varname" : "mic_gate_release"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.94, 0.97, 0.95, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.55, 0.68, 0.61, 1.0 ],
					"id" : "m-gate-panel",
					"maxclass" : "panel",
					"patching_rect" : [ 16.0, 216.0, 288.0, 52.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 16.0, 216.0, 288.0, 52.0 ],
					"rounded" : 8
				}

			}
, 			{
				"box" : 				{
					"comment" : "Enable 0/1",
					"id" : "m-ext-enable",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 437.333346366882324, 12.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "p-Mic-control",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 10,
					"outlettype" : [ "", "int", "", "", "int", "", "", "int", "float", "int" ],
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
						"rect" : [ 134.0, 173.0, 900.0, 520.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "mc-ext-enable",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mc-ui-enable",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 184.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mc-ui-mono",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mc-ui-pair",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 400.0, 80.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-label",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 30.0, 410.0, 20.0 ],
									"text" : "external enable / UI enable / mono 1-8 / stereo pair 0-4"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-ext-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 145.0, 70.0, 22.0 ],
									"text" : "clip 0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-enable-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 224.0, 150.0, 22.0 ],
									"text" : "s mt_mic_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-enable-receive",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 255.0, 150.0, 22.0 ],
									"text" : "r mt_mic_enable_state"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-enable-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 40.0, 286.0, 50.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-enable-set",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 360.0, 58.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-mono-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 145.0, 70.0, 22.0 ],
									"text" : "clip 1 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-mono-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 310.0, 176.0, 50.0, 22.0 ],
									"text" : "t i 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-pair-set",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 341.0, 205.0, 52.0, 22.0 ],
									"text" : "set 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-pair-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 400.0, 145.0, 70.0, 22.0 ],
									"text" : "clip 0 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-pair-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 400.0, 176.0, 50.0, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-mono-active-test",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 400.0, 205.0, 45.0, 22.0 ],
									"text" : "== 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-mono-active",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 400.0, 235.0, 70.0, 22.0 ],
									"text" : "active $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-loadbang",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 227.0, 88.0, 65.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-init-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
									"patching_rect" : [ 227.0, 145.0, 95.0, 22.0 ],
									"text" : "t b b b b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-init-enable",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 273.0, 176.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-init-mono",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.0, 176.0, 32.0, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "mc-init-gain",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 227.0, 176.0, 32.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : {
									"id" : "mc-init-threshold",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 320.0, 176.0, 45.0, 22.0 ],
									"text" : "-45."
								}
							}
, 							{
								"box" : {
									"id" : "mc-init-release",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 375.0, 176.0, 42.0, 22.0 ],
									"text" : "120"
								}
							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mc-enable-out",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 71.0, 322.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mc-mono-out",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 310.0, 274.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mc-pair-out",
									"index" : 8,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 431.0, 274.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : {
									"comment" : "Gate threshold default",
									"id" : "mc-threshold-ui-out",
									"index" : 9,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 480.0, 274.0, 30.0, 30.0 ]
								}
							}
, 							{
								"box" : {
									"comment" : "Gate release default",
									"id" : "mc-release-ui-out",
									"index" : 10,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 535.0, 274.0, 30.0, 30.0 ]
								}
							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mc-enable-ui-out",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 405.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mc-pair-ui-out",
									"index" : 6,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 341.0, 274.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mc-mono-active-out",
									"index" : 7,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 400.0, 274.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mc-mono-ui-out",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 251.0, 274.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "mc-gain-ui-out",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 227.0, 274.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mc-enable-trigger", 0 ],
									"source" : [ "mc-enable-receive", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mc-enable-ui-out", 0 ],
									"source" : [ "mc-enable-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mc-enable-out", 0 ],
									"source" : [ "mc-enable-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mc-enable-set", 0 ],
									"source" : [ "mc-enable-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mc-enable-trigger", 0 ],
									"source" : [ "mc-ext-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mc-ext-clip", 0 ],
									"source" : [ "mc-ext-enable", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mc-enable-send", 0 ],
									"midpoints" : [ 282.5, 211.0, 49.5, 211.0 ],
									"source" : [ "mc-init-enable", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-gain-ui-out", 0 ],
									"source" : [ "mc-init-gain", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-mono-ui-out", 0 ],
									"source" : [ "mc-init-mono", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-init-enable", 0 ],
									"source" : [ "mc-init-trigger", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-init-gain", 0 ],
									"source" : [ "mc-init-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-init-mono", 0 ],
									"source" : [ "mc-init-trigger", 1 ]
								}

							}
, 							{
								"patchline" : {
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-init-threshold", 0 ],
									"source" : [ "mc-init-trigger", 3 ]
								}
							}
, 							{
								"patchline" : {
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-init-release", 0 ],
									"source" : [ "mc-init-trigger", 4 ]
								}
							}
, 							{
								"patchline" : {
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-threshold-ui-out", 0 ],
									"source" : [ "mc-init-threshold", 0 ]
								}
							}
, 							{
								"patchline" : {
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-release-ui-out", 0 ],
									"source" : [ "mc-init-release", 0 ]
								}
							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-init-trigger", 0 ],
									"source" : [ "mc-loadbang", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-mono-active-out", 0 ],
									"source" : [ "mc-mono-active", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-mono-active", 0 ],
									"source" : [ "mc-mono-active-test", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-mono-trigger", 0 ],
									"source" : [ "mc-mono-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-mono-out", 0 ],
									"source" : [ "mc-mono-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-pair-set", 0 ],
									"source" : [ "mc-mono-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-pair-trigger", 0 ],
									"source" : [ "mc-pair-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-pair-ui-out", 0 ],
									"source" : [ "mc-pair-set", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-mono-active-test", 0 ],
									"source" : [ "mc-pair-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-pair-out", 0 ],
									"source" : [ "mc-pair-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mc-enable-send", 0 ],
									"midpoints" : [ 193.5, 211.24609375, 49.5, 211.24609375 ],
									"source" : [ "mc-ui-enable", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-mono-clip", 0 ],
									"source" : [ "mc-ui-mono", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mc-pair-clip", 0 ],
									"source" : [ "mc-ui-pair", 0 ]
								}

							}
 ],
						"originid" : "pat-6"
					}
,
					"patching_rect" : [ 437.333346366882324, 54.666667938232422, 110.0, 22.0 ],
					"text" : "p Mic_control"
				}

			}
, 			{
				"box" : 				{
					"id" : "p-Mic-input",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "int" ],
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
						"rect" : [ 134.0, 102.0, 980.0, 940.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "mi-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 25.0, 760.0, 20.0 ],
									"text" : "Mic input DSP: adc 1-8 -> mono/stereo routing -> linked noise gate -> enable ramp -> L/R"
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
									"patching_rect" : [ 146.0, 170.0, 30.0, 30.0 ]
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
									"outlettype" : [ "int" ],
									"patching_rect" : [ 250.0, 170.0, 30.0, 30.0 ]
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
									"outlettype" : [ "int" ],
									"patching_rect" : [ 485.0, 170.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : {
									"comment" : "Gate threshold dBFS",
									"id" : "mi-threshold",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 650.0, 170.0, 30.0, 30.0 ]
								}
							}
, 							{
								"box" : {
									"comment" : "Gate release ms",
									"id" : "mi-release",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 750.0, 170.0, 30.0, 30.0 ]
								}
							}
, 							{
								"box" : 								{
									"id" : "mi-enable-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.0, 230.0, 55.0, 22.0 ],
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
									"patching_rect" : [ 146.0, 275.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-route-control",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 345.0, 655.0, 35.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-channel-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.0, 230.0, 70.0, 22.0 ],
									"text" : "clip 1 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-channel-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "bang" ],
									"patching_rect" : [ 250.0, 275.0, 60.0, 22.0 ],
									"text" : "t i i b"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-channel-store",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 485.0, 419.0, 40.0, 22.0 ],
									"text" : "i 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-channel-delay",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.0, 347.0, 60.0, 22.0 ],
									"text" : "pipe 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-channel-apply",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "int", "int", "int" ],
									"patching_rect" : [ 250.0, 387.0, 75.0, 22.0 ],
									"text" : "t b i 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 485.0, 230.0, 70.0, 22.0 ],
									"text" : "clip 0 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-trigger",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 485.0, 275.0, 50.0, 22.0 ],
									"text" : "t i b"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-delay",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 485.0, 347.0, 60.0, 22.0 ],
									"text" : "pipe 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-sel",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 485.0, 387.0, 50.0, 22.0 ],
									"text" : "sel 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-off-apply",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "int", "int", "int" ],
									"patching_rect" : [ 485.0, 451.0, 75.0, 22.0 ],
									"text" : "t b i 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-on-apply",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "int", "int", "int" ],
									"patching_rect" : [ 564.0, 451.0, 75.0, 22.0 ],
									"text" : "t b i i 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-route-down",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 591.0, 347.0, 48.0, 22.0 ],
									"text" : "0 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-route-up",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 670.0, 499.0, 48.0, 22.0 ],
									"text" : "1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-route-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 591.0, 585.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-adc",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 259.5, 499.0, 190.0, 22.0 ],
									"text" : "adc~ 1 2 3 4 5 6 7 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-mono-selector",
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 250.0, 585.0, 95.0, 22.0 ],
									"text" : "selector~ 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-selector-l",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 367.0, 585.0, 95.0, 22.0 ],
									"text" : "selector~ 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-selector-r",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 485.0, 585.0, 95.0, 22.0 ],
									"text" : "selector~ 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-sum-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 250.0, 655.0, 35.0, 22.0 ],
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
									"patching_rect" : [ 425.0, 655.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : {
									"id" : "p-Mic-noise-gate",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "signal", "int" ],
									"patching_rect" : [ 250.0, 710.0, 160.0, 22.0 ],
									"text" : "p Noise_gate",
									"patcher" : {
										"fileversion" : 1,
										"appversion" : { "major" : 9, "minor" : 0, "revision" : 5, "architecture" : "x64", "modernui" : 1 },
										"classnamespace" : "box",
										"rect" : [ 120.0, 120.0, 900.0, 650.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [
											{ "box" : { "id" : "ng-title", "maxclass" : "comment", "text" : "Linked stereo noise gate: either channel opens both / 5 ms attack / 40 ms hold", "patching_rect" : [ 30.0, 25.0, 600.0, 20.0 ] } },
											{ "box" : { "id" : "ng-in-l", "maxclass" : "inlet", "index" : 1, "numinlets" : 0, "numoutlets" : 1, "outlettype" : [ "signal" ], "patching_rect" : [ 60.0, 80.0, 30.0, 30.0 ] } },
											{ "box" : { "id" : "ng-in-r", "maxclass" : "inlet", "index" : 2, "numinlets" : 0, "numoutlets" : 1, "outlettype" : [ "signal" ], "patching_rect" : [ 170.0, 80.0, 30.0, 30.0 ] } },
											{ "box" : { "id" : "ng-enable", "maxclass" : "inlet", "index" : 3, "numinlets" : 0, "numoutlets" : 1, "outlettype" : [ "int" ], "patching_rect" : [ 330.0, 80.0, 30.0, 30.0 ] } },
											{ "box" : { "id" : "ng-threshold", "maxclass" : "inlet", "index" : 4, "numinlets" : 0, "numoutlets" : 1, "outlettype" : [ "float" ], "patching_rect" : [ 470.0, 80.0, 30.0, 30.0 ] } },
											{ "box" : { "id" : "ng-release", "maxclass" : "inlet", "index" : 5, "numinlets" : 0, "numoutlets" : 1, "outlettype" : [ "int" ], "patching_rect" : [ 610.0, 80.0, 30.0, 30.0 ] } },
											{ "box" : { "id" : "ng-peak-l", "maxclass" : "newobj", "text" : "peakamp~ 10", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "float" ], "patching_rect" : [ 60.0, 145.0, 88.0, 22.0 ] } },
											{ "box" : { "id" : "ng-peak-r", "maxclass" : "newobj", "text" : "peakamp~ 10", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "float" ], "patching_rect" : [ 170.0, 145.0, 88.0, 22.0 ] } },
											{ "box" : { "id" : "ng-maximum", "maxclass" : "newobj", "text" : "maximum 0.", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "float" ], "patching_rect" : [ 110.0, 205.0, 90.0, 22.0 ] } },
											{ "box" : { "id" : "ng-atodb", "maxclass" : "newobj", "text" : "atodb", "numinlets" : 1, "numoutlets" : 1, "outlettype" : [ "float" ], "patching_rect" : [ 110.0, 245.0, 55.0, 22.0 ] } },
											{ "box" : { "id" : "ng-threshold-clip", "maxclass" : "newobj", "text" : "clip -70. -10.", "numinlets" : 3, "numoutlets" : 1, "outlettype" : [ "float" ], "patching_rect" : [ 470.0, 145.0, 105.0, 22.0 ] } },
											{ "box" : { "id" : "ng-compare", "maxclass" : "newobj", "text" : ">= -45.", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "int" ], "patching_rect" : [ 110.0, 325.0, 70.0, 22.0 ] } },
											{ "box" : { "id" : "ng-active-pak", "maxclass" : "newobj", "text" : "pak 0 0", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "list" ], "patching_rect" : [ 260.0, 325.0, 70.0, 22.0 ] } },
											{ "box" : { "id" : "ng-active", "maxclass" : "newobj", "text" : "expr $i1 && $i2", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "int" ], "patching_rect" : [ 260.0, 365.0, 120.0, 22.0 ] } },
											{ "box" : { "id" : "ng-change", "maxclass" : "newobj", "text" : "change", "numinlets" : 1, "numoutlets" : 3, "outlettype" : [ "int", "int", "int" ], "patching_rect" : [ 260.0, 405.0, 60.0, 22.0 ] } },
											{ "box" : { "id" : "ng-sel", "maxclass" : "newobj", "text" : "sel 1 0", "numinlets" : 3, "numoutlets" : 3, "outlettype" : [ "bang", "bang", "" ], "patching_rect" : [ 260.0, 445.0, 60.0, 22.0 ] } },
											{ "box" : { "id" : "ng-open-trigger", "maxclass" : "newobj", "text" : "t b b b", "numinlets" : 1, "numoutlets" : 3, "outlettype" : [ "bang", "bang", "bang" ], "patching_rect" : [ 210.0, 485.0, 60.0, 22.0 ] } },
											{ "box" : { "id" : "ng-stop", "maxclass" : "message", "text" : "stop", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "" ], "patching_rect" : [ 340.0, 485.0, 42.0, 22.0 ] } },
											{ "box" : { "id" : "ng-open-state", "maxclass" : "message", "text" : "1", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "int" ], "patching_rect" : [ 210.0, 525.0, 32.0, 22.0 ] } },
											{ "box" : { "id" : "ng-open-ramp", "maxclass" : "message", "text" : "1. 5", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "" ], "patching_rect" : [ 260.0, 525.0, 45.0, 22.0 ] } },
											{ "box" : { "id" : "ng-close-delay", "maxclass" : "newobj", "text" : "delay 40", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "bang" ], "patching_rect" : [ 340.0, 525.0, 65.0, 22.0 ] } },
											{ "box" : { "id" : "ng-close-trigger", "maxclass" : "newobj", "text" : "t b b", "numinlets" : 1, "numoutlets" : 2, "outlettype" : [ "bang", "bang" ], "patching_rect" : [ 340.0, 565.0, 48.0, 22.0 ] } },
											{ "box" : { "id" : "ng-close-state", "maxclass" : "message", "text" : "0", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "int" ], "patching_rect" : [ 410.0, 605.0, 32.0, 22.0 ] } },
											{ "box" : { "id" : "ng-release-clip", "maxclass" : "newobj", "text" : "clip 20 500", "numinlets" : 3, "numoutlets" : 1, "outlettype" : [ "int" ], "patching_rect" : [ 610.0, 145.0, 85.0, 22.0 ] } },
											{ "box" : { "id" : "ng-release-store", "maxclass" : "newobj", "text" : "f 120.", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "float" ], "patching_rect" : [ 340.0, 605.0, 55.0, 22.0 ] } },
											{ "box" : { "id" : "ng-close-ramp", "maxclass" : "message", "text" : "0. $1", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "" ], "patching_rect" : [ 340.0, 645.0, 50.0, 22.0 ] } },
											{ "box" : { "id" : "ng-line", "maxclass" : "newobj", "text" : "line~", "numinlets" : 2, "numoutlets" : 2, "outlettype" : [ "signal", "bang" ], "patching_rect" : [ 260.0, 605.0, 50.0, 22.0 ] } },
											{ "box" : { "id" : "ng-gain-l", "maxclass" : "newobj", "text" : "*~ 0.", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "signal" ], "patching_rect" : [ 60.0, 565.0, 55.0, 22.0 ] } },
											{ "box" : { "id" : "ng-gain-r", "maxclass" : "newobj", "text" : "*~ 0.", "numinlets" : 2, "numoutlets" : 1, "outlettype" : [ "signal" ], "patching_rect" : [ 170.0, 565.0, 55.0, 22.0 ] } },
											{ "box" : { "id" : "ng-out-l", "maxclass" : "outlet", "index" : 1, "numinlets" : 1, "numoutlets" : 0, "patching_rect" : [ 60.0, 625.0, 30.0, 30.0 ] } },
											{ "box" : { "id" : "ng-out-r", "maxclass" : "outlet", "index" : 2, "numinlets" : 1, "numoutlets" : 0, "patching_rect" : [ 170.0, 625.0, 30.0, 30.0 ] } },
											{ "box" : { "id" : "ng-state-out", "maxclass" : "outlet", "index" : 3, "numinlets" : 1, "numoutlets" : 0, "patching_rect" : [ 410.0, 645.0, 30.0, 30.0 ] } }
										],
										"lines" : [
											{ "patchline" : { "source" : [ "ng-in-l", 0 ], "destination" : [ "ng-peak-l", 0 ] } },
											{ "patchline" : { "source" : [ "ng-in-r", 0 ], "destination" : [ "ng-peak-r", 0 ] } },
											{ "patchline" : { "source" : [ "ng-peak-l", 0 ], "destination" : [ "ng-maximum", 0 ] } },
											{ "patchline" : { "source" : [ "ng-peak-r", 0 ], "destination" : [ "ng-maximum", 1 ] } },
											{ "patchline" : { "source" : [ "ng-maximum", 0 ], "destination" : [ "ng-atodb", 0 ] } },
											{ "patchline" : { "source" : [ "ng-atodb", 0 ], "destination" : [ "ng-compare", 0 ] } },
											{ "patchline" : { "source" : [ "ng-threshold", 0 ], "destination" : [ "ng-threshold-clip", 0 ] } },
											{ "patchline" : { "source" : [ "ng-threshold-clip", 0 ], "destination" : [ "ng-compare", 1 ] } },
											{ "patchline" : { "source" : [ "ng-compare", 0 ], "destination" : [ "ng-active-pak", 0 ] } },
											{ "patchline" : { "source" : [ "ng-enable", 0 ], "destination" : [ "ng-active-pak", 1 ] } },
											{ "patchline" : { "source" : [ "ng-active-pak", 0 ], "destination" : [ "ng-active", 0 ] } },
											{ "patchline" : { "source" : [ "ng-active", 0 ], "destination" : [ "ng-change", 0 ] } },
											{ "patchline" : { "source" : [ "ng-change", 0 ], "destination" : [ "ng-sel", 0 ] } },
											{ "patchline" : { "source" : [ "ng-sel", 0 ], "destination" : [ "ng-open-trigger", 0 ] } },
											{ "patchline" : { "source" : [ "ng-open-trigger", 2 ], "destination" : [ "ng-stop", 0 ] } },
											{ "patchline" : { "source" : [ "ng-stop", 0 ], "destination" : [ "ng-close-delay", 0 ] } },
											{ "patchline" : { "source" : [ "ng-open-trigger", 1 ], "destination" : [ "ng-open-state", 0 ] } },
											{ "patchline" : { "source" : [ "ng-open-state", 0 ], "destination" : [ "ng-state-out", 0 ] } },
											{ "patchline" : { "source" : [ "ng-open-trigger", 0 ], "destination" : [ "ng-open-ramp", 0 ] } },
											{ "patchline" : { "source" : [ "ng-open-ramp", 0 ], "destination" : [ "ng-line", 0 ] } },
											{ "patchline" : { "source" : [ "ng-sel", 1 ], "destination" : [ "ng-close-delay", 0 ] } },
											{ "patchline" : { "source" : [ "ng-close-delay", 0 ], "destination" : [ "ng-close-trigger", 0 ] } },
											{ "patchline" : { "source" : [ "ng-close-trigger", 1 ], "destination" : [ "ng-close-state", 0 ] } },
											{ "patchline" : { "source" : [ "ng-close-state", 0 ], "destination" : [ "ng-state-out", 0 ] } },
											{ "patchline" : { "source" : [ "ng-release", 0 ], "destination" : [ "ng-release-clip", 0 ] } },
											{ "patchline" : { "source" : [ "ng-release-clip", 0 ], "destination" : [ "ng-release-store", 1 ] } },
											{ "patchline" : { "source" : [ "ng-close-trigger", 0 ], "destination" : [ "ng-release-store", 0 ] } },
											{ "patchline" : { "source" : [ "ng-release-store", 0 ], "destination" : [ "ng-close-ramp", 0 ] } },
											{ "patchline" : { "source" : [ "ng-close-ramp", 0 ], "destination" : [ "ng-line", 0 ] } },
											{ "patchline" : { "source" : [ "ng-in-l", 0 ], "destination" : [ "ng-gain-l", 0 ] } },
											{ "patchline" : { "source" : [ "ng-in-r", 0 ], "destination" : [ "ng-gain-r", 0 ] } },
											{ "patchline" : { "source" : [ "ng-line", 0 ], "destination" : [ "ng-gain-l", 1 ], "order" : 1 } },
											{ "patchline" : { "source" : [ "ng-line", 0 ], "destination" : [ "ng-gain-r", 1 ], "order" : 0 } },
											{ "patchline" : { "source" : [ "ng-gain-l", 0 ], "destination" : [ "ng-out-l", 0 ] } },
											{ "patchline" : { "source" : [ "ng-gain-r", 0 ], "destination" : [ "ng-out-r", 0 ] } }
										]
									}
								}
							}
, 							{
								"box" : 								{
									"id" : "mi-gate-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 250.0, 765.0, 55.0, 22.0 ],
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
									"patching_rect" : [ 425.0, 765.0, 55.0, 22.0 ],
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
									"patching_rect" : [ 250.0, 850.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 425.0, 850.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : {
									"comment" : "Gate open state",
									"id" : "mi-gate-state-out",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 575.0, 850.0, 30.0, 30.0 ]
								}
							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 8 ],
									"midpoints" : [ 440.0, 553.0, 335.5, 553.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 7 ],
									"midpoints" : [ 415.571428571428555, 553.0, 326.0, 553.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 6 ],
									"midpoints" : [ 391.14285714285711, 553.0, 316.5, 553.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 5 ],
									"midpoints" : [ 366.714285714285722, 553.0, 307.0, 553.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 4 ],
									"midpoints" : [ 342.285714285714278, 553.0, 297.5, 553.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 3 ],
									"midpoints" : [ 317.857142857142833, 553.0, 288.0, 553.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 2 ],
									"midpoints" : [ 293.428571428571445, 553.0, 278.5, 553.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 1 ],
									"midpoints" : [ 269.0, 553.0, 269.0, 553.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 4 ],
									"midpoints" : [ 415.571428571428555, 553.0, 452.5, 553.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 3 ],
									"midpoints" : [ 366.714285714285722, 553.0, 433.5, 553.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 2 ],
									"midpoints" : [ 317.857142857142833, 553.0, 414.5, 553.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 1 ],
									"midpoints" : [ 269.0, 553.0, 395.5, 553.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 4 ],
									"midpoints" : [ 440.0, 553.0, 570.5, 553.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 3 ],
									"midpoints" : [ 391.14285714285711, 553.0, 551.5, 553.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 2 ],
									"midpoints" : [ 342.285714285714278, 553.0, 532.5, 553.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 1 ],
									"midpoints" : [ 293.428571428571445, 553.0, 513.5, 553.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-channel-clip", 0 ],
									"source" : [ "mi-channel", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-mono-selector", 0 ],
									"midpoints" : [ 278.166666666666686, 486.41015625, 259.5, 486.41015625 ],
									"source" : [ "mi-channel-apply", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 0 ],
									"midpoints" : [ 296.833333333333314, 529.20703125, 376.5, 529.20703125 ],
									"source" : [ "mi-channel-apply", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 0 ],
									"midpoints" : [ 315.5, 528.15234375, 494.5, 528.15234375 ],
									"source" : [ "mi-channel-apply", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-route-up", 0 ],
									"midpoints" : [ 259.5, 486.4375, 679.5, 486.4375 ],
									"source" : [ "mi-channel-apply", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-channel-trigger", 0 ],
									"source" : [ "mi-channel-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-channel-apply", 0 ],
									"source" : [ "mi-channel-delay", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-off-apply", 0 ],
									"source" : [ "mi-channel-store", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-channel-delay", 0 ],
									"source" : [ "mi-channel-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-channel-store", 1 ],
									"midpoints" : [ 280.0, 321.94921875, 515.5, 321.94921875 ],
									"source" : [ "mi-channel-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-route-down", 0 ],
									"midpoints" : [ 300.5, 322.0, 600.5, 322.0 ],
									"source" : [ "mi-channel-trigger", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mi-enable-msg", 0 ],
									"source" : [ "mi-enable", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mi-route-control", 0 ],
									"midpoints" : [ 155.5, 630.109375, 354.5, 630.109375 ],
									"source" : [ "mi-enable-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mi-enable-line", 0 ],
									"source" : [ "mi-enable-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-out-l", 0 ],
									"source" : [ "mi-gate-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-out-r", 0 ],
									"source" : [ "mi-gate-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-sum-l", 0 ],
									"order" : 1,
									"source" : [ "mi-mono-selector", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-sum-r", 0 ],
									"midpoints" : [ 259.5, 631.0, 434.5, 631.0 ],
									"order" : 0,
									"source" : [ "mi-mono-selector", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-clip", 0 ],
									"source" : [ "mi-pair", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-trigger", 0 ],
									"source" : [ "mi-pair-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-sel", 0 ],
									"source" : [ "mi-pair-delay", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-mono-selector", 0 ],
									"midpoints" : [ 513.166666666666742, 529.0, 259.5, 529.0 ],
									"source" : [ "mi-pair-off-apply", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 0 ],
									"midpoints" : [ 531.833333333333371, 529.0, 376.5, 529.0 ],
									"source" : [ "mi-pair-off-apply", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 0 ],
									"midpoints" : [ 550.5, 529.0, 494.5, 529.0 ],
									"source" : [ "mi-pair-off-apply", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-route-up", 0 ],
									"midpoints" : [ 494.5, 486.0, 679.5, 486.0 ],
									"source" : [ "mi-pair-off-apply", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-mono-selector", 0 ],
									"midpoints" : [ 629.5, 529.0, 259.5, 529.0 ],
									"source" : [ "mi-pair-on-apply", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 0 ],
									"midpoints" : [ 592.166666666666629, 529.0, 376.5, 529.0 ],
									"source" : [ "mi-pair-on-apply", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 0 ],
									"midpoints" : [ 610.833333333333371, 529.0, 494.5, 529.0 ],
									"source" : [ "mi-pair-on-apply", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-route-up", 0 ],
									"midpoints" : [ 573.5, 486.0, 679.5, 486.0 ],
									"source" : [ "mi-pair-on-apply", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-channel-store", 0 ],
									"source" : [ "mi-pair-sel", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-on-apply", 0 ],
									"midpoints" : [ 525.5, 430.0, 573.5, 430.0 ],
									"source" : [ "mi-pair-sel", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-sum-l", 1 ],
									"midpoints" : [ 376.5, 631.0, 275.5, 631.0 ],
									"source" : [ "mi-pair-selector-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-sum-r", 1 ],
									"midpoints" : [ 494.5, 631.0, 450.5, 631.0 ],
									"source" : [ "mi-pair-selector-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-delay", 0 ],
									"source" : [ "mi-pair-trigger", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-route-down", 0 ],
									"midpoints" : [ 525.5, 322.0, 600.5, 322.0 ],
									"source" : [ "mi-pair-trigger", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mi-gate-l", 1 ],
									"midpoints" : [ 354.5, 696.0, 295.5, 696.0 ],
									"order" : 1,
									"source" : [ "mi-route-control", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mi-gate-r", 1 ],
									"midpoints" : [ 354.5, 696.0, 470.5, 696.0 ],
									"order" : 0,
									"source" : [ "mi-route-control", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-route-line", 0 ],
									"source" : [ "mi-route-down", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-route-control", 1 ],
									"midpoints" : [ 600.5, 631.0, 370.5, 631.0 ],
									"source" : [ "mi-route-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-route-line", 0 ],
									"midpoints" : [ 679.5, 553.0, 600.5, 553.0 ],
									"source" : [ "mi-route-up", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "p-Mic-noise-gate", 0 ],
									"source" : [ "mi-sum-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "p-Mic-noise-gate", 1 ],
									"source" : [ "mi-sum-r", 0 ]
								}

							}
, 							{
								"patchline" : {
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-gate-l", 0 ],
									"source" : [ "p-Mic-noise-gate", 0 ]
								}
							}
, 							{
								"patchline" : {
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-gate-r", 0 ],
									"source" : [ "p-Mic-noise-gate", 1 ]
								}
							}
, 							{
								"patchline" : {
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "p-Mic-noise-gate", 2 ],
									"source" : [ "mi-enable", 0 ]
								}
							}
, 							{
								"patchline" : {
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "p-Mic-noise-gate", 3 ],
									"source" : [ "mi-threshold", 0 ]
								}
							}
, 							{
								"patchline" : {
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "p-Mic-noise-gate", 4 ],
									"source" : [ "mi-release", 0 ]
								}
							}
, 							{
								"patchline" : {
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-gate-state-out", 0 ],
									"source" : [ "p-Mic-noise-gate", 2 ]
								}
							}
 ],
						"originid" : "pat-8"
					}
,
					"patching_rect" : [ 437.333346366882324, 114.000003039836884, 150.0, 22.0 ],
					"text" : "p Mic_input"
				}

			}
, 			{
				"box" : 				{
					"comment" : "Mic audio L",
					"id" : "m-out-l",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 437.333346366882324, 331.333342850208282, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Mic audio R",
					"id" : "m-out-r",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 497.333348155021667, 331.333342850208282, 30.0, 30.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Mic-control", 2 ],
					"midpoints" : [ 147.5, 44.648434509290382, 428.710947033095465, 44.648434509290382, 428.710947033095465, 44.666667938232422, 507.500013033548953, 44.666667938232422 ],
					"source" : [ "m-channel", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-Mic-control", 1 ],
					"midpoints" : [ 52.5, 44.999997466802597, 264.833339850107791, 44.999997466802597, 264.833339850107791, 45.171876286622137, 477.166679700215639, 45.171876286622137 ],
					"source" : [ "m-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-Mic-control", 0 ],
					"source" : [ "m-ext-enable", 0 ]
				}

			}
, 			{
				"patchline" : {
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "m-threshold", 0 ],
					"source" : [ "p-Mic-control", 8 ]
				}

			}
, 			{
				"patchline" : {
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "m-release", 0 ],
					"source" : [ "p-Mic-control", 9 ]
				}

			}
, 			{
				"patchline" : {
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Mic-input", 3 ],
					"source" : [ "m-threshold", 0 ]
				}

			}
, 			{
				"patchline" : {
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Mic-input", 4 ],
					"source" : [ "m-release", 0 ]
				}

			}
, 			{
				"patchline" : {
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "m-gate-state", 0 ],
					"source" : [ "p-Mic-input", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "m-out-l", 0 ],
					"source" : [ "m-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "m-out-r", 0 ],
					"midpoints" : [ 451.083346366882324, 314.500006854534149, 506.833348155021667, 314.500006854534149 ],
					"source" : [ "m-gain", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Mic-control", 3 ],
					"midpoints" : [ 246.5, 44.588537333067507, 429.531257630325854, 44.588537333067507, 429.531257630325854, 44.666667938232422, 537.833346366882324, 44.666667938232422 ],
					"source" : [ "m-pair", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "m-channel", 0 ],
					"midpoints" : [ 524.833346366882324, 94.833333969116211, 147.5, 94.833333969116211 ],
					"source" : [ "p-Mic-control", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "m-channel", 0 ],
					"midpoints" : [ 485.833346366882324, 94.833333969116211, 147.5, 94.833333969116211 ],
					"source" : [ "p-Mic-control", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "m-enable", 0 ],
					"midpoints" : [ 446.833346366882324, 95.011270846705884, 52.5, 95.011270846705884 ],
					"source" : [ "p-Mic-control", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "m-gain", 0 ],
					"midpoints" : [ 472.833346366882324, 93.411280352622271, 446.833346366882324, 93.411280352622271 ],
					"source" : [ "p-Mic-control", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "m-pair", 0 ],
					"midpoints" : [ 511.833346366882324, 94.223151140846312, 246.5, 94.223151140846312 ],
					"source" : [ "p-Mic-control", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Mic-input", 2 ],
					"midpoints" : [ 537.833346366882324, 95.333335489034653, 537.833346366882324, 95.333335489034653 ],
					"source" : [ "p-Mic-control", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Mic-input", 1 ],
					"midpoints" : [ 498.833346366882324, 95.333335489034653, 492.333346366882324, 95.333335489034653 ],
					"source" : [ "p-Mic-control", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-Mic-input", 0 ],
					"midpoints" : [ 459.833346366882324, 95.333335489034653, 446.833346366882324, 95.333335489034653 ],
					"source" : [ "p-Mic-control", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "m-gain", 1 ],
					"midpoints" : [ 537.833346366882324, 144.33333694934845, 463.833346366882324, 144.33333694934845 ],
					"source" : [ "p-Mic-input", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "m-gain", 0 ],
					"source" : [ "p-Mic-input", 0 ]
				}

			}
 ],
		"originid" : "pat-4",
		"parameters" : 		{
			"m-gain" : [ "mic_output_gain", "Mic Input", 0 ],
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
				"name" : "mic_panel_v1.png",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
