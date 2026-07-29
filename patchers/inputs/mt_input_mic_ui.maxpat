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
			1332,
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
					"id": "m-bg",
					"ignoreclick": 1,
					"maxclass": "fpic",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"jit_matrix"
					],
					"patching_rect": [
						0,
						0,
						420,
						280
					],
					"pic": "mic_panel_v1.png",
					"presentation": 1,
					"presentation_rect": [
						0,
						0,
						420,
						280
					]
				}
			},
			{
				"box": {
					"id": "m-enable",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						43,
						96,
						24,
						24
					],
					"presentation": 1,
					"presentation_rect": [
						38,
						109,
						28,
						28
					],
					"varname": "mic_enable"
				}
			},
			{
				"box": {
					"id": "m-channel",
					"maxclass": "number",
					"maximum": 8,
					"minimum": 1,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						138,
						113,
						58,
						22
					],
					"presentation": 1,
					"presentation_rect": [
						115.42857658863068,
						132.50000592321157,
						75.28571765124798,
						22
					],
					"varname": "mic_mono_channel"
				}
			},
			{
				"box": {
					"disabled": [
						0,
						0,
						0,
						0,
						0
					],
					"id": "m-pair",
					"itemtype": 0,
					"maxclass": "radiogroup",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"parameter_enable": 0,
					"patching_rect": [
						237,
						98,
						20,
						82
					],
					"presentation": 1,
					"presentation_rect": [
						231,
						123,
						20,
						82
					],
					"size": 5,
					"value": 0,
					"varname": "mic_stereo_pair"
				}
			},
			{
				"box": {
					"id": "m-gain",
					"lastchannelcount": 0,
					"maxclass": "live.gain~",
					"numinlets": 2,
					"numoutlets": 5,
					"outlettype": [
						"signal",
						"signal",
						"",
						"float",
						"list"
					],
					"parameter_enable": 1,
					"patching_rect": [
						437.3333463668823,
						210,
						36,
						145
					],
					"presentation": 1,
					"presentation_rect": [
						351,
						112,
						36,
						98
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_initial": [
								0
							],
							"parameter_longname": "mic_output_gain",
							"parameter_mmax": 6,
							"parameter_mmin": -70,
							"parameter_modmode": 0,
							"parameter_shortname": "Mic Input",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"showname": 0,
					"varname": "mic_output_gain"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 9,
					"id": "m-gate-title",
					"maxclass": "comment",
					"patching_rect": [
						24,
						223,
						72,
						18
					],
					"presentation": 1,
					"presentation_rect": [
						24,
						223,
						72,
						18
					],
					"text": "NOISE GATE",
					"textcolor": [
						0.24,
						0.33,
						0.29,
						1
					]
				}
			},
			{
				"box": {
					"bgcolor": [
						0.72,
						0.78,
						0.74,
						1
					],
					"id": "m-gate-state",
					"ignoreclick": 1,
					"maxclass": "led",
					"numinlets": 1,
					"numoutlets": 1,
					"oncolor": [
						0.93,
						0.75,
						0.24,
						1
					],
					"parameter_enable": 0,
					"patching_rect": [
						84,
						223,
						14,
						14
					],
					"presentation": 1,
					"presentation_rect": [
						84,
						223,
						14,
						14
					]
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 8,
					"id": "m-threshold-label",
					"maxclass": "comment",
					"patching_rect": [
						110,
						221,
						82,
						18
					],
					"presentation": 1,
					"presentation_rect": [
						110,
						221,
						82,
						18
					],
					"text": "THRESHOLD dBFS",
					"textcolor": [
						0.34,
						0.43,
						0.39,
						1
					]
				}
			},
			{
				"box": {
					"format": 6,
					"id": "m-threshold",
					"maxclass": "flonum",
					"maximum": -10,
					"minimum": -70,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						110,
						240,
						72,
						20
					],
					"presentation": 1,
					"presentation_rect": [
						110,
						240,
						72,
						20
					],
					"varname": "mic_gate_threshold"
				}
			},
			{
				"box": {
					"fontface": 1,
					"fontsize": 8,
					"id": "m-release-label",
					"maxclass": "comment",
					"patching_rect": [
						208,
						221,
						76,
						18
					],
					"presentation": 1,
					"presentation_rect": [
						208,
						221,
						76,
						18
					],
					"text": "RELEASE ms",
					"textcolor": [
						0.34,
						0.43,
						0.39,
						1
					]
				}
			},
			{
				"box": {
					"id": "m-release",
					"maxclass": "number",
					"maximum": 500,
					"minimum": 20,
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"bang"
					],
					"parameter_enable": 0,
					"patching_rect": [
						208,
						240,
						64,
						20
					],
					"presentation": 1,
					"presentation_rect": [
						208,
						240,
						64,
						20
					],
					"varname": "mic_gate_release"
				}
			},
			{
				"box": {
					"bgcolor": [
						0.94,
						0.97,
						0.95,
						1
					],
					"border": 1,
					"bordercolor": [
						0.55,
						0.68,
						0.61,
						1
					],
					"id": "m-gate-panel",
					"maxclass": "panel",
					"patching_rect": [
						16,
						216,
						288,
						52
					],
					"presentation": 1,
					"presentation_rect": [
						16,
						216,
						288,
						52
					],
					"rounded": 8
				}
			},
			{
				"box": {
					"comment": "Enable 0/1",
					"id": "m-ext-enable",
					"index": 0,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						437.3333463668823,
						12,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "p-Mic-control",
					"maxclass": "newobj",
					"numinlets": 4,
					"numoutlets": 10,
					"outlettype": [
						"",
						"int",
						"",
						"",
						"int",
						"",
						"",
						"int",
						"float",
						"int"
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
							900,
							520
						],
						"gridsize": [
							15,
							15
						],
						"boxes": [
							{
								"box": {
									"comment": "",
									"id": "mc-ext-enable",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										40,
										80,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mc-ui-enable",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										184,
										80,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mc-ui-mono",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										310,
										80,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mc-ui-pair",
									"index": 4,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										400,
										80,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "mc-label",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30,
										30,
										410,
										20
									],
									"text": "external enable / UI enable / mono 1-8 / stereo pair 0-4"
								}
							},
							{
								"box": {
									"id": "mc-ext-clip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										40,
										145,
										70,
										22
									],
									"text": "clip 0 1"
								}
							},
							{
								"box": {
									"id": "mc-enable-send",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										40,
										224,
										150,
										22
									],
									"text": "s mt_mic_enable_state"
								}
							},
							{
								"box": {
									"id": "mc-enable-receive",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										40,
										255,
										150,
										22
									],
									"text": "r mt_mic_enable_state"
								}
							},
							{
								"box": {
									"id": "mc-enable-trigger",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"int",
										"int"
									],
									"patching_rect": [
										40,
										286,
										50,
										22
									],
									"text": "t i i"
								}
							},
							{
								"box": {
									"id": "mc-enable-set",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										40,
										360,
										58,
										22
									],
									"text": "set $1"
								}
							},
							{
								"box": {
									"id": "mc-mono-clip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										310,
										145,
										70,
										22
									],
									"text": "clip 1 8"
								}
							},
							{
								"box": {
									"id": "mc-mono-trigger",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"int",
										"int"
									],
									"patching_rect": [
										310,
										176,
										50,
										22
									],
									"text": "t i 0"
								}
							},
							{
								"box": {
									"id": "mc-pair-set",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										341,
										205,
										52,
										22
									],
									"text": "set 0"
								}
							},
							{
								"box": {
									"id": "mc-pair-clip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										400,
										145,
										70,
										22
									],
									"text": "clip 0 4"
								}
							},
							{
								"box": {
									"id": "mc-pair-trigger",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"int",
										"int"
									],
									"patching_rect": [
										400,
										176,
										50,
										22
									],
									"text": "t i i"
								}
							},
							{
								"box": {
									"id": "mc-mono-active-test",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										400,
										205,
										45,
										22
									],
									"text": "== 0"
								}
							},
							{
								"box": {
									"id": "mc-mono-active",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										400,
										235,
										70,
										22
									],
									"text": "active $1"
								}
							},
							{
								"box": {
									"id": "mc-loadbang",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"bang"
									],
									"patching_rect": [
										227,
										88,
										65,
										22
									],
									"text": "loadbang"
								}
							},
							{
								"box": {
									"id": "mc-init-trigger",
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
										227,
										145,
										95,
										22
									],
									"text": "t b b b b b"
								}
							},
							{
								"box": {
									"id": "mc-init-enable",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										273,
										176,
										32,
										22
									],
									"text": "0"
								}
							},
							{
								"box": {
									"id": "mc-init-mono",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										250,
										176,
										32,
										22
									],
									"text": "1"
								}
							},
							{
								"box": {
									"id": "mc-init-gain",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										227,
										176,
										32,
										22
									],
									"text": "0"
								}
							},
							{
								"box": {
									"id": "mc-init-threshold",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										320,
										176,
										45,
										22
									],
									"text": "-45."
								}
							},
							{
								"box": {
									"id": "mc-init-release",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										375,
										176,
										42,
										22
									],
									"text": "120"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mc-enable-out",
									"index": 2,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										71,
										322,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mc-mono-out",
									"index": 5,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										310,
										274,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mc-pair-out",
									"index": 8,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										431,
										274,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "Gate threshold default",
									"id": "mc-threshold-ui-out",
									"index": 9,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										480,
										274,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "Gate release default",
									"id": "mc-release-ui-out",
									"index": 10,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										535,
										274,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mc-enable-ui-out",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										40,
										405,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mc-pair-ui-out",
									"index": 6,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										341,
										274,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mc-mono-active-out",
									"index": 7,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										400,
										274,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mc-mono-ui-out",
									"index": 4,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										251,
										274,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mc-gain-ui-out",
									"index": 3,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										227,
										274,
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
									"destination": [
										"mc-enable-trigger",
										0
									],
									"source": [
										"mc-enable-receive",
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
									"destination": [
										"mc-enable-ui-out",
										0
									],
									"source": [
										"mc-enable-set",
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
									"destination": [
										"mc-enable-out",
										0
									],
									"source": [
										"mc-enable-trigger",
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
									"destination": [
										"mc-enable-set",
										0
									],
									"source": [
										"mc-enable-trigger",
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
									"destination": [
										"mc-enable-trigger",
										0
									],
									"source": [
										"mc-ext-clip",
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
									"destination": [
										"mc-ext-clip",
										0
									],
									"source": [
										"mc-ext-enable",
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
									"destination": [
										"mc-enable-send",
										0
									],
									"midpoints": [
										282.5,
										211,
										49.5,
										211
									],
									"source": [
										"mc-init-enable",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-gain-ui-out",
										0
									],
									"source": [
										"mc-init-gain",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-mono-ui-out",
										0
									],
									"source": [
										"mc-init-mono",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-init-enable",
										0
									],
									"source": [
										"mc-init-trigger",
										2
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-init-gain",
										0
									],
									"source": [
										"mc-init-trigger",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-init-mono",
										0
									],
									"source": [
										"mc-init-trigger",
										1
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-init-threshold",
										0
									],
									"source": [
										"mc-init-trigger",
										3
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-init-release",
										0
									],
									"source": [
										"mc-init-trigger",
										4
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-threshold-ui-out",
										0
									],
									"source": [
										"mc-init-threshold",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-release-ui-out",
										0
									],
									"source": [
										"mc-init-release",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-init-trigger",
										0
									],
									"source": [
										"mc-loadbang",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-mono-active-out",
										0
									],
									"source": [
										"mc-mono-active",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-mono-active",
										0
									],
									"source": [
										"mc-mono-active-test",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-mono-trigger",
										0
									],
									"source": [
										"mc-mono-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-mono-out",
										0
									],
									"source": [
										"mc-mono-trigger",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-pair-set",
										0
									],
									"source": [
										"mc-mono-trigger",
										1
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-pair-trigger",
										0
									],
									"source": [
										"mc-pair-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-pair-ui-out",
										0
									],
									"source": [
										"mc-pair-set",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-mono-active-test",
										0
									],
									"source": [
										"mc-pair-trigger",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-pair-out",
										0
									],
									"source": [
										"mc-pair-trigger",
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
									"destination": [
										"mc-enable-send",
										0
									],
									"midpoints": [
										193.5,
										211.24609375,
										49.5,
										211.24609375
									],
									"source": [
										"mc-ui-enable",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-mono-clip",
										0
									],
									"source": [
										"mc-ui-mono",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mc-pair-clip",
										0
									],
									"source": [
										"mc-ui-pair",
										0
									]
								}
							}
						],
						"originid": "pat-6"
					},
					"patching_rect": [
						437.3333463668823,
						54.66666793823242,
						110,
						22
					],
					"text": "p Mic_control"
				}
			},
			{
				"box": {
					"id": "p-Mic-input",
					"maxclass": "newobj",
					"numinlets": 5,
					"numoutlets": 3,
					"outlettype": [
						"signal",
						"signal",
						"int"
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
							102,
							980,
							940
						],
						"gridsize": [
							15,
							15
						],
						"boxes": [
							{
								"box": {
									"id": "mi-title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30,
										25,
										760,
										20
									],
									"text": "Mic input DSP: adc 1-8 -> mono/stereo routing -> linked noise gate -> enable ramp -> L/R"
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mi-enable",
									"index": 1,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										146,
										170,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mi-channel",
									"index": 2,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										250,
										170,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mi-pair",
									"index": 3,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										485,
										170,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "Gate threshold dBFS",
									"id": "mi-threshold",
									"index": 4,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"float"
									],
									"patching_rect": [
										650,
										170,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "Gate release ms",
									"id": "mi-release",
									"index": 5,
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										750,
										170,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "mi-enable-msg",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										146,
										230,
										55,
										22
									],
									"text": "$1 20"
								}
							},
							{
								"box": {
									"id": "mi-enable-line",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										146,
										275,
										50,
										22
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "mi-route-control",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										345,
										655,
										35,
										22
									],
									"text": "*~"
								}
							},
							{
								"box": {
									"id": "mi-channel-clip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										250,
										230,
										70,
										22
									],
									"text": "clip 1 8"
								}
							},
							{
								"box": {
									"id": "mi-channel-trigger",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": [
										"int",
										"int",
										"bang"
									],
									"patching_rect": [
										250,
										275,
										60,
										22
									],
									"text": "t i i b"
								}
							},
							{
								"box": {
									"id": "mi-channel-store",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										485,
										419,
										40,
										22
									],
									"text": "i 1"
								}
							},
							{
								"box": {
									"id": "mi-channel-delay",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										250,
										347,
										60,
										22
									],
									"text": "pipe 20"
								}
							},
							{
								"box": {
									"id": "mi-channel-apply",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 4,
									"outlettype": [
										"bang",
										"int",
										"int",
										"int"
									],
									"patching_rect": [
										250,
										387,
										75,
										22
									],
									"text": "t b i 0 0"
								}
							},
							{
								"box": {
									"id": "mi-pair-clip",
									"maxclass": "newobj",
									"numinlets": 3,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										485,
										230,
										70,
										22
									],
									"text": "clip 0 4"
								}
							},
							{
								"box": {
									"id": "mi-pair-trigger",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"int",
										"bang"
									],
									"patching_rect": [
										485,
										275,
										50,
										22
									],
									"text": "t i b"
								}
							},
							{
								"box": {
									"id": "mi-pair-delay",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										485,
										347,
										60,
										22
									],
									"text": "pipe 20"
								}
							},
							{
								"box": {
									"id": "mi-pair-sel",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"bang",
										""
									],
									"patching_rect": [
										485,
										387,
										50,
										22
									],
									"text": "sel 0"
								}
							},
							{
								"box": {
									"id": "mi-pair-off-apply",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 4,
									"outlettype": [
										"bang",
										"int",
										"int",
										"int"
									],
									"patching_rect": [
										485,
										451,
										75,
										22
									],
									"text": "t b i 0 0"
								}
							},
							{
								"box": {
									"id": "mi-pair-on-apply",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 4,
									"outlettype": [
										"bang",
										"int",
										"int",
										"int"
									],
									"patching_rect": [
										564,
										451,
										75,
										22
									],
									"text": "t b i i 0"
								}
							},
							{
								"box": {
									"id": "mi-route-down",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										591,
										347,
										48,
										22
									],
									"text": "0 20"
								}
							},
							{
								"box": {
									"id": "mi-route-up",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										670,
										499,
										48,
										22
									],
									"text": "1 20"
								}
							},
							{
								"box": {
									"id": "mi-route-line",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"signal",
										"bang"
									],
									"patching_rect": [
										591,
										585,
										50,
										22
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "mi-adc",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 8,
									"outlettype": [
										"signal",
										"signal",
										"signal",
										"signal",
										"signal",
										"signal",
										"signal",
										"signal"
									],
									"patching_rect": [
										259.5,
										499,
										190,
										22
									],
									"text": "adc~ 1 2 3 4 5 6 7 8"
								}
							},
							{
								"box": {
									"id": "mi-mono-selector",
									"maxclass": "newobj",
									"numinlets": 9,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										250,
										585,
										95,
										22
									],
									"text": "selector~ 8"
								}
							},
							{
								"box": {
									"id": "mi-pair-selector-l",
									"maxclass": "newobj",
									"numinlets": 5,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										367,
										585,
										95,
										22
									],
									"text": "selector~ 4"
								}
							},
							{
								"box": {
									"id": "mi-pair-selector-r",
									"maxclass": "newobj",
									"numinlets": 5,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										485,
										585,
										95,
										22
									],
									"text": "selector~ 4"
								}
							},
							{
								"box": {
									"id": "mi-sum-l",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										250,
										655,
										35,
										22
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "mi-sum-r",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										425,
										655,
										35,
										22
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "p-Mic-noise-gate",
									"maxclass": "newobj",
									"numinlets": 5,
									"numoutlets": 3,
									"outlettype": [
										"signal",
										"signal",
										"int"
									],
									"patching_rect": [
										250,
										710,
										160,
										22
									],
									"text": "p Noise_gate",
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
											900,
											650
										],
										"gridsize": [
											15,
											15
										],
										"boxes": [
											{
												"box": {
													"id": "ng-title",
													"maxclass": "comment",
													"text": "Linked stereo noise gate: either channel opens both / 5 ms attack / 40 ms hold",
													"patching_rect": [
														30,
														25,
														600,
														20
													]
												}
											},
											{
												"box": {
													"id": "ng-in-l",
													"maxclass": "inlet",
													"index": 1,
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														"signal"
													],
													"patching_rect": [
														60,
														80,
														30,
														30
													]
												}
											},
											{
												"box": {
													"id": "ng-in-r",
													"maxclass": "inlet",
													"index": 2,
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														"signal"
													],
													"patching_rect": [
														170,
														80,
														30,
														30
													]
												}
											},
											{
												"box": {
													"id": "ng-enable",
													"maxclass": "inlet",
													"index": 3,
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														"int"
													],
													"patching_rect": [
														330,
														80,
														30,
														30
													]
												}
											},
											{
												"box": {
													"id": "ng-threshold",
													"maxclass": "inlet",
													"index": 4,
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														"float"
													],
													"patching_rect": [
														470,
														80,
														30,
														30
													]
												}
											},
											{
												"box": {
													"id": "ng-release",
													"maxclass": "inlet",
													"index": 5,
													"numinlets": 0,
													"numoutlets": 1,
													"outlettype": [
														"int"
													],
													"patching_rect": [
														610,
														80,
														30,
														30
													]
												}
											},
											{
												"box": {
													"id": "ng-peak-l",
													"maxclass": "newobj",
													"text": "peakamp~ 10",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"float"
													],
													"patching_rect": [
														60,
														145,
														88,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-peak-r",
													"maxclass": "newobj",
													"text": "peakamp~ 10",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"float"
													],
													"patching_rect": [
														170,
														145,
														88,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-maximum",
													"maxclass": "newobj",
													"text": "maximum 0.",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"float"
													],
													"patching_rect": [
														110,
														205,
														90,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-atodb",
													"maxclass": "newobj",
													"text": "atodb",
													"numinlets": 1,
													"numoutlets": 1,
													"outlettype": [
														"float"
													],
													"patching_rect": [
														110,
														245,
														55,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-threshold-clip",
													"maxclass": "newobj",
													"text": "clip -70. -10.",
													"numinlets": 3,
													"numoutlets": 1,
													"outlettype": [
														"float"
													],
													"patching_rect": [
														470,
														145,
														105,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-compare",
													"maxclass": "newobj",
													"text": ">= -45.",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"int"
													],
													"patching_rect": [
														110,
														325,
														70,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-active-pak",
													"maxclass": "newobj",
													"text": "pak 0 0",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"list"
													],
													"patching_rect": [
														260,
														325,
														70,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-active",
													"maxclass": "newobj",
													"text": "expr $i1 && $i2",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"int"
													],
													"patching_rect": [
														260,
														365,
														120,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-change",
													"maxclass": "newobj",
													"text": "change",
													"numinlets": 1,
													"numoutlets": 3,
													"outlettype": [
														"int",
														"int",
														"int"
													],
													"patching_rect": [
														260,
														405,
														60,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-sel",
													"maxclass": "newobj",
													"text": "sel 1 0",
													"numinlets": 3,
													"numoutlets": 3,
													"outlettype": [
														"bang",
														"bang",
														""
													],
													"patching_rect": [
														260,
														445,
														60,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-open-trigger",
													"maxclass": "newobj",
													"text": "t b b b",
													"numinlets": 1,
													"numoutlets": 3,
													"outlettype": [
														"bang",
														"bang",
														"bang"
													],
													"patching_rect": [
														210,
														485,
														60,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-stop",
													"maxclass": "message",
													"text": "stop",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														340,
														485,
														42,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-open-state",
													"maxclass": "message",
													"text": "1",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"int"
													],
													"patching_rect": [
														210,
														525,
														32,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-open-ramp",
													"maxclass": "message",
													"text": "1. 5",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														260,
														525,
														45,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-close-delay",
													"maxclass": "newobj",
													"text": "delay 40",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"bang"
													],
													"patching_rect": [
														340,
														525,
														65,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-close-trigger",
													"maxclass": "newobj",
													"text": "t b b",
													"numinlets": 1,
													"numoutlets": 2,
													"outlettype": [
														"bang",
														"bang"
													],
													"patching_rect": [
														340,
														565,
														48,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-close-state",
													"maxclass": "message",
													"text": "0",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"int"
													],
													"patching_rect": [
														410,
														605,
														32,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-release-clip",
													"maxclass": "newobj",
													"text": "clip 20 500",
													"numinlets": 3,
													"numoutlets": 1,
													"outlettype": [
														"int"
													],
													"patching_rect": [
														610,
														145,
														85,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-release-store",
													"maxclass": "newobj",
													"text": "f 120.",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"float"
													],
													"patching_rect": [
														340,
														605,
														55,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-close-ramp",
													"maxclass": "message",
													"text": "0. $1",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														""
													],
													"patching_rect": [
														340,
														645,
														50,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-line",
													"maxclass": "newobj",
													"text": "line~",
													"numinlets": 2,
													"numoutlets": 2,
													"outlettype": [
														"signal",
														"bang"
													],
													"patching_rect": [
														260,
														605,
														50,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-gain-l",
													"maxclass": "newobj",
													"text": "*~ 0.",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"signal"
													],
													"patching_rect": [
														60,
														565,
														55,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-gain-r",
													"maxclass": "newobj",
													"text": "*~ 0.",
													"numinlets": 2,
													"numoutlets": 1,
													"outlettype": [
														"signal"
													],
													"patching_rect": [
														170,
														565,
														55,
														22
													]
												}
											},
											{
												"box": {
													"id": "ng-out-l",
													"maxclass": "outlet",
													"index": 1,
													"numinlets": 1,
													"numoutlets": 0,
													"patching_rect": [
														60,
														625,
														30,
														30
													]
												}
											},
											{
												"box": {
													"id": "ng-out-r",
													"maxclass": "outlet",
													"index": 2,
													"numinlets": 1,
													"numoutlets": 0,
													"patching_rect": [
														170,
														625,
														30,
														30
													]
												}
											},
											{
												"box": {
													"id": "ng-state-out",
													"maxclass": "outlet",
													"index": 3,
													"numinlets": 1,
													"numoutlets": 0,
													"patching_rect": [
														410,
														645,
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
														"ng-in-l",
														0
													],
													"destination": [
														"ng-peak-l",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-in-r",
														0
													],
													"destination": [
														"ng-peak-r",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-peak-l",
														0
													],
													"destination": [
														"ng-maximum",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-peak-r",
														0
													],
													"destination": [
														"ng-maximum",
														1
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-maximum",
														0
													],
													"destination": [
														"ng-atodb",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-atodb",
														0
													],
													"destination": [
														"ng-compare",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-threshold",
														0
													],
													"destination": [
														"ng-threshold-clip",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-threshold-clip",
														0
													],
													"destination": [
														"ng-compare",
														1
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-compare",
														0
													],
													"destination": [
														"ng-active-pak",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-enable",
														0
													],
													"destination": [
														"ng-active-pak",
														1
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-active-pak",
														0
													],
													"destination": [
														"ng-active",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-active",
														0
													],
													"destination": [
														"ng-change",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-change",
														0
													],
													"destination": [
														"ng-sel",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-sel",
														0
													],
													"destination": [
														"ng-open-trigger",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-open-trigger",
														2
													],
													"destination": [
														"ng-stop",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-stop",
														0
													],
													"destination": [
														"ng-close-delay",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-open-trigger",
														1
													],
													"destination": [
														"ng-open-state",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-open-state",
														0
													],
													"destination": [
														"ng-state-out",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-open-trigger",
														0
													],
													"destination": [
														"ng-open-ramp",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-open-ramp",
														0
													],
													"destination": [
														"ng-line",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-sel",
														1
													],
													"destination": [
														"ng-close-delay",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-close-delay",
														0
													],
													"destination": [
														"ng-close-trigger",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-close-trigger",
														1
													],
													"destination": [
														"ng-close-state",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-close-state",
														0
													],
													"destination": [
														"ng-state-out",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-release",
														0
													],
													"destination": [
														"ng-release-clip",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-release-clip",
														0
													],
													"destination": [
														"ng-release-store",
														1
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-close-trigger",
														0
													],
													"destination": [
														"ng-release-store",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-release-store",
														0
													],
													"destination": [
														"ng-close-ramp",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-close-ramp",
														0
													],
													"destination": [
														"ng-line",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-in-l",
														0
													],
													"destination": [
														"ng-gain-l",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-in-r",
														0
													],
													"destination": [
														"ng-gain-r",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-line",
														0
													],
													"destination": [
														"ng-gain-l",
														1
													],
													"order": 1
												}
											},
											{
												"patchline": {
													"source": [
														"ng-line",
														0
													],
													"destination": [
														"ng-gain-r",
														1
													],
													"order": 0
												}
											},
											{
												"patchline": {
													"source": [
														"ng-gain-l",
														0
													],
													"destination": [
														"ng-out-l",
														0
													]
												}
											},
											{
												"patchline": {
													"source": [
														"ng-gain-r",
														0
													],
													"destination": [
														"ng-out-r",
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
									"id": "mi-gate-l",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										250,
										765,
										55,
										22
									],
									"text": "*~ 0."
								}
							},
							{
								"box": {
									"id": "mi-gate-r",
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										425,
										765,
										55,
										22
									],
									"text": "*~ 0."
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mi-out-l",
									"index": 1,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										250,
										850,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "",
									"id": "mi-out-r",
									"index": 2,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										425,
										850,
										30,
										30
									]
								}
							},
							{
								"box": {
									"comment": "Gate open state",
									"id": "mi-gate-state-out",
									"index": 3,
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										575,
										850,
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
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-mono-selector",
										8
									],
									"midpoints": [
										440,
										553,
										335.5,
										553
									],
									"order": 1,
									"source": [
										"mi-adc",
										7
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-mono-selector",
										7
									],
									"midpoints": [
										415.57142857142856,
										553,
										326,
										553
									],
									"order": 1,
									"source": [
										"mi-adc",
										6
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-mono-selector",
										6
									],
									"midpoints": [
										391.1428571428571,
										553,
										316.5,
										553
									],
									"order": 1,
									"source": [
										"mi-adc",
										5
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-mono-selector",
										5
									],
									"midpoints": [
										366.7142857142857,
										553,
										307,
										553
									],
									"order": 1,
									"source": [
										"mi-adc",
										4
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-mono-selector",
										4
									],
									"midpoints": [
										342.2857142857143,
										553,
										297.5,
										553
									],
									"order": 1,
									"source": [
										"mi-adc",
										3
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-mono-selector",
										3
									],
									"midpoints": [
										317.85714285714283,
										553,
										288,
										553
									],
									"order": 1,
									"source": [
										"mi-adc",
										2
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-mono-selector",
										2
									],
									"midpoints": [
										293.42857142857144,
										553,
										278.5,
										553
									],
									"order": 1,
									"source": [
										"mi-adc",
										1
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-mono-selector",
										1
									],
									"midpoints": [
										269,
										553,
										269,
										553
									],
									"order": 1,
									"source": [
										"mi-adc",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-pair-selector-l",
										4
									],
									"midpoints": [
										415.57142857142856,
										553,
										452.5,
										553
									],
									"order": 0,
									"source": [
										"mi-adc",
										6
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-pair-selector-l",
										3
									],
									"midpoints": [
										366.7142857142857,
										553,
										433.5,
										553
									],
									"order": 0,
									"source": [
										"mi-adc",
										4
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-pair-selector-l",
										2
									],
									"midpoints": [
										317.85714285714283,
										553,
										414.5,
										553
									],
									"order": 0,
									"source": [
										"mi-adc",
										2
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-pair-selector-l",
										1
									],
									"midpoints": [
										269,
										553,
										395.5,
										553
									],
									"order": 0,
									"source": [
										"mi-adc",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-pair-selector-r",
										4
									],
									"midpoints": [
										440,
										553,
										570.5,
										553
									],
									"order": 0,
									"source": [
										"mi-adc",
										7
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-pair-selector-r",
										3
									],
									"midpoints": [
										391.1428571428571,
										553,
										551.5,
										553
									],
									"order": 0,
									"source": [
										"mi-adc",
										5
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-pair-selector-r",
										2
									],
									"midpoints": [
										342.2857142857143,
										553,
										532.5,
										553
									],
									"order": 0,
									"source": [
										"mi-adc",
										3
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-pair-selector-r",
										1
									],
									"midpoints": [
										293.42857142857144,
										553,
										513.5,
										553
									],
									"order": 0,
									"source": [
										"mi-adc",
										1
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-channel-clip",
										0
									],
									"source": [
										"mi-channel",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-mono-selector",
										0
									],
									"midpoints": [
										278.1666666666667,
										486.41015625,
										259.5,
										486.41015625
									],
									"source": [
										"mi-channel-apply",
										1
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-pair-selector-l",
										0
									],
									"midpoints": [
										296.8333333333333,
										529.20703125,
										376.5,
										529.20703125
									],
									"source": [
										"mi-channel-apply",
										2
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-pair-selector-r",
										0
									],
									"midpoints": [
										315.5,
										528.15234375,
										494.5,
										528.15234375
									],
									"source": [
										"mi-channel-apply",
										3
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-route-up",
										0
									],
									"midpoints": [
										259.5,
										486.4375,
										679.5,
										486.4375
									],
									"source": [
										"mi-channel-apply",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-channel-trigger",
										0
									],
									"source": [
										"mi-channel-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-channel-apply",
										0
									],
									"source": [
										"mi-channel-delay",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-pair-off-apply",
										0
									],
									"source": [
										"mi-channel-store",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-channel-delay",
										0
									],
									"source": [
										"mi-channel-trigger",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-channel-store",
										1
									],
									"midpoints": [
										280,
										321.94921875,
										515.5,
										321.94921875
									],
									"source": [
										"mi-channel-trigger",
										1
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-route-down",
										0
									],
									"midpoints": [
										300.5,
										322,
										600.5,
										322
									],
									"source": [
										"mi-channel-trigger",
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
									"destination": [
										"mi-enable-msg",
										0
									],
									"source": [
										"mi-enable",
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
									"destination": [
										"mi-route-control",
										0
									],
									"midpoints": [
										155.5,
										630.109375,
										354.5,
										630.109375
									],
									"source": [
										"mi-enable-line",
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
									"destination": [
										"mi-enable-line",
										0
									],
									"source": [
										"mi-enable-msg",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-out-l",
										0
									],
									"source": [
										"mi-gate-l",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-out-r",
										0
									],
									"source": [
										"mi-gate-r",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-sum-l",
										0
									],
									"order": 1,
									"source": [
										"mi-mono-selector",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-sum-r",
										0
									],
									"midpoints": [
										259.5,
										631,
										434.5,
										631
									],
									"order": 0,
									"source": [
										"mi-mono-selector",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-pair-clip",
										0
									],
									"source": [
										"mi-pair",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-pair-trigger",
										0
									],
									"source": [
										"mi-pair-clip",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-pair-sel",
										0
									],
									"source": [
										"mi-pair-delay",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-mono-selector",
										0
									],
									"midpoints": [
										513.1666666666667,
										529,
										259.5,
										529
									],
									"source": [
										"mi-pair-off-apply",
										1
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-pair-selector-l",
										0
									],
									"midpoints": [
										531.8333333333334,
										529,
										376.5,
										529
									],
									"source": [
										"mi-pair-off-apply",
										2
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-pair-selector-r",
										0
									],
									"midpoints": [
										550.5,
										529,
										494.5,
										529
									],
									"source": [
										"mi-pair-off-apply",
										3
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-route-up",
										0
									],
									"midpoints": [
										494.5,
										486,
										679.5,
										486
									],
									"source": [
										"mi-pair-off-apply",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-mono-selector",
										0
									],
									"midpoints": [
										629.5,
										529,
										259.5,
										529
									],
									"source": [
										"mi-pair-on-apply",
										3
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-pair-selector-l",
										0
									],
									"midpoints": [
										592.1666666666666,
										529,
										376.5,
										529
									],
									"source": [
										"mi-pair-on-apply",
										1
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-pair-selector-r",
										0
									],
									"midpoints": [
										610.8333333333334,
										529,
										494.5,
										529
									],
									"source": [
										"mi-pair-on-apply",
										2
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-route-up",
										0
									],
									"midpoints": [
										573.5,
										486,
										679.5,
										486
									],
									"source": [
										"mi-pair-on-apply",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-channel-store",
										0
									],
									"source": [
										"mi-pair-sel",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-pair-on-apply",
										0
									],
									"midpoints": [
										525.5,
										430,
										573.5,
										430
									],
									"source": [
										"mi-pair-sel",
										1
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-sum-l",
										1
									],
									"midpoints": [
										376.5,
										631,
										275.5,
										631
									],
									"source": [
										"mi-pair-selector-l",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-sum-r",
										1
									],
									"midpoints": [
										494.5,
										631,
										450.5,
										631
									],
									"source": [
										"mi-pair-selector-r",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-pair-delay",
										0
									],
									"source": [
										"mi-pair-trigger",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-route-down",
										0
									],
									"midpoints": [
										525.5,
										322,
										600.5,
										322
									],
									"source": [
										"mi-pair-trigger",
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
									"destination": [
										"mi-gate-l",
										1
									],
									"midpoints": [
										354.5,
										696,
										295.5,
										696
									],
									"order": 1,
									"source": [
										"mi-route-control",
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
									"destination": [
										"mi-gate-r",
										1
									],
									"midpoints": [
										354.5,
										696,
										470.5,
										696
									],
									"order": 0,
									"source": [
										"mi-route-control",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-route-line",
										0
									],
									"source": [
										"mi-route-down",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-route-control",
										1
									],
									"midpoints": [
										600.5,
										631,
										370.5,
										631
									],
									"source": [
										"mi-route-line",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-route-line",
										0
									],
									"midpoints": [
										679.5,
										553,
										600.5,
										553
									],
									"source": [
										"mi-route-up",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"p-Mic-noise-gate",
										0
									],
									"source": [
										"mi-sum-l",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"p-Mic-noise-gate",
										1
									],
									"source": [
										"mi-sum-r",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-gate-l",
										0
									],
									"source": [
										"p-Mic-noise-gate",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										0.68,
										0.95,
										0.34,
										1
									],
									"destination": [
										"mi-gate-r",
										0
									],
									"source": [
										"p-Mic-noise-gate",
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
									"destination": [
										"p-Mic-noise-gate",
										2
									],
									"source": [
										"mi-enable",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"p-Mic-noise-gate",
										3
									],
									"source": [
										"mi-threshold",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"p-Mic-noise-gate",
										4
									],
									"source": [
										"mi-release",
										0
									]
								}
							},
							{
								"patchline": {
									"color": [
										1,
										0.62,
										0.24,
										1
									],
									"destination": [
										"mi-gate-state-out",
										0
									],
									"source": [
										"p-Mic-noise-gate",
										2
									]
								}
							}
						],
						"originid": "pat-8"
					},
					"patching_rect": [
						437.3333463668823,
						114.00000303983688,
						150,
						22
					],
					"text": "p Mic_input"
				}
			},
			{
				"box": {
					"comment": "Mic audio L",
					"id": "m-out-l",
					"index": 0,
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						437.3333463668823,
						390,
						30,
						30
					]
				}
			},
			{
				"box": {
					"comment": "Mic audio R",
					"id": "m-out-r",
					"index": 0,
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						497.33334815502167,
						390,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "m-eq-open",
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
						620,
						54,
						84,
						24
					],
					"presentation": 1,
					"presentation_rect": [
						316,
						233,
						88,
						24
					],
					"varname": "mic_eq_open"
				}
			},
			{
				"box": {
					"id": "m-eq-open-msg",
					"maxclass": "message",
					"text": "open",
					"patching_rect": [
						620,
						90,
						45,
						22
					]
				}
			},
			{
				"box": {
					"id": "m-eq-pcontrol",
					"maxclass": "newobj",
					"text": "pcontrol",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						620,
						126,
						55,
						22
					]
				}
			},
			{
				"box": {
					"id": "p-Mic-eq",
					"maxclass": "newobj",
					"text": "p Mic_eq",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"signal"
					],
					"patching_rect": [
						437.3333463668823,
						158,
						150,
						22
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
							180,
							120,
							760,
							430
						],
						"openinpresentation": 1,
						"gridsize": [
							15,
							15
						],
						"boxes": [
							{
								"box": {
									"id": "eq-bg",
									"maxclass": "panel",
									"patching_rect": [
										0,
										0,
										760,
										430
									],
									"presentation": 1,
									"presentation_rect": [
										0,
										0,
										760,
										430
									],
									"bgcolor": [
										0.95,
										0.97,
										0.95,
										1
									],
									"background": 1,
									"ignoreclick": 1,
									"border": 0
								}
							},
							{
								"box": {
									"id": "eq-header",
									"maxclass": "panel",
									"patching_rect": [
										0,
										0,
										760,
										64
									],
									"presentation": 1,
									"presentation_rect": [
										0,
										0,
										760,
										64
									],
									"bgcolor": [
										0.12,
										0.23,
										0.19,
										1
									],
									"background": 0,
									"ignoreclick": 1,
									"border": 0
								}
							},
							{
								"box": {
									"id": "eq-title",
									"maxclass": "comment",
									"text": "MIC EQ · 7 BAND",
									"fontface": 1,
									"fontsize": 18,
									"textcolor": [
										0.96,
										0.98,
										0.96,
										1
									],
									"patching_rect": [
										24,
										18,
										260,
										28
									],
									"presentation": 1,
									"presentation_rect": [
										24,
										18,
										260,
										28
									]
								}
							},
							{
								"box": {
									"id": "eq-note",
									"maxclass": "comment",
									"text": "Drag a node, then refine its frequency, gain and Q.",
									"fontsize": 11,
									"textcolor": [
										0.7,
										0.78,
										0.73,
										1
									],
									"patching_rect": [
										372,
										22,
										360,
										20
									],
									"presentation": 1,
									"presentation_rect": [
										372,
										22,
										360,
										20
									],
									"textjustification": 2
								}
							},
							{
								"box": {
									"id": "eq-in-l",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"comment": "Mic audio L",
									"patching_rect": [
										30,
										470,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "eq-in-r",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"comment": "Mic audio R",
									"patching_rect": [
										130,
										470,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "eq-graph",
									"maxclass": "filtergraph~",
									"nfilters": 7,
									"autoout": 1,
									"numinlets": 8,
									"numoutlets": 7,
									"outlettype": [
										"list",
										"float",
										"float",
										"float",
										"float",
										"list",
										"int"
									],
									"varname": "mic_eq_graph",
									"parameter_enable": 0,
									"patching_rect": [
										24,
										84,
										712,
										210
									],
									"presentation": 1,
									"presentation_rect": [
										24,
										84,
										712,
										210
									],
									"bgcolor": [
										0.055,
										0.075,
										0.067,
										1
									],
									"curvecolor": [
										0.94,
										0.74,
										0.23,
										1
									],
									"hcurvecolor": [
										0.45,
										0.72,
										0.61,
										1
									],
									"markercolor": [
										0.25,
										0.34,
										0.3,
										1
									],
									"domain": [
										20,
										20000
									],
									"edit_filter": 0,
									"setfilter": [
										0,
										6,
										1,
										0,
										0,
										80,
										1,
										0.7,
										0,
										0,
										0,
										0,
										0,
										0,
										1,
										5,
										1,
										0,
										0,
										160,
										1,
										1,
										0,
										0,
										0,
										0,
										0,
										0,
										2,
										5,
										1,
										0,
										0,
										400,
										1,
										1,
										0,
										0,
										0,
										0,
										0,
										0,
										3,
										5,
										1,
										0,
										0,
										1000,
										1,
										1,
										0,
										0,
										0,
										0,
										0,
										0,
										4,
										5,
										1,
										0,
										0,
										3000,
										1,
										1,
										0,
										0,
										0,
										0,
										0,
										0,
										5,
										5,
										1,
										0,
										0,
										8000,
										1,
										1,
										0,
										0,
										0,
										0,
										0,
										0,
										6,
										7,
										1,
										0,
										0,
										12000,
										1,
										0.7,
										0,
										0,
										0,
										0,
										0,
										0
									]
								}
							},
							{
								"box": {
									"id": "eq-freq",
									"maxclass": "live.dial",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"float"
									],
									"parameter_enable": 1,
									"patching_rect": [
										134,
										340,
										82,
										62
									],
									"presentation": 1,
									"presentation_rect": [
										134,
										324,
										82,
										62
									],
									"saved_attribute_attributes": {
										"valueof": {
											"parameter_initial": [
												80
											],
											"parameter_initial_enable": 1,
											"parameter_longname": "Selected Band Frequency",
											"parameter_mmax": 20000,
											"parameter_mmin": 20,
											"parameter_modmode": 3,
											"parameter_shortname": "FREQ Hz",
											"parameter_type": 0,
											"parameter_unitstyle": 1,
											"parameter_exponent": 3
										}
									},
									"varname": "mic_eq_frequency"
								}
							},
							{
								"box": {
									"id": "eq-gain",
									"maxclass": "live.dial",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"float"
									],
									"parameter_enable": 1,
									"patching_rect": [
										262,
										340,
										82,
										62
									],
									"presentation": 1,
									"presentation_rect": [
										262,
										324,
										82,
										62
									],
									"saved_attribute_attributes": {
										"valueof": {
											"parameter_initial": [
												0
											],
											"parameter_initial_enable": 1,
											"parameter_longname": "Selected Band Gain",
											"parameter_mmax": 18,
											"parameter_mmin": -18,
											"parameter_modmode": 3,
											"parameter_shortname": "GAIN dB",
											"parameter_type": 0,
											"parameter_unitstyle": 1,
											"parameter_exponent": 1
										}
									},
									"varname": "mic_eq_gain_db"
								}
							},
							{
								"box": {
									"id": "eq-q",
									"maxclass": "live.dial",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										"float"
									],
									"parameter_enable": 1,
									"patching_rect": [
										390,
										340,
										82,
										62
									],
									"presentation": 1,
									"presentation_rect": [
										390,
										324,
										82,
										62
									],
									"saved_attribute_attributes": {
										"valueof": {
											"parameter_initial": [
												0.7
											],
											"parameter_initial_enable": 1,
											"parameter_longname": "Selected Band Q",
											"parameter_mmax": 10,
											"parameter_mmin": 0.1,
											"parameter_modmode": 3,
											"parameter_shortname": "Q",
											"parameter_type": 0,
											"parameter_unitstyle": 1,
											"parameter_exponent": 2
										}
									},
									"varname": "mic_eq_q"
								}
							},
							{
								"box": {
									"id": "eq-band-label",
									"maxclass": "comment",
									"text": "BAND",
									"fontface": 1,
									"fontsize": 10,
									"textcolor": [
										0.25,
										0.34,
										0.3,
										1
									],
									"patching_rect": [
										522,
										330,
										52,
										18
									],
									"presentation": 1,
									"presentation_rect": [
										522,
										330,
										52,
										18
									]
								}
							},
							{
								"box": {
									"id": "eq-band",
									"maxclass": "number",
									"minimum": 1,
									"maximum": 7,
									"patching_rect": [
										522,
										352,
										52,
										22
									],
									"presentation": 1,
									"presentation_rect": [
										522,
										352,
										52,
										22
									],
									"varname": "mic_eq_selected_band"
								}
							},
							{
								"box": {
									"id": "eq-flat",
									"maxclass": "textbutton",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"bang"
									],
									"mode": 0,
									"text": "FLAT",
									"rounded": 7,
									"bgcolor": [
										0.92,
										0.94,
										0.92,
										1
									],
									"textcolor": [
										0.17,
										0.29,
										0.24,
										1
									],
									"patching_rect": [
										620,
										344,
										92,
										32
									],
									"presentation": 1,
									"presentation_rect": [
										620,
										344,
										92,
										32
									],
									"varname": "mic_eq_flat"
								}
							},
							{
								"box": {
									"id": "eq-flat-msg",
									"maxclass": "message",
									"text": "flat 0 1 2 3 4 5 6, edit_filter 0, selectfilt 0, bang",
									"patching_rect": [
										620,
										470,
										235,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-dbtoa",
									"maxclass": "newobj",
									"text": "dbtoa",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										262,
										440,
										50,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-atodb",
									"maxclass": "newobj",
									"text": "atodb",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										262,
										510,
										50,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-freq-trigger",
									"maxclass": "newobj",
									"text": "t b f 0",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": [
										"bang",
										"float",
										"int"
									],
									"patching_rect": [
										134,
										410,
										55,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-gain-trigger",
									"maxclass": "newobj",
									"text": "t b f 0",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": [
										"bang",
										"float",
										"int"
									],
									"patching_rect": [
										262,
										410,
										55,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-q-trigger",
									"maxclass": "newobj",
									"text": "t b f 0",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": [
										"bang",
										"float",
										"int"
									],
									"patching_rect": [
										390,
										410,
										55,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-feedback-close",
									"maxclass": "newobj",
									"text": "t 0 0 0",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": [
										"int",
										"int",
										"int"
									],
									"patching_rect": [
										330,
										470,
										55,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-feedback-defer",
									"maxclass": "newobj",
									"text": "deferlow",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"bang"
									],
									"patching_rect": [
										390,
										470,
										58,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-feedback-open",
									"maxclass": "newobj",
									"text": "t 1 1 1",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": [
										"int",
										"int",
										"int"
									],
									"patching_rect": [
										390,
										510,
										55,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-feedback-freq",
									"maxclass": "newobj",
									"text": "gate 1 1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										20,
										410,
										55,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-feedback-gain",
									"maxclass": "newobj",
									"text": "gate 1 1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										20,
										450,
										55,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-feedback-q",
									"maxclass": "newobj",
									"text": "gate 1 1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										20,
										490,
										55,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-set-freq",
									"maxclass": "newobj",
									"text": "prepend set",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										80,
										410,
										74,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-set-gain",
									"maxclass": "newobj",
									"text": "prepend set",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										80,
										450,
										74,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-set-q",
									"maxclass": "newobj",
									"text": "prepend set",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										80,
										490,
										74,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-band-plus",
									"maxclass": "newobj",
									"text": "+ 1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										522,
										520,
										35,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-band-set",
									"maxclass": "newobj",
									"text": "prepend set",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										562,
										520,
										74,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-band-minus",
									"maxclass": "newobj",
									"text": "- 1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										522,
										552,
										35,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-band-select",
									"maxclass": "message",
									"text": "selectfilt $1, bang",
									"patching_rect": [
										522,
										582,
										145,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-selected-pattr",
									"maxclass": "newobj",
									"text": "pattr eq_selected_filter @bindto mic_eq_graph::edit_filter @autorestore 0",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": [
										"",
										"",
										""
									],
									"patching_rect": [
										20,
										540,
										420,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-selected-trigger",
									"maxclass": "newobj",
									"text": "t i i",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"int",
										"int"
									],
									"patching_rect": [
										20,
										570,
										38,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-index-match",
									"maxclass": "newobj",
									"text": "== 0",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										70,
										570,
										38,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-index-gates",
									"maxclass": "newobj",
									"text": "t i i i",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": [
										"int",
										"int",
										"int"
									],
									"patching_rect": [
										120,
										570,
										52,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-selected-freq",
									"maxclass": "newobj",
									"text": "gate 1 1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										180,
										540,
										55,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-selected-gain",
									"maxclass": "newobj",
									"text": "gate 1 1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										240,
										540,
										55,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-selected-q",
									"maxclass": "newobj",
									"text": "gate 1 1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										300,
										540,
										55,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-band-trigger",
									"maxclass": "newobj",
									"text": "t i i",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"int",
										"int"
									],
									"patching_rect": [
										522,
										576,
										38,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-selection-watch",
									"maxclass": "newobj",
									"text": "js Patcher:/../../javascript/mt_filtergraph_selection.js",
									"numinlets": 4,
									"numoutlets": 1,
									"outlettype": [
										"int"
									],
									"patching_rect": [
										370,
										570,
										188,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-mouse-state",
									"maxclass": "newobj",
									"text": "mousestate",
									"numinlets": 1,
									"numoutlets": 10,
									"outlettype": [
										"int",
										"int",
										"int",
										"int",
										"int",
										"int",
										"int",
										"int",
										"int",
										"list"
									],
									"patching_rect": [
										570,
										570,
										70,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-mouse-start",
									"maxclass": "message",
									"text": "mode 1",
									"patching_rect": [
										650,
										570,
										85,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-mouse-poll",
									"maxclass": "newobj",
									"text": "qmetro 20 @active 1",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"bang"
									],
									"patching_rect": [
										650,
										600,
										130,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-filter-state",
									"maxclass": "newobj",
									"text": "pak i f f f",
									"numinlets": 4,
									"numoutlets": 1,
									"outlettype": [
										"list"
									],
									"patching_rect": [
										370,
										600,
										70,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-cascade-l",
									"maxclass": "newobj",
									"text": "cascade~",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										30,
										600,
										66,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-cascade-r",
									"maxclass": "newobj",
									"text": "cascade~",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										130,
										600,
										66,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-out-l",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"comment": "EQ audio L",
									"patching_rect": [
										30,
										670,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "eq-out-r",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"comment": "EQ audio R",
									"patching_rect": [
										130,
										670,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "eq-loadbang",
									"maxclass": "newobj",
									"text": "loadbang",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										"bang"
									],
									"patching_rect": [
										620,
										520,
										60,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-init-trigger",
									"maxclass": "newobj",
									"text": "t b b b b b b b b",
									"numinlets": 1,
									"numoutlets": 8,
									"outlettype": [
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
										620,
										555,
										140,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-constraint-0",
									"maxclass": "message",
									"text": "setconstraints 0 20 20000 0.1258925 7.943282 0.1 10.",
									"patching_rect": [
										300,
										600,
										320,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-constraint-1",
									"maxclass": "message",
									"text": "setconstraints 1 20 20000 0.1258925 7.943282 0.1 10.",
									"patching_rect": [
										300,
										628,
										320,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-constraint-2",
									"maxclass": "message",
									"text": "setconstraints 2 20 20000 0.1258925 7.943282 0.1 10.",
									"patching_rect": [
										300,
										656,
										320,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-constraint-3",
									"maxclass": "message",
									"text": "setconstraints 3 20 20000 0.1258925 7.943282 0.1 10.",
									"patching_rect": [
										300,
										684,
										320,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-constraint-4",
									"maxclass": "message",
									"text": "setconstraints 4 20 20000 0.1258925 7.943282 0.1 10.",
									"patching_rect": [
										300,
										712,
										320,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-constraint-5",
									"maxclass": "message",
									"text": "setconstraints 5 20 20000 0.1258925 7.943282 0.1 10.",
									"patching_rect": [
										300,
										740,
										320,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-constraint-6",
									"maxclass": "message",
									"text": "setconstraints 6 20 20000 0.1258925 7.943282 0.1 10.",
									"patching_rect": [
										300,
										768,
										320,
										22
									]
								}
							},
							{
								"box": {
									"id": "eq-init-query",
									"maxclass": "message",
									"text": "edit_filter 0, selectfilt 0, bang",
									"patching_rect": [
										630,
										790,
										110,
										22
									]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"source": [
										"eq-in-l",
										0
									],
									"destination": [
										"eq-cascade-l",
										0
									],
									"color": [
										0.68,
										0.95,
										0.34,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-in-r",
										0
									],
									"destination": [
										"eq-cascade-r",
										0
									],
									"color": [
										0.68,
										0.95,
										0.34,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-graph",
										0
									],
									"destination": [
										"eq-cascade-l",
										1
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-graph",
										0
									],
									"destination": [
										"eq-cascade-r",
										1
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-cascade-l",
										0
									],
									"destination": [
										"eq-out-l",
										0
									],
									"color": [
										0.68,
										0.95,
										0.34,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-cascade-r",
										0
									],
									"destination": [
										"eq-out-r",
										0
									],
									"color": [
										0.68,
										0.95,
										0.34,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-freq",
										0
									],
									"destination": [
										"eq-freq-trigger",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-freq-trigger",
										1
									],
									"destination": [
										"eq-graph",
										5
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-gain",
										0
									],
									"destination": [
										"eq-gain-trigger",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-gain-trigger",
										1
									],
									"destination": [
										"eq-dbtoa",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-dbtoa",
										0
									],
									"destination": [
										"eq-graph",
										6
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-q",
										0
									],
									"destination": [
										"eq-q-trigger",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-q-trigger",
										1
									],
									"destination": [
										"eq-graph",
										7
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-graph",
										6
									],
									"destination": [
										"eq-index-match",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-selected-pattr",
										0
									],
									"destination": [
										"eq-selected-trigger",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-selected-trigger",
										1
									],
									"destination": [
										"eq-index-match",
										1
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-selected-trigger",
										0
									],
									"destination": [
										"eq-band-plus",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-index-match",
										0
									],
									"destination": [
										"eq-index-gates",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-index-gates",
										0
									],
									"destination": [
										"eq-selected-freq",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-index-gates",
										1
									],
									"destination": [
										"eq-selected-gain",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-index-gates",
										2
									],
									"destination": [
										"eq-selected-q",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-band-plus",
										0
									],
									"destination": [
										"eq-band-set",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-band-set",
										0
									],
									"destination": [
										"eq-band",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-band",
										0
									],
									"destination": [
										"eq-band-minus",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-band-minus",
										0
									],
									"destination": [
										"eq-band-trigger",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-band-trigger",
										1
									],
									"destination": [
										"eq-selected-pattr",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-band-trigger",
										0
									],
									"destination": [
										"eq-band-select",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-band-select",
										0
									],
									"destination": [
										"eq-graph",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-selection-watch",
										0
									],
									"destination": [
										"eq-band",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-mouse-state",
										0
									],
									"destination": [
										"eq-selection-watch",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-mouse-state",
										1
									],
									"destination": [
										"eq-selection-watch",
										1
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-mouse-state",
										2
									],
									"destination": [
										"eq-selection-watch",
										2
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-mouse-start",
										0
									],
									"destination": [
										"eq-mouse-state",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-mouse-poll",
										0
									],
									"destination": [
										"eq-mouse-state",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-filter-state",
										0
									],
									"destination": [
										"eq-selection-watch",
										3
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-graph",
										6
									],
									"destination": [
										"eq-filter-state",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-graph",
										1
									],
									"destination": [
										"eq-filter-state",
										1
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-graph",
										2
									],
									"destination": [
										"eq-filter-state",
										2
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-graph",
										3
									],
									"destination": [
										"eq-filter-state",
										3
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-graph",
										1
									],
									"destination": [
										"eq-selected-freq",
										1
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-selected-freq",
										0
									],
									"destination": [
										"eq-feedback-freq",
										1
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-feedback-freq",
										0
									],
									"destination": [
										"eq-set-freq",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-set-freq",
										0
									],
									"destination": [
										"eq-freq",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-graph",
										2
									],
									"destination": [
										"eq-atodb",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-atodb",
										0
									],
									"destination": [
										"eq-selected-gain",
										1
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-selected-gain",
										0
									],
									"destination": [
										"eq-feedback-gain",
										1
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-feedback-gain",
										0
									],
									"destination": [
										"eq-set-gain",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-set-gain",
										0
									],
									"destination": [
										"eq-gain",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-graph",
										3
									],
									"destination": [
										"eq-selected-q",
										1
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-selected-q",
										0
									],
									"destination": [
										"eq-feedback-q",
										1
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-feedback-q",
										0
									],
									"destination": [
										"eq-set-q",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-set-q",
										0
									],
									"destination": [
										"eq-q",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-freq-trigger",
										2
									],
									"destination": [
										"eq-feedback-close",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-gain-trigger",
										2
									],
									"destination": [
										"eq-feedback-close",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-q-trigger",
										2
									],
									"destination": [
										"eq-feedback-close",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-freq-trigger",
										0
									],
									"destination": [
										"eq-feedback-defer",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-gain-trigger",
										0
									],
									"destination": [
										"eq-feedback-defer",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-q-trigger",
										0
									],
									"destination": [
										"eq-feedback-defer",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-feedback-defer",
										0
									],
									"destination": [
										"eq-feedback-open",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-feedback-close",
										0
									],
									"destination": [
										"eq-feedback-freq",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-feedback-close",
										1
									],
									"destination": [
										"eq-feedback-gain",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-feedback-close",
										2
									],
									"destination": [
										"eq-feedback-q",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-feedback-open",
										0
									],
									"destination": [
										"eq-feedback-freq",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-feedback-open",
										1
									],
									"destination": [
										"eq-feedback-gain",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-feedback-open",
										2
									],
									"destination": [
										"eq-feedback-q",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-flat",
										0
									],
									"destination": [
										"eq-flat-msg",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-flat-msg",
										0
									],
									"destination": [
										"eq-graph",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-loadbang",
										0
									],
									"destination": [
										"eq-init-trigger",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-loadbang",
										0
									],
									"destination": [
										"eq-mouse-start",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-init-trigger",
										7
									],
									"destination": [
										"eq-constraint-0",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-init-trigger",
										6
									],
									"destination": [
										"eq-constraint-1",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-init-trigger",
										5
									],
									"destination": [
										"eq-constraint-2",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-init-trigger",
										4
									],
									"destination": [
										"eq-constraint-3",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-init-trigger",
										3
									],
									"destination": [
										"eq-constraint-4",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-init-trigger",
										2
									],
									"destination": [
										"eq-constraint-5",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-init-trigger",
										1
									],
									"destination": [
										"eq-constraint-6",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-constraint-0",
										0
									],
									"destination": [
										"eq-graph",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-constraint-1",
										0
									],
									"destination": [
										"eq-graph",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-constraint-2",
										0
									],
									"destination": [
										"eq-graph",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-constraint-3",
										0
									],
									"destination": [
										"eq-graph",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-constraint-4",
										0
									],
									"destination": [
										"eq-graph",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-constraint-5",
										0
									],
									"destination": [
										"eq-graph",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-constraint-6",
										0
									],
									"destination": [
										"eq-graph",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-init-trigger",
										0
									],
									"destination": [
										"eq-init-query",
										0
									],
									"color": [
										0.44,
										0.72,
										1,
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"eq-init-query",
										0
									],
									"destination": [
										"eq-graph",
										0
									],
									"color": [
										1,
										0.62,
										0.24,
										1
									]
								}
							}
						]
					}
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"color": [
						1,
						0.62,
						0.24,
						1
					],
					"destination": [
						"p-Mic-control",
						2
					],
					"midpoints": [
						147.5,
						44.64843450929038,
						428.71094703309547,
						44.64843450929038,
						428.71094703309547,
						44.66666793823242,
						507.50001303354895,
						44.66666793823242
					],
					"source": [
						"m-channel",
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
					"destination": [
						"p-Mic-control",
						1
					],
					"midpoints": [
						52.5,
						44.9999974668026,
						264.8333398501078,
						44.9999974668026,
						264.8333398501078,
						45.17187628662214,
						477.16667970021564,
						45.17187628662214
					],
					"source": [
						"m-enable",
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
					"destination": [
						"p-Mic-control",
						0
					],
					"source": [
						"m-ext-enable",
						0
					]
				}
			},
			{
				"patchline": {
					"color": [
						1,
						0.62,
						0.24,
						1
					],
					"destination": [
						"m-threshold",
						0
					],
					"source": [
						"p-Mic-control",
						8
					]
				}
			},
			{
				"patchline": {
					"color": [
						1,
						0.62,
						0.24,
						1
					],
					"destination": [
						"m-release",
						0
					],
					"source": [
						"p-Mic-control",
						9
					]
				}
			},
			{
				"patchline": {
					"color": [
						1,
						0.62,
						0.24,
						1
					],
					"destination": [
						"p-Mic-input",
						3
					],
					"source": [
						"m-threshold",
						0
					]
				}
			},
			{
				"patchline": {
					"color": [
						1,
						0.62,
						0.24,
						1
					],
					"destination": [
						"p-Mic-input",
						4
					],
					"source": [
						"m-release",
						0
					]
				}
			},
			{
				"patchline": {
					"color": [
						1,
						0.62,
						0.24,
						1
					],
					"destination": [
						"m-gate-state",
						0
					],
					"source": [
						"p-Mic-input",
						2
					]
				}
			},
			{
				"patchline": {
					"color": [
						0.68,
						0.95,
						0.34,
						1
					],
					"destination": [
						"m-out-l",
						0
					],
					"source": [
						"m-gain",
						0
					]
				}
			},
			{
				"patchline": {
					"color": [
						0.68,
						0.95,
						0.34,
						1
					],
					"destination": [
						"m-out-r",
						0
					],
					"midpoints": [
						451.0833463668823,
						314.50000685453415,
						506.83334815502167,
						314.50000685453415
					],
					"source": [
						"m-gain",
						1
					]
				}
			},
			{
				"patchline": {
					"color": [
						1,
						0.62,
						0.24,
						1
					],
					"destination": [
						"p-Mic-control",
						3
					],
					"midpoints": [
						246.5,
						44.58853733306751,
						429.53125763032585,
						44.58853733306751,
						429.53125763032585,
						44.66666793823242,
						537.8333463668823,
						44.66666793823242
					],
					"source": [
						"m-pair",
						0
					]
				}
			},
			{
				"patchline": {
					"color": [
						1,
						0.62,
						0.24,
						1
					],
					"destination": [
						"m-channel",
						0
					],
					"midpoints": [
						524.8333463668823,
						94.83333396911621,
						147.5,
						94.83333396911621
					],
					"source": [
						"p-Mic-control",
						6
					]
				}
			},
			{
				"patchline": {
					"color": [
						1,
						0.62,
						0.24,
						1
					],
					"destination": [
						"m-channel",
						0
					],
					"midpoints": [
						485.8333463668823,
						94.83333396911621,
						147.5,
						94.83333396911621
					],
					"source": [
						"p-Mic-control",
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
					"destination": [
						"m-enable",
						0
					],
					"midpoints": [
						446.8333463668823,
						95.01127084670588,
						52.5,
						95.01127084670588
					],
					"source": [
						"p-Mic-control",
						0
					]
				}
			},
			{
				"patchline": {
					"color": [
						1,
						0.62,
						0.24,
						1
					],
					"destination": [
						"m-gain",
						0
					],
					"midpoints": [
						472.8333463668823,
						93.41128035262227,
						446.8333463668823,
						93.41128035262227
					],
					"source": [
						"p-Mic-control",
						2
					]
				}
			},
			{
				"patchline": {
					"color": [
						1,
						0.62,
						0.24,
						1
					],
					"destination": [
						"m-pair",
						0
					],
					"midpoints": [
						511.8333463668823,
						94.22315114084631,
						246.5,
						94.22315114084631
					],
					"source": [
						"p-Mic-control",
						5
					]
				}
			},
			{
				"patchline": {
					"color": [
						1,
						0.62,
						0.24,
						1
					],
					"destination": [
						"p-Mic-input",
						2
					],
					"midpoints": [
						537.8333463668823,
						95.33333548903465,
						537.8333463668823,
						95.33333548903465
					],
					"source": [
						"p-Mic-control",
						7
					]
				}
			},
			{
				"patchline": {
					"color": [
						1,
						0.62,
						0.24,
						1
					],
					"destination": [
						"p-Mic-input",
						1
					],
					"midpoints": [
						498.8333463668823,
						95.33333548903465,
						492.3333463668823,
						95.33333548903465
					],
					"source": [
						"p-Mic-control",
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
					"destination": [
						"p-Mic-input",
						0
					],
					"midpoints": [
						459.8333463668823,
						95.33333548903465,
						446.8333463668823,
						95.33333548903465
					],
					"source": [
						"p-Mic-control",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Mic-input",
						0
					],
					"destination": [
						"p-Mic-eq",
						0
					],
					"color": [
						0.68,
						0.95,
						0.34,
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Mic-input",
						1
					],
					"destination": [
						"p-Mic-eq",
						1
					],
					"color": [
						0.68,
						0.95,
						0.34,
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Mic-eq",
						0
					],
					"destination": [
						"m-gain",
						0
					],
					"color": [
						0.68,
						0.95,
						0.34,
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Mic-eq",
						1
					],
					"destination": [
						"m-gain",
						1
					],
					"color": [
						0.68,
						0.95,
						0.34,
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"m-eq-open",
						0
					],
					"destination": [
						"m-eq-open-msg",
						0
					],
					"color": [
						0.44,
						0.72,
						1,
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"m-eq-open-msg",
						0
					],
					"destination": [
						"m-eq-pcontrol",
						0
					],
					"color": [
						0.44,
						0.72,
						1,
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"m-eq-pcontrol",
						0
					],
					"destination": [
						"p-Mic-eq",
						0
					],
					"color": [
						0.44,
						0.72,
						1,
						1
					]
				}
			}
		],
		"originid": "pat-4",
		"parameters": {
			"m-gain": [
				"mic_output_gain",
				"Mic Input",
				0
			],
			"p-Mic-eq::eq-freq": [
				"mic_eq_frequency",
				"FREQ Hz",
				0
			],
			"p-Mic-eq::eq-gain": [
				"mic_eq_gain_db",
				"GAIN dB",
				0
			],
			"p-Mic-eq::eq-q": [
				"mic_eq_q",
				"Q",
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
			"inherited_shortname": 1
		},
		"dependency_cache": [
			{
				"name": "mic_panel_v1.png",
				"patcherrelativepath": ".",
				"type": "PNG",
				"implicit": 1
			}
		],
		"autosave": 0
	}
}
