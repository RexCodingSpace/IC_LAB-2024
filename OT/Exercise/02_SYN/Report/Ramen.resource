 
****************************************
Report : resources
Design : Ramen
Version: T-2022.03
Date   : Sat Oct 26 18:57:32 2024
****************************************


Resource Report for this hierarchy in file ../01_RTL/Ramen.v
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| add_x_6        | DW01_inc       | width=3    | add_131 (Ramen.v:131)      |
| add_x_8        | DW01_inc       | width=3    | add_153 (Ramen.v:153)      |
| gte_x_11       | DW_cmp         | width=11   | gte_179_4 (Ramen.v:179)    |
| gte_x_12       | DW_cmp         | width=16   | gte_186_2 (Ramen.v:186)    |
| gte_x_13       | DW_cmp         | width=10   | gte_186_3 (Ramen.v:186)    |
| gte_x_14       | DW_cmp         | width=14   | gte_193_3 (Ramen.v:193)    |
| gte_x_15       | DW_cmp         | width=11   | gte_193_4 (Ramen.v:193)    |
| gte_x_16       | DW_cmp         | width=10   | gte_193_5 (Ramen.v:193)    |
| gte_x_17       | DW_cmp         | width=14   | gte_206_3 (Ramen.v:206)    |
| gte_x_18       | DW_cmp         | width=11   | gte_213_4 (Ramen.v:213)    |
| gte_x_19       | DW_cmp         | width=16   | gte_220_2 (Ramen.v:220)    |
| gte_x_20       | DW_cmp         | width=10   | gte_220_3 (Ramen.v:220)    |
| gte_x_21       | DW_cmp         | width=11   | gte_227_4 (Ramen.v:227)    |
| gte_x_22       | DW_cmp         | width=10   | gte_227_5 (Ramen.v:227)    |
| add_x_28       | DW01_inc       | width=7    | add_335 (Ramen.v:335)      |
| add_x_29       | DW01_inc       | width=7    | add_338 (Ramen.v:338)      |
| add_x_30       | DW01_inc       | width=7    | add_341 (Ramen.v:341)      |
| add_x_31       | DW01_inc       | width=7    | add_344 (Ramen.v:344)      |
| gte_x_52       | DW_cmp         | width=14   | gte_172 (Ramen.v:172)      |
|                |                |            | gte_179 (Ramen.v:179)      |
|                |                |            | gte_186 (Ramen.v:186)      |
|                |                |            | gte_193 (Ramen.v:193)      |
| gte_x_53       | DW_cmp         | width=16   | gte_172_2 (Ramen.v:172)    |
|                |                |            | gte_179_2 (Ramen.v:179)    |
|                |                |            | gte_193_2 (Ramen.v:193)    |
| gte_x_54       | DW_cmp         | width=14   | gte_172_3 (Ramen.v:172)    |
|                |                |            | gte_213_3 (Ramen.v:213)    |
| gte_x_55       | DW_cmp         | width=14   | gte_179_3 (Ramen.v:179)    |
|                |                |            | gte_227_3 (Ramen.v:227)    |
| gte_x_56       | DW_cmp         | width=14   | gte_206 (Ramen.v:206)      |
|                |                |            | gte_213 (Ramen.v:213)      |
|                |                |            | gte_220 (Ramen.v:220)      |
|                |                |            | gte_227 (Ramen.v:227)      |
| gte_x_57       | DW_cmp         | width=16   | gte_206_2 (Ramen.v:206)    |
|                |                |            | gte_213_2 (Ramen.v:213)    |
|                |                |            | gte_227_2 (Ramen.v:227)    |
| DP_OP_241J1_122_7686            |            |                            |
|                | DP_OP_241J1_122_7686 |      |                            |
| DP_OP_241J1_141_1356            |            |                            |
|                | DP_OP_241J1_141_1356 |      |                            |
| DP_OP_226J1_136_3393            |            |                            |
|                | DP_OP_226J1_136_3393 |      |                            |
| DP_OP_211J1_131_5924            |            |                            |
|                | DP_OP_211J1_131_5924 |      |                            |
| DP_OP_194J1_126_163             |            |                            |
|                | DP_OP_194J1_126_163 |       |                            |
| DP_OP_181J1_123_6436            |            |                            |
|                | DP_OP_181J1_123_6436 |      |                            |
=============================================================================

Datapath Report for DP_OP_241J1_122_7686
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_241J1_122_7686 | mult_431 (Ramen.v:431) add_431 (Ramen.v:431)        |
|                      | add_431_2 (Ramen.v:431) add_431_3 (Ramen.v:431)     |
|                      | mult_431_2 (Ramen.v:431) mult_431_3 (Ramen.v:431)   |
|                      | mult_431_4 (Ramen.v:431)                            |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 7     |                                          |
| I2    | PI   | Unsigned | 7     |                                          |
| I3    | PI   | Unsigned | 7     |                                          |
| I4    | PI   | Unsigned | 7     |                                          |
| T111  | IFO  | Unsigned | 15    | I1 * $unsigned(8'b11001000) (Ramen.v:431) |
| T112  | IFO  | Unsigned | 15    | I2 * $unsigned(8'b11111010) (Ramen.v:431) |
| T114  | IFO  | Unsigned | 15    | I3 * $unsigned(8'b11001000) (Ramen.v:431) |
| T116  | IFO  | Unsigned | 15    | I4 * $unsigned(8'b11111010) (Ramen.v:431) |
| O1    | PO   | Unsigned | 15    | T111 + T112 + T114 + T116 (Ramen.v:431)  |
==============================================================================

Datapath Report for DP_OP_241J1_141_1356
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_241J1_141_1356 | sub_292 (Ramen.v:292) sub_306 (Ramen.v:306)         |
|                      | sub_254 (Ramen.v:254) sub_268 (Ramen.v:268)         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 11    |                                          |
| I2    | PI   | Unsigned | 6     |                                          |
| O1    | PO   | Signed   | 11    | I1 - I2 ( Ramen.v:254 Ramen.v:268 Ramen.v:292 Ramen.v:306 ) |
==============================================================================

Datapath Report for DP_OP_226J1_136_3393
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_226J1_136_3393 | sub_300 (Ramen.v:300) sub_307 (Ramen.v:307)         |
|                      | sub_262 (Ramen.v:262) sub_269 (Ramen.v:269)         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 10    |                                          |
| I2    | PI   | Unsigned | 6     |                                          |
| O1    | PO   | Signed   | 10    | I1 - I2 ( Ramen.v:262 Ramen.v:269 Ramen.v:300 Ramen.v:307 ) |
==============================================================================

Datapath Report for DP_OP_211J1_131_5924
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_211J1_131_5924 | sub_284 (Ramen.v:284) sub_246 (Ramen.v:246)         |
|                      | sub_291 (Ramen.v:291) sub_253 (Ramen.v:253)         |
|                      | sub_305 (Ramen.v:305) sub_267 (Ramen.v:267)         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 14    |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Signed   | 14    | I1 - I2 ( Ramen.v:246 Ramen.v:253 Ramen.v:267 Ramen.v:284 Ramen.v:291 Ramen.v:305 ) |
==============================================================================

Datapath Report for DP_OP_194J1_126_163
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_194J1_126_163  | sub_283 (Ramen.v:283) sub_290 (Ramen.v:290)         |
|                      | sub_304 (Ramen.v:304) sub_297 (Ramen.v:297)         |
|                      | sub_245 (Ramen.v:245) sub_252 (Ramen.v:252)         |
|                      | sub_266 (Ramen.v:266) sub_259 (Ramen.v:259)         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 16    |                                          |
| I2    | PI   | Unsigned | 10    |                                          |
| O1    | PO   | Signed   | 16    | I1 - I2 ( Ramen.v:245 Ramen.v:252 Ramen.v:259 Ramen.v:266 Ramen.v:283 Ramen.v:290 Ramen.v:297 Ramen.v:304 ) |
==============================================================================

Datapath Report for DP_OP_181J1_123_6436
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_181J1_123_6436 | sub_282 (Ramen.v:282) sub_289 (Ramen.v:289)         |
|                      | sub_296 (Ramen.v:296) sub_303 (Ramen.v:303)         |
|                      | sub_244 (Ramen.v:244) sub_251 (Ramen.v:251)         |
|                      | sub_258 (Ramen.v:258) sub_265 (Ramen.v:265)         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 14    |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Signed   | 14    | I1 - I2 ( Ramen.v:244 Ramen.v:251 Ramen.v:258 Ramen.v:265 Ramen.v:282 Ramen.v:289 Ramen.v:296 Ramen.v:303 ) |
==============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| add_x_6            | DW01_inc         | apparch (area)     |                |
| add_x_8            | DW01_inc         | apparch (area)     |                |
| gte_x_11           | DW_cmp           | apparch (area)     |                |
| gte_x_12           | DW_cmp           | apparch (area)     |                |
| gte_x_13           | DW_cmp           | apparch (area)     |                |
| gte_x_14           | DW_cmp           | apparch (area)     |                |
| gte_x_15           | DW_cmp           | apparch (area)     |                |
| gte_x_16           | DW_cmp           | apparch (area)     |                |
| gte_x_17           | DW_cmp           | apparch (area)     |                |
| gte_x_18           | DW_cmp           | apparch (area)     |                |
| gte_x_19           | DW_cmp           | apparch (area)     |                |
| gte_x_20           | DW_cmp           | apparch (area)     |                |
| gte_x_21           | DW_cmp           | apparch (area)     |                |
| gte_x_22           | DW_cmp           | apparch (area)     |                |
| add_x_28           | DW01_inc         | apparch (area)     |                |
| add_x_29           | DW01_inc         | apparch (area)     |                |
| add_x_30           | DW01_inc         | apparch (area)     |                |
| add_x_31           | DW01_inc         | apparch (area)     |                |
| gte_x_52           | DW_cmp           | apparch (area)     |                |
| gte_x_53           | DW_cmp           | apparch (area)     |                |
| gte_x_54           | DW_cmp           | apparch (area)     |                |
| gte_x_55           | DW_cmp           | apparch (area)     |                |
| gte_x_56           | DW_cmp           | apparch (area)     |                |
| gte_x_57           | DW_cmp           | apparch (area)     |                |
| DP_OP_241J1_122_7686                  |                    |                |
|                    | DP_OP_241J1_122_7686 | str (area)     |                |
| DP_OP_241J1_141_1356                  |                    |                |
|                    | DP_OP_241J1_141_1356 | str (area)     |                |
| DP_OP_226J1_136_3393                  |                    |                |
|                    | DP_OP_226J1_136_3393 | str (area)     |                |
| DP_OP_211J1_131_5924                  |                    |                |
|                    | DP_OP_211J1_131_5924 | str (area)     |                |
| DP_OP_194J1_126_163                   |                    |                |
|                    | DP_OP_194J1_126_163 | str (area)      |                |
| DP_OP_181J1_123_6436                  |                    |                |
|                    | DP_OP_181J1_123_6436 | str (area)     |                |
===============================================================================

1
