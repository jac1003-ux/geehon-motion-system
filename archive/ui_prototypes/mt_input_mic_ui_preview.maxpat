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
		"rect" : [ 134.0, 173.0, 780.0, 780.0 ],
		"bglocked" : 1,
		"openinpresentation" : 1,
		"gridsize" : [ 10.0, 10.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 15.0,
					"id" : "m-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 34.0, 130.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.766816943883896, 11.210762709379196, 120.0, 23.0 ],
					"text" : "MIC INPUT",
					"textcolor" : [ 0.84, 0.89, 0.91, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "m-note",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 58.0, 310.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 23.766816943883896, 33.183857619762421, 250.0, 18.0 ],
					"text" : "adc 1-8 / mono or stereo pair / 20 ms ramp",
					"textcolor" : [ 0.58, 0.65, 0.67, 1.0 ]
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
					"patching_rect" : [ 62.0, 113.5, 28.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 43.0, 95.579999999999998, 28.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "m-enable-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 154.0, 44.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 35.340000000000003, 67.200000000000003, 44.0, 19.0 ],
					"text" : "Enable",
					"textcolor" : [ 0.84, 0.89, 0.91, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.06, 0.07, 0.075, 1.0 ],
					"id" : "m-channel",
					"maxclass" : "number",
					"maximum" : 8,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 157.0, 132.0, 64.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 138.460000000000008, 112.879999999999995, 58.0, 22.0 ],
					"textcolor" : [ 0.84, 0.89, 0.91, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "m-channel-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 157.0, 86.0, 64.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 138.919999999999987, 76.0, 58.0, 19.0 ],
					"text" : "Mono Ch",
					"textcolor" : [ 0.84, 0.89, 0.91, 1.0 ]
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
					"patching_rect" : [ 250.0, 119.0, 20.0, 82.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 236.840000000000003, 97.569999999999993, 20.0, 82.0 ],
					"size" : 5,
					"value" : 0
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "m-pair-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 86.0, 69.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 233.199999999999989, 63.159999999999997, 66.0, 19.0 ],
					"text" : "Stereo Pair",
					"textcolor" : [ 0.84, 0.89, 0.91, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "m-output-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 363.5, 70.0, 43.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 345.850000000000023, 67.0, 42.0, 19.0 ],
					"text" : "Output",
					"textcolor" : [ 0.84, 0.89, 0.91, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "m-pair-opt-0",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 278.0, 119.0, 40.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 261.129999999999995, 97.569999999999993, 34.0, 17.0 ],
					"text" : "Off",
					"textcolor" : [ 0.58, 0.65, 0.67, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "m-pair-opt-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 278.0, 137.0, 40.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 261.129999999999995, 115.569999999999993, 34.0, 17.0 ],
					"text" : "1-2",
					"textcolor" : [ 0.58, 0.65, 0.67, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "m-pair-opt-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 278.0, 155.0, 40.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 261.129999999999995, 133.569999999999993, 34.0, 17.0 ],
					"text" : "3-4",
					"textcolor" : [ 0.58, 0.65, 0.67, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "m-pair-opt-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 278.0, 173.0, 40.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 261.129999999999995, 151.569999999999993, 34.0, 17.0 ],
					"text" : "5-6",
					"textcolor" : [ 0.58, 0.65, 0.67, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "m-pair-opt-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 278.0, 191.0, 40.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 261.129999999999995, 169.569999999999993, 34.0, 17.0 ],
					"text" : "7-8",
					"textcolor" : [ 0.58, 0.65, 0.67, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "m-out-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 52.0, 272.0, 230.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 24.0, 241.300000000000011, 280.0, 18.0 ],
					"text" : "out 1/2: clean stereo L/R",
					"textcolor" : [ 0.46, 0.86, 0.74, 1.0 ]
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
					"patching_rect" : [ -16.0, 12.0, 30.0, 30.0 ]
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
						"rect" : [ 120.0, 120.0, 900.0, 620.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "mi-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 24.0, 760.0, 20.0 ],
									"text" : "Mic_input internals: adc 1-8 -> mono/stereo select -> 20ms enable ramp -> L/R",
									"textcolor" : [ 0.84, 0.89, 0.91, 1.0 ]
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
									"patching_rect" : [ 35.0, 96.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-enable-label",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 70.0, 110.0, 20.0 ],
									"text" : "in 1 enable",
									"textcolor" : [ 0.58, 0.65, 0.67, 1.0 ]
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
									"patching_rect" : [ 170.0, 96.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-channel-label",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 170.0, 70.0, 170.0, 20.0 ],
									"text" : "in 2 mono channel 0-8",
									"textcolor" : [ 0.58, 0.65, 0.67, 1.0 ]
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
									"patching_rect" : [ 350.0, 96.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-label",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 350.0, 70.0, 430.0, 20.0 ],
									"text" : "in 3 stereo pair 0/off, 1=1-2, 2=3-4, 3=5-6, 4=7-8",
									"textcolor" : [ 0.58, 0.65, 0.67, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-enable-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 146.0, 58.0, 22.0 ],
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
									"patching_rect" : [ 35.0, 188.0, 52.0, 22.0 ],
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
									"patching_rect" : [ 510.0, 108.0, 185.0, 22.0 ],
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
									"patching_rect" : [ 170.0, 320.0, 95.0, 22.0 ],
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
									"patching_rect" : [ 350.0, 320.0, 95.0, 22.0 ],
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
									"patching_rect" : [ 510.0, 320.0, 95.0, 22.0 ],
									"text" : "selector~ 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-channel-clears-pair",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 170.0, 146.0, 55.0, 22.0 ],
									"text" : "t i 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-gt0",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 350.0, 186.0, 45.0, 22.0 ],
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
									"patching_rect" : [ 350.0, 226.0, 45.0, 22.0 ],
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
									"patching_rect" : [ 350.0, 266.0, 35.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-sum-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 270.0, 405.0, 35.0, 22.0 ],
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
									"patching_rect" : [ 430.0, 405.0, 35.0, 22.0 ],
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
									"patching_rect" : [ 270.0, 480.0, 55.0, 22.0 ],
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
									"patching_rect" : [ 430.0, 480.0, 55.0, 22.0 ],
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
									"patching_rect" : [ 270.0, 550.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 430.0, 550.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "mi-pair-route",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 350.0, 146.0, 55.0, 22.0 ],
									"text" : "t i i"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 8 ],
									"midpoints" : [ 685.5, 225.0, 255.5, 225.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 7 ],
									"midpoints" : [ 661.785714285714221, 225.0, 246.0, 225.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 6 ],
									"midpoints" : [ 638.071428571428555, 225.0, 236.5, 225.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 5 ],
									"midpoints" : [ 614.35714285714289, 225.0, 227.0, 225.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 4 ],
									"midpoints" : [ 590.64285714285711, 225.0, 217.5, 225.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 3 ],
									"midpoints" : [ 566.928571428571445, 225.0, 208.0, 225.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 2 ],
									"midpoints" : [ 543.214285714285666, 225.0, 198.5, 225.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-mono-selector", 1 ],
									"midpoints" : [ 519.5, 225.0, 189.0, 225.0 ],
									"order" : 1,
									"source" : [ "mi-adc", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 4 ],
									"midpoints" : [ 661.785714285714221, 225.0, 435.5, 225.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 3 ],
									"midpoints" : [ 614.35714285714289, 225.0, 416.5, 225.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 2 ],
									"midpoints" : [ 566.928571428571445, 225.0, 397.5, 225.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 1 ],
									"midpoints" : [ 519.5, 225.0, 378.5, 225.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 4 ],
									"midpoints" : [ 685.5, 225.0, 595.5, 225.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 3 ],
									"midpoints" : [ 638.071428571428555, 225.0, 576.5, 225.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 2 ],
									"midpoints" : [ 590.64285714285711, 225.0, 557.5, 225.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 1 ],
									"midpoints" : [ 543.214285714285666, 225.0, 538.5, 225.0 ],
									"order" : 0,
									"source" : [ "mi-adc", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-channel-clears-pair", 0 ],
									"source" : [ "mi-channel", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-mono-selector", 0 ],
									"midpoints" : [ 179.5, 244.0, 179.5, 244.0 ],
									"source" : [ "mi-channel-clears-pair", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 0 ],
									"midpoints" : [ 215.5, 304.64580606482923, 359.5, 304.64580606482923 ],
									"order" : 1,
									"source" : [ "mi-channel-clears-pair", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 0 ],
									"midpoints" : [ 215.5, 304.268331896048039, 519.5, 304.268331896048039 ],
									"order" : 0,
									"source" : [ "mi-channel-clears-pair", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-mono-selector", 0 ],
									"midpoints" : [ 359.5, 304.0, 179.5, 304.0 ],
									"source" : [ "mi-clear-mono", 0 ]
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
									"destination" : [ "mi-gate-l", 1 ],
									"midpoints" : [ 44.5, 453.309229329694062, 315.5, 453.309229329694062 ],
									"order" : 1,
									"source" : [ "mi-enable-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.44, 0.72, 1.0, 1.0 ],
									"destination" : [ "mi-gate-r", 1 ],
									"midpoints" : [ 44.5, 453.203133642207831, 475.5, 453.203133642207831 ],
									"order" : 0,
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
									"midpoints" : [ 179.5, 373.5, 279.5, 373.5 ],
									"order" : 1,
									"source" : [ "mi-mono-selector", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-sum-r", 0 ],
									"midpoints" : [ 179.5, 373.5, 439.5, 373.5 ],
									"order" : 0,
									"source" : [ "mi-mono-selector", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-route", 0 ],
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
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-gt0", 0 ],
									"midpoints" : [ 395.5, 177.0, 359.5, 177.0 ],
									"source" : [ "mi-pair-route", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-l", 0 ],
									"midpoints" : [ 359.5, 168.0, 359.5, 300.0 ],
									"order" : 1,
									"source" : [ "mi-pair-route", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 1.0, 0.62, 0.24, 1.0 ],
									"destination" : [ "mi-pair-selector-r", 0 ],
									"midpoints" : [ 359.5, 303.661633427254856, 519.5, 303.661633427254856 ],
									"order" : 0,
									"source" : [ "mi-pair-route", 0 ]
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
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-sum-l", 1 ],
									"midpoints" : [ 359.5, 373.5, 295.5, 373.5 ],
									"source" : [ "mi-pair-selector-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-sum-r", 1 ],
									"midpoints" : [ 519.5, 373.5, 455.5, 373.5 ],
									"source" : [ "mi-pair-selector-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-gate-l", 0 ],
									"source" : [ "mi-sum-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.68, 0.95, 0.34, 1.0 ],
									"destination" : [ "mi-gate-r", 0 ],
									"source" : [ "mi-sum-r", 0 ]
								}

							}
 ],
						"originid" : "pat-6"
					}
,
					"patching_rect" : [ 62.0, 409.0, 135.0, 22.0 ],
					"text" : "p Mic_input"
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
					"patching_rect" : [ 89.0, 458.0, 54.0, 140.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 342.0, 88.0, 49.0, 134.0 ],
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
					"patching_rect" : [ 68.0, 613.0, 30.0, 30.0 ]
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
					"patching_rect" : [ 140.0, 613.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"background" : 1,
					"id" : "m-bg",
					"ignoreclick" : 1,
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 20.0, 20.0, 420.0, 280.0 ],
					"pic" : "mic_panel_v1.png",
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 420.0, 280.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Mic-input", 1 ],
					"midpoints" : [ 166.5, 345.27734375, 129.5, 345.27734375 ],
					"source" : [ "m-channel", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "p-Mic-input", 0 ],
					"midpoints" : [ 71.5, 275.25, 71.5, 275.25 ],
					"source" : [ "m-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.44, 0.72, 1.0, 1.0 ],
					"destination" : [ "m-enable", 0 ],
					"midpoints" : [ -6.5, 77.75, 71.5, 77.75 ],
					"source" : [ "m-ext-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "m-out-l", 0 ],
					"midpoints" : [ 98.5, 605.5, 77.5, 605.5 ],
					"source" : [ "m-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "m-out-r", 0 ],
					"midpoints" : [ 107.25, 605.5, 149.5, 605.5 ],
					"source" : [ "m-gain", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 1.0, 0.62, 0.24, 1.0 ],
					"destination" : [ "p-Mic-input", 2 ],
					"midpoints" : [ 259.5, 341.1875, 187.5, 341.1875 ],
					"source" : [ "m-pair", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "m-gain", 1 ],
					"midpoints" : [ 187.5, 444.5, 133.5, 444.5 ],
					"source" : [ "p-Mic-input", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.68, 0.95, 0.34, 1.0 ],
					"destination" : [ "m-gain", 0 ],
					"midpoints" : [ 71.5, 444.5, 98.5, 444.5 ],
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
		"dependency_cache" : [ 			{
				"name" : "mic_panel_v1.png",
				"bootpath" : "~/Documents/maxmsp插件制作/gesture_input_system/assets/ui",
				"patcherrelativepath" : "./assets/ui",
				"type" : "PNG",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
