wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab05_2024A/Exercise/03_GATE/TMIP_SYN.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TMIP/M1"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_TMIP/M1/A0} \
{/TESTBED/u_TMIP/M1/A1} \
{/TESTBED/u_TMIP/M1/A2} \
{/TESTBED/u_TMIP/M1/A3} \
{/TESTBED/u_TMIP/M1/A4} \
{/TESTBED/u_TMIP/M1/A5} \
{/TESTBED/u_TMIP/M1/A6} \
{/TESTBED/u_TMIP/M1/A7} \
{/TESTBED/u_TMIP/M1/A8} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TMIP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TMIP/M1"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_TMIP/M1/A0} \
{/TESTBED/u_TMIP/M1/A1} \
{/TESTBED/u_TMIP/M1/A2} \
{/TESTBED/u_TMIP/M1/A3} \
{/TESTBED/u_TMIP/M1/A4} \
{/TESTBED/u_TMIP/M1/A5} \
{/TESTBED/u_TMIP/M1/A6} \
{/TESTBED/u_TMIP/M1/A7} \
{/TESTBED/u_TMIP/M1/A8} \
{/TESTBED/u_TMIP/add1_signal\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 991009.663597 2973028.990790
wvSetCursor -win $_nWave1 1163484.151822 -snap {("G1" 10)}
wvExit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvZoom -win $_nWave1 3920917.452712 4427850.821224
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 3865592.237367 5924204.901375
wvZoom -win $_nWave1 3905898.649207 4846381.592154
wvSetCursor -win $_nWave1 3961140.939546 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 3981601.047079 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 4004107.165366 -snap {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/action\[2:0\]} \
{/TESTBED/clk} \
{/TESTBED/image\[7:0\]} \
{/TESTBED/image_size\[1:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/in_valid2} \
{/TESTBED/out_valid} \
{/TESTBED/out_value} \
{/TESTBED/rst_n} \
{/TESTBED/template\[7:0\]} \
{/TESTBED/u_TMIP/M1/A0} \
{/TESTBED/u_TMIP/M1/A1} \
{/TESTBED/u_TMIP/M1/A2} \
{/TESTBED/u_TMIP/M1/A3} \
{/TESTBED/u_TMIP/M1/A4} \
{/TESTBED/u_TMIP/M1/A5} \
{/TESTBED/u_TMIP/M1/A6} \
{/TESTBED/u_TMIP/M1/A7} \
{/TESTBED/u_TMIP/M1/A8} \
{/TESTBED/u_TMIP/M1/WEB} \
{/TESTBED/u_TMIP/M1/WEB_} \
{/TESTBED/u_TMIP/M1/WEB_i} \
{/TESTBED/u_TMIP/M1/CK} \
{/TESTBED/u_TMIP/M1/CK_} \
{/TESTBED/u_TMIP/M1/CS} \
{/TESTBED/u_TMIP/M1/CS_} \
{/TESTBED/u_TMIP/WEB1} \
{/TESTBED/u_TMIP/act_cnt\[2:0\]} \
{/TESTBED/u_TMIP/current_act\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 28 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 4702171.934224 -snap {("G1" 29)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TMIP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TMIP/M1"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TMIP"
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/action\[2:0\]} \
{/TESTBED/clk} \
{/TESTBED/image\[7:0\]} \
{/TESTBED/image_size\[1:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/in_valid2} \
{/TESTBED/out_valid} \
{/TESTBED/out_value} \
{/TESTBED/rst_n} \
{/TESTBED/template\[7:0\]} \
{/TESTBED/u_TMIP/M1/A0} \
{/TESTBED/u_TMIP/M1/A1} \
{/TESTBED/u_TMIP/M1/A2} \
{/TESTBED/u_TMIP/M1/A3} \
{/TESTBED/u_TMIP/M1/A4} \
{/TESTBED/u_TMIP/M1/A5} \
{/TESTBED/u_TMIP/M1/A6} \
{/TESTBED/u_TMIP/M1/A7} \
{/TESTBED/u_TMIP/M1/A8} \
{/TESTBED/u_TMIP/M1/WEB} \
{/TESTBED/u_TMIP/M1/WEB_} \
{/TESTBED/u_TMIP/M1/WEB_i} \
{/TESTBED/u_TMIP/M1/CK} \
{/TESTBED/u_TMIP/M1/CK_} \
{/TESTBED/u_TMIP/M1/CS} \
{/TESTBED/u_TMIP/M1/CS_} \
{/TESTBED/u_TMIP/WEB1} \
{/TESTBED/u_TMIP/act_cnt\[2:0\]} \
{/TESTBED/u_TMIP/current_act\[2:0\]} \
{/TESTBED/u_TMIP/padding_cnt_b\[8:4\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvExpandBus -win $_nWave1 {("G1" 30)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TMIP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TMIP/M1"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TMIP"
wvGetSignalClose -win $_nWave1
wvExit
