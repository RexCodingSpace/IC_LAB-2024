wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab02/Exercise/01_RTL/BB.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/action\[2:0\]} \
{/TESTBED/clk} \
{/TESTBED/half} \
{/TESTBED/in_valid} \
{/TESTBED/inning\[1:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/result\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/score_A\[7:0\]} \
{/TESTBED/score_B\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/action\[2:0\]} \
{/TESTBED/clk} \
{/TESTBED/half} \
{/TESTBED/in_valid} \
{/TESTBED/inning\[1:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/result\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/score_A\[7:0\]} \
{/TESTBED/score_B\[7:0\]} \
{/TESTBED/u_BB/base\[2:0\]} \
{/TESTBED/u_BB/score\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetCursor -win $_nWave1 250616.447333 -snap {("G1" 9)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_BB"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_BB"
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/action\[2:0\]} \
{/TESTBED/clk} \
{/TESTBED/half} \
{/TESTBED/in_valid} \
{/TESTBED/inning\[1:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/result\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/score_A\[7:0\]} \
{/TESTBED/score_B\[7:0\]} \
{/TESTBED/u_BB/base\[2:0\]} \
{/TESTBED/u_BB/score\[7:0\]} \
{/TESTBED/u_BB/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 281344.122030 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 341309.464151 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1429972.402477 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 1429541.266256 -snap {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 1410571.272534 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1383194.122502 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 1250835.302666 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 1259673.595195 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1270236.432609 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1280583.701912 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 1268511.887725 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 1279721.429470 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 1290068.698774 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1299984.831856 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1310116.533049 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1320248.234241 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1329733.231103 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1321541.642904 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1328439.822440 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
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
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 549243.522270 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 469271.770858 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 480542.957299 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 548438.437525 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 520260.471423 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 464977.985547 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 469808.494022 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 250607.278325 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 200002.768245 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 160949.287639 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 170575.145535 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 179100.905385 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 190651.934860 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 199727.743733 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 160399.238616 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 168374.949444 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 179650.954408 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 519739.981822 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 532391.109342 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 552742.923179 -snap {("G1" 12)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/action\[2:0\]} \
{/TESTBED/clk} \
{/TESTBED/half} \
{/TESTBED/in_valid} \
{/TESTBED/inning\[1:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/result\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/score_A\[7:0\]} \
{/TESTBED/score_B\[7:0\]} \
{/TESTBED/u_BB/base\[2:0\]} \
{/TESTBED/u_BB/score\[7:0\]} \
{/TESTBED/u_BB/state\[1:0\]} \
{/TESTBED/u_BB/outs\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 2370146.346281 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 2379497.179666 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 2428451.542678 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2433952.032904 -snap {("G1" 12)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1979715.421449 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 2101367.975093 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 2140100.402486 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 2179923.884173 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 2139827.638913 -snap {("G1" 9)}
wvSetCursor -win $_nWave1 2178287.302733 -snap {("G1" 2)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 2118824.843777 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 2138736.584621 -snap {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_BB"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_BB"
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/action\[2:0\]} \
{/TESTBED/clk} \
{/TESTBED/half} \
{/TESTBED/in_valid} \
{/TESTBED/inning\[1:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/result\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/score_A\[7:0\]} \
{/TESTBED/score_B\[7:0\]} \
{/TESTBED/u_BB/base\[2:0\]} \
{/TESTBED/u_BB/score\[7:0\]} \
{/TESTBED/u_BB/state\[1:0\]} \
{/TESTBED/u_BB/outs\[1:0\]} \
{/TESTBED/u_BB/next_state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1918616.381054 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 1919980.198920 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 1921616.780359 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1914524.927456 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1907433.074553 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1919161.908200 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1930072.451128 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 1922162.307505 -snap {("G1" 2)}
