wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab01/Exercise/03_GATE/SSC_SYN.fsdb}
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/card_num\[63:0\]} \
{/TESTBED/input_money\[8:0\]} \
{/TESTBED/out_change\[8:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/price\[31:0\]} \
{/TESTBED/snack_num\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 888496.240602 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 959762.868710 -snap {("G1" 4)}
wvExit
