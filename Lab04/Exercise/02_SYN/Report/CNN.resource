 
****************************************
Report : resources
Design : CNN
Version: T-2022.03
Date   : Tue Oct  8 01:46:39 2024
****************************************


Resource Report for this hierarchy in file ../01_RTL/CNN.v
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| gte_x_896      | DW_cmp         | width=7    | gte_604 (CNN.v:604)        |
| add_x_904      | DW01_inc       | width=7    | add_703 (CNN.v:703)        |
| add_x_905      | DW01_inc       | width=7    | add_713 (CNN.v:713)        |
| gte_x_917      | DW_cmp         | width=7    | gte_940 (CNN.v:940)        |
| lt_x_918       | DW_cmp         | width=7    | lt_940 (CNN.v:940)         |
| gte_x_919      | DW_cmp         | width=7    | gte_942 (CNN.v:942)        |
| gte_x_920      | DW_cmp         | width=7    | gte_948 (CNN.v:948)        |
| lt_x_922       | DW_cmp         | width=7    | lt_955 (CNN.v:955)         |
| lt_x_923       | DW_cmp         | width=7    | lt_957 (CNN.v:957)         |
| gte_x_924      | DW_cmp         | width=7    | gte_959 (CNN.v:959)        |
| lt_x_925       | DW_cmp         | width=7    | lt_959 (CNN.v:959)         |
| add_x_928      | DW01_inc       | width=7    | add_1005 (CNN.v:1005)      |
| lt_x_938       | DW_cmp         | width=7    | lt_1038 (CNN.v:1038)       |
| dp1            | DW_fp_dp4      | sig_width=23 | dp1 (CNN.v:280)          |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
|                |                | arch_type=0 |                           |
| dp2            | DW_fp_dp4      | sig_width=23 | dp2 (CNN.v:294)          |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
|                |                | arch_type=0 |                           |
| dp3            | DW_fp_dp4      | sig_width=23 | dp3 (CNN.v:309)          |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
|                |                | arch_type=0 |                           |
| dp4            | DW_fp_dp4      | sig_width=23 | dp4 (CNN.v:323)          |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
|                |                | arch_type=0 |                           |
| sum1           | DW_fp_sum3     | sig_width=23 | sum1 (CNN.v:654)         |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
|                |                | arch_type=0 |                           |
| sum2           | DW_fp_sum3     | sig_width=23 | sum2 (CNN.v:656)         |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
|                |                | arch_type=0 |                           |
| cmp1           | DW_fp_cmp      | sig_width=23 | cmp1 (CNN.v:825)         |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
| cmp2           | DW_fp_cmp      | sig_width=23 | cmp2 (CNN.v:827)         |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
| cmp3           | DW_fp_cmp      | sig_width=23 | cmp3 (CNN.v:829)         |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
| cmp4           | DW_fp_cmp      | sig_width=23 | cmp4 (CNN.v:831)         |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
| cmp5           | DW_fp_cmp      | sig_width=23 | cmp5 (CNN.v:833)         |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
| cmp6           | DW_fp_cmp      | sig_width=23 | cmp6 (CNN.v:835)         |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
| cmp7           | DW_fp_cmp      | sig_width=23 | cmp7 (CNN.v:837)         |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
| cmp8           | DW_fp_cmp      | sig_width=23 | cmp8 (CNN.v:839)         |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
| s1             | DW_fp_sub      | sig_width=23 | s1 (CNN.v:894)           |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
| a1             | DW_fp_add      | sig_width=23 | a1 (CNN.v:897)           |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
| e1             | DW_fp_exp      | sig_width=23 | e1 (CNN.v:899)           |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
|                |                | arch=0     |                            |
| e2             | DW_fp_exp      | sig_width=23 | e2 (CNN.v:901)           |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
|                |                | arch=0     |                            |
| r1             | DW_fp_recip    | sig_width=23 | r1 (CNN.v:904)           |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
|                |                | faithful_round=0 |                      |
| M1             | DW_fp_mult     | sig_width=23 | M1 (CNN.v:907)           |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
| ee1            | DW_fp_exp      | sig_width=23 | ee1 (CNN.v:997)          |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
|                |                | arch=0     |                            |
| lte_x_29778    | DW_cmp         | width=7    | lte_338 (CNN.v:338)        |
|                |                |            | lte_351 (CNN.v:351)        |
|                |                |            | lte_374 (CNN.v:374)        |
|                |                |            | lte_393 (CNN.v:393)        |
|                |                |            | lte_412 (CNN.v:412)        |
|                |                |            | lte_431 (CNN.v:431)        |
|                |                |            | lte_450 (CNN.v:450)        |
|                |                |            | lte_469 (CNN.v:469)        |
|                |                |            | lte_488 (CNN.v:488)        |
|                |                |            | lte_507 (CNN.v:507)        |
|                |                |            | lte_526 (CNN.v:526)        |
|                |                |            | lte_545 (CNN.v:545)        |
|                |                |            | lte_564 (CNN.v:564)        |
|                |                |            | lte_583 (CNN.v:583)        |
| gte_x_29779    | DW_cmp         | width=7    | gte_340 (CNN.v:340)        |
|                |                |            | gte_353 (CNN.v:353)        |
|                |                |            | gte_377 (CNN.v:377)        |
|                |                |            | gte_396 (CNN.v:396)        |
|                |                |            | gte_415 (CNN.v:415)        |
|                |                |            | gte_434 (CNN.v:434)        |
|                |                |            | gte_453 (CNN.v:453)        |
|                |                |            | gte_472 (CNN.v:472)        |
|                |                |            | gte_491 (CNN.v:491)        |
|                |                |            | gte_510 (CNN.v:510)        |
|                |                |            | gte_529 (CNN.v:529)        |
|                |                |            | gte_548 (CNN.v:548)        |
|                |                |            | gte_567 (CNN.v:567)        |
|                |                |            | gte_586 (CNN.v:586)        |
| lt_x_29780     | DW_cmp         | width=7    | lt_340 (CNN.v:340)         |
|                |                |            | lt_353 (CNN.v:353)         |
|                |                |            | lt_772 (CNN.v:772)         |
|                |                |            | lt_816 (CNN.v:816)         |
| gte_x_29781    | DW_cmp         | width=7    | gte_364 (CNN.v:364)        |
|                |                |            | gte_380 (CNN.v:380)        |
|                |                |            | gte_399 (CNN.v:399)        |
|                |                |            | gte_418 (CNN.v:418)        |
|                |                |            | gte_437 (CNN.v:437)        |
|                |                |            | gte_456 (CNN.v:456)        |
|                |                |            | gte_475 (CNN.v:475)        |
|                |                |            | gte_494 (CNN.v:494)        |
|                |                |            | gte_513 (CNN.v:513)        |
|                |                |            | gte_532 (CNN.v:532)        |
|                |                |            | gte_551 (CNN.v:551)        |
|                |                |            | gte_570 (CNN.v:570)        |
|                |                |            | gte_589 (CNN.v:589)        |
|                |                |            | gte_859 (CNN.v:859)        |
|                |                |            | gte_884 (CNN.v:884)        |
|                |                |            | gte_946 (CNN.v:946)        |
| lt_x_29782     | DW_cmp         | width=7    | lt_377 (CNN.v:377)         |
|                |                |            | lt_396 (CNN.v:396)         |
|                |                |            | lt_415 (CNN.v:415)         |
|                |                |            | lt_434 (CNN.v:434)         |
|                |                |            | lt_453 (CNN.v:453)         |
|                |                |            | lt_472 (CNN.v:472)         |
|                |                |            | lt_491 (CNN.v:491)         |
|                |                |            | lt_510 (CNN.v:510)         |
|                |                |            | lt_529 (CNN.v:529)         |
|                |                |            | lt_548 (CNN.v:548)         |
|                |                |            | lt_567 (CNN.v:567)         |
|                |                |            | lt_586 (CNN.v:586)         |
|                |                |            | lt_857 (CNN.v:857)         |
|                |                |            | lt_882 (CNN.v:882)         |
|                |                |            | lt_944 (CNN.v:944)         |
| lt_x_29783     | DW_cmp         | width=7    | lt_364 (CNN.v:364)         |
|                |                |            | lt_380 (CNN.v:380)         |
|                |                |            | lt_399 (CNN.v:399)         |
|                |                |            | lt_418 (CNN.v:418)         |
|                |                |            | lt_437 (CNN.v:437)         |
|                |                |            | lt_456 (CNN.v:456)         |
|                |                |            | lt_475 (CNN.v:475)         |
|                |                |            | lt_494 (CNN.v:494)         |
|                |                |            | lt_513 (CNN.v:513)         |
|                |                |            | lt_532 (CNN.v:532)         |
|                |                |            | lt_551 (CNN.v:551)         |
|                |                |            | lt_570 (CNN.v:570)         |
|                |                |            | lt_589 (CNN.v:589)         |
|                |                |            | lt_912 (CNN.v:912)         |
|                |                |            | lt_948 (CNN.v:948)         |
| gte_x_29784    | DW_cmp         | width=7    | gte_383 (CNN.v:383)        |
|                |                |            | gte_402 (CNN.v:402)        |
|                |                |            | gte_421 (CNN.v:421)        |
|                |                |            | gte_440 (CNN.v:440)        |
|                |                |            | gte_459 (CNN.v:459)        |
|                |                |            | gte_478 (CNN.v:478)        |
|                |                |            | gte_497 (CNN.v:497)        |
|                |                |            | gte_516 (CNN.v:516)        |
|                |                |            | gte_535 (CNN.v:535)        |
|                |                |            | gte_554 (CNN.v:554)        |
|                |                |            | gte_573 (CNN.v:573)        |
|                |                |            | gte_592 (CNN.v:592)        |
|                |                |            | gte_659 (CNN.v:659)        |
|                |                |            | gte_671 (CNN.v:671)        |
|                |                |            | gte_988 (CNN.v:988)        |
| lte_x_29785    | DW_cmp         | width=7    | lte_614 (CNN.v:614)        |
|                |                |            | lte_624 (CNN.v:624)        |
| lt_x_29786     | DW_cmp         | width=7    | lt_634 (CNN.v:634)         |
|                |                |            | lt_644 (CNN.v:644)         |
| gt_x_29787     | DW_cmp         | width=7    | gt_614 (CNN.v:614)         |
|                |                |            | gt_634 (CNN.v:634)         |
| lt_x_29788     | DW_cmp         | width=7    | lt_671 (CNN.v:671)         |
|                |                |            | lt_988 (CNN.v:988)         |
| gte_x_29789    | DW_cmp         | width=7    | gte_675 (CNN.v:675)        |
|                |                |            | gte_861 (CNN.v:861)        |
|                |                |            | gte_886 (CNN.v:886)        |
|                |                |            | gte_955 (CNN.v:955)        |
|                |                |            | gte_967 (CNN.v:967)        |
| gte_x_29790    | DW_cmp         | width=7    | gte_687 (CNN.v:687)        |
|                |                |            | gte_693 (CNN.v:693)        |
|                |                |            | gte_702 (CNN.v:702)        |
|                |                |            | gte_712 (CNN.v:712)        |
| gte_x_29791    | DW_cmp         | width=7    | gte_722 (CNN.v:722)        |
|                |                |            | gte_806 (CNN.v:806)        |
| lt_x_29792     | DW_cmp         | width=7    | lt_722 (CNN.v:722)         |
|                |                |            | lt_806 (CNN.v:806)         |
| gte_x_29793    | DW_cmp         | width=7    | gte_732 (CNN.v:732)        |
|                |                |            | gte_808 (CNN.v:808)        |
|                |                |            | gte_845 (CNN.v:845)        |
|                |                |            | gte_870 (CNN.v:870)        |
| lt_x_29794     | DW_cmp         | width=7    | lt_732 (CNN.v:732)         |
|                |                |            | lt_808 (CNN.v:808)         |
|                |                |            | lt_934 (CNN.v:934)         |
| gte_x_29795    | DW_cmp         | width=7    | gte_742 (CNN.v:742)        |
|                |                |            | gte_810 (CNN.v:810)        |
|                |                |            | gte_936 (CNN.v:936)        |
| lt_x_29796     | DW_cmp         | width=7    | lt_742 (CNN.v:742)         |
|                |                |            | lt_810 (CNN.v:810)         |
| gte_x_29797    | DW_cmp         | width=7    | gte_752 (CNN.v:752)        |
|                |                |            | gte_812 (CNN.v:812)        |
|                |                |            | gte_938 (CNN.v:938)        |
| lt_x_29798     | DW_cmp         | width=7    | lt_752 (CNN.v:752)         |
|                |                |            | lt_812 (CNN.v:812)         |
| gte_x_29799    | DW_cmp         | width=7    | gte_762 (CNN.v:762)        |
|                |                |            | gte_814 (CNN.v:814)        |
| lt_x_29800     | DW_cmp         | width=7    | lt_762 (CNN.v:762)         |
|                |                |            | lt_814 (CNN.v:814)         |
|                |                |            | lt_851 (CNN.v:851)         |
|                |                |            | lt_876 (CNN.v:876)         |
| gte_x_29801    | DW_cmp         | width=7    | gte_772 (CNN.v:772)        |
|                |                |            | gte_816 (CNN.v:816)        |
|                |                |            | gte_853 (CNN.v:853)        |
|                |                |            | gte_878 (CNN.v:878)        |
| gte_x_29802    | DW_cmp         | width=7    | gte_782 (CNN.v:782)        |
|                |                |            | gte_818 (CNN.v:818)        |
|                |                |            | gte_855 (CNN.v:855)        |
|                |                |            | gte_880 (CNN.v:880)        |
| lt_x_29803     | DW_cmp         | width=7    | lt_853 (CNN.v:853)         |
|                |                |            | lt_878 (CNN.v:878)         |
|                |                |            | lt_942 (CNN.v:942)         |
| lt_x_29804     | DW_cmp         | width=7    | lt_782 (CNN.v:782)         |
|                |                |            | lt_818 (CNN.v:818)         |
|                |                |            | lt_855 (CNN.v:855)         |
|                |                |            | lt_880 (CNN.v:880)         |
| gte_x_29805    | DW_cmp         | width=7    | gte_857 (CNN.v:857)        |
|                |                |            | gte_882 (CNN.v:882)        |
|                |                |            | gte_944 (CNN.v:944)        |
| lt_x_29806     | DW_cmp         | width=7    | lt_845 (CNN.v:845)         |
|                |                |            | lt_870 (CNN.v:870)         |
| gte_x_29807    | DW_cmp         | width=7    | gte_847 (CNN.v:847)        |
|                |                |            | gte_872 (CNN.v:872)        |
|                |                |            | gte_934 (CNN.v:934)        |
| lt_x_29808     | DW_cmp         | width=7    | lt_847 (CNN.v:847)         |
|                |                |            | lt_872 (CNN.v:872)         |
|                |                |            | lt_936 (CNN.v:936)         |
| gte_x_29809    | DW_cmp         | width=7    | gte_849 (CNN.v:849)        |
|                |                |            | gte_874 (CNN.v:874)        |
| lt_x_29810     | DW_cmp         | width=7    | lt_849 (CNN.v:849)         |
|                |                |            | lt_874 (CNN.v:874)         |
|                |                |            | lt_938 (CNN.v:938)         |
| gte_x_29811    | DW_cmp         | width=7    | gte_851 (CNN.v:851)        |
|                |                |            | gte_876 (CNN.v:876)        |
| lt_x_29812     | DW_cmp         | width=7    | lt_859 (CNN.v:859)         |
|                |                |            | lt_884 (CNN.v:884)         |
|                |                |            | lt_946 (CNN.v:946)         |
| lt_x_29813     | DW_cmp         | width=7    | lt_1061 (CNN.v:1061)       |
|                |                |            | lt_861 (CNN.v:861)         |
|                |                |            | lt_886 (CNN.v:886)         |
| gte_x_29814    | DW_cmp         | width=7    | gte_1061 (CNN.v:1061)      |
|                |                |            | gte_957 (CNN.v:957)        |
| lt_x_29815     | DW_cmp         | width=7    | lt_1017 (CNN.v:1017)       |
|                |                |            | lt_1028 (CNN.v:1028)       |
| add_x_870      | DW01_inc       | width=3    | add_394 (CNN.v:394)        |
|                |                |            | add_397 (CNN.v:397)        |
|                |                |            | add_432 (CNN.v:432)        |
|                |                |            | add_435 (CNN.v:435)        |
|                |                |            | add_619 (CNN.v:619)        |
| add_x_874      | DW01_inc       | width=3    | add_413 (CNN.v:413)        |
|                |                |            | add_416 (CNN.v:416)        |
|                |                |            | add_432_2 (CNN.v:432)      |
|                |                |            | add_435_2 (CNN.v:435)      |
|                |                |            | add_637 (CNN.v:637)        |
| add_x_871      | DW01_inc       | width=3    | add_398 (CNN.v:398)        |
|                |                |            | add_436 (CNN.v:436)        |
|                |                |            | add_629 (CNN.v:629)        |
| add_x_875      | DW01_inc       | width=3    | add_417 (CNN.v:417)        |
|                |                |            | add_436_2 (CNN.v:436)      |
|                |                |            | add_647 (CNN.v:647)        |
| DP_OP_87_188_7214               |            |                            |
|                | DP_OP_87_188_7214 |         |                            |
=============================================================================

Datapath Report for DP_OP_87_188_7214
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_87_188_7214    | mult_403 add_410 add_431 mult_426 mult_418 add_549  |
|                      | add_550 add_551                                     |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 9     |                                          |
| I2    | PI   | Unsigned | 26    |                                          |
| I3    | PI   | Unsigned | 28    |                                          |
| I4    | PI   | Unsigned | 14    |                                          |
| I5    | PI   | Unsigned | 14    |                                          |
| I6    | PI   | Unsigned | 2     |                                          |
| T4    | IFO  | Unsigned | 35    | I1 * I2                                  |
| T35   | IFO  | Unsigned | 21    | T4[34:14]                                |
| T6    | IFO  | Unsigned | 28    | I5 * I5                                  |
| T38   | IFO  | Unsigned | 14    | T6[27:14]                                |
| T7    | IFO  | Unsigned | 28    | I4 * T38                                 |
| T39   | IFO  | Unsigned | 14    | T7[27:14]                                |
| T40   | IFO  | Unsigned | 25    | O2[27:3]                                 |
| T84   | IFO  | Unsigned | 25    | O2[27:3]                                 |
| O1    | PO   | Unsigned | 28    | I3 + T35                                 |
| O2    | PO   | Unsigned | 28    | O1 + T39                                 |
| O3    | PO   | Unsigned | 25    | T40 + $unsigned(1'b1)                    |
| O4    | PO   | Unsigned | 25    | T84 + I6                                 |
==============================================================================


Resource Report for Ungrouped Hierarchy ee1/U2 in file ./DW_exp2__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| DP_OP_104J1_123_9353            |            |                            |
|                | DP_OP_104J1_123_9353 |      |                            |
=============================================================================

Datapath Report for DP_OP_104J1_123_9353
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_104J1_123_9353 | mult_4981 add_4981 mult_4987 add_4987 add_4994      |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 29    |                                          |
| I2    | PI   | Signed   | 19    |                                          |
| I3    | PI   | Unsigned | 57    |                                          |
| I4    | PI   | Unsigned | 18    |                                          |
| I5    | PI   | Signed   | 57    |                                          |
| T90   | IFO  | Signed   | 49    | I1 * I2                                  |
| T91   | IFO  | Signed   | 59    | T90 + I3                                 |
| T98   | IFO  | Signed   | 33    | T91[58:26]                               |
| T92   | IFO  | Signed   | 52    | T98 * I4                                 |
| T93   | IFO  | Signed   | 57    | T92 + I5                                 |
| T100  | IFO  | Signed   | 28    | T93[56:29]                               |
| O1    | PO   | Unsigned | 28    | T100 + $unsigned(1'b1)                   |
==============================================================================


Resource Report for Ungrouped Hierarchy ee1 in file ./DW_fp_exp__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| mult_x_4       | DW_mult_uns    | a_width=33 | mult_219                   |
|                |                | b_width=33 |                            |
| sub_x_5        | DW01_sub       | width=9    | sub_221                    |
| gte_x_6        | DW_cmp         | width=9    | gte_232                    |
| add_x_9        | DW01_add       | width=26   | add_270                    |
| add_x_11       | DW01_inc       | width=24   | add_276_round              |
| U1             | DW01_ash       | A_width=41 | U1                         |
|                |                | SH_width=9 |                            |
| U2             | DW_exp2        | op_width=26 | U2                        |
|                |                | arch=0     |                            |
|                |                | err_range=1 |                           |
| sub_x_16       | DW01_sub       | width=10   | add_242 sub_242            |
| add_x_17       | DW01_dec       | width=2    | add_247_ni_ni sub_add_247  |
| sub_x_18       | DW01_sub       | width=26   | add_247_ni_ni sub_add_247  |
| add_x_19       | DW01_add       | width=8    | add_260 add_261            |
| add_x_20       | DW01_add       | width=10   | add_260 add_261            |
=============================================================================


Resource Report for Ungrouped Hierarchy r1 in file ./DW_fp_recip__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| mult_x_2       | DW_mult_uns    | a_width=25 | mult_399                   |
|                |                | b_width=9  |                            |
| mult_x_3       | DW_mult_uns    | a_width=25 | mult_552                   |
|                |                | b_width=25 |                            |
| gte_x_9        | DW_cmp         | width=9    | gte_649                    |
| eq_x_14        | DW_cmp         | width=10   | eq_650 eq_678              |
| DP_OP_79J1_124_5437             |            |                            |
|                | DP_OP_79J1_124_5437 |       |                            |
=============================================================================

Datapath Report for DP_OP_79J1_124_5437
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_79J1_124_5437  | sub_342 add_342 sub_574_ni                          |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 10    | -I1 - I2 + $unsigned(10'b0011111110)     |
==============================================================================


Resource Report for Ungrouped Hierarchy e2/U2 in file ./DW_exp2__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| DP_OP_104J1_126_9353            |            |                            |
|                | DP_OP_104J1_126_9353 |      |                            |
=============================================================================

Datapath Report for DP_OP_104J1_126_9353
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_104J1_126_9353 | mult_4981 add_4981 mult_4987 add_4987 add_4994      |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 29    |                                          |
| I2    | PI   | Signed   | 19    |                                          |
| I3    | PI   | Unsigned | 57    |                                          |
| I4    | PI   | Unsigned | 18    |                                          |
| I5    | PI   | Signed   | 57    |                                          |
| T90   | IFO  | Signed   | 49    | I1 * I2                                  |
| T91   | IFO  | Signed   | 59    | T90 + I3                                 |
| T98   | IFO  | Signed   | 33    | T91[58:26]                               |
| T92   | IFO  | Signed   | 52    | T98 * I4                                 |
| T93   | IFO  | Signed   | 57    | T92 + I5                                 |
| T100  | IFO  | Signed   | 28    | T93[56:29]                               |
| O1    | PO   | Unsigned | 28    | T100 + $unsigned(1'b1)                   |
==============================================================================


Resource Report for Ungrouped Hierarchy e2 in file ./DW_fp_exp__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| mult_x_4       | DW_mult_uns    | a_width=33 | mult_219                   |
|                |                | b_width=33 |                            |
| sub_x_5        | DW01_sub       | width=9    | sub_221                    |
| gte_x_6        | DW_cmp         | width=9    | gte_232                    |
| add_x_9        | DW01_add       | width=26   | add_270                    |
| add_x_11       | DW01_inc       | width=24   | add_276_round              |
| U1             | DW01_ash       | A_width=41 | U1                         |
|                |                | SH_width=9 |                            |
| U2             | DW_exp2        | op_width=26 | U2                        |
|                |                | arch=0     |                            |
|                |                | err_range=1 |                           |
| sub_x_16       | DW01_sub       | width=10   | add_242 sub_242            |
| add_x_17       | DW01_dec       | width=2    | add_247_ni_ni sub_add_247  |
| sub_x_18       | DW01_sub       | width=26   | add_247_ni_ni sub_add_247  |
| add_x_19       | DW01_add       | width=8    | add_260 add_261            |
| add_x_20       | DW01_add       | width=10   | add_260 add_261            |
=============================================================================


Resource Report for Ungrouped Hierarchy e1/U2 in file ./DW_exp2__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| DP_OP_104J1_127_9353            |            |                            |
|                | DP_OP_104J1_127_9353 |      |                            |
=============================================================================

Datapath Report for DP_OP_104J1_127_9353
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_104J1_127_9353 | mult_4981 add_4981 mult_4987 add_4987 add_4994      |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 29    |                                          |
| I2    | PI   | Signed   | 19    |                                          |
| I3    | PI   | Unsigned | 57    |                                          |
| I4    | PI   | Unsigned | 18    |                                          |
| I5    | PI   | Signed   | 57    |                                          |
| T90   | IFO  | Signed   | 49    | I1 * I2                                  |
| T91   | IFO  | Signed   | 59    | T90 + I3                                 |
| T98   | IFO  | Signed   | 33    | T91[58:26]                               |
| T92   | IFO  | Signed   | 52    | T98 * I4                                 |
| T93   | IFO  | Signed   | 57    | T92 + I5                                 |
| T100  | IFO  | Signed   | 28    | T93[56:29]                               |
| O1    | PO   | Unsigned | 28    | T100 + $unsigned(1'b1)                   |
==============================================================================


Resource Report for Ungrouped Hierarchy e1 in file ./DW_fp_exp__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| mult_x_4       | DW_mult_uns    | a_width=33 | mult_219                   |
|                |                | b_width=33 |                            |
| sub_x_5        | DW01_sub       | width=9    | sub_221                    |
| gte_x_6        | DW_cmp         | width=9    | gte_232                    |
| add_x_9        | DW01_add       | width=26   | add_270                    |
| add_x_11       | DW01_inc       | width=24   | add_276_round              |
| U1             | DW01_ash       | A_width=41 | U1                         |
|                |                | SH_width=9 |                            |
| U2             | DW_exp2        | op_width=26 | U2                        |
|                |                | arch=0     |                            |
|                |                | err_range=1 |                           |
| sub_x_16       | DW01_sub       | width=10   | add_242 sub_242            |
| add_x_17       | DW01_dec       | width=2    | add_247_ni_ni sub_add_247  |
| sub_x_18       | DW01_sub       | width=26   | add_247_ni_ni sub_add_247  |
| add_x_19       | DW01_add       | width=8    | add_260 add_261            |
| add_x_20       | DW01_add       | width=10   | add_260 add_261            |
=============================================================================


Resource Report for Ungrouped Hierarchy a1
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| U1             | DW_fp_addsub   | sig_width=23 | U1                       |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
=============================================================================


Resource Report for Ungrouped Hierarchy s1
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| U1             | DW_fp_addsub   | sig_width=23 | U1                       |
|                |                | exp_width=8 |                           |
|                |                | ieee_compliance=0 |                     |
=============================================================================


Resource Report for Ungrouped Hierarchy cmp8 in file ./DW_fp_cmp__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| gt_x_3         | DW_cmp         | width=23   | gt_219                     |
| eq_x_4         | DW_cmp         | width=23   | eq_222                     |
| gt_x_5         | DW_cmp         | width=8    | gt_227                     |
| eq_x_6         | DW_cmp         | width=8    | eq_230                     |
=============================================================================


Resource Report for Ungrouped Hierarchy cmp7 in file ./DW_fp_cmp__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| gt_x_3         | DW_cmp         | width=23   | gt_219                     |
| eq_x_4         | DW_cmp         | width=23   | eq_222                     |
| gt_x_5         | DW_cmp         | width=8    | gt_227                     |
| eq_x_6         | DW_cmp         | width=8    | eq_230                     |
=============================================================================


Resource Report for Ungrouped Hierarchy cmp6 in file ./DW_fp_cmp__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| gt_x_3         | DW_cmp         | width=23   | gt_219                     |
| eq_x_4         | DW_cmp         | width=23   | eq_222                     |
| gt_x_5         | DW_cmp         | width=8    | gt_227                     |
| eq_x_6         | DW_cmp         | width=8    | eq_230                     |
=============================================================================


Resource Report for Ungrouped Hierarchy cmp5 in file ./DW_fp_cmp__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| gt_x_3         | DW_cmp         | width=23   | gt_219                     |
| eq_x_4         | DW_cmp         | width=23   | eq_222                     |
| gt_x_5         | DW_cmp         | width=8    | gt_227                     |
| eq_x_6         | DW_cmp         | width=8    | eq_230                     |
=============================================================================


Resource Report for Ungrouped Hierarchy cmp4 in file ./DW_fp_cmp__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| gt_x_3         | DW_cmp         | width=23   | gt_219                     |
| eq_x_4         | DW_cmp         | width=23   | eq_222                     |
| gt_x_5         | DW_cmp         | width=8    | gt_227                     |
| eq_x_6         | DW_cmp         | width=8    | eq_230                     |
=============================================================================


Resource Report for Ungrouped Hierarchy cmp3 in file ./DW_fp_cmp__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| gt_x_3         | DW_cmp         | width=23   | gt_219                     |
| eq_x_4         | DW_cmp         | width=23   | eq_222                     |
| gt_x_5         | DW_cmp         | width=8    | gt_227                     |
| eq_x_6         | DW_cmp         | width=8    | eq_230                     |
=============================================================================


Resource Report for Ungrouped Hierarchy cmp2 in file ./DW_fp_cmp__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| gt_x_3         | DW_cmp         | width=23   | gt_219                     |
| eq_x_4         | DW_cmp         | width=23   | eq_222                     |
| gt_x_5         | DW_cmp         | width=8    | gt_227                     |
| eq_x_6         | DW_cmp         | width=8    | eq_230                     |
=============================================================================


Resource Report for Ungrouped Hierarchy cmp1 in file ./DW_fp_cmp__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| gt_x_3         | DW_cmp         | width=23   | gt_219                     |
| eq_x_4         | DW_cmp         | width=23   | eq_222                     |
| gt_x_5         | DW_cmp         | width=8    | gt_227                     |
| eq_x_6         | DW_cmp         | width=8    | eq_230                     |
=============================================================================


Resource Report for Ungrouped Hierarchy sum2 in file ./DW_fp_sum3__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| eq_x_4         | DW_cmp         | width=31   | eq_400                     |
| eq_x_5         | DW_cmp         | width=31   | eq_411                     |
| eq_x_6         | DW_cmp         | width=31   | eq_422                     |
| gte_x_17       | DW_cmp         | width=8    | gte_452                    |
| gte_x_18       | DW_cmp         | width=8    | gte_452_2                  |
| gte_x_19       | DW_cmp         | width=8    | gte_454                    |
| gte_x_20       | DW_cmp         | width=8    | gte_454_2                  |
| sub_x_21       | DW01_sub       | width=8    | sub_458                    |
| sub_x_22       | DW01_sub       | width=8    | sub_459                    |
| sub_x_23       | DW01_sub       | width=8    | sub_460                    |
| ashr_28        | DW_rightsh     | A_width=51 | srl_470                    |
|                |                | SH_width=8 |                            |
| ash_29         | DW_leftsh      | A_width=51 | sll_472                    |
|                |                | SH_width=8 |                            |
| ashr_30        | DW_rightsh     | A_width=51 | srl_478                    |
|                |                | SH_width=8 |                            |
| ash_31         | DW_leftsh      | A_width=51 | sll_480                    |
|                |                | SH_width=8 |                            |
| ashr_32        | DW_rightsh     | A_width=51 | srl_486                    |
|                |                | SH_width=8 |                            |
| ash_33         | DW_leftsh      | A_width=51 | sll_488                    |
|                |                | SH_width=8 |                            |
| gt_x_34        | DW_cmp         | width=32   | gt_498                     |
| gt_x_35        | DW_cmp         | width=32   | gt_503                     |
| gt_x_36        | DW_cmp         | width=32   | gt_508                     |
| ash_46         | DW_leftsh      | A_width=53 | sll_562                    |
|                |                | SH_width=7 |                            |
| add_x_47       | DW01_add       | width=25   | add_575                    |
| U2             | DW_fp_ifp_conv | sig_widthi=23 | U2                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U3             | DW_fp_ifp_conv | sig_widthi=23 | U3                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U4             | DW_fp_ifp_conv | sig_widthi=23 | U4                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=28 |                         |
|                |                | exp_widtho=9 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U5             | DW_ifp_addsub  | sig_widthi=25 | U5                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=28 |                         |
|                |                | exp_widtho=9 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U6             | DW_ifp_addsub  | sig_widthi=28 | U6                      |
|                |                | exp_widthi=9 |                          |
|                |                | sig_widtho=51 |                         |
|                |                | exp_widtho=10 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U7             | DW_ifp_fp_conv | sig_widthi=51 | U7                      |
|                |                | exp_widthi=10 |                         |
|                |                | sig_width=23 |                          |
|                |                | exp_width=8 |                           |
|                |                | use_denormal=0 |                        |
| U1             | DW_lzd         | a_width=53 | U1                         |
| DP_OP_160J1_136_9276            |            |                            |
|                | DP_OP_160J1_136_9276 |      |                            |
| DP_OP_161J1_137_406             |            |                            |
|                | DP_OP_161J1_137_406 |       |                            |
=============================================================================

Datapath Report for DP_OP_160J1_136_9276
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_160J1_136_9276 | add_461 sub_564 sub_565 add_565                     |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 7     |                                          |
| O1    | PO   | Unsigned | 9     | I1 + $unsigned(2'b10)                    |
| O2    | PO   | Signed   | 10    | O1 - I2                                  |
| O3    | PO   | Signed   | 11    | $unsigned(1'b1) + O2                     |
==============================================================================

Datapath Report for DP_OP_161J1_137_406
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_161J1_137_406  | add_532 add_532_2 add_532_3 add_532_4 sub_add_537   |
|                      | add_537_ni                                          |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 52    |                                          |
| I2    | PI   | Signed   | 52    |                                          |
| I3    | PI   | Unsigned | 51    |                                          |
| I4    | PI   | Unsigned | 1     |                                          |
| I5    | PI   | Unsigned | 1     |                                          |
| T159  | IFO  | Signed   | 53    | O1[52:0]                                 |
| O1    | PO   | Signed   | 54    | I1 + I2 + I3 + I4 + I5                   |
| O2    | PO   | Signed   | 53    | -T159 + $unsigned(53'b00000000000000000000000000000000000000000000000000000) |
==============================================================================


Resource Report for Ungrouped Hierarchy sum1 in file ./DW_fp_sum3__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| eq_x_4         | DW_cmp         | width=31   | eq_400                     |
| eq_x_5         | DW_cmp         | width=31   | eq_411                     |
| eq_x_6         | DW_cmp         | width=31   | eq_422                     |
| gte_x_17       | DW_cmp         | width=8    | gte_452                    |
| gte_x_18       | DW_cmp         | width=8    | gte_452_2                  |
| gte_x_19       | DW_cmp         | width=8    | gte_454                    |
| gte_x_20       | DW_cmp         | width=8    | gte_454_2                  |
| sub_x_21       | DW01_sub       | width=8    | sub_458                    |
| sub_x_22       | DW01_sub       | width=8    | sub_459                    |
| sub_x_23       | DW01_sub       | width=8    | sub_460                    |
| ashr_28        | DW_rightsh     | A_width=51 | srl_470                    |
|                |                | SH_width=8 |                            |
| ash_29         | DW_leftsh      | A_width=51 | sll_472                    |
|                |                | SH_width=8 |                            |
| ashr_30        | DW_rightsh     | A_width=51 | srl_478                    |
|                |                | SH_width=8 |                            |
| ash_31         | DW_leftsh      | A_width=51 | sll_480                    |
|                |                | SH_width=8 |                            |
| ashr_32        | DW_rightsh     | A_width=51 | srl_486                    |
|                |                | SH_width=8 |                            |
| ash_33         | DW_leftsh      | A_width=51 | sll_488                    |
|                |                | SH_width=8 |                            |
| gt_x_34        | DW_cmp         | width=32   | gt_498                     |
| gt_x_35        | DW_cmp         | width=32   | gt_503                     |
| gt_x_36        | DW_cmp         | width=32   | gt_508                     |
| ash_46         | DW_leftsh      | A_width=53 | sll_562                    |
|                |                | SH_width=7 |                            |
| add_x_47       | DW01_add       | width=25   | add_575                    |
| U2             | DW_fp_ifp_conv | sig_widthi=23 | U2                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U3             | DW_fp_ifp_conv | sig_widthi=23 | U3                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U4             | DW_fp_ifp_conv | sig_widthi=23 | U4                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=28 |                         |
|                |                | exp_widtho=9 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U5             | DW_ifp_addsub  | sig_widthi=25 | U5                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=28 |                         |
|                |                | exp_widtho=9 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U6             | DW_ifp_addsub  | sig_widthi=28 | U6                      |
|                |                | exp_widthi=9 |                          |
|                |                | sig_widtho=51 |                         |
|                |                | exp_widtho=10 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U7             | DW_ifp_fp_conv | sig_widthi=51 | U7                      |
|                |                | exp_widthi=10 |                         |
|                |                | sig_width=23 |                          |
|                |                | exp_width=8 |                           |
|                |                | use_denormal=0 |                        |
| U1             | DW_lzd         | a_width=53 | U1                         |
| DP_OP_160J1_139_9276            |            |                            |
|                | DP_OP_160J1_139_9276 |      |                            |
| DP_OP_161J1_140_406             |            |                            |
|                | DP_OP_161J1_140_406 |       |                            |
=============================================================================

Datapath Report for DP_OP_160J1_139_9276
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_160J1_139_9276 | add_461 sub_564 sub_565 add_565                     |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 7     |                                          |
| O1    | PO   | Unsigned | 9     | I1 + $unsigned(2'b10)                    |
| O2    | PO   | Signed   | 10    | O1 - I2                                  |
| O3    | PO   | Signed   | 11    | $unsigned(1'b1) + O2                     |
==============================================================================

Datapath Report for DP_OP_161J1_140_406
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_161J1_140_406  | add_532 add_532_2 add_532_3 add_532_4 sub_add_537   |
|                      | add_537_ni                                          |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 52    |                                          |
| I2    | PI   | Signed   | 52    |                                          |
| I3    | PI   | Unsigned | 51    |                                          |
| I4    | PI   | Unsigned | 1     |                                          |
| I5    | PI   | Unsigned | 1     |                                          |
| T159  | IFO  | Signed   | 53    | O1[52:0]                                 |
| O1    | PO   | Signed   | 54    | I1 + I2 + I3 + I4 + I5                   |
| O2    | PO   | Signed   | 53    | -T159 + $unsigned(53'b00000000000000000000000000000000000000000000000000000) |
==============================================================================


Resource Report for Ungrouped Hierarchy dp4 in file ./DW_fp_dp4__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| mult_x_25      | DW_mult_uns    | a_width=24 | mult_600                   |
|                |                | b_width=24 |                            |
| mult_x_26      | DW_mult_uns    | a_width=24 | mult_601                   |
|                |                | b_width=24 |                            |
| mult_x_27      | DW_mult_uns    | a_width=24 | mult_602                   |
|                |                | b_width=24 |                            |
| mult_x_28      | DW_mult_uns    | a_width=24 | mult_603                   |
|                |                | b_width=24 |                            |
| gte_x_37       | DW_cmp         | width=59   | gte_646                    |
| gte_x_39       | DW_cmp         | width=59   | gte_649                    |
| gte_x_41       | DW_cmp         | width=59   | gte_652                    |
| gte_x_43       | DW_cmp         | width=59   | gte_655                    |
| gte_x_45       | DW_cmp         | width=59   | gte_658                    |
| eq_x_47        | DW_cmp         | width=60   | eq_661                     |
| eq_x_48        | DW_cmp         | width=60   | eq_661_2                   |
| eq_x_49        | DW_cmp         | width=60   | eq_662                     |
| eq_x_50        | DW_cmp         | width=60   | eq_662_2                   |
| eq_x_51        | DW_cmp         | width=60   | eq_663                     |
| sub_x_53       | DW01_sub       | width=11   | sub_672                    |
| sub_x_54       | DW01_sub       | width=11   | sub_673                    |
| sub_x_55       | DW01_sub       | width=11   | sub_674                    |
| ashr_56        | DW_rightsh     | A_width=143 | srl_690                   |
|                |                | SH_width=11 |                           |
| ash_57         | DW_leftsh      | A_width=143 | sll_692                   |
|                |                | SH_width=11 |                           |
| ashr_58        | DW_rightsh     | A_width=143 | srl_705                   |
|                |                | SH_width=11 |                           |
| ash_59         | DW_leftsh      | A_width=143 | sll_707                   |
|                |                | SH_width=11 |                           |
| ashr_60        | DW_rightsh     | A_width=143 | srl_719                   |
|                |                | SH_width=11 |                           |
| ash_61         | DW_leftsh      | A_width=143 | sll_721                   |
|                |                | SH_width=11 |                           |
| add_x_80       | DW01_add       | width=9    | add_858                    |
| ash_82         | DW_leftsh      | A_width=145 | sll_954                   |
|                |                | SH_width=9 |                            |
| add_x_83       | DW01_inc       | width=11   | add_963                    |
| add_x_84       | DW01_add       | width=25   | add_976                    |
| U1             | DW_fp_ifp_conv | sig_widthi=23 | U1                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U2             | DW_fp_ifp_conv | sig_widthi=23 | U2                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U3             | DW_fp_ifp_conv | sig_widthi=23 | U3                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U4             | DW_fp_ifp_conv | sig_widthi=23 | U4                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U5             | DW_fp_ifp_conv | sig_widthi=23 | U5                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U6             | DW_fp_ifp_conv | sig_widthi=23 | U6                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U7             | DW_fp_ifp_conv | sig_widthi=23 | U7                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U8             | DW_fp_ifp_conv | sig_widthi=23 | U8                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U9             | DW_ifp_mult    | sig_widthi=25 | U9                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U10            | DW_ifp_mult    | sig_widthi=25 | U10                     |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U11            | DW_ifp_mult    | sig_widthi=25 | U11                     |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U12            | DW_ifp_mult    | sig_widthi=25 | U12                     |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U13            | DW_ifp_addsub  | sig_widthi=52 | U13                     |
|                |                | exp_widthi=9 |                          |
|                |                | sig_widtho=53 |                         |
|                |                | exp_widtho=10 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U14            | DW_ifp_addsub  | sig_widthi=52 | U14                     |
|                |                | exp_widthi=9 |                          |
|                |                | sig_widtho=53 |                         |
|                |                | exp_widtho=10 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U15            | DW_ifp_addsub  | sig_widthi=53 | U15                     |
|                |                | exp_widthi=10 |                         |
|                |                | sig_widtho=54 |                         |
|                |                | exp_widtho=11 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U16            | DW_ifp_fp_conv | sig_widthi=54 | U16                     |
|                |                | exp_widthi=11 |                         |
|                |                | sig_width=23 |                          |
|                |                | exp_width=8 |                           |
|                |                | use_denormal=0 |                        |
| U17            | DW_norm        | a_width=48 | U17                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U18            | DW_norm        | a_width=48 | U18                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U19            | DW_norm        | a_width=48 | U19                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U20            | DW_norm        | a_width=48 | U20                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U21            | DW_lzd         | a_width=145 | U21                       |
| U22            | DW_lzd         | a_width=117 | U22                       |
| DP_OP_277J1_142_2911            |            |                            |
|                | DP_OP_277J1_142_2911 |      |                            |
| DP_OP_278J1_143_2911            |            |                            |
|                | DP_OP_278J1_143_2911 |      |                            |
| DP_OP_279J1_144_2911            |            |                            |
|                | DP_OP_279J1_144_2911 |      |                            |
| DP_OP_280J1_145_2911            |            |                            |
|                | DP_OP_280J1_145_2911 |      |                            |
| DP_OP_281J1_146_7155            |            |                            |
|                | DP_OP_281J1_146_7155 |      |                            |
| DP_OP_282J1_147_557             |            |                            |
|                | DP_OP_282J1_147_557 |       |                            |
=============================================================================

Datapath Report for DP_OP_277J1_142_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_277J1_142_2911 | add_606 add_606_2 add_606_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_278J1_143_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_278J1_143_2911 | add_607 add_607_2 add_607_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_279J1_144_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_279J1_144_2911 | add_608 add_608_2 add_608_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_280J1_145_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_280J1_145_2911 | add_609 add_609_2 add_609_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_281J1_146_7155
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_281J1_146_7155 | add_820 add_820_2 add_820_3 add_820_4 add_820_5     |
|                      | add_820_6 sub_add_828 add_828_ni                    |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 144   |                                          |
| I2    | PI   | Unsigned | 1     |                                          |
| I3    | PI   | Signed   | 144   |                                          |
| I4    | PI   | Unsigned | 1     |                                          |
| I5    | PI   | Signed   | 144   |                                          |
| I6    | PI   | Unsigned | 1     |                                          |
| I7    | PI   | Unsigned | 143   |                                          |
| T276  | IFO  | Signed   | 145   | O1[144:0]                                |
| O1    | PO   | Signed   | 146   | I1 + I2 + I3 + I4 + I5 + I6 + I7         |
| O2    | PO   | Signed   | 145   | -T276 + $unsigned(145'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000) |
==============================================================================

Datapath Report for DP_OP_282J1_147_557
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_282J1_147_557  | sub_960 sub_960_2 add_960                           |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 11    |                                          |
| I2    | PI   | Unsigned | 9     |                                          |
| O1    | PO   | Signed   | 11    | I1 - I2 + $unsigned(11'b11101010100)     |
==============================================================================


Resource Report for Ungrouped Hierarchy dp3 in file ./DW_fp_dp4__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| mult_x_25      | DW_mult_uns    | a_width=24 | mult_600                   |
|                |                | b_width=24 |                            |
| mult_x_26      | DW_mult_uns    | a_width=24 | mult_601                   |
|                |                | b_width=24 |                            |
| mult_x_27      | DW_mult_uns    | a_width=24 | mult_602                   |
|                |                | b_width=24 |                            |
| mult_x_28      | DW_mult_uns    | a_width=24 | mult_603                   |
|                |                | b_width=24 |                            |
| gte_x_37       | DW_cmp         | width=59   | gte_646                    |
| gte_x_39       | DW_cmp         | width=59   | gte_649                    |
| gte_x_41       | DW_cmp         | width=59   | gte_652                    |
| gte_x_43       | DW_cmp         | width=59   | gte_655                    |
| gte_x_45       | DW_cmp         | width=59   | gte_658                    |
| eq_x_47        | DW_cmp         | width=60   | eq_661                     |
| eq_x_48        | DW_cmp         | width=60   | eq_661_2                   |
| eq_x_49        | DW_cmp         | width=60   | eq_662                     |
| eq_x_50        | DW_cmp         | width=60   | eq_662_2                   |
| eq_x_51        | DW_cmp         | width=60   | eq_663                     |
| sub_x_53       | DW01_sub       | width=11   | sub_672                    |
| sub_x_54       | DW01_sub       | width=11   | sub_673                    |
| sub_x_55       | DW01_sub       | width=11   | sub_674                    |
| ashr_56        | DW_rightsh     | A_width=143 | srl_690                   |
|                |                | SH_width=11 |                           |
| ash_57         | DW_leftsh      | A_width=143 | sll_692                   |
|                |                | SH_width=11 |                           |
| ashr_58        | DW_rightsh     | A_width=143 | srl_705                   |
|                |                | SH_width=11 |                           |
| ash_59         | DW_leftsh      | A_width=143 | sll_707                   |
|                |                | SH_width=11 |                           |
| ashr_60        | DW_rightsh     | A_width=143 | srl_719                   |
|                |                | SH_width=11 |                           |
| ash_61         | DW_leftsh      | A_width=143 | sll_721                   |
|                |                | SH_width=11 |                           |
| add_x_80       | DW01_add       | width=9    | add_858                    |
| ash_82         | DW_leftsh      | A_width=145 | sll_954                   |
|                |                | SH_width=9 |                            |
| add_x_83       | DW01_inc       | width=11   | add_963                    |
| add_x_84       | DW01_add       | width=25   | add_976                    |
| U1             | DW_fp_ifp_conv | sig_widthi=23 | U1                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U2             | DW_fp_ifp_conv | sig_widthi=23 | U2                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U3             | DW_fp_ifp_conv | sig_widthi=23 | U3                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U4             | DW_fp_ifp_conv | sig_widthi=23 | U4                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U5             | DW_fp_ifp_conv | sig_widthi=23 | U5                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U6             | DW_fp_ifp_conv | sig_widthi=23 | U6                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U7             | DW_fp_ifp_conv | sig_widthi=23 | U7                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U8             | DW_fp_ifp_conv | sig_widthi=23 | U8                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U9             | DW_ifp_mult    | sig_widthi=25 | U9                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U10            | DW_ifp_mult    | sig_widthi=25 | U10                     |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U11            | DW_ifp_mult    | sig_widthi=25 | U11                     |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U12            | DW_ifp_mult    | sig_widthi=25 | U12                     |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U13            | DW_ifp_addsub  | sig_widthi=52 | U13                     |
|                |                | exp_widthi=9 |                          |
|                |                | sig_widtho=53 |                         |
|                |                | exp_widtho=10 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U14            | DW_ifp_addsub  | sig_widthi=52 | U14                     |
|                |                | exp_widthi=9 |                          |
|                |                | sig_widtho=53 |                         |
|                |                | exp_widtho=10 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U15            | DW_ifp_addsub  | sig_widthi=53 | U15                     |
|                |                | exp_widthi=10 |                         |
|                |                | sig_widtho=54 |                         |
|                |                | exp_widtho=11 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U16            | DW_ifp_fp_conv | sig_widthi=54 | U16                     |
|                |                | exp_widthi=11 |                         |
|                |                | sig_width=23 |                          |
|                |                | exp_width=8 |                           |
|                |                | use_denormal=0 |                        |
| U17            | DW_norm        | a_width=48 | U17                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U18            | DW_norm        | a_width=48 | U18                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U19            | DW_norm        | a_width=48 | U19                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U20            | DW_norm        | a_width=48 | U20                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U21            | DW_lzd         | a_width=145 | U21                       |
| U22            | DW_lzd         | a_width=117 | U22                       |
| DP_OP_277J1_149_2911            |            |                            |
|                | DP_OP_277J1_149_2911 |      |                            |
| DP_OP_278J1_150_2911            |            |                            |
|                | DP_OP_278J1_150_2911 |      |                            |
| DP_OP_279J1_151_2911            |            |                            |
|                | DP_OP_279J1_151_2911 |      |                            |
| DP_OP_280J1_152_2911            |            |                            |
|                | DP_OP_280J1_152_2911 |      |                            |
| DP_OP_281J1_153_7155            |            |                            |
|                | DP_OP_281J1_153_7155 |      |                            |
| DP_OP_282J1_154_557             |            |                            |
|                | DP_OP_282J1_154_557 |       |                            |
=============================================================================

Datapath Report for DP_OP_277J1_149_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_277J1_149_2911 | add_606 add_606_2 add_606_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_278J1_150_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_278J1_150_2911 | add_607 add_607_2 add_607_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_279J1_151_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_279J1_151_2911 | add_608 add_608_2 add_608_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_280J1_152_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_280J1_152_2911 | add_609 add_609_2 add_609_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_281J1_153_7155
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_281J1_153_7155 | add_820 add_820_2 add_820_3 add_820_4 add_820_5     |
|                      | add_820_6 sub_add_828 add_828_ni                    |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 144   |                                          |
| I2    | PI   | Unsigned | 1     |                                          |
| I3    | PI   | Signed   | 144   |                                          |
| I4    | PI   | Unsigned | 1     |                                          |
| I5    | PI   | Signed   | 144   |                                          |
| I6    | PI   | Unsigned | 1     |                                          |
| I7    | PI   | Unsigned | 143   |                                          |
| T276  | IFO  | Signed   | 145   | O1[144:0]                                |
| O1    | PO   | Signed   | 146   | I1 + I2 + I3 + I4 + I5 + I6 + I7         |
| O2    | PO   | Signed   | 145   | -T276 + $unsigned(145'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000) |
==============================================================================

Datapath Report for DP_OP_282J1_154_557
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_282J1_154_557  | sub_960 sub_960_2 add_960                           |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 11    |                                          |
| I2    | PI   | Unsigned | 9     |                                          |
| O1    | PO   | Signed   | 11    | I1 - I2 + $unsigned(11'b11101010100)     |
==============================================================================


Resource Report for Ungrouped Hierarchy dp2 in file ./DW_fp_dp4__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| mult_x_25      | DW_mult_uns    | a_width=24 | mult_600                   |
|                |                | b_width=24 |                            |
| mult_x_26      | DW_mult_uns    | a_width=24 | mult_601                   |
|                |                | b_width=24 |                            |
| mult_x_27      | DW_mult_uns    | a_width=24 | mult_602                   |
|                |                | b_width=24 |                            |
| mult_x_28      | DW_mult_uns    | a_width=24 | mult_603                   |
|                |                | b_width=24 |                            |
| gte_x_37       | DW_cmp         | width=59   | gte_646                    |
| gte_x_39       | DW_cmp         | width=59   | gte_649                    |
| gte_x_41       | DW_cmp         | width=59   | gte_652                    |
| gte_x_43       | DW_cmp         | width=59   | gte_655                    |
| gte_x_45       | DW_cmp         | width=59   | gte_658                    |
| eq_x_47        | DW_cmp         | width=60   | eq_661                     |
| eq_x_48        | DW_cmp         | width=60   | eq_661_2                   |
| eq_x_49        | DW_cmp         | width=60   | eq_662                     |
| eq_x_50        | DW_cmp         | width=60   | eq_662_2                   |
| eq_x_51        | DW_cmp         | width=60   | eq_663                     |
| sub_x_53       | DW01_sub       | width=11   | sub_672                    |
| sub_x_54       | DW01_sub       | width=11   | sub_673                    |
| sub_x_55       | DW01_sub       | width=11   | sub_674                    |
| ashr_56        | DW_rightsh     | A_width=143 | srl_690                   |
|                |                | SH_width=11 |                           |
| ash_57         | DW_leftsh      | A_width=143 | sll_692                   |
|                |                | SH_width=11 |                           |
| ashr_58        | DW_rightsh     | A_width=143 | srl_705                   |
|                |                | SH_width=11 |                           |
| ash_59         | DW_leftsh      | A_width=143 | sll_707                   |
|                |                | SH_width=11 |                           |
| ashr_60        | DW_rightsh     | A_width=143 | srl_719                   |
|                |                | SH_width=11 |                           |
| ash_61         | DW_leftsh      | A_width=143 | sll_721                   |
|                |                | SH_width=11 |                           |
| add_x_80       | DW01_add       | width=9    | add_858                    |
| ash_82         | DW_leftsh      | A_width=145 | sll_954                   |
|                |                | SH_width=9 |                            |
| add_x_83       | DW01_inc       | width=11   | add_963                    |
| add_x_84       | DW01_add       | width=25   | add_976                    |
| U1             | DW_fp_ifp_conv | sig_widthi=23 | U1                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U2             | DW_fp_ifp_conv | sig_widthi=23 | U2                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U3             | DW_fp_ifp_conv | sig_widthi=23 | U3                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U4             | DW_fp_ifp_conv | sig_widthi=23 | U4                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U5             | DW_fp_ifp_conv | sig_widthi=23 | U5                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U6             | DW_fp_ifp_conv | sig_widthi=23 | U6                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U7             | DW_fp_ifp_conv | sig_widthi=23 | U7                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U8             | DW_fp_ifp_conv | sig_widthi=23 | U8                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U9             | DW_ifp_mult    | sig_widthi=25 | U9                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U10            | DW_ifp_mult    | sig_widthi=25 | U10                     |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U11            | DW_ifp_mult    | sig_widthi=25 | U11                     |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U12            | DW_ifp_mult    | sig_widthi=25 | U12                     |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U13            | DW_ifp_addsub  | sig_widthi=52 | U13                     |
|                |                | exp_widthi=9 |                          |
|                |                | sig_widtho=53 |                         |
|                |                | exp_widtho=10 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U14            | DW_ifp_addsub  | sig_widthi=52 | U14                     |
|                |                | exp_widthi=9 |                          |
|                |                | sig_widtho=53 |                         |
|                |                | exp_widtho=10 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U15            | DW_ifp_addsub  | sig_widthi=53 | U15                     |
|                |                | exp_widthi=10 |                         |
|                |                | sig_widtho=54 |                         |
|                |                | exp_widtho=11 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U16            | DW_ifp_fp_conv | sig_widthi=54 | U16                     |
|                |                | exp_widthi=11 |                         |
|                |                | sig_width=23 |                          |
|                |                | exp_width=8 |                           |
|                |                | use_denormal=0 |                        |
| U17            | DW_norm        | a_width=48 | U17                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U18            | DW_norm        | a_width=48 | U18                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U19            | DW_norm        | a_width=48 | U19                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U20            | DW_norm        | a_width=48 | U20                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U21            | DW_lzd         | a_width=145 | U21                       |
| U22            | DW_lzd         | a_width=117 | U22                       |
| DP_OP_277J1_156_2911            |            |                            |
|                | DP_OP_277J1_156_2911 |      |                            |
| DP_OP_278J1_157_2911            |            |                            |
|                | DP_OP_278J1_157_2911 |      |                            |
| DP_OP_279J1_158_2911            |            |                            |
|                | DP_OP_279J1_158_2911 |      |                            |
| DP_OP_280J1_159_2911            |            |                            |
|                | DP_OP_280J1_159_2911 |      |                            |
| DP_OP_281J1_160_7155            |            |                            |
|                | DP_OP_281J1_160_7155 |      |                            |
| DP_OP_282J1_161_557             |            |                            |
|                | DP_OP_282J1_161_557 |       |                            |
=============================================================================

Datapath Report for DP_OP_277J1_156_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_277J1_156_2911 | add_606 add_606_2 add_606_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_278J1_157_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_278J1_157_2911 | add_607 add_607_2 add_607_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_279J1_158_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_279J1_158_2911 | add_608 add_608_2 add_608_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_280J1_159_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_280J1_159_2911 | add_609 add_609_2 add_609_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_281J1_160_7155
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_281J1_160_7155 | add_820 add_820_2 add_820_3 add_820_4 add_820_5     |
|                      | add_820_6 sub_add_828 add_828_ni                    |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 144   |                                          |
| I2    | PI   | Unsigned | 1     |                                          |
| I3    | PI   | Signed   | 144   |                                          |
| I4    | PI   | Unsigned | 1     |                                          |
| I5    | PI   | Signed   | 144   |                                          |
| I6    | PI   | Unsigned | 1     |                                          |
| I7    | PI   | Unsigned | 143   |                                          |
| T276  | IFO  | Signed   | 145   | O1[144:0]                                |
| O1    | PO   | Signed   | 146   | I1 + I2 + I3 + I4 + I5 + I6 + I7         |
| O2    | PO   | Signed   | 145   | -T276 + $unsigned(145'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000) |
==============================================================================

Datapath Report for DP_OP_282J1_161_557
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_282J1_161_557  | sub_960 sub_960_2 add_960                           |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 11    |                                          |
| I2    | PI   | Unsigned | 9     |                                          |
| O1    | PO   | Signed   | 11    | I1 - I2 + $unsigned(11'b11101010100)     |
==============================================================================


Resource Report for Ungrouped Hierarchy dp1 in file ./DW_fp_dp4__rtl.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| mult_x_25      | DW_mult_uns    | a_width=24 | mult_600                   |
|                |                | b_width=24 |                            |
| mult_x_26      | DW_mult_uns    | a_width=24 | mult_601                   |
|                |                | b_width=24 |                            |
| mult_x_27      | DW_mult_uns    | a_width=24 | mult_602                   |
|                |                | b_width=24 |                            |
| mult_x_28      | DW_mult_uns    | a_width=24 | mult_603                   |
|                |                | b_width=24 |                            |
| gte_x_37       | DW_cmp         | width=59   | gte_646                    |
| gte_x_39       | DW_cmp         | width=59   | gte_649                    |
| gte_x_41       | DW_cmp         | width=59   | gte_652                    |
| gte_x_43       | DW_cmp         | width=59   | gte_655                    |
| gte_x_45       | DW_cmp         | width=59   | gte_658                    |
| eq_x_47        | DW_cmp         | width=60   | eq_661                     |
| eq_x_48        | DW_cmp         | width=60   | eq_661_2                   |
| eq_x_49        | DW_cmp         | width=60   | eq_662                     |
| eq_x_50        | DW_cmp         | width=60   | eq_662_2                   |
| eq_x_51        | DW_cmp         | width=60   | eq_663                     |
| sub_x_53       | DW01_sub       | width=11   | sub_672                    |
| sub_x_54       | DW01_sub       | width=11   | sub_673                    |
| sub_x_55       | DW01_sub       | width=11   | sub_674                    |
| ashr_56        | DW_rightsh     | A_width=143 | srl_690                   |
|                |                | SH_width=11 |                           |
| ash_57         | DW_leftsh      | A_width=143 | sll_692                   |
|                |                | SH_width=11 |                           |
| ashr_58        | DW_rightsh     | A_width=143 | srl_705                   |
|                |                | SH_width=11 |                           |
| ash_59         | DW_leftsh      | A_width=143 | sll_707                   |
|                |                | SH_width=11 |                           |
| ashr_60        | DW_rightsh     | A_width=143 | srl_719                   |
|                |                | SH_width=11 |                           |
| ash_61         | DW_leftsh      | A_width=143 | sll_721                   |
|                |                | SH_width=11 |                           |
| add_x_80       | DW01_add       | width=9    | add_858                    |
| ash_82         | DW_leftsh      | A_width=145 | sll_954                   |
|                |                | SH_width=9 |                            |
| add_x_83       | DW01_inc       | width=11   | add_963                    |
| add_x_84       | DW01_add       | width=25   | add_976                    |
| U1             | DW_fp_ifp_conv | sig_widthi=23 | U1                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U2             | DW_fp_ifp_conv | sig_widthi=23 | U2                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U3             | DW_fp_ifp_conv | sig_widthi=23 | U3                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U4             | DW_fp_ifp_conv | sig_widthi=23 | U4                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U5             | DW_fp_ifp_conv | sig_widthi=23 | U5                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U6             | DW_fp_ifp_conv | sig_widthi=23 | U6                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U7             | DW_fp_ifp_conv | sig_widthi=23 | U7                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U8             | DW_fp_ifp_conv | sig_widthi=23 | U8                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=25 |                         |
|                |                | exp_widtho=8 |                          |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U9             | DW_ifp_mult    | sig_widthi=25 | U9                      |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U10            | DW_ifp_mult    | sig_widthi=25 | U10                     |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U11            | DW_ifp_mult    | sig_widthi=25 | U11                     |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U12            | DW_ifp_mult    | sig_widthi=25 | U12                     |
|                |                | exp_widthi=8 |                          |
|                |                | sig_widtho=52 |                         |
|                |                | exp_widtho=9 |                          |
| U13            | DW_ifp_addsub  | sig_widthi=52 | U13                     |
|                |                | exp_widthi=9 |                          |
|                |                | sig_widtho=53 |                         |
|                |                | exp_widtho=10 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U14            | DW_ifp_addsub  | sig_widthi=52 | U14                     |
|                |                | exp_widthi=9 |                          |
|                |                | sig_widtho=53 |                         |
|                |                | exp_widtho=10 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U15            | DW_ifp_addsub  | sig_widthi=53 | U15                     |
|                |                | exp_widthi=10 |                         |
|                |                | sig_widtho=54 |                         |
|                |                | exp_widtho=11 |                         |
|                |                | use_denormal=0 |                        |
|                |                | use_1scmpl=0 |                          |
| U16            | DW_ifp_fp_conv | sig_widthi=54 | U16                     |
|                |                | exp_widthi=11 |                         |
|                |                | sig_width=23 |                          |
|                |                | exp_width=8 |                           |
|                |                | use_denormal=0 |                        |
| U17            | DW_norm        | a_width=48 | U17                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U18            | DW_norm        | a_width=48 | U18                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U19            | DW_norm        | a_width=48 | U19                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U20            | DW_norm        | a_width=48 | U20                        |
|                |                | srch_wind=48 |                          |
|                |                | exp_width=11 |                          |
|                |                | exp_ctr=1  |                            |
| U21            | DW_lzd         | a_width=145 | U21                       |
| U22            | DW_lzd         | a_width=117 | U22                       |
| DP_OP_277J1_163_2911            |            |                            |
|                | DP_OP_277J1_163_2911 |      |                            |
| DP_OP_278J1_164_2911            |            |                            |
|                | DP_OP_278J1_164_2911 |      |                            |
| DP_OP_279J1_165_2911            |            |                            |
|                | DP_OP_279J1_165_2911 |      |                            |
| DP_OP_280J1_166_2911            |            |                            |
|                | DP_OP_280J1_166_2911 |      |                            |
| DP_OP_281J1_167_7155            |            |                            |
|                | DP_OP_281J1_167_7155 |      |                            |
| DP_OP_282J1_168_557             |            |                            |
|                | DP_OP_282J1_168_557 |       |                            |
=============================================================================

Datapath Report for DP_OP_277J1_163_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_277J1_163_2911 | add_606 add_606_2 add_606_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_278J1_164_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_278J1_164_2911 | add_607 add_607_2 add_607_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_279J1_165_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_279J1_165_2911 | add_608 add_608_2 add_608_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_280J1_166_2911
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_280J1_166_2911 | add_609 add_609_2 add_609_3                         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| O1    | PO   | Unsigned | 11    | I1 + I2 + $unsigned(11'b00000110000)     |
==============================================================================

Datapath Report for DP_OP_281J1_167_7155
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_281J1_167_7155 | add_820 add_820_2 add_820_3 add_820_4 add_820_5     |
|                      | add_820_6 sub_add_828 add_828_ni                    |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 144   |                                          |
| I2    | PI   | Unsigned | 1     |                                          |
| I3    | PI   | Signed   | 144   |                                          |
| I4    | PI   | Unsigned | 1     |                                          |
| I5    | PI   | Signed   | 144   |                                          |
| I6    | PI   | Unsigned | 1     |                                          |
| I7    | PI   | Unsigned | 143   |                                          |
| T276  | IFO  | Signed   | 145   | O1[144:0]                                |
| O1    | PO   | Signed   | 146   | I1 + I2 + I3 + I4 + I5 + I6 + I7         |
| O2    | PO   | Signed   | 145   | -T276 + $unsigned(145'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000) |
==============================================================================

Datapath Report for DP_OP_282J1_168_557
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_282J1_168_557  | sub_960 sub_960_2 add_960                           |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 11    |                                          |
| I2    | PI   | Unsigned | 9     |                                          |
| O1    | PO   | Signed   | 11    | I1 - I2 + $unsigned(11'b11101010100)     |
==============================================================================


Resource Report for Ungrouped Hierarchy *cell*J10*259444/U1 in file
        ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| U2             | DW01_ash       | A_width=27 | U2                         |
|                |                | SH_width=3 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy a1/U1 in file ./DW_fp_addsub__str.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| lt_x_1         | DW_cmp         | width=31   | lt_223                     |
| ashr_5         | DW_rightsh     | A_width=26 | srl_283_lsb_trim           |
|                |                | SH_width=8 |                            |
| ash_6          | DW_leftsh      | A_width=26 | sll_285                    |
|                |                | SH_width=8 |                            |
| ash_8          | DW_leftsh      | A_width=27 | sll_337                    |
|                |                | SH_width=6 |                            |
| add_x_9        | DW01_add       | width=5    | add_339                    |
| add_x_16       | DW01_inc       | width=23   | add_398                    |
| U2             | DW_lzd         | a_width=28 | U2                         |
| U1             | DW_norm        | a_width=27 | U1                         |
|                |                | srch_wind=3 |                           |
|                |                | exp_width=6 |                           |
|                |                | exp_ctr=0  |                            |
| DP_OP_65J10_177_7885            |            |                            |
|                | DP_OP_65J10_177_7885 |      |                            |
| DP_OP_66J10_178_3163            |            |                            |
|                | DP_OP_66J10_178_3163 |      |                            |
| DP_OP_67J10_179_9752            |            |                            |
|                | DP_OP_67J10_179_9752 |      |                            |
=============================================================================

Datapath Report for DP_OP_65J10_177_7885
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_65J10_177_7885 | sub_277 sub_add_279 add_279_ni                      |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| T64   | IFO  | Signed   | 8     | O1[7:0]                                  |
| O1    | PO   | Signed   | 9     | I1 - I2                                  |
| O2    | PO   | Signed   | 8     | -T64 + $unsigned(8'b00000000)            |
==============================================================================

Datapath Report for DP_OP_66J10_178_3163
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_66J10_178_3163 | add_294 add_294_2                                   |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 27    |                                          |
| I2    | PI   | Unsigned | 28    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Unsigned | 28    | I1 + I2 + I3                             |
==============================================================================

Datapath Report for DP_OP_67J10_179_9752
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_67J10_179_9752 | add_402 sub_403                                     |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 5     |                                          |
| O1    | PO   | Unsigned | 9     | I1 + $unsigned(1'b1)                     |
| O2    | PO   | Signed   | 10    | O1 - I2                                  |
==============================================================================


Resource Report for Ungrouped Hierarchy dp3/U19 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy sum2/U1
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy dp2/U18 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy sum1/U1
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy dp1/U20 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy a1/U1/U2
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy dp2/U19 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy dp2/U22
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy dp2/U21
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy dp2/U17 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy dp2/U20 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy dp1/U19 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy dp1/U22
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy dp1/U17 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy dp1/U18 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy dp3/U22
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy dp3/U21
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy dp3/U20 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy dp3/U17 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy dp3/U18 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy dp4/U19 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy dp4/U22
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy dp4/U21
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy dp4/U18 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy dp4/U17 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy dp4/U20 in file ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| sub_x_1        | DW01_sub       | width=12   | sub_120                    |
| U2             | DW01_ash       | A_width=48 | U2                         |
|                |                | SH_width=7 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy *cell*J24*260274/U1 in file
        ./DW_norm_rtl.vhd.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| U2             | DW01_ash       | A_width=27 | U2                         |
|                |                | SH_width=3 |                            |
=============================================================================


Resource Report for Ungrouped Hierarchy s1/U1/U2
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy s1/U1 in file ./DW_fp_addsub__str.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| lt_x_1         | DW_cmp         | width=31   | lt_223                     |
| ashr_5         | DW_rightsh     | A_width=26 | srl_283_lsb_trim           |
|                |                | SH_width=8 |                            |
| ash_6          | DW_leftsh      | A_width=26 | sll_285                    |
|                |                | SH_width=8 |                            |
| ash_8          | DW_leftsh      | A_width=27 | sll_337                    |
|                |                | SH_width=6 |                            |
| add_x_9        | DW01_add       | width=5    | add_339                    |
| add_x_16       | DW01_inc       | width=23   | add_398                    |
| U2             | DW_lzd         | a_width=28 | U2                         |
| U1             | DW_norm        | a_width=27 | U1                         |
|                |                | srch_wind=3 |                           |
|                |                | exp_width=6 |                           |
|                |                | exp_ctr=0  |                            |
| DP_OP_65J24_185_7885            |            |                            |
|                | DP_OP_65J24_185_7885 |      |                            |
| DP_OP_66J24_186_3163            |            |                            |
|                | DP_OP_66J24_186_3163 |      |                            |
| DP_OP_67J24_187_9752            |            |                            |
|                | DP_OP_67J24_187_9752 |      |                            |
=============================================================================

Datapath Report for DP_OP_65J24_185_7885
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_65J24_185_7885 | sub_277 sub_add_279 add_279_ni                      |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| T64   | IFO  | Signed   | 8     | O1[7:0]                                  |
| O1    | PO   | Signed   | 9     | I1 - I2                                  |
| O2    | PO   | Signed   | 8     | -T64 + $unsigned(8'b00000000)            |
==============================================================================

Datapath Report for DP_OP_66J24_186_3163
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_66J24_186_3163 | add_294 add_294_2                                   |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 27    |                                          |
| I2    | PI   | Unsigned | 28    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Unsigned | 28    | I1 + I2 + I3                             |
==============================================================================

Datapath Report for DP_OP_67J24_187_9752
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_67J24_187_9752 | add_402 sub_403                                     |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 5     |                                          |
| O1    | PO   | Unsigned | 9     | I1 + $unsigned(1'b1)                     |
| O2    | PO   | Signed   | 10    | O1 - I2                                  |
==============================================================================


Resource Report for Ungrouped Hierarchy *cell*262576/UL2
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy *cell*262576/UL1
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy M1/UL3
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy M1/UL4
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Resource Report for Ungrouped Hierarchy M1 in file ./DW_fp_mult__str.v.e
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| gte_x_2        | DW_cmp         | width=9    | gte_401                    |
| gte_x_4        | DW_cmp         | width=9    | gte_403                    |
| add_x_11       | DW01_add       | width=7    | add_480_4                  |
| add_x_12       | DW01_add       | width=24   | add_528                    |
| add_x_13       | DW01_add       | width=26   | add_529                    |
| eq_x_14        | DW_cmp         | width=10   | eq_553                     |
| lt_x_21        | DW_cmp         | width=8    | lt_615                     |
| lt_x_23        | DW_cmp         | width=8    | lt_619                     |
| add_x_24       | DW01_add       | width=3    | add_622                    |
| add_x_25       | DW01_add       | width=2    | add_623_ni                 |
| UL3            | DW_lzd         | a_width=24 | UL3                        |
| UL4            | DW_lzd         | a_width=24 | UL4                        |
| UM1            | DW02_multp     | a_width=24 | UM1                        |
|                |                | b_width=24 |                            |
|                |                | out_width=50 |                          |
|                |                | verif_en=1 |                            |
| DP_OP_108_191_7736              |            |                            |
|                | DP_OP_108_191_7736 |        |                            |
| DP_OP_109_192_8092              |            |                            |
|                | DP_OP_109_192_8092 |        |                            |
=============================================================================

Datapath Report for DP_OP_108_191_7736
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_108_191_7736   | add_384_4 sub_384_3 add_387 lte_399 lt_400          |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| T58   | IFO  | Signed   | 8     | O1[7:0]                                  |
| O1    | PO   | Signed   | 10    | I1 + I2 - $unsigned(7'b1111111)          |
| O2    | PO   | Unsigned | 8     | T58 + $unsigned(1'b1)                    |
| O3    | PO   | Signed   | 1     | O1 <= $signed(1'b0)                      |
| O4    | PO   | Signed   | 1     | O1 < $signed(1'b0)                       |
==============================================================================

Datapath Report for DP_OP_109_192_8092
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_109_192_8092   | add_535 add_568 add_569                             |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 23    |                                          |
| I2    | PI   | Unsigned | 23    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| I4    | PI   | Unsigned | 1     |                                          |
| T69   | IFO  | Signed   | 22    | O1[21:0]                                 |
| T71   | IFO  | Signed   | 21    | O1[20:0]                                 |
| O1    | PO   | Unsigned | 23    | I1 + I2                                  |
| O2    | PO   | Unsigned | 22    | T69 + I3                                 |
| O3    | PO   | Unsigned | 21    | T71 + I4                                 |
==============================================================================


Resource Report for Ungrouped Hierarchy dp1/U21
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
=============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| gte_x_896          | DW_cmp           | apparch (area)     |                |
| add_x_904          | DW01_inc         | apparch (area)     |                |
| add_x_905          | DW01_inc         | apparch (area)     |                |
| gte_x_917          | DW_cmp           | apparch (area)     |                |
| lt_x_918           | DW_cmp           | apparch (area)     |                |
| gte_x_919          | DW_cmp           | apparch (area)     |                |
| gte_x_920          | DW_cmp           | apparch (area)     |                |
| lt_x_922           | DW_cmp           | apparch (area)     |                |
| lt_x_923           | DW_cmp           | apparch (area)     |                |
| gte_x_924          | DW_cmp           | apparch (area)     |                |
| lt_x_925           | DW_cmp           | apparch (area)     |                |
| add_x_928          | DW01_inc         | apparch (area)     |                |
| lt_x_938           | DW_cmp           | apparch (area)     |                |
| dp1                | DW_fp_dp4        | rtl                |                |
| dp2                | DW_fp_dp4        | rtl                |                |
| dp3                | DW_fp_dp4        | rtl                |                |
| dp4                | DW_fp_dp4        | rtl                |                |
| sum1               | DW_fp_sum3       | rtl                |                |
| sum2               | DW_fp_sum3       | rtl                |                |
| cmp1               | DW_fp_cmp        | rtl                |                |
| cmp2               | DW_fp_cmp        | rtl                |                |
| cmp3               | DW_fp_cmp        | rtl                |                |
| cmp4               | DW_fp_cmp        | rtl                |                |
| cmp5               | DW_fp_cmp        | rtl                |                |
| cmp6               | DW_fp_cmp        | rtl                |                |
| cmp7               | DW_fp_cmp        | rtl                |                |
| cmp8               | DW_fp_cmp        | rtl                |                |
| s1                 | DW_fp_sub        | rtl                |                |
| a1                 | DW_fp_add        | rtl                |                |
| e1                 | DW_fp_exp        | rtl                |                |
| e2                 | DW_fp_exp        | rtl                |                |
| r1                 | DW_fp_recip      | rtl                |                |
| M1                 | DW_fp_mult       | str                |                |
| ee1                | DW_fp_exp        | rtl                |                |
| lte_x_29778        | DW_cmp           | apparch (area)     |                |
| gte_x_29779        | DW_cmp           | apparch (area)     |                |
| lt_x_29780         | DW_cmp           | apparch (area)     |                |
| gte_x_29781        | DW_cmp           | apparch (area)     |                |
| lt_x_29782         | DW_cmp           | apparch (area)     |                |
| lt_x_29783         | DW_cmp           | apparch (area)     |                |
| gte_x_29784        | DW_cmp           | apparch (area)     |                |
| lte_x_29785        | DW_cmp           | apparch (area)     |                |
| lt_x_29786         | DW_cmp           | apparch (area)     |                |
| gt_x_29787         | DW_cmp           | apparch (area)     |                |
| lt_x_29788         | DW_cmp           | apparch (area)     |                |
| gte_x_29789        | DW_cmp           | apparch (area)     |                |
| gte_x_29790        | DW_cmp           | apparch (area)     |                |
| gte_x_29791        | DW_cmp           | apparch (area)     |                |
| lt_x_29792         | DW_cmp           | apparch (area)     |                |
| gte_x_29793        | DW_cmp           | apparch (area)     |                |
| lt_x_29794         | DW_cmp           | apparch (area)     |                |
| gte_x_29795        | DW_cmp           | apparch (area)     |                |
| lt_x_29796         | DW_cmp           | apparch (area)     |                |
| gte_x_29797        | DW_cmp           | apparch (area)     |                |
| lt_x_29798         | DW_cmp           | apparch (area)     |                |
| gte_x_29799        | DW_cmp           | apparch (area)     |                |
| lt_x_29800         | DW_cmp           | apparch (area)     |                |
| gte_x_29801        | DW_cmp           | apparch (area)     |                |
| gte_x_29802        | DW_cmp           | apparch (area)     |                |
| lt_x_29803         | DW_cmp           | apparch (area)     |                |
| lt_x_29804         | DW_cmp           | apparch (area)     |                |
| gte_x_29805        | DW_cmp           | apparch (area)     |                |
| lt_x_29806         | DW_cmp           | apparch (area)     |                |
| gte_x_29807        | DW_cmp           | apparch (area)     |                |
| lt_x_29808         | DW_cmp           | apparch (area)     |                |
| gte_x_29809        | DW_cmp           | apparch (area)     |                |
| lt_x_29810         | DW_cmp           | apparch (area)     |                |
| gte_x_29811        | DW_cmp           | apparch (area)     |                |
| lt_x_29812         | DW_cmp           | apparch (area)     |                |
| lt_x_29813         | DW_cmp           | apparch (area)     |                |
| gte_x_29814        | DW_cmp           | apparch (area)     |                |
| lt_x_29815         | DW_cmp           | apparch (area)     |                |
| add_x_870          | DW01_inc         | apparch (area)     |                |
| add_x_874          | DW01_inc         | apparch (area)     |                |
| add_x_871          | DW01_inc         | apparch (area)     |                |
| add_x_875          | DW01_inc         | apparch (area)     |                |
| mult_x_4           | DW_mult_uns      | pparch (area,speed)                 |
| sub_x_5            | DW01_sub         | apparch (area)     |                |
| gte_x_6            | DW_cmp           | apparch (area)     |                |
| add_x_9            | DW01_add         | pparch (area,speed)                 |
| add_x_11           | DW01_inc         | apparch (area)     |                |
| U1                 | DW01_ash         | astr (area)        |                |
| U2                 | DW_exp2          | rtl                |                |
| sub_x_16           | DW01_sub         | apparch (area)     |                |
| add_x_17           | DW01_dec         | apparch (area)     |                |
| sub_x_18           | DW01_sub         | pparch (area,speed)                 |
| add_x_19           | DW01_add         | apparch (area)     |                |
| add_x_20           | DW01_add         | apparch (area)     |                |
| mult_x_2           | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_3           | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| gte_x_9            | DW_cmp           | apparch (area)     |                |
| eq_x_14            | DW_cmp           | apparch (area)     |                |
| mult_x_4           | DW_mult_uns      | pparch (area,speed)                 |
| sub_x_5            | DW01_sub         | apparch (area)     |                |
| gte_x_6            | DW_cmp           | apparch (area)     |                |
| add_x_9            | DW01_add         | pparch (area,speed)                 |
| add_x_11           | DW01_inc         | apparch (area)     |                |
| U1                 | DW01_ash         | astr (area)        |                |
| U2                 | DW_exp2          | rtl                |                |
| sub_x_16           | DW01_sub         | apparch (area)     |                |
| add_x_17           | DW01_dec         | apparch (area)     |                |
| sub_x_18           | DW01_sub         | pparch (area,speed)                 |
| add_x_19           | DW01_add         | apparch (area)     |                |
| add_x_20           | DW01_add         | apparch (area)     |                |
| mult_x_4           | DW_mult_uns      | pparch (area,speed)                 |
| sub_x_5            | DW01_sub         | apparch (area)     |                |
| gte_x_6            | DW_cmp           | apparch (area)     |                |
| add_x_9            | DW01_add         | pparch (area,speed)                 |
| add_x_11           | DW01_inc         | apparch (area)     |                |
| U1                 | DW01_ash         | astr (area)        |                |
| U2                 | DW_exp2          | rtl                |                |
| sub_x_16           | DW01_sub         | apparch (area)     |                |
| add_x_17           | DW01_dec         | apparch (area)     |                |
| sub_x_18           | DW01_sub         | pparch (area,speed)                 |
| add_x_19           | DW01_add         | apparch (area)     |                |
| add_x_20           | DW01_add         | apparch (area)     |                |
| U1                 | DW_fp_addsub     | str                |                |
| U1                 | DW_fp_addsub     | str                |                |
| gt_x_3             | DW_cmp           | apparch (area)     |                |
| eq_x_4             | DW_cmp           | apparch (area)     |                |
| gt_x_5             | DW_cmp           | apparch (area)     |                |
| eq_x_6             | DW_cmp           | apparch (area)     |                |
| gt_x_3             | DW_cmp           | apparch (area)     |                |
| eq_x_4             | DW_cmp           | apparch (area)     |                |
| gt_x_5             | DW_cmp           | apparch (area)     |                |
| eq_x_6             | DW_cmp           | apparch (area)     |                |
| gt_x_3             | DW_cmp           | apparch (area)     |                |
| eq_x_4             | DW_cmp           | apparch (area)     |                |
| gt_x_5             | DW_cmp           | apparch (area)     |                |
| eq_x_6             | DW_cmp           | apparch (area)     |                |
| gt_x_3             | DW_cmp           | apparch (area)     |                |
| eq_x_4             | DW_cmp           | apparch (area)     |                |
| gt_x_5             | DW_cmp           | apparch (area)     |                |
| eq_x_6             | DW_cmp           | apparch (area)     |                |
| gt_x_3             | DW_cmp           | apparch (area)     |                |
| eq_x_4             | DW_cmp           | apparch (area)     |                |
| gt_x_5             | DW_cmp           | apparch (area)     |                |
| eq_x_6             | DW_cmp           | apparch (area)     |                |
| gt_x_3             | DW_cmp           | apparch (area)     |                |
| eq_x_4             | DW_cmp           | apparch (area)     |                |
| gt_x_5             | DW_cmp           | apparch (area)     |                |
| eq_x_6             | DW_cmp           | apparch (area)     |                |
| gt_x_3             | DW_cmp           | apparch (area)     |                |
| eq_x_4             | DW_cmp           | apparch (area)     |                |
| gt_x_5             | DW_cmp           | apparch (area)     |                |
| eq_x_6             | DW_cmp           | apparch (area)     |                |
| gt_x_3             | DW_cmp           | apparch (area)     |                |
| eq_x_4             | DW_cmp           | apparch (area)     |                |
| gt_x_5             | DW_cmp           | apparch (area)     |                |
| eq_x_6             | DW_cmp           | apparch (area)     |                |
| eq_x_4             | DW_cmp           | apparch (area)     |                |
| eq_x_5             | DW_cmp           | apparch (area)     |                |
| eq_x_6             | DW_cmp           | apparch (area)     |                |
| gte_x_17           | DW_cmp           | apparch (area)     |                |
| gte_x_18           | DW_cmp           | apparch (area)     |                |
| gte_x_19           | DW_cmp           | apparch (area)     |                |
| gte_x_20           | DW_cmp           | apparch (area)     |                |
| sub_x_21           | DW01_sub         | pparch (area,speed)                 |
| sub_x_22           | DW01_sub         | pparch (area,speed)                 |
| sub_x_23           | DW01_sub         | pparch (area,speed)                 |
| ashr_28            | DW_rightsh       | astr (area)        |                |
| ash_29             | DW_leftsh        | astr (area)        |                |
| ashr_30            | DW_rightsh       | astr (area)        |                |
| ash_31             | DW_leftsh        | astr (area)        |                |
| ashr_32            | DW_rightsh       | astr (area)        |                |
| ash_33             | DW_leftsh        | astr (area)        |                |
| gt_x_34            | DW_cmp           | apparch (area)     |                |
| gt_x_35            | DW_cmp           | apparch (area)     |                |
| gt_x_36            | DW_cmp           | apparch (area)     |                |
| ash_46             | DW_leftsh        | astr (area)        |                |
| add_x_47           | DW01_add         | pparch (area,speed)                 |
| U1                 | DW_lzd           | cla                |                |
| eq_x_4             | DW_cmp           | apparch (area)     |                |
| eq_x_5             | DW_cmp           | apparch (area)     |                |
| eq_x_6             | DW_cmp           | apparch (area)     |                |
| gte_x_17           | DW_cmp           | apparch (area)     |                |
| gte_x_18           | DW_cmp           | apparch (area)     |                |
| gte_x_19           | DW_cmp           | apparch (area)     |                |
| gte_x_20           | DW_cmp           | apparch (area)     |                |
| sub_x_21           | DW01_sub         | pparch (area,speed)                 |
| sub_x_22           | DW01_sub         | pparch (area,speed)                 |
| sub_x_23           | DW01_sub         | pparch (area,speed)                 |
| ashr_28            | DW_rightsh       | astr (area)        |                |
| ash_29             | DW_leftsh        | astr (area)        |                |
| ashr_30            | DW_rightsh       | astr (area)        |                |
| ash_31             | DW_leftsh        | astr (area)        |                |
| ashr_32            | DW_rightsh       | astr (area)        |                |
| ash_33             | DW_leftsh        | astr (area)        |                |
| gt_x_34            | DW_cmp           | apparch (area)     |                |
| gt_x_35            | DW_cmp           | apparch (area)     |                |
| gt_x_36            | DW_cmp           | apparch (area)     |                |
| ash_46             | DW_leftsh        | astr (area)        |                |
| add_x_47           | DW01_add         | pparch (area,speed)                 |
| U1                 | DW_lzd           | cla                |                |
| mult_x_25          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_26          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_27          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_28          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| gte_x_37           | DW_cmp           | pparch (area,speed)                 |
| gte_x_39           | DW_cmp           | pparch (area,speed)                 |
| gte_x_41           | DW_cmp           | pparch (area,speed)                 |
| gte_x_43           | DW_cmp           | pparch (area,speed)                 |
| gte_x_45           | DW_cmp           | pparch (area,speed)                 |
| eq_x_47            | DW_cmp           | apparch (area)     |                |
| eq_x_48            | DW_cmp           | apparch (area)     |                |
| eq_x_49            | DW_cmp           | apparch (area)     |                |
| eq_x_50            | DW_cmp           | apparch (area)     |                |
| eq_x_51            | DW_cmp           | apparch (area)     |                |
| sub_x_53           | DW01_sub         | pparch (area,speed)                 |
| sub_x_54           | DW01_sub         | pparch (area,speed)                 |
| sub_x_55           | DW01_sub         | pparch (area,speed)                 |
| ashr_56            | DW_rightsh       | astr (area)        |                |
| ash_57             | DW_leftsh        | astr (area)        |                |
| ashr_58            | DW_rightsh       | astr (area)        |                |
| ash_59             | DW_leftsh        | astr (area)        |                |
| ashr_60            | DW_rightsh       | astr (area)        |                |
| ash_61             | DW_leftsh        | astr (area)        |                |
| add_x_80           | DW01_add         | apparch (area)     |                |
| ash_82             | DW_leftsh        | astr (area)        |                |
| add_x_83           | DW01_inc         | apparch (area)     |                |
| add_x_84           | DW01_add         | pparch (area,speed)                 |
| U17                | DW_norm          | rtl                |                |
| U18                | DW_norm          | rtl                |                |
| U19                | DW_norm          | rtl                |                |
| U20                | DW_norm          | rtl                |                |
| U21                | DW_lzd           | cla                |                |
| U22                | DW_lzd           | cla                |                |
| mult_x_25          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_26          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_27          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_28          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| gte_x_37           | DW_cmp           | pparch (area,speed)                 |
| gte_x_39           | DW_cmp           | pparch (area,speed)                 |
| gte_x_41           | DW_cmp           | pparch (area,speed)                 |
| gte_x_43           | DW_cmp           | pparch (area,speed)                 |
| gte_x_45           | DW_cmp           | pparch (area,speed)                 |
| eq_x_47            | DW_cmp           | apparch (area)     |                |
| eq_x_48            | DW_cmp           | apparch (area)     |                |
| eq_x_49            | DW_cmp           | apparch (area)     |                |
| eq_x_50            | DW_cmp           | apparch (area)     |                |
| eq_x_51            | DW_cmp           | apparch (area)     |                |
| sub_x_53           | DW01_sub         | pparch (area,speed)                 |
| sub_x_54           | DW01_sub         | pparch (area,speed)                 |
| sub_x_55           | DW01_sub         | pparch (area,speed)                 |
| ashr_56            | DW_rightsh       | astr (area)        |                |
| ash_57             | DW_leftsh        | astr (area)        |                |
| ashr_58            | DW_rightsh       | astr (area)        |                |
| ash_59             | DW_leftsh        | astr (area)        |                |
| ashr_60            | DW_rightsh       | astr (area)        |                |
| ash_61             | DW_leftsh        | astr (area)        |                |
| add_x_80           | DW01_add         | apparch (area)     |                |
| ash_82             | DW_leftsh        | astr (area)        |                |
| add_x_83           | DW01_inc         | pparch (area,speed)                 |
| add_x_84           | DW01_add         | pparch (area,speed)                 |
| U17                | DW_norm          | rtl                |                |
| U18                | DW_norm          | rtl                |                |
| U19                | DW_norm          | rtl                |                |
| U20                | DW_norm          | rtl                |                |
| U21                | DW_lzd           | cla                |                |
| U22                | DW_lzd           | cla                |                |
| mult_x_25          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_26          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_27          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_28          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| gte_x_37           | DW_cmp           | pparch (area,speed)                 |
| gte_x_39           | DW_cmp           | pparch (area,speed)                 |
| gte_x_41           | DW_cmp           | pparch (area,speed)                 |
| gte_x_43           | DW_cmp           | pparch (area,speed)                 |
| gte_x_45           | DW_cmp           | pparch (area,speed)                 |
| eq_x_47            | DW_cmp           | apparch (area)     |                |
| eq_x_48            | DW_cmp           | apparch (area)     |                |
| eq_x_49            | DW_cmp           | apparch (area)     |                |
| eq_x_50            | DW_cmp           | apparch (area)     |                |
| eq_x_51            | DW_cmp           | apparch (area)     |                |
| sub_x_53           | DW01_sub         | pparch (area,speed)                 |
| sub_x_54           | DW01_sub         | pparch (area,speed)                 |
| sub_x_55           | DW01_sub         | pparch (area,speed)                 |
| ashr_56            | DW_rightsh       | astr (area)        |                |
| ash_57             | DW_leftsh        | astr (area)        |                |
| ashr_58            | DW_rightsh       | astr (area)        |                |
| ash_59             | DW_leftsh        | astr (area)        |                |
| ashr_60            | DW_rightsh       | astr (area)        |                |
| ash_61             | DW_leftsh        | astr (area)        |                |
| add_x_80           | DW01_add         | apparch (area)     |                |
| ash_82             | DW_leftsh        | astr (area)        |                |
| add_x_83           | DW01_inc         | pparch (area,speed)                 |
| add_x_84           | DW01_add         | pparch (area,speed)                 |
| U17                | DW_norm          | rtl                |                |
| U18                | DW_norm          | rtl                |                |
| U19                | DW_norm          | rtl                |                |
| U20                | DW_norm          | rtl                |                |
| U21                | DW_lzd           | cla                |                |
| U22                | DW_lzd           | cla                |                |
| mult_x_25          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_26          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_27          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_28          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| gte_x_37           | DW_cmp           | pparch (area,speed)                 |
| gte_x_39           | DW_cmp           | pparch (area,speed)                 |
| gte_x_41           | DW_cmp           | pparch (area,speed)                 |
| gte_x_43           | DW_cmp           | pparch (area,speed)                 |
| gte_x_45           | DW_cmp           | pparch (area,speed)                 |
| eq_x_47            | DW_cmp           | apparch (area)     |                |
| eq_x_48            | DW_cmp           | apparch (area)     |                |
| eq_x_49            | DW_cmp           | apparch (area)     |                |
| eq_x_50            | DW_cmp           | apparch (area)     |                |
| eq_x_51            | DW_cmp           | apparch (area)     |                |
| sub_x_53           | DW01_sub         | pparch (area,speed)                 |
| sub_x_54           | DW01_sub         | pparch (area,speed)                 |
| sub_x_55           | DW01_sub         | pparch (area,speed)                 |
| ashr_56            | DW_rightsh       | astr (area)        |                |
| ash_57             | DW_leftsh        | astr (area)        |                |
| ashr_58            | DW_rightsh       | astr (area)        |                |
| ash_59             | DW_leftsh        | astr (area)        |                |
| ashr_60            | DW_rightsh       | astr (area)        |                |
| ash_61             | DW_leftsh        | astr (area)        |                |
| add_x_80           | DW01_add         | apparch (area)     |                |
| ash_82             | DW_leftsh        | astr (area)        |                |
| add_x_83           | DW01_inc         | pparch (area,speed)                 |
| add_x_84           | DW01_add         | pparch (area,speed)                 |
| U17                | DW_norm          | rtl                |                |
| U18                | DW_norm          | rtl                |                |
| U19                | DW_norm          | rtl                |                |
| U20                | DW_norm          | rtl                |                |
| U21                | DW_lzd           | cla                |                |
| U22                | DW_lzd           | cla                |                |
| U2                 | DW01_ash         | astr (area)        |                |
| lt_x_1             | DW_cmp           | pparch (area,speed)                 |
| ashr_5             | DW_rightsh       | astr (area)        |                |
| ash_6              | DW_leftsh        | astr (area)        |                |
| ash_8              | DW_leftsh        | astr (area)        |                |
| add_x_9            | DW01_add         | apparch (area)     |                |
| add_x_16           | DW01_inc         | pparch (area,speed)                 |
| U2                 | DW_lzd           | cla                |                |
| U1                 | DW_norm          | rtl                |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| sub_x_1            | DW01_sub         | apparch (area)     |                |
| U2                 | DW01_ash         | astr (area)        |                |
| U2                 | DW01_ash         | astr (area)        |                |
| lt_x_1             | DW_cmp           | apparch (area)     |                |
| ashr_5             | DW_rightsh       | astr (area)        |                |
| ash_6              | DW_leftsh        | astr (area)        |                |
| ash_8              | DW_leftsh        | astr (area)        |                |
| add_x_9            | DW01_add         | apparch (area)     |                |
| add_x_16           | DW01_inc         | apparch (area)     |                |
| U2                 | DW_lzd           | cla                |                |
| U1                 | DW_norm          | rtl                |                |
| gte_x_2            | DW_cmp           | apparch (area)     |                |
| gte_x_4            | DW_cmp           | apparch (area)     |                |
| add_x_11           | DW01_add         | apparch (area)     |                |
| add_x_12           | DW01_add         | apparch (area)     |                |
| add_x_13           | DW01_add         | apparch (area)     |                |
| eq_x_14            | DW_cmp           | apparch (area)     |                |
| lt_x_21            | DW_cmp           | apparch (area)     |                |
| lt_x_23            | DW_cmp           | apparch (area)     |                |
| add_x_24           | DW01_add         | apparch (area)     |                |
| add_x_25           | DW01_add         | apparch (area)     |                |
| UL3                | DW_lzd           | rtl                |                |
| UL4                | DW_lzd           | rtl                |                |
| UM1                | DW02_multp       | apparch (area)     |                |
|                    |                  | mult_arch: benc_radix8              |
| DP_OP_87_188_7214  | DP_OP_87_188_7214 | str (area,speed)  |                |
|                    |                  | mult_arch: and     |                |
|                    |                  | mult_arch: benc_radix4              |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_104J1_123_9353                  |                    |                |
|                    | DP_OP_104J1_123_9353 | str (area,speed)                |
|                    |                  | mult_arch: benc_radix4              |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_79J1_124_5437                   |                    |                |
|                    | DP_OP_79J1_124_5437 | str (area)      |                |
| DP_OP_104J1_126_9353                  |                    |                |
|                    | DP_OP_104J1_126_9353 | str (area,speed)                |
|                    |                  | mult_arch: benc_radix4              |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_104J1_127_9353                  |                    |                |
|                    | DP_OP_104J1_127_9353 | str (area,speed)                |
|                    |                  | mult_arch: benc_radix4              |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_160J1_136_9276                  |                    |                |
|                    | DP_OP_160J1_136_9276 | str (area,speed)                |
| DP_OP_161J1_137_406                   |                    |                |
|                    | DP_OP_161J1_137_406 | str (area,speed)                 |
| DP_OP_160J1_139_9276                  |                    |                |
|                    | DP_OP_160J1_139_9276 | str (area,speed)                |
| DP_OP_161J1_140_406                   |                    |                |
|                    | DP_OP_161J1_140_406 | str (area,speed)                 |
| DP_OP_277J1_142_2911                  |                    |                |
|                    | DP_OP_277J1_142_2911 | str (area)     |                |
| DP_OP_278J1_143_2911                  |                    |                |
|                    | DP_OP_278J1_143_2911 | str (area)     |                |
| DP_OP_279J1_144_2911                  |                    |                |
|                    | DP_OP_279J1_144_2911 | str (area)     |                |
| DP_OP_280J1_145_2911                  |                    |                |
|                    | DP_OP_280J1_145_2911 | str (area)     |                |
| DP_OP_281J1_146_7155                  |                    |                |
|                    | DP_OP_281J1_146_7155 | str (area,speed)                |
| DP_OP_282J1_147_557                   |                    |                |
|                    | DP_OP_282J1_147_557 | str (area)      |                |
| DP_OP_277J1_149_2911                  |                    |                |
|                    | DP_OP_277J1_149_2911 | str (area)     |                |
| DP_OP_278J1_150_2911                  |                    |                |
|                    | DP_OP_278J1_150_2911 | str (area)     |                |
| DP_OP_279J1_151_2911                  |                    |                |
|                    | DP_OP_279J1_151_2911 | str (area)     |                |
| DP_OP_280J1_152_2911                  |                    |                |
|                    | DP_OP_280J1_152_2911 | str (area)     |                |
| DP_OP_281J1_153_7155                  |                    |                |
|                    | DP_OP_281J1_153_7155 | str (area,speed)                |
| DP_OP_282J1_154_557                   |                    |                |
|                    | DP_OP_282J1_154_557 | str (area,speed)                 |
| DP_OP_277J1_156_2911                  |                    |                |
|                    | DP_OP_277J1_156_2911 | str (area)     |                |
| DP_OP_278J1_157_2911                  |                    |                |
|                    | DP_OP_278J1_157_2911 | str (area)     |                |
| DP_OP_279J1_158_2911                  |                    |                |
|                    | DP_OP_279J1_158_2911 | str (area)     |                |
| DP_OP_280J1_159_2911                  |                    |                |
|                    | DP_OP_280J1_159_2911 | str (area)     |                |
| DP_OP_281J1_160_7155                  |                    |                |
|                    | DP_OP_281J1_160_7155 | str (area,speed)                |
| DP_OP_282J1_161_557                   |                    |                |
|                    | DP_OP_282J1_161_557 | str (area,speed)                 |
| DP_OP_277J1_163_2911                  |                    |                |
|                    | DP_OP_277J1_163_2911 | str (area)     |                |
| DP_OP_278J1_164_2911                  |                    |                |
|                    | DP_OP_278J1_164_2911 | str (area)     |                |
| DP_OP_279J1_165_2911                  |                    |                |
|                    | DP_OP_279J1_165_2911 | str (area)     |                |
| DP_OP_280J1_166_2911                  |                    |                |
|                    | DP_OP_280J1_166_2911 | str (area)     |                |
| DP_OP_281J1_167_7155                  |                    |                |
|                    | DP_OP_281J1_167_7155 | str (area,speed)                |
| DP_OP_282J1_168_557                   |                    |                |
|                    | DP_OP_282J1_168_557 | str (area,speed)                 |
| DP_OP_65J10_177_7885                  |                    |                |
|                    | DP_OP_65J10_177_7885 | str (area,speed)                |
| DP_OP_66J10_178_3163                  |                    |                |
|                    | DP_OP_66J10_178_3163 | str (area,speed)                |
| DP_OP_67J10_179_9752                  |                    |                |
|                    | DP_OP_67J10_179_9752 | str (area)     |                |
| DP_OP_65J24_185_7885                  |                    |                |
|                    | DP_OP_65J24_185_7885 | str (area)     |                |
| DP_OP_66J24_186_3163                  |                    |                |
|                    | DP_OP_66J24_186_3163 | str (area)     |                |
| DP_OP_67J24_187_9752                  |                    |                |
|                    | DP_OP_67J24_187_9752 | str (area)     |                |
| DP_OP_108_191_7736 | DP_OP_108_191_7736 | str (area)       |                |
| DP_OP_109_192_8092 | DP_OP_109_192_8092 | str (area)       |                |
===============================================================================

1
