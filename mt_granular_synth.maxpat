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
		"gridsize" : [ 15.0, 15.0 ],
		"description" : "Granular synth module with manual controls and live input buffer.",
		"tags" : "granular maxmsp dsp-only",
		"boxes" : [ 			{
				"box" : 				{
					"comment" : "",
					"id" : "g-in",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1713.636212468147278, 169.272711634635925, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "g-rec",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1768.181662201881409, 228.787858605384827, 175.0, 22.0 ],
					"text" : "record~ mt_granular_buffer"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-buffer",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 1532.348348617553711, 229.772706627845764, 215.0, 22.0 ],
					"text" : "buffer~ mt_granular_buffer 30000"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-record-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1768.181662201881409, 177.272711634635925, 140.0, 22.0 ],
					"text" : "r mt_granular_record"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-clear-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1384.848362684249878, 177.272711634635925, 130.0, 22.0 ],
					"text" : "r mt_granular_clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-load-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1532.348348617553711, 177.272711634635925, 170.0, 22.0 ],
					"text" : "r mt_granular_load_sample"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-poly",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 38.461542129516602, 1235.443021774291992, 165.0, 22.0 ],
					"text" : "poly~ mt_grain_voice 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-outgain-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 442.259005188941956, 1167.088592290878296, 165.0, 22.0 ],
					"text" : "r mt_granular_output_gain"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-outgain-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 442.259005188941956, 1326.582261085510254, 70.0, 22.0 ],
					"text" : "clip 0. 8."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-outgain-sig",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 442.259005188941956, 1359.493653059005737, 40.0, 22.0 ],
					"text" : "sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-outmul",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 38.461542129516602, 1450.632892370223999, 35.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-outmul-r",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 154.917236804962158, 1450.632892370223999, 35.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "g-out",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 38.461542129516602, 1537.974663376808167, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "g-out-r",
					"index" : 2,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 154.917236804962158, 1537.974663376808167, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "g-density-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 177.272711634635925, 145.0, 22.0 ],
					"text" : "r mt_granular_density"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-density-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 284.96502959728241, 80.0, 22.0 ],
					"text" : "clip 1. 80."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-density-expr",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 314.195801615715027, 110.0, 22.0 ],
					"text" : "expr 1000. / $f1"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-play-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.461542129516602, 357.272728800773621, 130.0, 22.0 ],
					"text" : "r mt_granular_play"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-metro",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 38.461542129516602, 389.580424189567566, 70.0, 22.0 ],
					"text" : "metro 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-counter",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 38.461542129516602, 424.965042948722839, 90.0, 22.0 ],
					"text" : "counter 1 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-trigger",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 7,
					"outlettype" : [ "int", "bang", "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 38.461542129516602, 466.086941242218018, 130.0, 22.0 ],
					"text" : "t i b b b b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-total-load",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1124.61549186706543, 326.503495097160339, 100.0, 22.0 ],
					"text" : "loadmess 4000"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-total-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1170.769342422485352, 357.272728800773621, 155.0, 22.0 ],
					"text" : "r mt_granular_total_ms"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-total-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1124.61549186706543, 389.580424189567566, 115.0, 22.0 ],
					"text" : "clip 1. 600000."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-dur-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 536.923124313354492, 660.349680781364441, 165.0, 22.0 ],
					"text" : "r mt_granular_grain_size"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-pos-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 736.92314338684082, 357.272728800773621, 150.0, 22.0 ],
					"text" : "r mt_granular_position"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-pitch-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 284.615407943725586, 777.27276885509491, 135.0, 22.0 ],
					"text" : "r mt_granular_pitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-spray-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 172.307704925537109, 357.272728800773621, 135.0, 22.0 ],
					"text" : "r mt_granular_spray"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-amp-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 149.230779647827148, 932.65739905834198, 130.0, 22.0 ],
					"text" : "r mt_granular_amp"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-size-pct-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 307.692333221435547, 660.349680781364441, 210.0, 22.0 ],
					"text" : "r mt_granular_grain_size_pct"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-size-pct-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 307.692333221435547, 692.657376170158386, 85.0, 22.0 ],
					"text" : "clip 0. 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-size-pct-map",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 307.692333221435547, 724.965071558952332, 220.0, 22.0 ],
					"text" : "expr 20. * pow(25.\\, $f1 / 100.)"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-spray-pct-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 320.000026702880859, 357.272728800773621, 180.0, 22.0 ],
					"text" : "r mt_granular_spray_pct"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-spray-pct-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 320.000026702880859, 389.580424189567566, 85.0, 22.0 ],
					"text" : "clip 0. 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-spray-pct-map",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 320.000026702880859, 424.965042948722839, 220.0, 22.0 ],
					"text" : "expr pow($f1 / 100.\\, 2.) * 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-amp-db-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 292.307716369628906, 974.19586455821991, 165.0, 22.0 ],
					"text" : "r mt_granular_amp_db"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-amp-db-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 292.307716369628906, 1012.657406687736511, 90.0, 22.0 ],
					"text" : "clip -60. -3."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-amp-dbtoa",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 292.307716369628906, 1086.503567576408386, 55.0, 22.0 ],
					"text" : "dbtoa"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-gain-db-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 613.145078897476196, 1167.088592290878296, 190.0, 22.0 ],
					"text" : "r mt_granular_output_db"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-gain-db-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 613.145078897476196, 1199.999984264373779, 85.0, 22.0 ],
					"text" : "clip -60. 12."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-gain-dbtoa",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 613.145078897476196, 1270.886059284210205, 55.0, 22.0 ],
					"text" : "dbtoa"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-density-norm-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.076938629150391, 177.272711634635925, 185.0, 22.0 ],
					"text" : "r mt_granular_density_norm"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-density-norm-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.076938629150391, 204.965021967887878, 75.0, 22.0 ],
					"text" : "clip 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-density-norm-map",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 203.076938629150391, 237.272717356681824, 200.0, 22.0 ],
					"text" : "expr 1. + (pow($f1\\, 2.) * 79.)"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-size-norm-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 82.861542129516607, 660.617247581481934, 210.0, 22.0 ],
					"text" : "r mt_granular_grain_size_norm"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-size-norm-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 82.861542129516607, 692.791159570217133, 75.0, 22.0 ],
					"text" : "clip 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-size-norm-map",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 82.861542129516607, 724.965071558952332, 165.0, 22.0 ],
					"text" : "expr 20. * pow(25.\\, $f1)"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-position-norm-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 907.692390441894531, 357.272728800773621, 200.0, 22.0 ],
					"text" : "r mt_granular_position_norm"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-position-norm-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 907.692390441894531, 389.580424189567566, 75.0, 22.0 ],
					"text" : "clip 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-position-norm-map",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 907.692390441894531, 426.503504633903503, 190.0, 22.0 ],
					"text" : "expr $f1 * max(0.\\, $f2 - 1.)"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-pitch-norm-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 104.615390777587891, 777.27276885509491, 175.0, 22.0 ],
					"text" : "r mt_granular_pitch_norm"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-pitch-norm-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 104.615390777587891, 814.195849299430847, 75.0, 22.0 ],
					"text" : "clip 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-pitch-norm-map",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 104.615390777587891, 849.580468058586121, 170.0, 22.0 ],
					"text" : "expr ($f1 * 48.) - 24."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-spray-norm-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 547.692356109619141, 357.272728800773621, 175.0, 22.0 ],
					"text" : "r mt_granular_spray_norm"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-spray-norm-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 547.692356109619141, 389.580424189567566, 75.0, 22.0 ],
					"text" : "clip 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-spray-norm-map",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 547.692356109619141, 424.965042948722839, 170.0, 22.0 ],
					"text" : "expr pow($f1\\, 2.) * 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-amp-norm-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 475.38465690612793, 974.19586455821991, 165.0, 22.0 ],
					"text" : "r mt_granular_amp_norm"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-amp-norm-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 475.38465690612793, 1012.657406687736511, 75.0, 22.0 ],
					"text" : "clip 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-amp-norm-map",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 475.38465690612793, 1046.503563761711121, 220.0, 22.0 ],
					"text" : "expr -60. + (pow($f1\\, 1.6) * 57.)"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-amp-norm-dbtoa",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 475.38465690612793, 1086.503567576408386, 55.0, 22.0 ],
					"text" : "dbtoa"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-gain-norm-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 806.815962433815002, 1167.088592290878296, 215.0, 22.0 ],
					"text" : "r mt_granular_output_gain_norm"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-gain-norm-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 806.815962433815002, 1199.999984264373779, 75.0, 22.0 ],
					"text" : "clip 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-gain-norm-map",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 806.815962433815002, 1235.443021774291992, 220.0, 22.0 ],
					"text" : "expr -60. + (pow($f1\\, 1.4) * 72.)"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-gain-norm-dbtoa",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 806.815962433815002, 1270.886059284210205, 55.0, 22.0 ],
					"text" : "dbtoa"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-rand",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 58.461544036865234, 524.615434646606445, 85.0, 22.0 ],
					"text" : "random 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-pos-jitter",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.461542129516602, 580.000055313110352, 420.0, 22.0 ],
					"text" : "expr max(0.\\, min(max(0.\\, $f4 - 1.)\\, $f3 + (($f1 / 999.) - 0.5) * 2. * $f2))"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-pitch-rate",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 104.615390777587891, 881.888163447380066, 155.0, 22.0 ],
					"text" : "expr pow(2.\\, $f1 / 12.)"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-pan-rand",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 129.230781555175781, 524.615434646606445, 90.0, 22.0 ],
					"text" : "random 1001"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-pan-scale",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 127.261542129516613, 1086.503567576408386, 60.0, 22.0 ],
					"text" : "/ 1000."
				}

			}
, 			{
				"box" : 				{
					"id" : "g-pack",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.461542129516602, 1153.846263885498047, 130.0, 22.0 ],
					"text" : "pack i f f f f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-msg",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.461542129516602, 1193.670870423316956, 245.0, 22.0 ],
					"text" : "target $1, grain $2 $3 $4 $5 $6"
				}

			}
, 			{
				"box" : 				{
					"id" : "mt_granular-wet-r",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 325.803310513496399, 1167.088592290878296, 105.0, 22.0 ],
					"text" : "r mt_granular_wet"
				}

			}
, 			{
				"box" : 				{
					"id" : "mt_granular-wet-clip",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 325.803310513496399, 1202.531629800796509, 75.0, 22.0 ],
					"text" : "clip 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "mt_granular-wet-expr",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 325.803310513496399, 1237.974667310714722, 95.0, 22.0 ],
					"text" : "expr sqrt($f1)"
				}

			}
, 			{
				"box" : 				{
					"id" : "mt_granular-wet-sig",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 325.803310513496399, 1273.417704820632935, 45.0, 22.0 ],
					"text" : "sig~"
				}

			}
, 			{
				"box" : 				{
					"id" : "mt_granular-wet-mul",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 38.461542129516602, 1326.582261085510254, 35.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "mt_granular-wet-mul-r",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 154.917236804962158, 1326.582261085510254, 35.0, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-wet-load",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1384.848362684249878, 287.878762483596802, 90.0, 22.0 ],
					"text" : "loadmess 0.8"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-c-wet-num",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1384.848362684249878, 372.727239847183228, 62.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-wet-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1384.848362684249878, 459.090868592262268, 150.0, 22.0 ],
					"text" : "s mt_granular_wet"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-density-load",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1704.545304179191589, 287.878762483596802, 90.0, 22.0 ],
					"text" : "loadmess 20"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-c-density-num",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1704.545304179191589, 372.727239847183228, 62.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-density-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1704.545304179191589, 459.090868592262268, 150.0, 22.0 ],
					"text" : "s mt_granular_density"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-size-load",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2016.666488766670227, 287.878762483596802, 90.0, 22.0 ],
					"text" : "loadmess 56"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-c-size-num",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2016.666488766670227, 372.727239847183228, 62.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-size-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2016.666488766670227, 459.090868592262268, 166.0, 22.0 ],
					"text" : "s mt_granular_grain_size_pct"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-pos-load",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2345.454338550567627, 287.878762483596802, 90.0, 22.0 ],
					"text" : "loadmess 200"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-c-pos-num",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2345.454338550567627, 372.727239847183228, 62.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-pos-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2345.454338550567627, 459.090868592262268, 150.0, 22.0 ],
					"text" : "s mt_granular_position"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-c-pitch-num",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1546.969560503959656, 374.242391228675842, 62.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-pitch-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1546.969560503959656, 459.090868592262268, 150.0, 22.0 ],
					"text" : "s mt_granular_pitch"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-spray-load",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1860.605896472930908, 287.878762483596802, 90.0, 22.0 ],
					"text" : "loadmess 32"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-c-spray-num",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1860.605896472930908, 372.727239847183228, 62.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-spray-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1860.605896472930908, 459.090868592262268, 150.0, 22.0 ],
					"text" : "s mt_granular_spray_pct"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-amp-load",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2189.393746256828308, 287.878762483596802, 90.0, 22.0 ],
					"text" : "loadmess -32"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-c-amp-num",
					"maxclass" : "flonum",
					"maximum" : -3.0,
					"minimum" : -60.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2189.393746256828308, 372.727239847183228, 62.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-amp-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2189.393746256828308, 459.090868592262268, 150.0, 22.0 ],
					"text" : "s mt_granular_amp_db"
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-gain-load",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 2503.030082225799561, 287.878762483596802, 90.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "g-c-gain-num",
					"maxclass" : "flonum",
					"maximum" : 12.0,
					"minimum" : -60.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 2503.030082225799561, 372.727239847183228, 62.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "g-c-gain-send",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2503.030082225799561, 459.090868592262268, 150.0, 22.0 ],
					"text" : "s mt_granular_output_db"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "g-amp-dbtoa", 0 ],
					"source" : [ "g-amp-db-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-amp-db-clip", 0 ],
					"source" : [ "g-amp-db-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pack", 5 ],
					"midpoints" : [ 301.807716369628906, 1125.700882531702518, 158.961542129516602, 1125.700882531702518 ],
					"source" : [ "g-amp-dbtoa", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-amp-norm-map", 0 ],
					"source" : [ "g-amp-norm-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pack", 5 ],
					"midpoints" : [ 484.88465690612793, 1125.861394114792347, 158.961542129516602, 1125.861394114792347 ],
					"source" : [ "g-amp-norm-dbtoa", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-amp-norm-dbtoa", 0 ],
					"source" : [ "g-amp-norm-map", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-amp-norm-clip", 0 ],
					"source" : [ "g-amp-norm-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pack", 5 ],
					"source" : [ "g-amp-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-amp-num", 0 ],
					"source" : [ "g-c-amp-load", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-amp-send", 0 ],
					"source" : [ "g-c-amp-num", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-density-num", 0 ],
					"source" : [ "g-c-density-load", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-density-send", 0 ],
					"source" : [ "g-c-density-num", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-gain-num", 0 ],
					"source" : [ "g-c-gain-load", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-gain-send", 0 ],
					"source" : [ "g-c-gain-num", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-pitch-send", 0 ],
					"source" : [ "g-c-pitch-num", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-pos-num", 0 ],
					"source" : [ "g-c-pos-load", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-pos-send", 0 ],
					"source" : [ "g-c-pos-num", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-size-num", 0 ],
					"source" : [ "g-c-size-load", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-size-send", 0 ],
					"source" : [ "g-c-size-num", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-spray-num", 0 ],
					"source" : [ "g-c-spray-load", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-spray-send", 0 ],
					"source" : [ "g-c-spray-num", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-wet-num", 0 ],
					"source" : [ "g-c-wet-load", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-c-wet-send", 0 ],
					"source" : [ "g-c-wet-num", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-buffer", 0 ],
					"midpoints" : [ 1394.348362684249878, 214.522709131240845, 1541.848348617553711, 214.522709131240845 ],
					"source" : [ "g-clear-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-trigger", 0 ],
					"source" : [ "g-counter", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-density-expr", 0 ],
					"source" : [ "g-density-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-metro", 1 ],
					"midpoints" : [ 49.5, 348.466117058414966, 98.961542129516602, 348.466117058414966 ],
					"source" : [ "g-density-expr", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-density-norm-map", 0 ],
					"source" : [ "g-density-norm-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-density-clip", 0 ],
					"midpoints" : [ 212.576938629150391, 270.621474742889404, 49.5, 270.621474742889404 ],
					"source" : [ "g-density-norm-map", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-density-norm-clip", 0 ],
					"source" : [ "g-density-norm-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-density-clip", 0 ],
					"source" : [ "g-density-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pack", 2 ],
					"midpoints" : [ 546.423124313354492, 1125.884405342396349, 92.361542129516607, 1125.884405342396349 ],
					"source" : [ "g-dur-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-gain-dbtoa", 0 ],
					"source" : [ "g-gain-db-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-gain-db-clip", 0 ],
					"source" : [ "g-gain-db-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-outgain-clip", 0 ],
					"midpoints" : [ 622.645078897476196, 1309.651119470596313, 451.759005188941956, 1309.651119470596313 ],
					"source" : [ "g-gain-dbtoa", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-gain-norm-map", 0 ],
					"source" : [ "g-gain-norm-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-outgain-clip", 0 ],
					"midpoints" : [ 816.315962433815002, 1309.651119470596313, 451.759005188941956, 1309.651119470596313 ],
					"source" : [ "g-gain-norm-dbtoa", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-gain-norm-dbtoa", 0 ],
					"source" : [ "g-gain-norm-map", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-gain-norm-clip", 0 ],
					"source" : [ "g-gain-norm-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-rec", 0 ],
					"midpoints" : [ 1723.136212468147278, 214.030285120010376, 1777.681662201881409, 214.030285120010376 ],
					"source" : [ "g-in", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-buffer", 0 ],
					"source" : [ "g-load-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-counter", 0 ],
					"source" : [ "g-metro", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-poly", 0 ],
					"source" : [ "g-msg", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-outgain-sig", 0 ],
					"source" : [ "g-outgain-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-outgain-clip", 0 ],
					"source" : [ "g-outgain-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-outmul", 1 ],
					"midpoints" : [ 451.759005188941956, 1416.795096933841705, 63.961542129516602, 1416.795096933841705 ],
					"order" : 1,
					"source" : [ "g-outgain-sig", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-outmul-r", 1 ],
					"midpoints" : [ 451.759005188941956, 1416.122628588229418, 180.417236804962158, 1416.122628588229418 ],
					"order" : 0,
					"source" : [ "g-outgain-sig", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-out", 0 ],
					"source" : [ "g-outmul", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-out-r", 0 ],
					"source" : [ "g-outmul-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-msg", 0 ],
					"source" : [ "g-pack", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pan-scale", 0 ],
					"source" : [ "g-pan-rand", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pack", 4 ],
					"source" : [ "g-pan-scale", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pitch-norm-map", 0 ],
					"source" : [ "g-pitch-norm-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pitch-rate", 0 ],
					"source" : [ "g-pitch-norm-map", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pitch-norm-clip", 0 ],
					"source" : [ "g-pitch-norm-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pitch-rate", 0 ],
					"midpoints" : [ 294.115407943725586, 876.500252457335591, 114.115390777587891, 876.500252457335591 ],
					"source" : [ "g-pitch-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pack", 3 ],
					"source" : [ "g-pitch-rate", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-metro", 0 ],
					"source" : [ "g-play-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "mt_granular-wet-mul", 0 ],
					"source" : [ "g-poly", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "mt_granular-wet-mul-r", 0 ],
					"midpoints" : [ 193.961542129516602, 1304.39929336681962, 164.417236804962158, 1304.39929336681962 ],
					"source" : [ "g-poly", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pack", 1 ],
					"midpoints" : [ 47.961542129516602, 1127.282605514395982, 70.161542129516604, 1127.282605514395982 ],
					"source" : [ "g-pos-jitter", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pos-jitter", 2 ],
					"midpoints" : [ 746.42314338684082, 564.143703327514231, 315.294875462849916, 564.143703327514231 ],
					"source" : [ "g-pos-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-position-norm-map", 0 ],
					"source" : [ "g-position-norm-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pos-jitter", 2 ],
					"midpoints" : [ 917.192390441894531, 563.28849404072389, 315.294875462849916, 563.28849404072389 ],
					"source" : [ "g-position-norm-map", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-position-norm-clip", 0 ],
					"source" : [ "g-position-norm-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pos-jitter", 0 ],
					"midpoints" : [ 67.961544036865234, 567.605150446295738, 47.961542129516602, 567.605150446295738 ],
					"source" : [ "g-rand", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-rec", 0 ],
					"source" : [ "g-record-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-size-norm-map", 0 ],
					"source" : [ "g-size-norm-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pack", 2 ],
					"source" : [ "g-size-norm-map", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-size-norm-clip", 0 ],
					"source" : [ "g-size-norm-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-size-pct-map", 0 ],
					"source" : [ "g-size-pct-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pack", 2 ],
					"midpoints" : [ 317.192333221435547, 1126.115602979436517, 92.361542129516607, 1126.115602979436517 ],
					"source" : [ "g-size-pct-map", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-size-pct-clip", 0 ],
					"source" : [ "g-size-pct-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-spray-norm-map", 0 ],
					"source" : [ "g-spray-norm-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pos-jitter", 1 ],
					"midpoints" : [ 557.192356109619141, 563.368394567165524, 181.628208796183259, 563.368394567165524 ],
					"source" : [ "g-spray-norm-map", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-spray-norm-clip", 0 ],
					"source" : [ "g-spray-norm-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-spray-pct-map", 0 ],
					"source" : [ "g-spray-pct-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pos-jitter", 1 ],
					"midpoints" : [ 329.500026702880859, 562.786417962517589, 181.628208796183259, 562.786417962517589 ],
					"source" : [ "g-spray-pct-map", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-spray-pct-clip", 0 ],
					"source" : [ "g-spray-pct-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pos-jitter", 1 ],
					"source" : [ "g-spray-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pos-jitter", 3 ],
					"midpoints" : [ 1134.11549186706543, 564.454427797347307, 448.961542129516602, 564.454427797347307 ],
					"order" : 1,
					"source" : [ "g-total-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-position-norm-map", 1 ],
					"midpoints" : [ 1134.11549186706543, 417.503502726554871, 1088.192390441894531, 417.503502726554871 ],
					"order" : 0,
					"source" : [ "g-total-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-total-clip", 0 ],
					"source" : [ "g-total-load", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-total-clip", 0 ],
					"midpoints" : [ 1180.269342422485352, 382.888114809989929, 1134.11549186706543, 382.888114809989929 ],
					"source" : [ "g-total-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pack", 0 ],
					"source" : [ "g-trigger", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-pan-rand", 0 ],
					"midpoints" : [ 84.961542129516602, 513.418066799640656, 138.730781555175781, 513.418066799640656 ],
					"source" : [ "g-trigger", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-rand", 0 ],
					"midpoints" : [ 66.461542129516602, 506.384662628173828, 67.961544036865234, 506.384662628173828 ],
					"source" : [ "g-trigger", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "mt_granular-wet-expr", 0 ],
					"source" : [ "mt_granular-wet-clip", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "mt_granular-wet-sig", 0 ],
					"source" : [ "mt_granular-wet-expr", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-outmul", 0 ],
					"source" : [ "mt_granular-wet-mul", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "g-outmul-r", 0 ],
					"source" : [ "mt_granular-wet-mul-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "mt_granular-wet-clip", 0 ],
					"source" : [ "mt_granular-wet-r", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "mt_granular-wet-mul", 1 ],
					"midpoints" : [ 335.303310513496399, 1304.071913851425052, 63.961542129516602, 1304.071913851425052 ],
					"order" : 1,
					"source" : [ "mt_granular-wet-sig", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "mt_granular-wet-mul-r", 1 ],
					"midpoints" : [ 335.303310513496399, 1305.317958138883114, 180.417236804962158, 1305.317958138883114 ],
					"order" : 0,
					"source" : [ "mt_granular-wet-sig", 0 ]
				}

			}
 ],
		"originid" : "pat-52"
	}

}
