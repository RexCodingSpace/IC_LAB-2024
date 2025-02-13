 
****************************************
Report : resources
Design : SA
Version: T-2022.03
Date   : Tue Nov 12 00:14:50 2024
****************************************


Resource Report for this hierarchy in file ../01_RTL/SA_wocg.v
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| div_10         | DW_div_tc      | a_width=41 | div_172 (SA_wocg.v:172)    |
|                |                | b_width=3  |                            |
| gte_x_11       | DW_cmp         | width=41   | gte_176 (SA_wocg.v:176)    |
| lte_x_13       | DW_cmp         | width=6    | lte_268 (SA_wocg.v:268)    |
| add_x_17       | DW01_inc       | width=2    | add_289 (SA_wocg.v:289)    |
| add_x_20       | DW01_inc       | width=6    | add_297 (SA_wocg.v:297)    |
| lte_x_25       | DW_cmp         | width=7    | lte_321 (SA_wocg.v:321)    |
| gte_x_27       | DW_cmp         | width=6    | gte_396 (SA_wocg.v:396)    |
| lte_x_28       | DW_cmp         | width=6    | lte_396 (SA_wocg.v:396)    |
| lte_x_29       | DW_cmp         | width=6    | lte_461 (SA_wocg.v:461)    |
| lte_x_379      | DW_cmp         | width=7    | lte_3539 (SA_wocg.v:3539)  |
| add_x_384      | DW01_inc       | width=7    | add_3749 (SA_wocg.v:3749)  |
| add_x_387      | DW01_inc       | width=7    | add_3760 (SA_wocg.v:3760)  |
| add_x_390      | DW01_inc       | width=7    | add_3771 (SA_wocg.v:3771)  |
| gte_x_394      | DW_cmp         | width=7    | gte_3802 (SA_wocg.v:3802)  |
| DP_OP_812J1_122_9129            |            |                            |
|                | DP_OP_812J1_122_9129 |      |                            |
| DP_OP_813J1_123_9129            |            |                            |
|                | DP_OP_813J1_123_9129 |      |                            |
| DP_OP_814J1_124_9129            |            |                            |
|                | DP_OP_814J1_124_9129 |      |                            |
| DP_OP_815J1_125_9129            |            |                            |
|                | DP_OP_815J1_125_9129 |      |                            |
| DP_OP_816J1_126_9129            |            |                            |
|                | DP_OP_816J1_126_9129 |      |                            |
| DP_OP_817J1_127_9129            |            |                            |
|                | DP_OP_817J1_127_9129 |      |                            |
| DP_OP_818J1_128_9129            |            |                            |
|                | DP_OP_818J1_128_9129 |      |                            |
| DP_OP_819J1_129_9164            |            |                            |
|                | DP_OP_819J1_129_9164 |      |                            |
=============================================================================

Datapath Report for DP_OP_812J1_122_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_812J1_122_9129 | mult_185 (SA_wocg.v:185) add_185 (SA_wocg.v:185)    |
|                      | add_185_2 (SA_wocg.v:185) add_185_3 (SA_wocg.v:185) |
|                      | add_185_4 (SA_wocg.v:185) add_185_5 (SA_wocg.v:185) |
|                      | add_185_6 (SA_wocg.v:185) add_185_7 (SA_wocg.v:185) |
|                      | mult_185_2 (SA_wocg.v:185)                          |
|                      | mult_185_3 (SA_wocg.v:185)                          |
|                      | mult_185_4 (SA_wocg.v:185)                          |
|                      | mult_185_5 (SA_wocg.v:185)                          |
|                      | mult_185_6 (SA_wocg.v:185)                          |
|                      | mult_185_7 (SA_wocg.v:185)                          |
|                      | mult_185_8 (SA_wocg.v:185)                          |
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
| T12   | IFO  | Signed   | 38    | I1 * I2 (SA_wocg.v:185)                  |
| T13   | IFO  | Signed   | 38    | I3 * I4 (SA_wocg.v:185)                  |
| T15   | IFO  | Signed   | 38    | I5 * I6 (SA_wocg.v:185)                  |
| T17   | IFO  | Signed   | 38    | I7 * I8 (SA_wocg.v:185)                  |
| T19   | IFO  | Signed   | 38    | I9 * I10 (SA_wocg.v:185)                 |
| T21   | IFO  | Signed   | 38    | I11 * I12 (SA_wocg.v:185)                |
| T23   | IFO  | Signed   | 38    | I13 * I14 (SA_wocg.v:185)                |
| T25   | IFO  | Signed   | 38    | I15 * I16 (SA_wocg.v:185)                |
| O1    | PO   | Signed   | 41    | T12 + T13 + T15 + T17 + T19 + T21 + T23 + T25 (SA_wocg.v:185) |
==============================================================================

Datapath Report for DP_OP_813J1_123_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_813J1_123_9129 | mult_194 (SA_wocg.v:194) add_194 (SA_wocg.v:194)    |
|                      | add_194_2 (SA_wocg.v:194) add_194_3 (SA_wocg.v:194) |
|                      | add_194_4 (SA_wocg.v:194) add_194_5 (SA_wocg.v:194) |
|                      | add_194_6 (SA_wocg.v:194) add_194_7 (SA_wocg.v:194) |
|                      | mult_194_2 (SA_wocg.v:194)                          |
|                      | mult_194_3 (SA_wocg.v:194)                          |
|                      | mult_194_4 (SA_wocg.v:194)                          |
|                      | mult_194_5 (SA_wocg.v:194)                          |
|                      | mult_194_6 (SA_wocg.v:194)                          |
|                      | mult_194_7 (SA_wocg.v:194)                          |
|                      | mult_194_8 (SA_wocg.v:194)                          |
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
| T27   | IFO  | Signed   | 38    | I1 * I2 (SA_wocg.v:194)                  |
| T28   | IFO  | Signed   | 38    | I3 * I4 (SA_wocg.v:194)                  |
| T30   | IFO  | Signed   | 38    | I5 * I6 (SA_wocg.v:194)                  |
| T32   | IFO  | Signed   | 38    | I7 * I8 (SA_wocg.v:194)                  |
| T34   | IFO  | Signed   | 38    | I9 * I10 (SA_wocg.v:194)                 |
| T36   | IFO  | Signed   | 38    | I11 * I12 (SA_wocg.v:194)                |
| T38   | IFO  | Signed   | 38    | I13 * I14 (SA_wocg.v:194)                |
| T40   | IFO  | Signed   | 38    | I15 * I16 (SA_wocg.v:194)                |
| O1    | PO   | Signed   | 41    | T27 + T28 + T30 + T32 + T34 + T36 + T38 + T40 (SA_wocg.v:194) |
==============================================================================

Datapath Report for DP_OP_814J1_124_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_814J1_124_9129 | mult_203 (SA_wocg.v:203) add_203 (SA_wocg.v:203)    |
|                      | add_203_2 (SA_wocg.v:203) add_203_3 (SA_wocg.v:203) |
|                      | add_203_4 (SA_wocg.v:203) add_203_5 (SA_wocg.v:203) |
|                      | add_203_6 (SA_wocg.v:203) add_203_7 (SA_wocg.v:203) |
|                      | mult_203_2 (SA_wocg.v:203)                          |
|                      | mult_203_3 (SA_wocg.v:203)                          |
|                      | mult_203_4 (SA_wocg.v:203)                          |
|                      | mult_203_5 (SA_wocg.v:203)                          |
|                      | mult_203_6 (SA_wocg.v:203)                          |
|                      | mult_203_7 (SA_wocg.v:203)                          |
|                      | mult_203_8 (SA_wocg.v:203)                          |
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
| T42   | IFO  | Signed   | 38    | I1 * I2 (SA_wocg.v:203)                  |
| T43   | IFO  | Signed   | 38    | I3 * I4 (SA_wocg.v:203)                  |
| T45   | IFO  | Signed   | 38    | I5 * I6 (SA_wocg.v:203)                  |
| T47   | IFO  | Signed   | 38    | I7 * I8 (SA_wocg.v:203)                  |
| T49   | IFO  | Signed   | 38    | I9 * I10 (SA_wocg.v:203)                 |
| T51   | IFO  | Signed   | 38    | I11 * I12 (SA_wocg.v:203)                |
| T53   | IFO  | Signed   | 38    | I13 * I14 (SA_wocg.v:203)                |
| T55   | IFO  | Signed   | 38    | I15 * I16 (SA_wocg.v:203)                |
| O1    | PO   | Signed   | 41    | T42 + T43 + T45 + T47 + T49 + T51 + T53 + T55 (SA_wocg.v:203) |
==============================================================================

Datapath Report for DP_OP_815J1_125_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_815J1_125_9129 | mult_212 (SA_wocg.v:212) add_212 (SA_wocg.v:212)    |
|                      | add_212_2 (SA_wocg.v:212) add_212_3 (SA_wocg.v:212) |
|                      | add_212_4 (SA_wocg.v:212) add_212_5 (SA_wocg.v:212) |
|                      | add_212_6 (SA_wocg.v:212) add_212_7 (SA_wocg.v:212) |
|                      | mult_212_2 (SA_wocg.v:212)                          |
|                      | mult_212_3 (SA_wocg.v:212)                          |
|                      | mult_212_4 (SA_wocg.v:212)                          |
|                      | mult_212_5 (SA_wocg.v:212)                          |
|                      | mult_212_6 (SA_wocg.v:212)                          |
|                      | mult_212_7 (SA_wocg.v:212)                          |
|                      | mult_212_8 (SA_wocg.v:212)                          |
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
| T57   | IFO  | Signed   | 38    | I1 * I2 (SA_wocg.v:212)                  |
| T58   | IFO  | Signed   | 38    | I3 * I4 (SA_wocg.v:212)                  |
| T60   | IFO  | Signed   | 38    | I5 * I6 (SA_wocg.v:212)                  |
| T62   | IFO  | Signed   | 38    | I7 * I8 (SA_wocg.v:212)                  |
| T64   | IFO  | Signed   | 38    | I9 * I10 (SA_wocg.v:212)                 |
| T66   | IFO  | Signed   | 38    | I11 * I12 (SA_wocg.v:212)                |
| T68   | IFO  | Signed   | 38    | I13 * I14 (SA_wocg.v:212)                |
| T70   | IFO  | Signed   | 38    | I15 * I16 (SA_wocg.v:212)                |
| O1    | PO   | Signed   | 41    | T57 + T58 + T60 + T62 + T64 + T66 + T68 + T70 (SA_wocg.v:212) |
==============================================================================

Datapath Report for DP_OP_816J1_126_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_816J1_126_9129 | mult_221 (SA_wocg.v:221) add_221 (SA_wocg.v:221)    |
|                      | add_221_2 (SA_wocg.v:221) add_221_3 (SA_wocg.v:221) |
|                      | add_221_4 (SA_wocg.v:221) add_221_5 (SA_wocg.v:221) |
|                      | add_221_6 (SA_wocg.v:221) add_221_7 (SA_wocg.v:221) |
|                      | mult_221_2 (SA_wocg.v:221)                          |
|                      | mult_221_3 (SA_wocg.v:221)                          |
|                      | mult_221_4 (SA_wocg.v:221)                          |
|                      | mult_221_5 (SA_wocg.v:221)                          |
|                      | mult_221_6 (SA_wocg.v:221)                          |
|                      | mult_221_7 (SA_wocg.v:221)                          |
|                      | mult_221_8 (SA_wocg.v:221)                          |
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
| T72   | IFO  | Signed   | 38    | I1 * I2 (SA_wocg.v:221)                  |
| T73   | IFO  | Signed   | 38    | I3 * I4 (SA_wocg.v:221)                  |
| T75   | IFO  | Signed   | 38    | I5 * I6 (SA_wocg.v:221)                  |
| T77   | IFO  | Signed   | 38    | I7 * I8 (SA_wocg.v:221)                  |
| T79   | IFO  | Signed   | 38    | I9 * I10 (SA_wocg.v:221)                 |
| T81   | IFO  | Signed   | 38    | I11 * I12 (SA_wocg.v:221)                |
| T83   | IFO  | Signed   | 38    | I13 * I14 (SA_wocg.v:221)                |
| T85   | IFO  | Signed   | 38    | I15 * I16 (SA_wocg.v:221)                |
| O1    | PO   | Signed   | 41    | T72 + T73 + T75 + T77 + T79 + T81 + T83 + T85 (SA_wocg.v:221) |
==============================================================================

Datapath Report for DP_OP_817J1_127_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_817J1_127_9129 | mult_230 (SA_wocg.v:230) add_230 (SA_wocg.v:230)    |
|                      | add_230_2 (SA_wocg.v:230) add_230_3 (SA_wocg.v:230) |
|                      | add_230_4 (SA_wocg.v:230) add_230_5 (SA_wocg.v:230) |
|                      | add_230_6 (SA_wocg.v:230) add_230_7 (SA_wocg.v:230) |
|                      | mult_230_2 (SA_wocg.v:230)                          |
|                      | mult_230_3 (SA_wocg.v:230)                          |
|                      | mult_230_4 (SA_wocg.v:230)                          |
|                      | mult_230_5 (SA_wocg.v:230)                          |
|                      | mult_230_6 (SA_wocg.v:230)                          |
|                      | mult_230_7 (SA_wocg.v:230)                          |
|                      | mult_230_8 (SA_wocg.v:230)                          |
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
| T87   | IFO  | Signed   | 38    | I1 * I2 (SA_wocg.v:230)                  |
| T88   | IFO  | Signed   | 38    | I3 * I4 (SA_wocg.v:230)                  |
| T90   | IFO  | Signed   | 38    | I5 * I6 (SA_wocg.v:230)                  |
| T92   | IFO  | Signed   | 38    | I7 * I8 (SA_wocg.v:230)                  |
| T94   | IFO  | Signed   | 38    | I9 * I10 (SA_wocg.v:230)                 |
| T96   | IFO  | Signed   | 38    | I11 * I12 (SA_wocg.v:230)                |
| T98   | IFO  | Signed   | 38    | I13 * I14 (SA_wocg.v:230)                |
| T100  | IFO  | Signed   | 38    | I15 * I16 (SA_wocg.v:230)                |
| O1    | PO   | Signed   | 41    | T87 + T88 + T90 + T92 + T94 + T96 + T98 + T100 (SA_wocg.v:230) |
==============================================================================

Datapath Report for DP_OP_818J1_128_9129
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_818J1_128_9129 | mult_239 (SA_wocg.v:239) add_239 (SA_wocg.v:239)    |
|                      | add_239_2 (SA_wocg.v:239) add_239_3 (SA_wocg.v:239) |
|                      | add_239_4 (SA_wocg.v:239) add_239_5 (SA_wocg.v:239) |
|                      | add_239_6 (SA_wocg.v:239) add_239_7 (SA_wocg.v:239) |
|                      | mult_239_2 (SA_wocg.v:239)                          |
|                      | mult_239_3 (SA_wocg.v:239)                          |
|                      | mult_239_4 (SA_wocg.v:239)                          |
|                      | mult_239_5 (SA_wocg.v:239)                          |
|                      | mult_239_6 (SA_wocg.v:239)                          |
|                      | mult_239_7 (SA_wocg.v:239)                          |
|                      | mult_239_8 (SA_wocg.v:239)                          |
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
| T102  | IFO  | Signed   | 38    | I1 * I2 (SA_wocg.v:239)                  |
| T103  | IFO  | Signed   | 38    | I3 * I4 (SA_wocg.v:239)                  |
| T105  | IFO  | Signed   | 38    | I5 * I6 (SA_wocg.v:239)                  |
| T107  | IFO  | Signed   | 38    | I7 * I8 (SA_wocg.v:239)                  |
| T109  | IFO  | Signed   | 38    | I9 * I10 (SA_wocg.v:239)                 |
| T111  | IFO  | Signed   | 38    | I11 * I12 (SA_wocg.v:239)                |
| T113  | IFO  | Signed   | 38    | I13 * I14 (SA_wocg.v:239)                |
| T115  | IFO  | Signed   | 38    | I15 * I16 (SA_wocg.v:239)                |
| O1    | PO   | Signed   | 41    | T102 + T103 + T105 + T107 + T109 + T111 + T113 + T115 (SA_wocg.v:239) |
==============================================================================

Datapath Report for DP_OP_819J1_129_9164
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_819J1_129_9164 | mult_248 (SA_wocg.v:248) add_248 (SA_wocg.v:248)    |
|                      | add_248_2 (SA_wocg.v:248) add_248_3 (SA_wocg.v:248) |
|                      | add_248_4 (SA_wocg.v:248) add_248_5 (SA_wocg.v:248) |
|                      | add_248_6 (SA_wocg.v:248) add_248_7 (SA_wocg.v:248) |
|                      | mult_248_2 (SA_wocg.v:248)                          |
|                      | mult_248_3 (SA_wocg.v:248)                          |
|                      | mult_248_4 (SA_wocg.v:248)                          |
|                      | mult_248_5 (SA_wocg.v:248)                          |
|                      | mult_248_6 (SA_wocg.v:248)                          |
|                      | mult_248_7 (SA_wocg.v:248)                          |
|                      | mult_248_8 (SA_wocg.v:248)                          |
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
| T117  | IFO  | Signed   | 60    | I1 * I2 (SA_wocg.v:248)                  |
| T118  | IFO  | Signed   | 60    | I3 * I4 (SA_wocg.v:248)                  |
| T120  | IFO  | Signed   | 60    | I5 * I6 (SA_wocg.v:248)                  |
| T122  | IFO  | Signed   | 60    | I7 * I8 (SA_wocg.v:248)                  |
| T124  | IFO  | Signed   | 60    | I9 * I10 (SA_wocg.v:248)                 |
| T126  | IFO  | Signed   | 60    | I11 * I12 (SA_wocg.v:248)                |
| T128  | IFO  | Signed   | 60    | I13 * I14 (SA_wocg.v:248)                |
| T130  | IFO  | Signed   | 60    | I15 * I16 (SA_wocg.v:248)                |
| O1    | PO   | Signed   | 64    | T117 + T118 + T120 + T122 + T124 + T126 + T128 + T130 (SA_wocg.v:248) |
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
| gte_x_27           | DW_cmp           | apparch (area)     |                |
| lte_x_28           | DW_cmp           | apparch (area)     |                |
| lte_x_29           | DW_cmp           | apparch (area)     |                |
| lte_x_379          | DW_cmp           | apparch (area)     |                |
| add_x_384          | DW01_inc         | apparch (area)     |                |
| add_x_387          | DW01_inc         | apparch (area)     |                |
| add_x_390          | DW01_inc         | apparch (area)     |                |
| gte_x_394          | DW_cmp           | apparch (area)     |                |
| NEG                | DW01_inc         | cla                |                |
| DP_OP_812J1_122_9129                  |                    |                |
|                    | DP_OP_812J1_122_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_813J1_123_9129                  |                    |                |
|                    | DP_OP_813J1_123_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_814J1_124_9129                  |                    |                |
|                    | DP_OP_814J1_124_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_815J1_125_9129                  |                    |                |
|                    | DP_OP_815J1_125_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_816J1_126_9129                  |                    |                |
|                    | DP_OP_816J1_126_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_817J1_127_9129                  |                    |                |
|                    | DP_OP_817J1_127_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_818J1_128_9129                  |                    |                |
|                    | DP_OP_818J1_128_9129 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_819J1_129_9164                  |                    |                |
|                    | DP_OP_819J1_129_9164 | str (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
===============================================================================

1
