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
			1100,
			850
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
					"id": "fx-shell-note",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						20,
						10,
						760,
						20
					],
					"text": "FX RETURN SHELL: dry + four pure-wet returns -> master"
				}
			},
			{
				"box": {
					"id": "fx-dry-l",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"index": 1,
					"comment": "Dry audio L",
					"patching_rect": [
						20,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-dry-r",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"index": 2,
					"comment": "Dry audio R",
					"patching_rect": [
						62,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-voc-l",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"index": 3,
					"comment": "Vocoder return L",
					"patching_rect": [
						104,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-voc-r",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"index": 4,
					"comment": "Vocoder return R",
					"patching_rect": [
						146,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-bit-l",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"index": 5,
					"comment": "Bitcrusher return L",
					"patching_rect": [
						188,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-bit-r",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"index": 6,
					"comment": "Bitcrusher return R",
					"patching_rect": [
						230,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-delay-l",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"index": 7,
					"comment": "Feedback Delay return L",
					"patching_rect": [
						272,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-delay-r",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"index": 8,
					"comment": "Feedback Delay return R",
					"patching_rect": [
						314,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-multi-l",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"index": 9,
					"comment": "Multiband return L",
					"patching_rect": [
						356,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-multi-r",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"index": 10,
					"comment": "Multiband return R",
					"patching_rect": [
						398,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-dry-enable-in",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"index": 11,
					"comment": "Dry Enable 0/1",
					"patching_rect": [
						440,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-voc-enable-in",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"index": 12,
					"comment": "Vocoder Enable 0/1",
					"patching_rect": [
						482,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-bit-enable-in",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"index": 13,
					"comment": "Bitcrusher Enable 0/1",
					"patching_rect": [
						524,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-delay-enable-in",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"index": 14,
					"comment": "Feedback Delay Enable 0/1",
					"patching_rect": [
						566,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-multi-enable-in",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"index": 15,
					"comment": "Multiband Enable 0/1",
					"patching_rect": [
						608,
						40,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-dry-enable",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						111,
						345,
						24,
						24
					],
					"presentation": 1,
					"presentation_rect": [
						111,
						57,
						24,
						24
					],
					"varname": "fx_return_dry_enable"
				}
			},
			{
				"box": {
					"id": "fx-dry-gain",
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
						75,
						600,
						54,
						139
					],
					"presentation": 1,
					"presentation_rect": [
						75,
						108,
						54,
						139
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_initial": [
								0
							],
							"parameter_longname": "fx_return_dry_gain",
							"parameter_mmax": 6,
							"parameter_mmin": -70,
							"parameter_modmode": 0,
							"parameter_shortname": "Original",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"showname": 0,
					"varname": "fx_return_dry_gain"
				}
			},
			{
				"box": {
					"id": "fx-voc-enable",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						256,
						345,
						24,
						24
					],
					"presentation": 1,
					"presentation_rect": [
						256,
						57,
						24,
						24
					],
					"varname": "fx_return_vocoder_enable"
				}
			},
			{
				"box": {
					"id": "fx-voc-gain",
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
						220,
						600,
						54,
						139
					],
					"presentation": 1,
					"presentation_rect": [
						220,
						108,
						54,
						139
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_initial": [
								-10
							],
							"parameter_longname": "fx_return_dry_gain",
							"parameter_mmax": 6,
							"parameter_mmin": -70,
							"parameter_modmode": 0,
							"parameter_shortname": "Original",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"showname": 0,
					"varname": "fx_return_vocoder_gain"
				}
			},
			{
				"box": {
					"id": "fx-bit-enable",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						401,
						345,
						24,
						24
					],
					"presentation": 1,
					"presentation_rect": [
						401,
						57,
						24,
						24
					],
					"varname": "fx_return_bitcrusher_enable"
				}
			},
			{
				"box": {
					"id": "fx-bit-gain",
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
						365,
						600,
						54,
						139
					],
					"presentation": 1,
					"presentation_rect": [
						365,
						108,
						54,
						139
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_initial": [
								0
							],
							"parameter_longname": "fx_return_dry_gain",
							"parameter_mmax": 6,
							"parameter_mmin": -70,
							"parameter_modmode": 0,
							"parameter_shortname": "Original",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"showname": 0,
					"varname": "fx_return_bitcrusher_gain"
				}
			},
			{
				"box": {
					"id": "fx-delay-enable",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						546,
						345,
						24,
						24
					],
					"presentation": 1,
					"presentation_rect": [
						546,
						57,
						24,
						24
					],
					"varname": "fx_return_feedback_delay_enable"
				}
			},
			{
				"box": {
					"id": "fx-delay-gain",
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
						510,
						600,
						54,
						139
					],
					"presentation": 1,
					"presentation_rect": [
						510,
						108,
						54,
						139
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_initial": [
								-10
							],
							"parameter_longname": "fx_return_dry_gain",
							"parameter_mmax": 6,
							"parameter_mmin": -70,
							"parameter_modmode": 0,
							"parameter_shortname": "Original",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"showname": 0,
					"varname": "fx_return_feedback_delay_gain"
				}
			},
			{
				"box": {
					"id": "fx-multi-enable",
					"maxclass": "toggle",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"parameter_enable": 0,
					"patching_rect": [
						691,
						345,
						24,
						24
					],
					"presentation": 1,
					"presentation_rect": [
						691,
						57,
						24,
						24
					],
					"varname": "fx_return_multiband_enable"
				}
			},
			{
				"box": {
					"id": "fx-multi-gain",
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
						655,
						600,
						54,
						139
					],
					"presentation": 1,
					"presentation_rect": [
						655,
						108,
						54,
						139
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_initial": [
								-10
							],
							"parameter_longname": "fx_return_dry_gain",
							"parameter_mmax": 6,
							"parameter_mmin": -70,
							"parameter_modmode": 0,
							"parameter_shortname": "Original",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"showname": 0,
					"varname": "fx_return_multiband_gain"
				}
			},
			{
				"box": {
					"id": "fx-master",
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
						741,
						600,
						54,
						144
					],
					"presentation": 1,
					"presentation_rect": [
						741,
						103,
						54,
						144
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_initial": [
								-10
							],
							"parameter_longname": "fx_return_master_gain",
							"parameter_mmax": 6,
							"parameter_mmin": -70,
							"parameter_modmode": 0,
							"parameter_shortname": "FX Master",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"showname": 0,
					"varname": "fx_return_master_gain"
				}
			},
			{
				"box": {
					"id": "fx-meter-l",
					"maxclass": "meter~",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						815,
						600,
						12,
						150
					],
					"presentation": 1,
					"presentation_rect": [
						815,
						96,
						12,
						150
					]
				}
			},
			{
				"box": {
					"id": "fx-meter-r",
					"maxclass": "meter~",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						835,
						600,
						12,
						150
					],
					"presentation": 1,
					"presentation_rect": [
						835,
						96,
						12,
						150
					]
				}
			},
			{
				"box": {
					"id": "p-Return-lanes",
					"maxclass": "newobj",
					"numinlets": 20,
					"numoutlets": 19,
					"outlettype": [
						"signal",
						"signal",
						"signal",
						"signal",
						"signal",
						"signal",
						"signal",
						"signal",
						"signal",
						"signal",
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
						20,
						430,
						150,
						22
					],
					"text": "p Return_lanes",
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
							980,
							790
						],
						"gridsize": [
							15,
							15
						],
						"boxes": [
							{
								"box": {
									"id": "fxc-title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										10,
										800,
										20
									],
									"text": "RETURN_LANES: five stereo returns -> 20 ms enable ramps"
								}
							},
							{
								"box": {
									"id": "fxc-dry-l",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 1,
									"comment": "",
									"patching_rect": [
										30,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-dry-r",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 2,
									"comment": "",
									"patching_rect": [
										72,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-dry-ext",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"index": 11,
									"comment": "",
									"patching_rect": [
										450,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-dry-local",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"index": 16,
									"comment": "",
									"patching_rect": [
										660,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-dry-ext-route",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										114,
										105,
										45,
										22
									],
									"text": "t i i"
								}
							},
							{
								"box": {
									"id": "fxc-dry-ui-set",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										114,
										145,
										58,
										22
									],
									"text": "set $1"
								}
							},
							{
								"box": {
									"id": "fxc-dry-msg",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										30,
										225,
										58,
										22
									],
									"text": "$1 20"
								}
							},
							{
								"box": {
									"id": "fxc-dry-line",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										30,
										265,
										50,
										22
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "fxc-dry-gate-l",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										30,
										325,
										55,
										22
									],
									"text": "*~ 0."
								}
							},
							{
								"box": {
									"id": "fxc-dry-gate-r",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										102,
										325,
										55,
										22
									],
									"text": "*~ 0."
								}
							},
							{
								"box": {
									"id": "fxc-dry-out-l",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 1,
									"comment": "",
									"patching_rect": [
										30,
										720,
										30,
										30
									],
									"outlettype": [
										"signal"
									]
								}
							},
							{
								"box": {
									"id": "fxc-dry-out-r",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 2,
									"comment": "",
									"patching_rect": [
										72,
										720,
										30,
										30
									],
									"outlettype": [
										"signal"
									]
								}
							},
							{
								"box": {
									"id": "fxc-dry-ui-out",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 11,
									"comment": "",
									"patching_rect": [
										450,
										720,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-dry-default",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										30,
										105,
										90,
										22
									],
									"text": "loadmess 1"
								}
							},
							{
								"box": {
									"id": "fxc-voc-l",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 3,
									"comment": "",
									"patching_rect": [
										114,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-voc-r",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 4,
									"comment": "",
									"patching_rect": [
										156,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-voc-ext",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"index": 12,
									"comment": "",
									"patching_rect": [
										492,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-voc-local",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"index": 17,
									"comment": "",
									"patching_rect": [
										702,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-voc-ext-route",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										284,
										105,
										45,
										22
									],
									"text": "t i i"
								}
							},
							{
								"box": {
									"id": "fxc-voc-ui-set",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										284,
										145,
										58,
										22
									],
									"text": "set $1"
								}
							},
							{
								"box": {
									"id": "fxc-voc-msg",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										200,
										225,
										58,
										22
									],
									"text": "$1 20"
								}
							},
							{
								"box": {
									"id": "fxc-voc-line",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										200,
										265,
										50,
										22
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "fxc-voc-gate-l",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										200,
										325,
										55,
										22
									],
									"text": "*~ 0."
								}
							},
							{
								"box": {
									"id": "fxc-voc-gate-r",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										272,
										325,
										55,
										22
									],
									"text": "*~ 0."
								}
							},
							{
								"box": {
									"id": "fxc-voc-out-l",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 3,
									"comment": "",
									"patching_rect": [
										114,
										720,
										30,
										30
									],
									"outlettype": [
										"signal"
									]
								}
							},
							{
								"box": {
									"id": "fxc-voc-out-r",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 4,
									"comment": "",
									"patching_rect": [
										156,
										720,
										30,
										30
									],
									"outlettype": [
										"signal"
									]
								}
							},
							{
								"box": {
									"id": "fxc-voc-ui-out",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 12,
									"comment": "",
									"patching_rect": [
										492,
										720,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-voc-local-route",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": [
										"",
										"",
										""
									],
									"patching_rect": [
										326,
										185,
										60,
										22
									],
									"text": "t i i i"
								}
							},
							{
								"box": {
									"id": "fxc-voc-state-send",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										326,
										225,
										180,
										22
									],
									"text": "s mt_vocoder_enable_state"
								}
							},
							{
								"box": {
									"id": "fxc-voc-state-out",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 16,
									"comment": "",
									"patching_rect": [
										660,
										720,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-bit-l",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 5,
									"comment": "",
									"patching_rect": [
										198,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-bit-r",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 6,
									"comment": "",
									"patching_rect": [
										240,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-bit-ext",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"index": 13,
									"comment": "",
									"patching_rect": [
										534,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-bit-local",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"index": 18,
									"comment": "",
									"patching_rect": [
										744,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-bit-ext-route",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										454,
										105,
										45,
										22
									],
									"text": "t i i"
								}
							},
							{
								"box": {
									"id": "fxc-bit-ui-set",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										454,
										145,
										58,
										22
									],
									"text": "set $1"
								}
							},
							{
								"box": {
									"id": "fxc-bit-msg",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										370,
										225,
										58,
										22
									],
									"text": "$1 20"
								}
							},
							{
								"box": {
									"id": "fxc-bit-line",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										370,
										265,
										50,
										22
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "fxc-bit-gate-l",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										370,
										325,
										55,
										22
									],
									"text": "*~ 0."
								}
							},
							{
								"box": {
									"id": "fxc-bit-gate-r",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										442,
										325,
										55,
										22
									],
									"text": "*~ 0."
								}
							},
							{
								"box": {
									"id": "fxc-bit-out-l",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 5,
									"comment": "",
									"patching_rect": [
										198,
										720,
										30,
										30
									],
									"outlettype": [
										"signal"
									]
								}
							},
							{
								"box": {
									"id": "fxc-bit-out-r",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 6,
									"comment": "",
									"patching_rect": [
										240,
										720,
										30,
										30
									],
									"outlettype": [
										"signal"
									]
								}
							},
							{
								"box": {
									"id": "fxc-bit-ui-out",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 13,
									"comment": "",
									"patching_rect": [
										534,
										720,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-bit-local-route",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": [
										"",
										"",
										""
									],
									"patching_rect": [
										496,
										185,
										60,
										22
									],
									"text": "t i i i"
								}
							},
							{
								"box": {
									"id": "fxc-bit-state-send",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										496,
										225,
										180,
										22
									],
									"text": "s mt_bitcrusher_enable_state"
								}
							},
							{
								"box": {
									"id": "fxc-bit-state-out",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 17,
									"comment": "",
									"patching_rect": [
										702,
										720,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-delay-l",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 7,
									"comment": "",
									"patching_rect": [
										282,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-delay-r",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 8,
									"comment": "",
									"patching_rect": [
										324,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-delay-ext",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"index": 14,
									"comment": "",
									"patching_rect": [
										576,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-delay-local",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"index": 19,
									"comment": "",
									"patching_rect": [
										786,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-delay-ext-route",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										624,
										105,
										45,
										22
									],
									"text": "t i i"
								}
							},
							{
								"box": {
									"id": "fxc-delay-ui-set",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										624,
										145,
										58,
										22
									],
									"text": "set $1"
								}
							},
							{
								"box": {
									"id": "fxc-delay-msg",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										540,
										225,
										58,
										22
									],
									"text": "$1 20"
								}
							},
							{
								"box": {
									"id": "fxc-delay-line",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										540,
										265,
										50,
										22
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "fxc-delay-gate-l",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										540,
										325,
										55,
										22
									],
									"text": "*~ 0."
								}
							},
							{
								"box": {
									"id": "fxc-delay-gate-r",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										612,
										325,
										55,
										22
									],
									"text": "*~ 0."
								}
							},
							{
								"box": {
									"id": "fxc-delay-out-l",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 7,
									"comment": "",
									"patching_rect": [
										282,
										720,
										30,
										30
									],
									"outlettype": [
										"signal"
									]
								}
							},
							{
								"box": {
									"id": "fxc-delay-out-r",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 8,
									"comment": "",
									"patching_rect": [
										324,
										720,
										30,
										30
									],
									"outlettype": [
										"signal"
									]
								}
							},
							{
								"box": {
									"id": "fxc-delay-ui-out",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 14,
									"comment": "",
									"patching_rect": [
										576,
										720,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-delay-local-route",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": [
										"",
										"",
										""
									],
									"patching_rect": [
										666,
										185,
										60,
										22
									],
									"text": "t i i i"
								}
							},
							{
								"box": {
									"id": "fxc-delay-state-send",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										666,
										225,
										180,
										22
									],
									"text": "s mt_feedback_delay_enable_state"
								}
							},
							{
								"box": {
									"id": "fxc-delay-state-out",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 18,
									"comment": "",
									"patching_rect": [
										744,
										720,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-multi-l",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 9,
									"comment": "",
									"patching_rect": [
										366,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-multi-r",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 10,
									"comment": "",
									"patching_rect": [
										408,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-multi-ext",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"index": 15,
									"comment": "",
									"patching_rect": [
										618,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-multi-local",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"index": 20,
									"comment": "",
									"patching_rect": [
										828,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-multi-ext-route",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										794,
										105,
										45,
										22
									],
									"text": "t i i"
								}
							},
							{
								"box": {
									"id": "fxc-multi-ui-set",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										794,
										145,
										58,
										22
									],
									"text": "set $1"
								}
							},
							{
								"box": {
									"id": "fxc-multi-msg",
									"maxclass": "message",
									"numinlets": 2,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										710,
										225,
										58,
										22
									],
									"text": "$1 20"
								}
							},
							{
								"box": {
									"id": "fxc-multi-line",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										710,
										265,
										50,
										22
									],
									"text": "line~"
								}
							},
							{
								"box": {
									"id": "fxc-multi-gate-l",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										710,
										325,
										55,
										22
									],
									"text": "*~ 0."
								}
							},
							{
								"box": {
									"id": "fxc-multi-gate-r",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										782,
										325,
										55,
										22
									],
									"text": "*~ 0."
								}
							},
							{
								"box": {
									"id": "fxc-multi-out-l",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 9,
									"comment": "",
									"patching_rect": [
										366,
										720,
										30,
										30
									],
									"outlettype": [
										"signal"
									]
								}
							},
							{
								"box": {
									"id": "fxc-multi-out-r",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 10,
									"comment": "",
									"patching_rect": [
										408,
										720,
										30,
										30
									],
									"outlettype": [
										"signal"
									]
								}
							},
							{
								"box": {
									"id": "fxc-multi-ui-out",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 15,
									"comment": "",
									"patching_rect": [
										618,
										720,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxc-multi-local-route",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 3,
									"outlettype": [
										"",
										"",
										""
									],
									"patching_rect": [
										836,
										185,
										60,
										22
									],
									"text": "t i i i"
								}
							},
							{
								"box": {
									"id": "fxc-multi-state-send",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										836,
										225,
										180,
										22
									],
									"text": "s mt_multiband_filter_enable_state"
								}
							},
							{
								"box": {
									"id": "fxc-multi-state-out",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 19,
									"comment": "",
									"patching_rect": [
										786,
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
										"fxc-dry-default",
										0
									],
									"destination": [
										"fxc-dry-ext-route",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-dry-local",
										0
									],
									"destination": [
										"fxc-dry-msg",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-dry-ext",
										0
									],
									"destination": [
										"fxc-dry-ext-route",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-dry-ext-route",
										0
									],
									"destination": [
										"fxc-dry-ui-set",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-dry-ext-route",
										1
									],
									"destination": [
										"fxc-dry-msg",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-dry-ui-set",
										0
									],
									"destination": [
										"fxc-dry-ui-out",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-dry-msg",
										0
									],
									"destination": [
										"fxc-dry-line",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-dry-l",
										0
									],
									"destination": [
										"fxc-dry-gate-l",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-dry-r",
										0
									],
									"destination": [
										"fxc-dry-gate-r",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-dry-line",
										0
									],
									"destination": [
										"fxc-dry-gate-l",
										1
									],
									"order": 1
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-dry-line",
										0
									],
									"destination": [
										"fxc-dry-gate-r",
										1
									],
									"order": 0
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-dry-gate-l",
										0
									],
									"destination": [
										"fxc-dry-out-l",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-dry-gate-r",
										0
									],
									"destination": [
										"fxc-dry-out-r",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-local",
										0
									],
									"destination": [
										"fxc-voc-local-route",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-local-route",
										0
									],
									"destination": [
										"fxc-voc-msg",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-local-route",
										1
									],
									"destination": [
										"fxc-voc-state-out",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-local-route",
										2
									],
									"destination": [
										"fxc-voc-state-send",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-ext",
										0
									],
									"destination": [
										"fxc-voc-ext-route",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-ext-route",
										0
									],
									"destination": [
										"fxc-voc-ui-set",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-ext-route",
										1
									],
									"destination": [
										"fxc-voc-msg",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-ui-set",
										0
									],
									"destination": [
										"fxc-voc-ui-out",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-msg",
										0
									],
									"destination": [
										"fxc-voc-line",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-l",
										0
									],
									"destination": [
										"fxc-voc-gate-l",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-r",
										0
									],
									"destination": [
										"fxc-voc-gate-r",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-line",
										0
									],
									"destination": [
										"fxc-voc-gate-l",
										1
									],
									"order": 1
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-line",
										0
									],
									"destination": [
										"fxc-voc-gate-r",
										1
									],
									"order": 0
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-gate-l",
										0
									],
									"destination": [
										"fxc-voc-out-l",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-voc-gate-r",
										0
									],
									"destination": [
										"fxc-voc-out-r",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-local",
										0
									],
									"destination": [
										"fxc-bit-local-route",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-local-route",
										0
									],
									"destination": [
										"fxc-bit-msg",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-local-route",
										1
									],
									"destination": [
										"fxc-bit-state-out",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-local-route",
										2
									],
									"destination": [
										"fxc-bit-state-send",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-ext",
										0
									],
									"destination": [
										"fxc-bit-ext-route",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-ext-route",
										0
									],
									"destination": [
										"fxc-bit-ui-set",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-ext-route",
										1
									],
									"destination": [
										"fxc-bit-msg",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-ui-set",
										0
									],
									"destination": [
										"fxc-bit-ui-out",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-msg",
										0
									],
									"destination": [
										"fxc-bit-line",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-l",
										0
									],
									"destination": [
										"fxc-bit-gate-l",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-r",
										0
									],
									"destination": [
										"fxc-bit-gate-r",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-line",
										0
									],
									"destination": [
										"fxc-bit-gate-l",
										1
									],
									"order": 1
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-line",
										0
									],
									"destination": [
										"fxc-bit-gate-r",
										1
									],
									"order": 0
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-gate-l",
										0
									],
									"destination": [
										"fxc-bit-out-l",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-bit-gate-r",
										0
									],
									"destination": [
										"fxc-bit-out-r",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-local",
										0
									],
									"destination": [
										"fxc-delay-local-route",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-local-route",
										0
									],
									"destination": [
										"fxc-delay-msg",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-local-route",
										1
									],
									"destination": [
										"fxc-delay-state-out",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-local-route",
										2
									],
									"destination": [
										"fxc-delay-state-send",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-ext",
										0
									],
									"destination": [
										"fxc-delay-ext-route",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-ext-route",
										0
									],
									"destination": [
										"fxc-delay-ui-set",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-ext-route",
										1
									],
									"destination": [
										"fxc-delay-msg",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-ui-set",
										0
									],
									"destination": [
										"fxc-delay-ui-out",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-msg",
										0
									],
									"destination": [
										"fxc-delay-line",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-l",
										0
									],
									"destination": [
										"fxc-delay-gate-l",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-r",
										0
									],
									"destination": [
										"fxc-delay-gate-r",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-line",
										0
									],
									"destination": [
										"fxc-delay-gate-l",
										1
									],
									"order": 1
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-line",
										0
									],
									"destination": [
										"fxc-delay-gate-r",
										1
									],
									"order": 0
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-gate-l",
										0
									],
									"destination": [
										"fxc-delay-out-l",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-delay-gate-r",
										0
									],
									"destination": [
										"fxc-delay-out-r",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-local",
										0
									],
									"destination": [
										"fxc-multi-local-route",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-local-route",
										0
									],
									"destination": [
										"fxc-multi-msg",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-local-route",
										1
									],
									"destination": [
										"fxc-multi-state-out",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-local-route",
										2
									],
									"destination": [
										"fxc-multi-state-send",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-ext",
										0
									],
									"destination": [
										"fxc-multi-ext-route",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-ext-route",
										0
									],
									"destination": [
										"fxc-multi-ui-set",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-ext-route",
										1
									],
									"destination": [
										"fxc-multi-msg",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-ui-set",
										0
									],
									"destination": [
										"fxc-multi-ui-out",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-msg",
										0
									],
									"destination": [
										"fxc-multi-line",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-l",
										0
									],
									"destination": [
										"fxc-multi-gate-l",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-r",
										0
									],
									"destination": [
										"fxc-multi-gate-r",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-line",
										0
									],
									"destination": [
										"fxc-multi-gate-l",
										1
									],
									"order": 1
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-line",
										0
									],
									"destination": [
										"fxc-multi-gate-r",
										1
									],
									"order": 0
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-gate-l",
										0
									],
									"destination": [
										"fxc-multi-out-l",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxc-multi-gate-r",
										0
									],
									"destination": [
										"fxc-multi-out-r",
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
					"id": "p-Return-sum",
					"maxclass": "newobj",
					"numinlets": 10,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"signal"
					],
					"patching_rect": [
						300,
						500,
						140,
						22
					],
					"text": "p Return_sum",
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
							790
						],
						"gridsize": [
							15,
							15
						],
						"boxes": [
							{
								"box": {
									"id": "fxs-title",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										24,
										10,
										520,
										20
									],
									"text": "RETURN_SUM: five stereo lanes -> balanced L/R sum"
								}
							},
							{
								"box": {
									"id": "fxs-dry-l",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 1,
									"comment": "",
									"patching_rect": [
										30,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxs-dry-r",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 2,
									"comment": "",
									"patching_rect": [
										70,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxs-voc-l",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 3,
									"comment": "",
									"patching_rect": [
										140,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxs-voc-r",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 4,
									"comment": "",
									"patching_rect": [
										180,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxs-bit-l",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 5,
									"comment": "",
									"patching_rect": [
										250,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxs-bit-r",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 6,
									"comment": "",
									"patching_rect": [
										290,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxs-delay-l",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 7,
									"comment": "",
									"patching_rect": [
										360,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxs-delay-r",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 8,
									"comment": "",
									"patching_rect": [
										400,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxs-multi-l",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 9,
									"comment": "",
									"patching_rect": [
										470,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxs-multi-r",
									"maxclass": "inlet",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"index": 10,
									"comment": "",
									"patching_rect": [
										510,
										40,
										30,
										30
									]
								}
							},
							{
								"box": {
									"id": "fxs-sum-l-1",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										190,
										180,
										35,
										22
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "fxs-sum-r-1",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										240,
										180,
										35,
										22
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "fxs-sum-l-2",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										280,
										250,
										35,
										22
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "fxs-sum-r-2",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										330,
										250,
										35,
										22
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "fxs-sum-l-3",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										370,
										320,
										35,
										22
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "fxs-sum-r-3",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										420,
										320,
										35,
										22
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "fxs-sum-l-4",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										460,
										390,
										35,
										22
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "fxs-sum-r-4",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										510,
										390,
										35,
										22
									],
									"text": "+~"
								}
							},
							{
								"box": {
									"id": "fxs-out-l",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 1,
									"comment": "",
									"patching_rect": [
										460,
										720,
										30,
										30
									],
									"outlettype": [
										"signal"
									]
								}
							},
							{
								"box": {
									"id": "fxs-out-r",
									"maxclass": "outlet",
									"numinlets": 1,
									"numoutlets": 0,
									"index": 2,
									"comment": "",
									"patching_rect": [
										520,
										720,
										30,
										30
									],
									"outlettype": [
										"signal"
									]
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"source": [
										"fxs-dry-l",
										0
									],
									"destination": [
										"fxs-sum-l-1",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-dry-r",
										0
									],
									"destination": [
										"fxs-sum-r-1",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-voc-l",
										0
									],
									"destination": [
										"fxs-sum-l-1",
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-voc-r",
										0
									],
									"destination": [
										"fxs-sum-r-1",
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-sum-l-1",
										0
									],
									"destination": [
										"fxs-sum-l-2",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-sum-r-1",
										0
									],
									"destination": [
										"fxs-sum-r-2",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-bit-l",
										0
									],
									"destination": [
										"fxs-sum-l-2",
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-bit-r",
										0
									],
									"destination": [
										"fxs-sum-r-2",
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-sum-l-2",
										0
									],
									"destination": [
										"fxs-sum-l-3",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-sum-r-2",
										0
									],
									"destination": [
										"fxs-sum-r-3",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-delay-l",
										0
									],
									"destination": [
										"fxs-sum-l-3",
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-delay-r",
										0
									],
									"destination": [
										"fxs-sum-r-3",
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-sum-l-3",
										0
									],
									"destination": [
										"fxs-sum-l-4",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-sum-r-3",
										0
									],
									"destination": [
										"fxs-sum-r-4",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-multi-l",
										0
									],
									"destination": [
										"fxs-sum-l-4",
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-multi-r",
										0
									],
									"destination": [
										"fxs-sum-r-4",
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-sum-l-4",
										0
									],
									"destination": [
										"fxs-out-l",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"fxs-sum-r-4",
										0
									],
									"destination": [
										"fxs-out-r",
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
					"id": "fx-out-l",
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"index": 1,
					"comment": "Mixed audio L",
					"patching_rect": [
						700,
						720,
						30,
						30
					],
					"outlettype": [
						"signal"
					]
				}
			},
			{
				"box": {
					"id": "fx-out-r",
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"index": 2,
					"comment": "Mixed audio R",
					"patching_rect": [
						738,
						720,
						30,
						30
					],
					"outlettype": [
						"signal"
					]
				}
			},
			{
				"box": {
					"id": "fx-voc-enable-out",
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"index": 3,
					"comment": "Vocoder Enable state",
					"patching_rect": [
						776,
						720,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-bit-enable-out",
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"index": 4,
					"comment": "Bitcrusher Enable state",
					"patching_rect": [
						814,
						720,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-delay-enable-out",
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"index": 5,
					"comment": "Feedback Delay Enable state",
					"patching_rect": [
						852,
						720,
						30,
						30
					]
				}
			},
			{
				"box": {
					"id": "fx-multi-enable-out",
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"index": 6,
					"comment": "Multiband Enable state",
					"patching_rect": [
						890,
						720,
						30,
						30
					]
				}
			},
			{
				"box": {
					"autofit": 1,
					"background": 1,
					"forceaspect": 1,
					"id": "fx-bg",
					"ignoreclick": 1,
					"maxclass": "fpic",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"jit_matrix"
					],
					"patching_rect": [
						20,
						40,
						905,
						300
					],
					"pic": "fx_return_mixer_panel_v1.png",
					"presentation": 1,
					"presentation_rect": [
						0,
						0,
						905,
						300
					]
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"source": [
						"fx-dry-l",
						0
					],
					"destination": [
						"p-Return-lanes",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-dry-r",
						0
					],
					"destination": [
						"p-Return-lanes",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-dry-enable-in",
						0
					],
					"destination": [
						"p-Return-lanes",
						10
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-dry-enable",
						0
					],
					"destination": [
						"p-Return-lanes",
						15
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						0
					],
					"destination": [
						"fx-dry-gain",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						1
					],
					"destination": [
						"fx-dry-gain",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						10
					],
					"destination": [
						"fx-dry-enable",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-dry-gain",
						0
					],
					"destination": [
						"p-Return-sum",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-dry-gain",
						1
					],
					"destination": [
						"p-Return-sum",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-voc-l",
						0
					],
					"destination": [
						"p-Return-lanes",
						2
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-voc-r",
						0
					],
					"destination": [
						"p-Return-lanes",
						3
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-voc-enable-in",
						0
					],
					"destination": [
						"p-Return-lanes",
						11
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-voc-enable",
						0
					],
					"destination": [
						"p-Return-lanes",
						16
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						2
					],
					"destination": [
						"fx-voc-gain",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						3
					],
					"destination": [
						"fx-voc-gain",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						11
					],
					"destination": [
						"fx-voc-enable",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-voc-gain",
						0
					],
					"destination": [
						"p-Return-sum",
						2
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-voc-gain",
						1
					],
					"destination": [
						"p-Return-sum",
						3
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						15
					],
					"destination": [
						"fx-voc-enable-out",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-bit-l",
						0
					],
					"destination": [
						"p-Return-lanes",
						4
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-bit-r",
						0
					],
					"destination": [
						"p-Return-lanes",
						5
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-bit-enable-in",
						0
					],
					"destination": [
						"p-Return-lanes",
						12
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-bit-enable",
						0
					],
					"destination": [
						"p-Return-lanes",
						17
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						4
					],
					"destination": [
						"fx-bit-gain",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						5
					],
					"destination": [
						"fx-bit-gain",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						12
					],
					"destination": [
						"fx-bit-enable",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-bit-gain",
						0
					],
					"destination": [
						"p-Return-sum",
						4
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-bit-gain",
						1
					],
					"destination": [
						"p-Return-sum",
						5
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						16
					],
					"destination": [
						"fx-bit-enable-out",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-delay-l",
						0
					],
					"destination": [
						"p-Return-lanes",
						6
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-delay-r",
						0
					],
					"destination": [
						"p-Return-lanes",
						7
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-delay-enable-in",
						0
					],
					"destination": [
						"p-Return-lanes",
						13
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-delay-enable",
						0
					],
					"destination": [
						"p-Return-lanes",
						18
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						6
					],
					"destination": [
						"fx-delay-gain",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						7
					],
					"destination": [
						"fx-delay-gain",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						13
					],
					"destination": [
						"fx-delay-enable",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-delay-gain",
						0
					],
					"destination": [
						"p-Return-sum",
						6
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-delay-gain",
						1
					],
					"destination": [
						"p-Return-sum",
						7
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						17
					],
					"destination": [
						"fx-delay-enable-out",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-multi-l",
						0
					],
					"destination": [
						"p-Return-lanes",
						8
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-multi-r",
						0
					],
					"destination": [
						"p-Return-lanes",
						9
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-multi-enable-in",
						0
					],
					"destination": [
						"p-Return-lanes",
						14
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-multi-enable",
						0
					],
					"destination": [
						"p-Return-lanes",
						19
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						8
					],
					"destination": [
						"fx-multi-gain",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						9
					],
					"destination": [
						"fx-multi-gain",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						14
					],
					"destination": [
						"fx-multi-enable",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-multi-gain",
						0
					],
					"destination": [
						"p-Return-sum",
						8
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-multi-gain",
						1
					],
					"destination": [
						"p-Return-sum",
						9
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-lanes",
						18
					],
					"destination": [
						"fx-multi-enable-out",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-sum",
						0
					],
					"destination": [
						"fx-master",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"p-Return-sum",
						1
					],
					"destination": [
						"fx-master",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"fx-master",
						0
					],
					"destination": [
						"fx-meter-l",
						0
					],
					"order": 0
				}
			},
			{
				"patchline": {
					"source": [
						"fx-master",
						1
					],
					"destination": [
						"fx-meter-r",
						0
					],
					"order": 0
				}
			},
			{
				"patchline": {
					"source": [
						"fx-master",
						0
					],
					"destination": [
						"fx-out-l",
						0
					],
					"order": 1
				}
			},
			{
				"patchline": {
					"source": [
						"fx-master",
						1
					],
					"destination": [
						"fx-out-r",
						0
					],
					"order": 1
				}
			}
		],
		"originid": "pat-4",
		"parameters": {
			"fx-chop-gain": [
				"fx_return_chop_gain",
				"Chop FX",
				0
			],
			"fx-dry-gain": [
				"fx_return_dry_gain",
				"Original",
				0
			],
			"fx-master": [
				"fx_return_master_gain",
				"FX Master",
				0
			],
			"fx-trem-gain": [
				"fx_return_tremolo_gain",
				"Tremolo FX",
				0
			],
			"fx-voc-gain": [
				"fx_return_vocoder_gain",
				"Vocoder FX",
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
				"name": "fx_return_mixer_panel_v1.png",
				"patcherrelativepath": "../../assets/ui",
				"type": "PNG",
				"implicit": 1
			}
		],
		"autosave": 0
	}
}
