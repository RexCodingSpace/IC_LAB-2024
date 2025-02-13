wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab01/Exercise/01_RTL/SSC.fsdb}
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
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/card_num\[63:0\]} \
{/TESTBED/input_money\[8:0\]} \
{/TESTBED/out_change\[8:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/price\[31:0\]} \
{/TESTBED/snack_num\[31:0\]} \
{/TESTBED/DUT_SSC/remaining_budget\[0:7\]} \
{/TESTBED/DUT_SSC/total\[0:7\]} \
{/TESTBED/DUT_SSC/total_merg_7\[0:7\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/card_num\[63:0\]} \
{/TESTBED/input_money\[8:0\]} \
{/TESTBED/out_change\[8:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/price\[31:0\]} \
{/TESTBED/snack_num\[31:0\]} \
{/TESTBED/DUT_SSC/remaining_budget\[0:7\]} \
{/TESTBED/DUT_SSC/total\[0:7\]} \
{/TESTBED/DUT_SSC/total_merg_7\[0:7\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 21945.463025 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
