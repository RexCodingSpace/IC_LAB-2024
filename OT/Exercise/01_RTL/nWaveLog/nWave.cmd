wvExit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 50081.740108 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 60820.710432 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out_valid_order} \
{/TESTBED/out_valid_tot} \
{/TESTBED/portion} \
{/TESTBED/ramen_type\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/selling} \
{/TESTBED/sold_num\[27:0\]} \
{/TESTBED/success} \
{/TESTBED/total_gain\[14:0\]} \
{/TESTBED/u_Ramen/broth\[15:0\]} \
{/TESTBED/u_Ramen/miso\[9:0\]} \
{/TESTBED/u_Ramen/noodle\[13:0\]} \
{/TESTBED/u_Ramen/soy_sause\[10:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup\[13:0\]} \
{/TESTBED/u_Ramen/can_sell} \
{/TESTBED/u_Ramen/portion_store} \
{/TESTBED/u_Ramen/ramen_type_store\[1:0\]} \
{/TESTBED/u_Ramen/state} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 67645.476619 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out_valid_order} \
{/TESTBED/out_valid_tot} \
{/TESTBED/portion} \
{/TESTBED/ramen_type\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/selling} \
{/TESTBED/sold_num\[27:0\]} \
{/TESTBED/success} \
{/TESTBED/total_gain\[14:0\]} \
{/TESTBED/u_Ramen/broth\[15:0\]} \
{/TESTBED/u_Ramen/miso\[9:0\]} \
{/TESTBED/u_Ramen/noodle\[13:0\]} \
{/TESTBED/u_Ramen/soy_sause\[10:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup\[13:0\]} \
{/TESTBED/u_Ramen/can_sell} \
{/TESTBED/u_Ramen/portion_store} \
{/TESTBED/u_Ramen/ramen_type_store\[1:0\]} \
{/TESTBED/u_Ramen/state\[1:0\]} \
{/TESTBED/u_Ramen/cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 60118.160971 -snap {("G1" 21)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out_valid_order} \
{/TESTBED/out_valid_tot} \
{/TESTBED/portion} \
{/TESTBED/ramen_type\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/selling} \
{/TESTBED/sold_num\[27:0\]} \
{/TESTBED/success} \
{/TESTBED/total_gain\[14:0\]} \
{/TESTBED/u_Ramen/broth\[15:0\]} \
{/TESTBED/u_Ramen/miso\[9:0\]} \
{/TESTBED/u_Ramen/noodle\[13:0\]} \
{/TESTBED/u_Ramen/soy_sause\[10:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup\[13:0\]} \
{/TESTBED/u_Ramen/can_sell} \
{/TESTBED/u_Ramen/portion_store} \
{/TESTBED/u_Ramen/ramen_type_store\[1:0\]} \
{/TESTBED/u_Ramen/state\[1:0\]} \
{/TESTBED/u_Ramen/cnt\[2:0\]} \
{/TESTBED/u_Ramen/noodle_remain\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 69833.416367 -snap {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 69833.416367 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 69532.323741 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 62105.372302 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 69833.416367 -snap {("G1" 22)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetCursor -win $_nWave1 79749.400180 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 69712.979317 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 60178.379496 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 69913.707734 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 79849.764388 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 69813.343525 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 80050.492806 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetCursor -win $_nWave1 70214.800360 -snap {("G1" 21)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetCursor -win $_nWave1 79548.671763 -snap {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 89263.927158 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 120677.924460 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 70556.038669 -snap {("G1" 20)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 90628.880396 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 120336.686151 -snap {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 130072.014388 -snap {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetCursor -win $_nWave1 140108.435252 -snap {("G1" 15)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 49138.316547 -snap {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out_valid_order} \
{/TESTBED/out_valid_tot} \
{/TESTBED/portion} \
{/TESTBED/ramen_type\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/selling} \
{/TESTBED/sold_num\[27:0\]} \
{/TESTBED/success} \
{/TESTBED/total_gain\[14:0\]} \
{/TESTBED/u_Ramen/broth\[15:0\]} \
{/TESTBED/u_Ramen/miso\[9:0\]} \
{/TESTBED/u_Ramen/noodle\[13:0\]} \
{/TESTBED/u_Ramen/soy_sause\[10:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup\[13:0\]} \
{/TESTBED/u_Ramen/can_sell} \
{/TESTBED/u_Ramen/portion_store} \
{/TESTBED/u_Ramen/ramen_type_store\[1:0\]} \
{/TESTBED/u_Ramen/state\[1:0\]} \
{/TESTBED/u_Ramen/cnt\[2:0\]} \
{/TESTBED/u_Ramen/noodle_remain\[13:0\]} \
{/TESTBED/u_Ramen/out_cnt\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_Ramen"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_Ramen"
wvSetPosition -win $_nWave1 {("G1" 27)}
wvSetPosition -win $_nWave1 {("G1" 27)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out_valid_order} \
{/TESTBED/out_valid_tot} \
{/TESTBED/portion} \
{/TESTBED/ramen_type\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/selling} \
{/TESTBED/sold_num\[27:0\]} \
{/TESTBED/success} \
{/TESTBED/total_gain\[14:0\]} \
{/TESTBED/u_Ramen/broth\[15:0\]} \
{/TESTBED/u_Ramen/miso\[9:0\]} \
{/TESTBED/u_Ramen/noodle\[13:0\]} \
{/TESTBED/u_Ramen/soy_sause\[10:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup\[13:0\]} \
{/TESTBED/u_Ramen/can_sell} \
{/TESTBED/u_Ramen/portion_store} \
{/TESTBED/u_Ramen/ramen_type_store\[1:0\]} \
{/TESTBED/u_Ramen/state\[1:0\]} \
{/TESTBED/u_Ramen/cnt\[2:0\]} \
{/TESTBED/u_Ramen/noodle_remain\[13:0\]} \
{/TESTBED/u_Ramen/out_cnt\[2:0\]} \
{/TESTBED/u_Ramen/broth_remain\[15:0\]} \
{/TESTBED/u_Ramen/miso_remain\[9:0\]} \
{/TESTBED/u_Ramen/soy_sause_remain\[10:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup_remain\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 24 25 26 27 )} 
wvSetPosition -win $_nWave1 {("G1" 27)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 24 25 26 27 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 23)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 70315.164568 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 190952.943345 -snap {("G1" 19)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 120437.050360 181458.489209
wvSetCursor -win $_nWave1 140192.192433 -snap {("G1" 22)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 58826.423063 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 70460.006728 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 140700.511878 -snap {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetCursor -win $_nWave1 350105.017856 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetCursor -win $_nWave1 3986451.860669 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetCursor -win $_nWave1 3860896.957714 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 3919284.377620 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 3961209.179131 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 3860238.452978 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 3849702.377206 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 3870555.027172 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 3860896.957714 -snap {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetCursor -win $_nWave1 4014767.564308 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 3980525.318048 -snap {("G1" 17)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out_valid_order} \
{/TESTBED/out_valid_tot} \
{/TESTBED/portion} \
{/TESTBED/ramen_type\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/selling} \
{/TESTBED/sold_num\[27:0\]} \
{/TESTBED/success} \
{/TESTBED/total_gain\[14:0\]} \
{/TESTBED/u_Ramen/noodle\[13:0\]} \
{/TESTBED/u_Ramen/broth\[15:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup\[13:0\]} \
{/TESTBED/u_Ramen/can_sell_store} \
{/TESTBED/u_Ramen/soy_sause\[10:0\]} \
{/TESTBED/u_Ramen/miso\[9:0\]} \
{/TESTBED/u_Ramen/can_sell} \
{/TESTBED/u_Ramen/portion_store} \
{/TESTBED/u_Ramen/ramen_type_store\[1:0\]} \
{/TESTBED/u_Ramen/state\[1:0\]} \
{/TESTBED/u_Ramen/cnt\[2:0\]} \
{/TESTBED/u_Ramen/out_cnt\[2:0\]} \
{/TESTBED/u_Ramen/noodle_remain\[13:0\]} \
{/TESTBED/u_Ramen/broth_remain\[15:0\]} \
{/TESTBED/u_Ramen/miso_remain\[9:0\]} \
{/TESTBED/u_Ramen/soy_sause_remain\[10:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup_remain\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 3957697.153874 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 3980086.314890 -snap {("G1" 22)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 3860457.954557 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 3980964.321205 -snap {("G1" 22)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetCursor -win $_nWave1 3940663.831375 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 3988734.677087 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 3979735.112364 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 3986539.661301 -snap {("G1" 21)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 4070169.762745 -snap {("G1" 23)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 3961077.478184 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetCursor -win $_nWave1 3969857.541328 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 3979296.109207 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 3991807.699187 -snap {("G1" 22)}
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out_valid_order} \
{/TESTBED/out_valid_tot} \
{/TESTBED/portion} \
{/TESTBED/ramen_type\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/selling} \
{/TESTBED/sold_num\[27:0\]} \
{/TESTBED/success} \
{/TESTBED/total_gain\[14:0\]} \
{/TESTBED/u_Ramen/noodle\[13:0\]} \
{/TESTBED/u_Ramen/broth\[15:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup\[13:0\]} \
{/TESTBED/u_Ramen/soy_sause\[10:0\]} \
{/TESTBED/u_Ramen/miso\[9:0\]} \
{/TESTBED/u_Ramen/can_sell} \
{/TESTBED/u_Ramen/can_sell_store} \
{/TESTBED/u_Ramen/MISO_SOY_num\[6:0\]} \
{/TESTBED/u_Ramen/MISO_num\[6:0\]} \
{/TESTBED/u_Ramen/TONKOTSU_SOY_num\[6:0\]} \
{/TESTBED/u_Ramen/TONKOTSU_num\[6:0\]} \
{/TESTBED/u_Ramen/portion_store} \
{/TESTBED/u_Ramen/ramen_type_store\[1:0\]} \
{/TESTBED/u_Ramen/state\[1:0\]} \
{/TESTBED/u_Ramen/cnt\[2:0\]} \
{/TESTBED/u_Ramen/out_cnt\[2:0\]} \
{/TESTBED/u_Ramen/noodle_remain\[13:0\]} \
{/TESTBED/u_Ramen/broth_remain\[15:0\]} \
{/TESTBED/u_Ramen/miso_remain\[9:0\]} \
{/TESTBED/u_Ramen/soy_sause_remain\[10:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup_remain\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 19 20 21 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 21 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 20 21 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 20 21 22 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 58826.423063 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 131042.442420 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 187673.849697 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 3909132.571855 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 3970812.515440 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 3920327.152363 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 3859964.218250 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 3848989.139320 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 3909791.076591 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 3969276.004389 -snap {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 3850525.650370 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 3859744.716671 -snap {("G1" 17)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 3919888.149206 -snap {("G1" 21)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 4069544.325491 -snap {("G1" 27)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 4080080.401263 -snap {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 4108317.214835 -snap {("G1" 25)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out_valid_order} \
{/TESTBED/out_valid_tot} \
{/TESTBED/portion} \
{/TESTBED/ramen_type\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/selling} \
{/TESTBED/sold_num\[27:0\]} \
{/TESTBED/success} \
{/TESTBED/total_gain\[14:0\]} \
{/TESTBED/u_Ramen/noodle\[13:0\]} \
{/TESTBED/u_Ramen/broth\[15:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup\[13:0\]} \
{/TESTBED/u_Ramen/soy_sause\[10:0\]} \
{/TESTBED/u_Ramen/miso\[9:0\]} \
{/TESTBED/u_Ramen/can_sell} \
{/TESTBED/u_Ramen/can_sell_store} \
{/TESTBED/u_Ramen/MISO_SOY_num\[6:0\]} \
{/TESTBED/u_Ramen/MISO_num\[6:0\]} \
{/TESTBED/u_Ramen/TONKOTSU_SOY_num\[6:0\]} \
{/TESTBED/u_Ramen/TONKOTSU_num\[6:0\]} \
{/TESTBED/u_Ramen/selling} \
{/TESTBED/u_Ramen/portion_store} \
{/TESTBED/u_Ramen/ramen_type_store\[1:0\]} \
{/TESTBED/u_Ramen/state\[1:0\]} \
{/TESTBED/u_Ramen/cnt\[2:0\]} \
{/TESTBED/u_Ramen/out_cnt\[2:0\]} \
{/TESTBED/u_Ramen/noodle_remain\[13:0\]} \
{/TESTBED/u_Ramen/broth_remain\[15:0\]} \
{/TESTBED/u_Ramen/miso_remain\[9:0\]} \
{/TESTBED/u_Ramen/soy_sause_remain\[10:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup_remain\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvZoom -win $_nWave1 3986958.245949 4213483.875057
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvZoom -win $_nWave1 3855926.857567 4264976.734590
wvSetCursor -win $_nWave1 3861812.467308 -snap {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetCursor -win $_nWave1 14983808.765970 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetCursor -win $_nWave1 14988958.674494 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 14998890.640932 -snap {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 15011397.561632 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 15001097.744585 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 15079082.073658 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetCursor -win $_nWave1 15068414.406002 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 15077242.820613 -snap {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetCursor -win $_nWave1 15051125.427386 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 15002936.997629 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 14999994.192759 -snap {("G1" 4)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetCursor -win $_nWave1 14990062.226320 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 14991901.479364 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 15001465.595194 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 15052964.680431 -snap {("G1" 18)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetCursor -win $_nWave1 80064.298561 -snap {("G1" 27)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 50272.931655 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 62003.282374 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 70009.712230 -snap {("G1" 27)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 7596912.095324 8146417.491007
wvSetCursor -win $_nWave1 7759984.739725 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 7767891.292181 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 7827190.435600 -snap {("G1" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetCursor -win $_nWave1 49782.464029 -snap {("G1" 26)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetCursor -win $_nWave1 7777363.309353 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 7759216.007194 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 7779325.179856 -snap {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 7828862.410072 -snap {("G1" 26)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetCursor -win $_nWave1 3915771.831997 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 4209561.939911 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 4331590.285234 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 4211425.716889 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 4223196.939911 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 4331590.285234 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 7737617.266187 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 7750859.892086 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 7789606.834532 -snap {("G1" 12)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out_valid_order} \
{/TESTBED/out_valid_tot} \
{/TESTBED/u_Ramen/selling} \
{/TESTBED/u_Ramen/out_total_cnt\[2:0\]} \
{/TESTBED/portion} \
{/TESTBED/ramen_type\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/selling} \
{/TESTBED/sold_num\[27:0\]} \
{/TESTBED/success} \
{/TESTBED/total_gain\[14:0\]} \
{/TESTBED/u_Ramen/noodle\[13:0\]} \
{/TESTBED/u_Ramen/broth\[15:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup\[13:0\]} \
{/TESTBED/u_Ramen/soy_sause\[10:0\]} \
{/TESTBED/u_Ramen/miso\[9:0\]} \
{/TESTBED/u_Ramen/can_sell} \
{/TESTBED/u_Ramen/can_sell_store} \
{/TESTBED/u_Ramen/MISO_SOY_num\[6:0\]} \
{/TESTBED/u_Ramen/MISO_num\[6:0\]} \
{/TESTBED/u_Ramen/TONKOTSU_SOY_num\[6:0\]} \
{/TESTBED/u_Ramen/TONKOTSU_num\[6:0\]} \
{/TESTBED/u_Ramen/portion_store} \
{/TESTBED/u_Ramen/ramen_type_store\[1:0\]} \
{/TESTBED/u_Ramen/state\[1:0\]} \
{/TESTBED/u_Ramen/cnt\[2:0\]} \
{/TESTBED/u_Ramen/out_cnt\[2:0\]} \
{/TESTBED/u_Ramen/noodle_remain\[13:0\]} \
{/TESTBED/u_Ramen/broth_remain\[15:0\]} \
{/TESTBED/u_Ramen/miso_remain\[9:0\]} \
{/TESTBED/u_Ramen/soy_sause_remain\[10:0\]} \
{/TESTBED/u_Ramen/tonkotsu_soup_remain\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvScrollDown -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 7799906.654676 -snap {("G1" 15)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 14834465.827338 15156212.589928
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 7529400.134892 8854902.517986
wvZoom -win $_nWave1 7729655.890611 7991895.570720
wvSetCursor -win $_nWave1 7829410.732954 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetCursor -win $_nWave1 7848984.378142 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 14950880.813834 -snap {("G1" 25)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 22 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 22 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 22 23 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 22 23 24 )} 
wvSetRadix -win $_nWave1 -format UDec
