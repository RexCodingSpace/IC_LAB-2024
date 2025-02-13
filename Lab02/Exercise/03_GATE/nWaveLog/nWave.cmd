wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab02/Exercise/03_GATE/BB_SYN.fsdb}
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
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 351897.067715 -snap {("G1" 9)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
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
{/TESTBED/u_BB/next_score_A\[7:0\]} \
{/TESTBED/u_BB/next_score_B\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 339668.984281 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 343473.276904 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 344560.217654 -snap {("G1" 1)}
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
{/TESTBED/u_BB/next_score_A\[7:0\]} \
{/TESTBED/u_BB/next_score_B\[7:0\]} \
{/TESTBED/u_BB/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 347005.834341 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 262224.455865 -snap {("G1" 9)}
