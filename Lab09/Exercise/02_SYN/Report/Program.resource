 
****************************************
Report : resources
Design : Program
Version: T-2022.03
Date   : Wed Nov 27 00:28:33 2024
****************************************


Resource Report for this hierarchy in file ../01_RTL/Program.sv
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| gte_x_20       | DW_cmp         | width=12   | gte_209 (Program.sv:209)   |
| gte_x_23       | DW_cmp         | width=12   | gte_225 (Program.sv:225)   |
| gte_x_26       | DW_cmp         | width=12   | gte_240 (Program.sv:240)   |
| gte_x_27       | DW_cmp         | width=12   | gte_250 (Program.sv:250)   |
| gte_x_28       | DW_cmp         | width=12   | gte_260 (Program.sv:260)   |
| gte_x_29       | DW_cmp         | width=12   | gte_270 (Program.sv:270)   |
| div_49         | DW_div_uns     | a_width=14 | div_452 (Program.sv:452)   |
|                |                | b_width=2  |                            |
| lt_x_52        | DW_cmp         | width=4    | lt_639 (Program.sv:639)    |
| eq_x_53        | DW_cmp         | width=4    | eq_639 (Program.sv:639)    |
| lt_x_54        | DW_cmp         | width=5    | lt_639_2 (Program.sv:639)  |
| add_x_79       | DW01_add       | width=13   | add_735 (Program.sv:735)   |
| add_x_80       | DW01_add       | width=13   | add_736 (Program.sv:736)   |
| add_x_81       | DW01_add       | width=13   | add_737 (Program.sv:737)   |
| add_x_82       | DW01_add       | width=13   | add_738 (Program.sv:738)   |
| add_x_1        | DW01_inc       | width=4    | add_59 (Program.sv:59)     |
|                |                |            | add_61 (Program.sv:61)     |
| DP_OP_281J1_144_48              |            |                            |
|                | DP_OP_281J1_144_48 |        |                            |
| DP_OP_277_159_6291              |            |                            |
|                | DP_OP_277_159_6291 |        |                            |
| DP_OP_278_160_4745              |            |                            |
|                | DP_OP_278_160_4745 |        |                            |
| DP_OP_279_161_4745              |            |                            |
|                | DP_OP_279_161_4745 |        |                            |
| DP_OP_48_157_8840               |            |                            |
|                | DP_OP_48_157_8840 |         |                            |
| DP_OP_44_156_8703               |            |                            |
|                | DP_OP_44_156_8703 |         |                            |
| DP_OP_40_155_7065               |            |                            |
|                | DP_OP_40_155_7065 |         |                            |
| DP_OP_36_158_1194               |            |                            |
|                | DP_OP_36_158_1194 |         |                            |
=============================================================================

Datapath Report for DP_OP_281J1_144_48
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_281J1_144_48   | gte_584 (Program.sv:584) gte_594 (Program.sv:594)   |
|                      | gte_589 (Program.sv:589) gte_614 (Program.sv:614)   |
|                      | gte_619 (Program.sv:619) gte_609 (Program.sv:609)   |
|                      | gte_538 (Program.sv:538) gte_548 (Program.sv:548)   |
|                      | gte_543 (Program.sv:543) gte_568 (Program.sv:568)   |
|                      | gte_573 (Program.sv:573) gte_563 (Program.sv:563)   |
|                      | gte_492 (Program.sv:492) gte_502 (Program.sv:502)   |
|                      | gte_497 (Program.sv:497) gte_522 (Program.sv:522)   |
|                      | gte_527 (Program.sv:527) gte_507 (Program.sv:507)   |
|                      | gte_512 (Program.sv:512) gte_517 (Program.sv:517)   |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 14    |                                          |
| I2    | PI   | Unsigned | 11    |                                          |
| O1    | PO   | Unsigned | 1     | I1 >= I2 ( Program.sv:492 Program.sv:497 Program.sv:502 Program.sv:507 Program.sv:512 Program.sv:517 Program.sv:522 Program.sv:527 Program.sv:538 Program.sv:543 Program.sv:548 Program.sv:563 Program.sv:568 Program.sv:573 Program.sv:584 Program.sv:589 Program.sv:594 Program.sv:609 Program.sv:614 Program.sv:619 ) |
==============================================================================

Datapath Report for DP_OP_277_159_6291
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_277_159_6291   | add_395 (Program.sv:395) add_395_2 (Program.sv:395) |
|                      | add_395_3 (Program.sv:395) add_432 (Program.sv:432) |
|                      | add_432_2 (Program.sv:432)                          |
|                      | add_438_2 (Program.sv:438) add_438 (Program.sv:438) |
|                      | add_438_3 (Program.sv:438) C3931 (Program.sv:423)   |
|                      | C3933 (Program.sv:392) add_424 (Program.sv:424)     |
|                      | add_426 (Program.sv:426) sub_400 (Program.sv:400)   |
|                      | add_411 (Program.sv:411) add_411_2 (Program.sv:411) |
|                      | add_418 (Program.sv:418) add_418_2 (Program.sv:418) |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 12    |                                          |
| I2    | PI   | Unsigned | 12    |                                          |
| I3    | PI   | Signed   | 14    |                                          |
| I4    | PI   | Unsigned | 1     |                                          |
| I5    | PI   | Unsigned | 1     |                                          |
| I6    | PI   | Unsigned | 1     |                                          |
| I7    | PI   | Unsigned | 1     |                                          |
| I8    | PI   | Unsigned | 13    |                                          |
| I9    | PI   | Unsigned | 1     |                                          |
| I10   | PI   | Unsigned | 1     |                                          |
| I11   | PI   | Unsigned | 1     |                                          |
| T272  | IFO  | Unsigned | 13    | I1 + I2 ( Program.sv:395 Program.sv:432 Program.sv:438 ) |
| T256  | IFO  | Signed   | 14    | { I4, I5 } ? I3 : T272 ( Program.sv:392 Program.sv:423 ) |
| T235  | IFO  | Unsigned | 2     | I10 + I11 ( Program.sv:411 Program.sv:418 ) |
| T267  | IFO  | Unsigned | 13    | { I7, I9 } ? T235 : I8 ( Program.sv:392 Program.sv:423 ) |
| O1    | PO   | Signed   | 14    | addsub(T256,T267,I6) ( Program.sv:395 Program.sv:400 Program.sv:411 Program.sv:418 Program.sv:424 Program.sv:426 Program.sv:432 Program.sv:438 ) |
==============================================================================

Datapath Report for DP_OP_278_160_4745
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_278_160_4745   | add_395 (Program.sv:395) add_395_2 (Program.sv:395) |
|                      | add_395_3 (Program.sv:395)                          |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 12    |                                          |
| I2    | PI   | Unsigned | 12    |                                          |
| O1    | PO   | Unsigned | 13    | I1 + I2 (Program.sv:395)                 |
==============================================================================

Datapath Report for DP_OP_279_161_4745
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_279_161_4745   | add_438_2 (Program.sv:438) add_438 (Program.sv:438) |
|                      | add_438_3 (Program.sv:438)                          |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 12    |                                          |
| I2    | PI   | Unsigned | 12    |                                          |
| O1    | PO   | Unsigned | 13    | I1 + I2 (Program.sv:438)                 |
==============================================================================

Datapath Report for DP_OP_48_157_8840
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_48_157_8840    | sub_271 (Program.sv:271) sub_273 (Program.sv:273)   |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 12    |                                          |
| I2    | PI   | Signed   | 12    |                                          |
| O1    | PO   | Signed   | 12    | I1 - I2 ( Program.sv:271 Program.sv:273 ) |
==============================================================================

Datapath Report for DP_OP_44_156_8703
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_44_156_8703    | sub_261 (Program.sv:261) sub_263 (Program.sv:263)   |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 12    |                                          |
| I2    | PI   | Signed   | 12    |                                          |
| O1    | PO   | Signed   | 12    | I1 - I2 ( Program.sv:261 Program.sv:263 ) |
==============================================================================

Datapath Report for DP_OP_40_155_7065
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_40_155_7065    | sub_251 (Program.sv:251) sub_253 (Program.sv:253)   |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 12    |                                          |
| I2    | PI   | Signed   | 12    |                                          |
| O1    | PO   | Signed   | 12    | I1 - I2 ( Program.sv:251 Program.sv:253 ) |
==============================================================================

Datapath Report for DP_OP_36_158_1194
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_36_158_1194    | sub_241 (Program.sv:241) sub_243 (Program.sv:243)   |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 12    |                                          |
| I2    | PI   | Signed   | 12    |                                          |
| O1    | PO   | Signed   | 12    | I1 - I2 ( Program.sv:241 Program.sv:243 ) |
==============================================================================


Resource Report for Ungrouped Hierarchy div_49
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| gte_x_20           | DW_cmp           | apparch (area)     |                |
| gte_x_23           | DW_cmp           | apparch (area)     |                |
| gte_x_26           | DW_cmp           | apparch (area)     |                |
| gte_x_27           | DW_cmp           | apparch (area)     |                |
| gte_x_28           | DW_cmp           | apparch (area)     |                |
| gte_x_29           | DW_cmp           | apparch (area)     |                |
| div_49             | DW_div_uns       | cla2               |                |
| lt_x_52            | DW_cmp           | apparch (area)     |                |
| eq_x_53            | DW_cmp           | apparch (area)     |                |
| lt_x_54            | DW_cmp           | apparch (area)     |                |
| add_x_79           | DW01_add         | apparch (area)     |                |
| add_x_80           | DW01_add         | apparch (area)     |                |
| add_x_81           | DW01_add         | apparch (area)     |                |
| add_x_82           | DW01_add         | apparch (area)     |                |
| add_x_1            | DW01_inc         | apparch (area)     |                |
| DP_OP_281J1_144_48 | DP_OP_281J1_144_48 | str (area)       |                |
| DP_OP_277_159_6291 | DP_OP_277_159_6291 | str (area,speed) |                |
| DP_OP_278_160_4745 | DP_OP_278_160_4745 | str (area,speed) |                |
| DP_OP_279_161_4745 | DP_OP_279_161_4745 | str (area,speed) |                |
| DP_OP_48_157_8840  | DP_OP_48_157_8840 | str (area,speed)  |                |
| DP_OP_44_156_8703  | DP_OP_44_156_8703 | str (area,speed)  |                |
| DP_OP_40_155_7065  | DP_OP_40_155_7065 | str (area,speed)  |                |
| DP_OP_36_158_1194  | DP_OP_36_158_1194 | str (area,speed)  |                |
===============================================================================

1
