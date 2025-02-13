 
****************************************
Report : resources
Design : BB
Version: T-2022.03
Date   : Sun Sep 22 22:07:12 2024
****************************************


Resource Report for this hierarchy in file ../01_RTL/BB.v
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| add_x_23       | DW01_inc       | width=4    | add_250 (BB.v:250)         |
| eq_x_25        | DW_cmp         | width=4    | eq_276 (BB.v:276)          |
| lte_x_35       | DW_cmp         | width=3    | lte_318 (BB.v:318)         |
| gt_x_53        | DW_cmp         | width=4    | gt_386 (BB.v:386)          |
| lt_x_64        | DW_cmp         | width=4    | lt_319 (BB.v:319)          |
|                |                |            | lt_388 (BB.v:388)          |
| add_x_24       | DW01_inc       | width=4    | add_204 (BB.v:204)         |
|                |                |            | add_207 (BB.v:207)         |
|                |                |            | add_214 (BB.v:214)         |
|                |                |            | add_220 (BB.v:220)         |
|                |                |            | add_228 (BB.v:228)         |
|                |                |            | add_276 (BB.v:276)         |
|                |                |            | add_325 (BB.v:325)         |
|                |                |            | add_334 (BB.v:334)         |
|                |                |            | add_340 (BB.v:340)         |
|                |                |            | add_347 (BB.v:347)         |
|                |                |            | add_356 (BB.v:356)         |
|                |                |            | add_362 (BB.v:362)         |
| add_x_36       | DW01_add       | width=4    | add_326 (BB.v:326)         |
|                |                |            | add_331 (BB.v:331)         |
|                |                |            | add_335 (BB.v:335)         |
|                |                |            | add_341 (BB.v:341)         |
| add_x_37       | DW01_add       | width=4    | add_348 (BB.v:348)         |
|                |                |            | add_353 (BB.v:353)         |
|                |                |            | add_357 (BB.v:357)         |
|                |                |            | add_363 (BB.v:363)         |
| add_x_11       | DW01_add       | width=3    | add_212 (BB.v:212)         |
|                |                |            | add_330 (BB.v:330)         |
|                |                |            | add_352 (BB.v:352)         |
| gte_x_65       | DW_cmp         | width=3    | gte_204 (BB.v:204)         |
|                |                |            | gte_325 (BB.v:325)         |
|                |                |            | gte_334 (BB.v:334)         |
|                |                |            | gte_340 (BB.v:340)         |
|                |                |            | gte_347 (BB.v:347)         |
|                |                |            | gte_356 (BB.v:356)         |
|                |                |            | gte_362 (BB.v:362)         |
| gte_x_66       | DW_cmp         | width=3    | gte_330 (BB.v:330)         |
|                |                |            | gte_352 (BB.v:352)         |
| DP_OP_191J1_122_2138            |            |                            |
|                | DP_OP_191J1_122_2138 |      |                            |
=============================================================================

Datapath Report for DP_OP_191J1_122_2138
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_191J1_122_2138 | add_257 (BB.v:257) add_279 (BB.v:279)               |
|                      | add_284 (BB.v:284) add_289 (BB.v:289)               |
|                      | add_297 (BB.v:297) add_259 (BB.v:259)               |
|                      | add_259_2 (BB.v:259) add_264 (BB.v:264)             |
|                      | add_264_2 (BB.v:264) add_266 (BB.v:266)             |
|                      | add_266_2 (BB.v:266) add_266_3 (BB.v:266)           |
|                      | add_270 (BB.v:270) add_270_2 (BB.v:270)             |
|                      | add_270_3 (BB.v:270) add_273 (BB.v:273)             |
|                      | add_273_2 (BB.v:273) add_273_3 (BB.v:273)           |
|                      | add_273_4 (BB.v:273)                                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 4     |                                          |
| I2    | PI   | Unsigned | 1     |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| I4    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Unsigned | 4     | I1 + I2 ( BB.v:257 BB.v:259 BB.v:264 BB.v:266 BB.v:270 BB.v:273 BB.v:279 BB.v:284 BB.v:289 BB.v:297 ) |
| O2    | PO   | Unsigned | 4     | I3 + O1 ( BB.v:259 BB.v:264 BB.v:266 BB.v:270 BB.v:273 ) |
| O3    | PO   | Unsigned | 4     | I4 + O2 ( BB.v:266 BB.v:270 BB.v:273 )   |
| O4    | PO   | Unsigned | 4     | $unsigned(1'b1) + O3 (BB.v:273)          |
==============================================================================


Datapath Extraction Report

Information: Operator associated with resources 'gte_204 (BB.v:204) gte_325 (BB.v:325) gte_334 (BB.v:334) gte_340 (BB.v:340) gte_347 (BB.v:347) gte_356 (BB.v:356) gte_362 (BB.v:362)' in design 'BB' breaks the datapath extraction because there is leakage due to truncation on the fanout of its driver 'add_204 (BB.v:204) add_207 (BB.v:207) add_214 (BB.v:214) add_220 (BB.v:220) add_228 (BB.v:228) add_276 (BB.v:276) add_325 (BB.v:325) add_334 (BB.v:334) add_340 (BB.v:340) add_347 (BB.v:347) add_356 (BB.v:356) add_362 (BB.v:362)'.  (HDL-120)

Information: Operator associated with resources 'add_212 (BB.v:212) add_330 (BB.v:330) add_352 (BB.v:352)' in design 'BB' breaks the datapath extraction because there is leakage due to truncation on its fanout to operator of resources 'gte_330 (BB.v:330) gte_352 (BB.v:352)'.  (HDL-120)


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| add_x_23           | DW01_inc         | apparch (area)     |                |
| eq_x_25            | DW_cmp           | apparch (area)     |                |
| lte_x_35           | DW_cmp           | apparch (area)     |                |
| gt_x_53            | DW_cmp           | apparch (area)     |                |
| lt_x_64            | DW_cmp           | apparch (area)     |                |
| add_x_24           | DW01_inc         | apparch (area)     |                |
| add_x_36           | DW01_add         | apparch (area)     |                |
| add_x_37           | DW01_add         | apparch (area)     |                |
| add_x_11           | DW01_add         | apparch (area)     |                |
| gte_x_65           | DW_cmp           | apparch (area)     |                |
| gte_x_66           | DW_cmp           | apparch (area)     |                |
| DP_OP_191J1_122_2138                  |                    |                |
|                    | DP_OP_191J1_122_2138 | str (area)     |                |
===============================================================================

1
