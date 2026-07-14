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
		"rect" : [ 134.0, 173.0, 1020.0, 440.0 ],
		"bglocked" : 1,
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "vm-title",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 20.0, 420.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 8.0, 360.0, 20.0 ],
					"text" : "MT Mod Vocoder - pfft spectral voice"
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-note",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 48.0, 780.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 30.0, 623.0, 20.0 ],
					"text" : "pfft~ spectral envelope transfer. Input Mixer audio modulates an internal saw/noise hybrid carrier. No pitch following."
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "vm-in-l",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 100.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "vm-in-r",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 84.0, 100.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "vm-ext-enable",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.0, 95.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "vm-ext-wet",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 235.0, 95.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "vm-ext-tone",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 300.0, 95.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "vm-ext-noise",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 365.0, 95.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "vm-ext-smooth",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 430.0, 95.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "vm-ext-bright",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 95.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-enable",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 24.0, 155.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 78.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-enable-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 157.0, 70.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 44.0, 80.0, 62.0, 20.0 ],
					"text" : "Enable"
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-test",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 24.0, 205.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.0, 122.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-test-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 207.0, 85.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 44.0, 124.0, 78.0, 20.0 ],
					"text" : "Test Input"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "vm-wet",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 155.0, 155.0, 62.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 136.0, 100.0, 58.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-wet-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 155.0, 132.0, 80.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 136.0, 76.0, 70.0, 20.0 ],
					"text" : "Dry/Wet"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "vm-tone",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 245.0, 155.0, 62.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 220.0, 100.0, 58.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-tone-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 245.0, 132.0, 100.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 220.0, 76.0, 96.0, 20.0 ],
					"text" : "Carrier Tone"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "vm-noise",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 355.0, 155.0, 62.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 324.0, 100.0, 58.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-noise-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 355.0, 132.0, 95.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 324.0, 76.0, 85.0, 20.0 ],
					"text" : "Noise Mix"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "vm-smooth",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 455.0, 155.0, 62.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 420.0, 100.0, 58.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-smooth-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 455.0, 132.0, 120.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 420.0, 76.0, 118.0, 20.0 ],
					"text" : "Spectral Smooth"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "vm-bright",
					"maxclass" : "flonum",
					"maximum" : 1.0,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 580.0, 155.0, 62.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 548.0, 100.0, 58.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-bright-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 580.0, 132.0, 95.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 548.0, 76.0, 86.0, 20.0 ],
					"text" : "Brightness"
				}

			}
, 			{
				"box" : 				{
					"id" : "p-Vocoder-core",
					"maxclass" : "newobj",
					"numinlets" : 9,
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
						"rect" : [ 134.0, 101.0, 1040.0, 941.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "vc-title",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 25.0, 980.0, 20.0 ],
									"text" : "Vocoder_core: L/R input -> mono modulator, internal hybrid carrier -> pfft spectral transfer -> smoothed dry/wet bypass"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "vc-in-l",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 90.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "vc-in-r",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 115.0, 90.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "vc-enable",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 210.0, 90.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "vc-test",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 300.0, 90.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "vc-wet",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 90.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "vc-tone",
									"index" : 6,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 485.0, 90.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "vc-noise",
									"index" : 7,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 580.0, 90.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "vc-smooth",
									"index" : 8,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 675.0, 90.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "vc-bright",
									"index" : 9,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 790.0, 90.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-enable-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 135.0, 80.0, 22.0 ],
									"text" : "clip 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-enable-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 210.0, 170.0, 55.0, 22.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-enable-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 210.0, 205.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-test-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 135.0, 80.0, 22.0 ],
									"text" : "clip 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-test-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.0, 170.0, 55.0, 22.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-test-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 300.0, 205.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-wet-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 135.0, 80.0, 22.0 ],
									"text" : "clip 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-wet-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 170.0, 55.0, 22.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-wet-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 390.0, 205.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-tone-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 485.0, 135.0, 80.0, 22.0 ],
									"text" : "clip 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-tone-map",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 485.0, 170.0, 150.0, 22.0 ],
									"text" : "scale 0. 1. 70. 360."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-tone-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 485.0, 205.0, 55.0, 22.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-tone-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 485.0, 240.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-noise-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 580.0, 135.0, 80.0, 22.0 ],
									"text" : "clip 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-noise-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 580.0, 170.0, 55.0, 22.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-noise-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 580.0, 205.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-smooth-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 675.0, 135.0, 80.0, 22.0 ],
									"text" : "clip 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-smooth-map",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 675.0, 170.0, 145.0, 22.0 ],
									"text" : "scale 0. 1. 1. 80."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-smooth-int",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 675.0, 205.0, 35.0, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-smooth-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 675.0, 240.0, 90.0, 22.0 ],
									"text" : "slide $1 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-smooth-send",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 675.0, 275.0, 150.0, 22.0 ],
									"text" : "s #0_vocoder_smooth"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-bright-clip",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 790.0, 135.0, 80.0, 22.0 ],
									"text" : "clip 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-bright-map",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 790.0, 170.0, 160.0, 22.0 ],
									"text" : "scale 0. 1. 500. 9500."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-bright-msg",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 790.0, 205.0, 55.0, 22.0 ],
									"text" : "$1 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-bright-line",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 790.0, 240.0, 50.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-input-sum",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 35.0, 165.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-input-mono",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 35.0, 210.0, 60.0, 22.0 ],
									"text" : "*~ 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-test-lfo",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 279.0, 290.0, 70.0, 22.0 ],
									"text" : "cycle~ 2."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-test-env-offset",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 279.0, 335.0, 55.0, 22.0 ],
									"text" : "+~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-test-env-scale",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 279.0, 380.0, 55.0, 22.0 ],
									"text" : "*~ 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-test-tone",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 192.5, 290.0, 80.0, 22.0 ],
									"text" : "cycle~ 170"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-test-tone-env",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 192.5, 335.0, 35.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-test-tone-level",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 192.5, 380.0, 65.0, 22.0 ],
									"text" : "*~ 0.35"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-test-noise",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 285.0, 60.0, 22.0 ],
									"text" : "noise~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-test-noise-level",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 410.0, 330.0, 65.0, 22.0 ],
									"text" : "*~ 0.08"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-test-src",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 355.0, 429.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-test-gate",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 355.0, 470.0, 55.0, 22.0 ],
									"text" : "*~ 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-mod-sum",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 35.0, 515.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-dry-l-sum",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 115.0, 515.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-dry-r-sum",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 195.0, 515.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-tone-mid",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 485.0, 300.0, 60.0, 22.0 ],
									"text" : "*~ 1.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-tone-high",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 565.0, 300.0, 65.0, 22.0 ],
									"text" : "*~ 2.01"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-car-base",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 485.0, 345.0, 65.0, 22.0 ],
									"text" : "phasor~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-car-mid",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 565.0, 345.0, 65.0, 22.0 ],
									"text" : "phasor~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-car-high",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 645.0, 345.0, 65.0, 22.0 ],
									"text" : "phasor~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-base-scale",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 485.0, 390.0, 55.0, 22.0 ],
									"text" : "*~ 2."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-base-offset",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 485.0, 435.0, 55.0, 22.0 ],
									"text" : "-~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-mid-scale",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 565.0, 390.0, 55.0, 22.0 ],
									"text" : "*~ 2."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-mid-offset",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 565.0, 435.0, 55.0, 22.0 ],
									"text" : "-~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-high-scale",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 645.0, 390.0, 55.0, 22.0 ],
									"text" : "*~ 2."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-high-offset",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 645.0, 435.0, 55.0, 22.0 ],
									"text" : "-~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-car-sum-a",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 525.0, 485.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-car-sum-b",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 565.0, 535.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-car-tonal-level",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 565.0, 585.0, 65.0, 22.0 ],
									"text" : "*~ 0.18"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-car-noise",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 735.0, 345.0, 60.0, 22.0 ],
									"text" : "noise~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-car-noise-level",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 735.0, 390.0, 65.0, 22.0 ],
									"text" : "*~ 0.25"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-one-noise",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 645.0, 585.0, 60.0, 22.0 ],
									"text" : "sig~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-noise-inv",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 645.0, 635.0, 35.0, 22.0 ],
									"text" : "-~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-tonal-mix",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 565.0, 690.0, 35.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-noise-mix",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 735.0, 690.0, 35.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-car-mix",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 650.0, 745.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-car-filter",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 650.0, 795.0, 125.0, 22.0 ],
									"text" : "lores~ 5000 0.35"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-pfft",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 35.0, 610.0, 325.0, 22.0 ],
									"text" : "pfft~ mt_vocoder_pfft 1024 4 args #0_vocoder_smooth"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-pfft-makeup",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 35.0, 670.0, 55.0, 22.0 ],
									"text" : "*~ 3."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-pfft-safe",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 35.0, 720.0, 85.0, 22.0 ],
									"text" : "clip~ -1. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-effective-wet",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 390.0, 265.0, 35.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-one-wet",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 397.5, 401.0, 60.0, 22.0 ],
									"text" : "sig~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-dry-amount",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 397.5, 429.0, 35.0, 22.0 ],
									"text" : "-~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-dry-gain-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 115.0, 795.0, 35.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-wet-gain-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 175.0, 795.0, 35.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-outmix-l",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 145.0, 850.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-dry-gain-r",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 245.0, 795.0, 35.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-wet-gain-r",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 305.0, 795.0, 35.0, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "vc-outmix-r",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 275.0, 850.0, 35.0, 22.0 ],
									"text" : "+~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "vc-out-l",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 145.0, 920.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "vc-out-r",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 275.0, 920.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "vc-car-sum-a", 0 ],
									"source" : [ "vc-base-offset", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-base-offset", 0 ],
									"source" : [ "vc-base-scale", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-bright-clip", 0 ],
									"source" : [ "vc-bright", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-bright-map", 0 ],
									"source" : [ "vc-bright-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-car-filter", 1 ],
									"source" : [ "vc-bright-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-bright-msg", 0 ],
									"source" : [ "vc-bright-map", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-bright-line", 0 ],
									"source" : [ "vc-bright-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-base-scale", 0 ],
									"source" : [ "vc-car-base", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-pfft", 1 ],
									"source" : [ "vc-car-filter", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-high-scale", 0 ],
									"source" : [ "vc-car-high", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-mid-scale", 0 ],
									"source" : [ "vc-car-mid", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-car-filter", 0 ],
									"source" : [ "vc-car-mix", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-car-noise-level", 0 ],
									"source" : [ "vc-car-noise", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-noise-mix", 0 ],
									"source" : [ "vc-car-noise-level", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-car-sum-b", 0 ],
									"source" : [ "vc-car-sum-a", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-car-tonal-level", 0 ],
									"source" : [ "vc-car-sum-b", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-tonal-mix", 0 ],
									"source" : [ "vc-car-tonal-level", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-dry-gain-l", 1 ],
									"order" : 1,
									"source" : [ "vc-dry-amount", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-dry-gain-r", 1 ],
									"order" : 0,
									"source" : [ "vc-dry-amount", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-outmix-l", 0 ],
									"source" : [ "vc-dry-gain-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-outmix-r", 0 ],
									"source" : [ "vc-dry-gain-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-dry-gain-l", 0 ],
									"source" : [ "vc-dry-l-sum", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-dry-gain-r", 0 ],
									"source" : [ "vc-dry-r-sum", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-dry-amount", 1 ],
									"order" : 0,
									"source" : [ "vc-effective-wet", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-wet-gain-l", 1 ],
									"order" : 2,
									"source" : [ "vc-effective-wet", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-wet-gain-r", 1 ],
									"order" : 1,
									"source" : [ "vc-effective-wet", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-enable-clip", 0 ],
									"source" : [ "vc-enable", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-enable-msg", 0 ],
									"source" : [ "vc-enable-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-effective-wet", 1 ],
									"source" : [ "vc-enable-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-enable-line", 0 ],
									"source" : [ "vc-enable-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-car-sum-b", 1 ],
									"source" : [ "vc-high-offset", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-high-offset", 0 ],
									"source" : [ "vc-high-scale", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-dry-l-sum", 0 ],
									"order" : 0,
									"source" : [ "vc-in-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-input-sum", 0 ],
									"order" : 1,
									"source" : [ "vc-in-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-dry-r-sum", 0 ],
									"order" : 0,
									"source" : [ "vc-in-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-input-sum", 1 ],
									"order" : 1,
									"source" : [ "vc-in-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-mod-sum", 0 ],
									"source" : [ "vc-input-mono", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-input-mono", 0 ],
									"source" : [ "vc-input-sum", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-car-sum-a", 1 ],
									"source" : [ "vc-mid-offset", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-mid-offset", 0 ],
									"source" : [ "vc-mid-scale", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-pfft", 0 ],
									"source" : [ "vc-mod-sum", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-noise-clip", 0 ],
									"source" : [ "vc-noise", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-noise-msg", 0 ],
									"source" : [ "vc-noise-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-tonal-mix", 1 ],
									"source" : [ "vc-noise-inv", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-noise-inv", 1 ],
									"order" : 1,
									"source" : [ "vc-noise-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-noise-mix", 1 ],
									"order" : 0,
									"source" : [ "vc-noise-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-car-mix", 1 ],
									"source" : [ "vc-noise-mix", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-noise-line", 0 ],
									"source" : [ "vc-noise-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-noise-inv", 0 ],
									"source" : [ "vc-one-noise", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-dry-amount", 0 ],
									"source" : [ "vc-one-wet", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-out-l", 0 ],
									"source" : [ "vc-outmix-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-out-r", 0 ],
									"source" : [ "vc-outmix-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-pfft-makeup", 0 ],
									"source" : [ "vc-pfft", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-pfft-safe", 0 ],
									"source" : [ "vc-pfft-makeup", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-wet-gain-l", 0 ],
									"order" : 1,
									"source" : [ "vc-pfft-safe", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-wet-gain-r", 0 ],
									"order" : 0,
									"source" : [ "vc-pfft-safe", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-smooth-clip", 0 ],
									"source" : [ "vc-smooth", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-smooth-map", 0 ],
									"source" : [ "vc-smooth-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-smooth-msg", 0 ],
									"source" : [ "vc-smooth-int", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-smooth-int", 0 ],
									"source" : [ "vc-smooth-map", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-smooth-send", 0 ],
									"source" : [ "vc-smooth-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-test-clip", 0 ],
									"source" : [ "vc-test", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-test-msg", 0 ],
									"source" : [ "vc-test-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-test-env-scale", 0 ],
									"source" : [ "vc-test-env-offset", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-test-tone-env", 1 ],
									"source" : [ "vc-test-env-scale", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-dry-l-sum", 1 ],
									"order" : 1,
									"source" : [ "vc-test-gate", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-dry-r-sum", 1 ],
									"order" : 0,
									"source" : [ "vc-test-gate", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-mod-sum", 1 ],
									"order" : 2,
									"source" : [ "vc-test-gate", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-test-env-offset", 0 ],
									"source" : [ "vc-test-lfo", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-test-gate", 1 ],
									"source" : [ "vc-test-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-test-line", 0 ],
									"source" : [ "vc-test-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-test-noise-level", 0 ],
									"source" : [ "vc-test-noise", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-test-src", 1 ],
									"source" : [ "vc-test-noise-level", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-test-gate", 0 ],
									"source" : [ "vc-test-src", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-test-tone-env", 0 ],
									"source" : [ "vc-test-tone", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-test-tone-level", 0 ],
									"source" : [ "vc-test-tone-env", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-test-src", 0 ],
									"source" : [ "vc-test-tone-level", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-car-mix", 0 ],
									"source" : [ "vc-tonal-mix", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-tone-clip", 0 ],
									"source" : [ "vc-tone", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-tone-map", 0 ],
									"source" : [ "vc-tone-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-car-high", 0 ],
									"source" : [ "vc-tone-high", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-car-base", 0 ],
									"order" : 1,
									"source" : [ "vc-tone-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-tone-high", 0 ],
									"order" : 0,
									"source" : [ "vc-tone-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-tone-mid", 0 ],
									"order" : 2,
									"source" : [ "vc-tone-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-tone-msg", 0 ],
									"source" : [ "vc-tone-map", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-car-mid", 0 ],
									"source" : [ "vc-tone-mid", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-tone-line", 0 ],
									"source" : [ "vc-tone-msg", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-wet-clip", 0 ],
									"source" : [ "vc-wet", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-wet-msg", 0 ],
									"source" : [ "vc-wet-clip", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-outmix-l", 1 ],
									"source" : [ "vc-wet-gain-l", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-outmix-r", 1 ],
									"source" : [ "vc-wet-gain-r", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-effective-wet", 0 ],
									"source" : [ "vc-wet-line", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "vc-wet-line", 0 ],
									"source" : [ "vc-wet-msg", 0 ]
								}

							}
 ],
						"originid" : "pat-1188"
					}
,
					"patching_rect" : [ 24.0, 285.0, 155.0, 22.0 ],
					"text" : "p Vocoder_core"
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-gain",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 690.0, 145.0, 54.0, 150.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 646.0, 64.0, 54.0, 132.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0 ],
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 0,
							"parameter_shortname" : "Vocoder Out",
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
					"id" : "vm-dac",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 805.0, 330.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "vm-out-l",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 875.0, 295.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "vm-out-r",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 925.0, 295.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-out-label",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 855.0, 335.0, 170.0, 20.0 ],
					"text" : "out 1/2: audio L/R"
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-wet-default",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 155.0, 205.0, 95.0, 22.0 ],
					"text" : "loadmess 0.7"
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-tone-default",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 245.0, 205.0, 95.0, 22.0 ],
					"text" : "loadmess 0.35"
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-noise-default",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 355.0, 205.0, 95.0, 22.0 ],
					"text" : "loadmess 0.25"
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-smooth-default",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 455.0, 205.0, 95.0, 22.0 ],
					"text" : "loadmess 0.35"
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-bright-default",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 580.0, 205.0, 95.0, 22.0 ],
					"text" : "loadmess 0.65"
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-enable-set",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.0, 130.0, 60.0, 22.0 ],
					"text" : "set $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "vm-enable-state-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.0, 235.0, 180.0, 22.0 ],
					"text" : "s mt_vocoder_enable_state"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "vm-gain", 1 ],
					"source" : [ "p-Vocoder-core", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-gain", 0 ],
					"source" : [ "p-Vocoder-core", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Vocoder-core", 8 ],
					"source" : [ "vm-bright", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-bright", 0 ],
					"source" : [ "vm-bright-default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Vocoder-core", 2 ],
					"order" : 1,
					"source" : [ "vm-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-enable-state-send", 0 ],
					"order" : 0,
					"source" : [ "vm-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-enable", 0 ],
					"source" : [ "vm-enable-set", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-bright", 0 ],
					"source" : [ "vm-ext-bright", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Vocoder-core", 2 ],
					"order" : 1,
					"source" : [ "vm-ext-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-enable-set", 0 ],
					"order" : 0,
					"source" : [ "vm-ext-enable", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-noise", 0 ],
					"source" : [ "vm-ext-noise", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-smooth", 0 ],
					"source" : [ "vm-ext-smooth", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-tone", 0 ],
					"source" : [ "vm-ext-tone", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-wet", 0 ],
					"source" : [ "vm-ext-wet", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-dac", 1 ],
					"order" : 1,
					"source" : [ "vm-gain", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-dac", 0 ],
					"order" : 1,
					"source" : [ "vm-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-out-l", 0 ],
					"order" : 0,
					"source" : [ "vm-gain", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-out-r", 0 ],
					"order" : 0,
					"source" : [ "vm-gain", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Vocoder-core", 0 ],
					"source" : [ "vm-in-l", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Vocoder-core", 1 ],
					"source" : [ "vm-in-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Vocoder-core", 6 ],
					"source" : [ "vm-noise", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-noise", 0 ],
					"source" : [ "vm-noise-default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Vocoder-core", 7 ],
					"source" : [ "vm-smooth", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-smooth", 0 ],
					"source" : [ "vm-smooth-default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Vocoder-core", 3 ],
					"source" : [ "vm-test", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Vocoder-core", 5 ],
					"source" : [ "vm-tone", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-tone", 0 ],
					"source" : [ "vm-tone-default", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "p-Vocoder-core", 4 ],
					"source" : [ "vm-wet", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "vm-wet", 0 ],
					"source" : [ "vm-wet-default", 0 ]
				}

			}
 ],
		"originid" : "pat-1186",
		"parameters" : 		{
			"vm-gain" : [ "live.gain~", "Vocoder Out", 0 ],
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
				"name" : "mt_vocoder_pfft.maxpat",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
