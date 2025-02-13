 
****************************************
Report : resources
Design : SA
Version: T-2022.03
Date   : Tue Nov 12 00:11:22 2024
****************************************


Resource Report for this hierarchy in file ../01_RTL/SA.v
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| div_10         | DW_div_tc      | a_width=41 | div_268 (SA.v:268)         |
|                |                | b_width=3  |                            |
| gte_x_11       | DW_cmp         | width=41   | gte_272 (SA.v:272)         |
| lte_x_13       | DW_cmp         | width=6    | lte_364 (SA.v:364)         |
| add_x_17       | DW01_inc       | width=2    | add_385 (SA.v:385)         |
| add_x_20       | DW01_inc       | width=6    | add_393 (SA.v:393)         |
| lte_x_25       | DW_cmp         | width=7    | lte_417 (SA.v:417)         |
| lte_x_27       | DW_cmp         | width=6    | lte_492 (SA.v:492)         |
| add_x_381      | DW01_inc       | width=7    | add_3845 (SA.v:3845)       |
| add_x_384      | DW01_inc       | width=7    | add_3856 (SA.v:3856)       |
| add_x_387      | DW01_inc       | width=7    | add_3867 (SA.v:3867)       |
| gte_x_391      | DW_cmp         | width=7    | gte_3898 (SA.v:3898)       |
| lte_x_392      | DW_cmp         | width=6    | lte_100 (SA.v:100)         |
|                |                |            | lte_101 (SA.v:101)         |
|                |                |            | lte_102 (SA.v:102)         |
|                |                |            | lte_557 (SA.v:557)         |
| gte_x_393      | DW_cmp         | width=6    | gte_100_2 (SA.v:100)       |
|                |                |            | gte_101_2 (SA.v:101)       |
|                |                |            | gte_102_2 (SA.v:102)       |
|                |                |            | gte_492 (SA.v:492)         |
| lte_x_394      | DW_cmp         | width=7    | lte_100_2 (SA.v:100)       |
|                |                |            | lte_101_2 (SA.v:101)       |
|                |                |            | lte_102_2 (SA.v:102)       |
|                |                |            | lte_3635 (SA.v:3635)       |
| DP_OP_833J1_122_9129            |            |                            |
|                | DP_OP_833J1_122_9129 |      |                            |
| DP_OP_834J1_123_9129            |            |                            |
|                | DP_OP_834J1_123_9129 |      |                            |
| DP_OP_835J1_124_9129            |            |                            |
|                | DP_OP_835J1_124_9129 |      |                            |
| DP_OP_836J1_125_9129            |            |                            |
|                | DP_OP_836J1_125_9129 |      |                            |
| DP_OP_837J1_126_9129            |            |                            |
|                | DP_OP_837J1_126_9129 |      |                            |
| DP_OP_838J1_127_9129            |            |                            |
|                | DP_OP_838J1_127_9129 |      |                            |
| DP_OP_839J1_128_9129            |            |                            |
|                | DP_OP_839J1_128_9129 |      |                            |
| DP_OP_840J1_129_9164            |            |                            |
|                | DP_OP_840J1_129_9164 |      |                            |
=============================================================================

Datapath Report for DP_OP_833J1_122_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_833J1_122_9129 | mult_281 (SA.v:281) add_281 (SA.v:281)              |
|                      | add_281_2 (SA.v:281) add_281_3 (SA.v:281)           |
|                      | add_281_4 (SA.v:281) add_281_5 (SA.v:281)           |
|                      | add_281_6 (SA.v:281) add_281_7 (SA.v:281)           |
|                      | mult_281_2 (SA.v:281) mult_281_3 (SA.v:281)         |
|                      | mult_281_4 (SA.v:281) mult_281_5 (SA.v:281)         |
|                      | mult_281_6 (SA.v:281) mult_281_7 (SA.v:281)         |
|                      | mult_281_8 (SA.v:281)                               |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 19    |                                          |
| I2    | PI   | Signed   | 19    |                                          |
| I3    | PI   | Signed   | 19    |                                          |
| I4    | PI   | Signed   | 19    |                                          |
| I5    | PI   | Signed   | 19    |                                          |
| I6    | PI   | Signed   | 19    |                                          |
| I7    | PI   | Signed   | 19    |                                          |
| I8    | PI   | Signed   | 19    |                                          |
| I9    | PI   | Signed   | 19    |                                          |
| I10   | PI   | Signed   | 19    |                                          |
| I11   | PI   | Signed   | 19    |                                          |
| I12   | PI   | Signed   | 19    |                                          |
| I13   | PI   | Signed   | 19    |                                          |
| I14   | PI   | Signed   | 19    |                                          |
| I15   | PI   | Signed   | 19    |                                          |
| I16   | PI   | Signed   | 19    |                                          |
| T21   | IFO  | Signed   | 38    | I1 * I2 (SA.v:281)                       |
| T22   | IFO  | Signed   | 38    | I3 * I4 (SA.v:281)                       |
| T24   | IFO  | Signed   | 38    | I5 * I6 (SA.v:281)                       |
| T26   | IFO  | Signed   | 38    | I7 * I8 (SA.v:281)                       |
| T28   | IFO  | Signed   | 38    | I9 * I10 (SA.v:281)                      |
| T30   | IFO  | Signed   | 38    | I11 * I12 (SA.v:281)                     |
| T32   | IFO  | Signed   | 38    | I13 * I14 (SA.v:281)                     |
| T34   | IFO  | Signed   | 38    | I15 * I16 (SA.v:281)                     |
| O1    | PO   | Signed   | 41    | T21 + T22 + T24 + T26 + T28 + T30 + T32 + T34 (SA.v:281) |
==============================================================================

Datapath Report for DP_OP_834J1_123_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_834J1_123_9129 | mult_290 (SA.v:290) add_290 (SA.v:290)              |
|                      | add_290_2 (SA.v:290) add_290_3 (SA.v:290)           |
|                      | add_290_4 (SA.v:290) add_290_5 (SA.v:290)           |
|                      | add_290_6 (SA.v:290) add_290_7 (SA.v:290)           |
|                      | mult_290_2 (SA.v:290) mult_290_3 (SA.v:290)         |
|                      | mult_290_4 (SA.v:290) mult_290_5 (SA.v:290)         |
|                      | mult_290_6 (SA.v:290) mult_290_7 (SA.v:290)         |
|                      | mult_290_8 (SA.v:290)                               |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 19    |                                          |
| I2    | PI   | Signed   | 19    |                                          |
| I3    | PI   | Signed   | 19    |                                          |
| I4    | PI   | Signed   | 19    |                                          |
| I5    | PI   | Signed   | 19    |                                          |
| I6    | PI   | Signed   | 19    |                                          |
| I7    | PI   | Signed   | 19    |                                          |
| I8    | PI   | Signed   | 19    |                                          |
| I9    | PI   | Signed   | 19    |                                          |
| I10   | PI   | Signed   | 19    |                                          |
| I11   | PI   | Signed   | 19    |                                          |
| I12   | PI   | Signed   | 19    |                                          |
| I13   | PI   | Signed   | 19    |                                          |
| I14   | PI   | Signed   | 19    |                                          |
| I15   | PI   | Signed   | 19    |                                          |
| I16   | PI   | Signed   | 19    |                                          |
| T36   | IFO  | Signed   | 38    | I1 * I2 (SA.v:290)                       |
| T37   | IFO  | Signed   | 38    | I3 * I4 (SA.v:290)                       |
| T39   | IFO  | Signed   | 38    | I5 * I6 (SA.v:290)                       |
| T41   | IFO  | Signed   | 38    | I7 * I8 (SA.v:290)                       |
| T43   | IFO  | Signed   | 38    | I9 * I10 (SA.v:290)                      |
| T45   | IFO  | Signed   | 38    | I11 * I12 (SA.v:290)                     |
| T47   | IFO  | Signed   | 38    | I13 * I14 (SA.v:290)                     |
| T49   | IFO  | Signed   | 38    | I15 * I16 (SA.v:290)                     |
| O1    | PO   | Signed   | 41    | T36 + T37 + T39 + T41 + T43 + T45 + T47 + T49 (SA.v:290) |
==============================================================================

Datapath Report for DP_OP_835J1_124_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_835J1_124_9129 | mult_299 (SA.v:299) add_299 (SA.v:299)              |
|                      | add_299_2 (SA.v:299) add_299_3 (SA.v:299)           |
|                      | add_299_4 (SA.v:299) add_299_5 (SA.v:299)           |
|                      | add_299_6 (SA.v:299) add_299_7 (SA.v:299)           |
|                      | mult_299_2 (SA.v:299) mult_299_3 (SA.v:299)         |
|                      | mult_299_4 (SA.v:299) mult_299_5 (SA.v:299)         |
|                      | mult_299_6 (SA.v:299) mult_299_7 (SA.v:299)         |
|                      | mult_299_8 (SA.v:299)                               |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 19    |                                          |
| I2    | PI   | Signed   | 19    |                                          |
| I3    | PI   | Signed   | 19    |                                          |
| I4    | PI   | Signed   | 19    |                                          |
| I5    | PI   | Signed   | 19    |                                          |
| I6    | PI   | Signed   | 19    |                                          |
| I7    | PI   | Signed   | 19    |                                          |
| I8    | PI   | Signed   | 19    |                                          |
| I9    | PI   | Signed   | 19    |                                          |
| I10   | PI   | Signed   | 19    |                                          |
| I11   | PI   | Signed   | 19    |                                          |
| I12   | PI   | Signed   | 19    |                                          |
| I13   | PI   | Signed   | 19    |                                          |
| I14   | PI   | Signed   | 19    |                                          |
| I15   | PI   | Signed   | 19    |                                          |
| I16   | PI   | Signed   | 19    |                                          |
| T51   | IFO  | Signed   | 38    | I1 * I2 (SA.v:299)                       |
| T52   | IFO  | Signed   | 38    | I3 * I4 (SA.v:299)                       |
| T54   | IFO  | Signed   | 38    | I5 * I6 (SA.v:299)                       |
| T56   | IFO  | Signed   | 38    | I7 * I8 (SA.v:299)                       |
| T58   | IFO  | Signed   | 38    | I9 * I10 (SA.v:299)                      |
| T60   | IFO  | Signed   | 38    | I11 * I12 (SA.v:299)                     |
| T62   | IFO  | Signed   | 38    | I13 * I14 (SA.v:299)                     |
| T64   | IFO  | Signed   | 38    | I15 * I16 (SA.v:299)                     |
| O1    | PO   | Signed   | 41    | T51 + T52 + T54 + T56 + T58 + T60 + T62 + T64 (SA.v:299) |
==============================================================================

Datapath Report for DP_OP_836J1_125_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_836J1_125_9129 | mult_308 (SA.v:308) add_308 (SA.v:308)              |
|                      | add_308_2 (SA.v:308) add_308_3 (SA.v:308)           |
|                      | add_308_4 (SA.v:308) add_308_5 (SA.v:308)           |
|                      | add_308_6 (SA.v:308) add_308_7 (SA.v:308)           |
|                      | mult_308_2 (SA.v:308) mult_308_3 (SA.v:308)         |
|                      | mult_308_4 (SA.v:308) mult_308_5 (SA.v:308)         |
|                      | mult_308_6 (SA.v:308) mult_308_7 (SA.v:308)         |
|                      | mult_308_8 (SA.v:308)                               |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 19    |                                          |
| I2    | PI   | Signed   | 19    |                                          |
| I3    | PI   | Signed   | 19    |                                          |
| I4    | PI   | Signed   | 19    |                                          |
| I5    | PI   | Signed   | 19    |                                          |
| I6    | PI   | Signed   | 19    |                                          |
| I7    | PI   | Signed   | 19    |                                          |
| I8    | PI   | Signed   | 19    |                                          |
| I9    | PI   | Signed   | 19    |                                          |
| I10   | PI   | Signed   | 19    |                                          |
| I11   | PI   | Signed   | 19    |                                          |
| I12   | PI   | Signed   | 19    |                                          |
| I13   | PI   | Signed   | 19    |                                          |
| I14   | PI   | Signed   | 19    |                                          |
| I15   | PI   | Signed   | 19    |                                          |
| I16   | PI   | Signed   | 19    |                                          |
| T66   | IFO  | Signed   | 38    | I1 * I2 (SA.v:308)                       |
| T67   | IFO  | Signed   | 38    | I3 * I4 (SA.v:308)                       |
| T69   | IFO  | Signed   | 38    | I5 * I6 (SA.v:308)                       |
| T71   | IFO  | Signed   | 38    | I7 * I8 (SA.v:308)                       |
| T73   | IFO  | Signed   | 38    | I9 * I10 (SA.v:308)                      |
| T75   | IFO  | Signed   | 38    | I11 * I12 (SA.v:308)                     |
| T77   | IFO  | Signed   | 38    | I13 * I14 (SA.v:308)                     |
| T79   | IFO  | Signed   | 38    | I15 * I16 (SA.v:308)                     |
| O1    | PO   | Signed   | 41    | T66 + T67 + T69 + T71 + T73 + T75 + T77 + T79 (SA.v:308) |
==============================================================================

Datapath Report for DP_OP_837J1_126_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_837J1_126_9129 | mult_317 (SA.v:317) add_317 (SA.v:317)              |
|                      | add_317_2 (SA.v:317) add_317_3 (SA.v:317)           |
|                      | add_317_4 (SA.v:317) add_317_5 (SA.v:317)           |
|                      | add_317_6 (SA.v:317) add_317_7 (SA.v:317)           |
|                      | mult_317_2 (SA.v:317) mult_317_3 (SA.v:317)         |
|                      | mult_317_4 (SA.v:317) mult_317_5 (SA.v:317)         |
|                      | mult_317_6 (SA.v:317) mult_317_7 (SA.v:317)         |
|                      | mult_317_8 (SA.v:317)                               |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 19    |                                          |
| I2    | PI   | Signed   | 19    |                                          |
| I3    | PI   | Signed   | 19    |                                          |
| I4    | PI   | Signed   | 19    |                                          |
| I5    | PI   | Signed   | 19    |                                          |
| I6    | PI   | Signed   | 19    |                                          |
| I7    | PI   | Signed   | 19    |                                          |
| I8    | PI   | Signed   | 19    |                                          |
| I9    | PI   | Signed   | 19    |                                          |
| I10   | PI   | Signed   | 19    |                                          |
| I11   | PI   | Signed   | 19    |                                          |
| I12   | PI   | Signed   | 19    |                                          |
| I13   | PI   | Signed   | 19    |                                          |
| I14   | PI   | Signed   | 19    |                                          |
| I15   | PI   | Signed   | 19    |                                          |
| I16   | PI   | Signed   | 19    |                                          |
| T81   | IFO  | Signed   | 38    | I1 * I2 (SA.v:317)                       |
| T82   | IFO  | Signed   | 38    | I3 * I4 (SA.v:317)                       |
| T84   | IFO  | Signed   | 38    | I5 * I6 (SA.v:317)                       |
| T86   | IFO  | Signed   | 38    | I7 * I8 (SA.v:317)                       |
| T88   | IFO  | Signed   | 38    | I9 * I10 (SA.v:317)                      |
| T90   | IFO  | Signed   | 38    | I11 * I12 (SA.v:317)                     |
| T92   | IFO  | Signed   | 38    | I13 * I14 (SA.v:317)                     |
| T94   | IFO  | Signed   | 38    | I15 * I16 (SA.v:317)                     |
| O1    | PO   | Signed   | 41    | T81 + T82 + T84 + T86 + T88 + T90 + T92 + T94 (SA.v:317) |
==============================================================================

Datapath Report for DP_OP_838J1_127_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_838J1_127_9129 | mult_326 (SA.v:326) add_326 (SA.v:326)              |
|                      | add_326_2 (SA.v:326) add_326_3 (SA.v:326)           |
|                      | add_326_4 (SA.v:326) add_326_5 (SA.v:326)           |
|                      | add_326_6 (SA.v:326) add_326_7 (SA.v:326)           |
|                      | mult_326_2 (SA.v:326) mult_326_3 (SA.v:326)         |
|                      | mult_326_4 (SA.v:326) mult_326_5 (SA.v:326)         |
|                      | mult_326_6 (SA.v:326) mult_326_7 (SA.v:326)         |
|                      | mult_326_8 (SA.v:326)                               |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 19    |                                          |
| I2    | PI   | Signed   | 19    |                                          |
| I3    | PI   | Signed   | 19    |                                          |
| I4    | PI   | Signed   | 19    |                                          |
| I5    | PI   | Signed   | 19    |                                          |
| I6    | PI   | Signed   | 19    |                                          |
| I7    | PI   | Signed   | 19    |                                          |
| I8    | PI   | Signed   | 19    |                                          |
| I9    | PI   | Signed   | 19    |                                          |
| I10   | PI   | Signed   | 19    |                                          |
| I11   | PI   | Signed   | 19    |                                          |
| I12   | PI   | Signed   | 19    |                                          |
| I13   | PI   | Signed   | 19    |                                          |
| I14   | PI   | Signed   | 19    |                                          |
| I15   | PI   | Signed   | 19    |                                          |
| I16   | PI   | Signed   | 19    |                                          |
| T96   | IFO  | Signed   | 38    | I1 * I2 (SA.v:326)                       |
| T97   | IFO  | Signed   | 38    | I3 * I4 (SA.v:326)                       |
| T99   | IFO  | Signed   | 38    | I5 * I6 (SA.v:326)                       |
| T101  | IFO  | Signed   | 38    | I7 * I8 (SA.v:326)                       |
| T103  | IFO  | Signed   | 38    | I9 * I10 (SA.v:326)                      |
| T105  | IFO  | Signed   | 38    | I11 * I12 (SA.v:326)                     |
| T107  | IFO  | Signed   | 38    | I13 * I14 (SA.v:326)                     |
| T109  | IFO  | Signed   | 38    | I15 * I16 (SA.v:326)                     |
| O1    | PO   | Signed   | 41    | T96 + T97 + T99 + T101 + T103 + T105 + T107 + T109 (SA.v:326) |
==============================================================================

Datapath Report for DP_OP_839J1_128_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_839J1_128_9129 | mult_335 (SA.v:335) add_335 (SA.v:335)              |
|                      | add_335_2 (SA.v:335) add_335_3 (SA.v:335)           |
|                      | add_335_4 (SA.v:335) add_335_5 (SA.v:335)           |
|                      | add_335_6 (SA.v:335) add_335_7 (SA.v:335)           |
|                      | mult_335_2 (SA.v:335) mult_335_3 (SA.v:335)         |
|                      | mult_335_4 (SA.v:335) mult_335_5 (SA.v:335)         |
|                      | mult_335_6 (SA.v:335) mult_335_7 (SA.v:335)         |
|                      | mult_335_8 (SA.v:335)                               |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 19    |                                          |
| I2    | PI   | Signed   | 19    |                                          |
| I3    | PI   | Signed   | 19    |                                          |
| I4    | PI   | Signed   | 19    |                                          |
| I5    | PI   | Signed   | 19    |                                          |
| I6    | PI   | Signed   | 19    |                                          |
| I7    | PI   | Signed   | 19    |                                          |
| I8    | PI   | Signed   | 19    |                                          |
| I9    | PI   | Signed   | 19    |                                          |
| I10   | PI   | Signed   | 19    |                                          |
| I11   | PI   | Signed   | 19    |                                          |
| I12   | PI   | Signed   | 19    |                                          |
| I13   | PI   | Signed   | 19    |                                          |
| I14   | PI   | Signed   | 19    |                                          |
| I15   | PI   | Signed   | 19    |                                          |
| I16   | PI   | Signed   | 19    |                                          |
| T111  | IFO  | Signed   | 38    | I1 * I2 (SA.v:335)                       |
| T112  | IFO  | Signed   | 38    | I3 * I4 (SA.v:335)                       |
| T114  | IFO  | Signed   | 38    | I5 * I6 (SA.v:335)                       |
| T116  | IFO  | Signed   | 38    | I7 * I8 (SA.v:335)                       |
| T118  | IFO  | Signed   | 38    | I9 * I10 (SA.v:335)                      |
| T120  | IFO  | Signed   | 38    | I11 * I12 (SA.v:335)                     |
| T122  | IFO  | Signed   | 38    | I13 * I14 (SA.v:335)                     |
| T124  | IFO  | Signed   | 38    | I15 * I16 (SA.v:335)                     |
| O1    | PO   | Signed   | 41    | T111 + T112 + T114 + T116 + T118 + T120 + T122 + T124 (SA.v:335) |
==============================================================================

Datapath Report for DP_OP_840J1_129_9164
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_840J1_129_9164 | mult_344 (SA.v:344) add_344 (SA.v:344)              |
|                      | add_344_2 (SA.v:344) add_344_3 (SA.v:344)           |
|                      | add_344_4 (SA.v:344) add_344_5 (SA.v:344)           |
|                      | add_344_6 (SA.v:344) add_344_7 (SA.v:344)           |
|                      | mult_344_2 (SA.v:344) mult_344_3 (SA.v:344)         |
|                      | mult_344_4 (SA.v:344) mult_344_5 (SA.v:344)         |
|                      | mult_344_6 (SA.v:344) mult_344_7 (SA.v:344)         |
|                      | mult_344_8 (SA.v:344)                               |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 41    |                                          |
| I2    | PI   | Signed   | 19    |                                          |
| I3    | PI   | Signed   | 41    |                                          |
| I4    | PI   | Signed   | 19    |                                          |
| I5    | PI   | Signed   | 41    |                                          |
| I6    | PI   | Signed   | 19    |                                          |
| I7    | PI   | Signed   | 41    |                                          |
| I8    | PI   | Signed   | 19    |                                          |
| I9    | PI   | Signed   | 41    |                                          |
| I10   | PI   | Signed   | 19    |                                          |
| I11   | PI   | Signed   | 41    |                                          |
| I12   | PI   | Signed   | 19    |                                          |
| I13   | PI   | Signed   | 41    |                                          |
| I14   | PI   | Signed   | 19    |                                          |
| I15   | PI   | Signed   | 41    |                                          |
| I16   | PI   | Signed   | 19    |                                          |
| T126  | IFO  | Signed   | 60    | I1 * I2 (SA.v:344)                       |
| T127  | IFO  | Signed   | 60    | I3 * I4 (SA.v:344)                       |
| T129  | IFO  | Signed   | 60    | I5 * I6 (SA.v:344)                       |
| T131  | IFO  | Signed   | 60    | I7 * I8 (SA.v:344)                       |
| T133  | IFO  | Signed   | 60    | I9 * I10 (SA.v:344)                      |
| T135  | IFO  | Signed   | 60    | I11 * I12 (SA.v:344)                     |
| T137  | IFO  | Signed   | 60    | I13 * I14 (SA.v:344)                     |
| T139  | IFO  | Signed   | 60    | I15 * I16 (SA.v:344)                     |
| O1    | PO   | Signed   | 64    | T126 + T127 + T129 + T131 + T133 + T135 + T137 + T139 (SA.v:344) |
==============================================================================


Resource Report for Ungrouped Hierarchy div_10/u_div/u_absval_AAbs
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| NEG            | DW01_inc       | width=41   | NEG                        |
=============================================================================


Resource Report for Ungrouped Hierarchy div_10
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| div_10             | DW_div_tc        | cla                |                |
| gte_x_11           | DW_cmp           | apparch (area)     |                |
| lte_x_13           | DW_cmp           | apparch (area)     |                |
| add_x_17           | DW01_inc         | apparch (area)     |                |
| add_x_20           | DW01_inc         | apparch (area)     |                |
| lte_x_25           | DW_cmp           | apparch (area)     |                |
| lte_x_27           | DW_cmp           | apparch (area)     |                |
| add_x_381          | DW01_inc         | apparch (area)     |                |
| add_x_384          | DW01_inc         | apparch (area)     |                |
| add_x_387          | DW01_inc         | apparch (area)     |                |
| gte_x_391          | DW_cmp           | apparch (area)     |                |
| lte_x_392          | DW_cmp           | apparch (area)     |                |
| gte_x_393          | DW_cmp           | apparch (area)     |                |
| lte_x_394          | DW_cmp           | apparch (area)     |                |
| NEG                | DW01_inc         | cla                |                |
| DP_OP_833J1_122_9129                  |                    |                |
|                    | DP_OP_833J1_122_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_834J1_123_9129                  |                    |                |
|                    | DP_OP_834J1_123_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_835J1_124_9129                  |                    |                |
|                    | DP_OP_835J1_124_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_836J1_125_9129                  |                    |                |
|                    | DP_OP_836J1_125_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_837J1_126_9129                  |                    |                |
|                    | DP_OP_837J1_126_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_838J1_127_9129                  |                    |                |
|                    | DP_OP_838J1_127_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_839J1_128_9129                  |                    |                |
|                    | DP_OP_839J1_128_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_840J1_129_9164                  |                    |                |
|                    | DP_OP_840J1_129_9164 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
===============================================================================

1
