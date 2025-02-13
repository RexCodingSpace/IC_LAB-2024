wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab06/Exercise/03_GATE/MDC_SYN.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_data\[14:0\]} \
{/TESTBED/in_mode\[8:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[206:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvZoom -win $_nWave1 32260.779116 172825.602410
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 934218.395248 -snap {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetRadix -win $_nWave1 -format Bin
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_data\[14:0\]} \
{/TESTBED/in_mode\[8:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[206:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/I_MDC/Instruction\[4:0\]} \
{/TESTBED/I_MDC/cal_cnt\[3:0\]} \
{/TESTBED/I_MDC/decoded_data\[175:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 935573.236918 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 950137.784874 -snap {("G1" 8)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_MDC"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_MDC"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/in_data\[14:0\]} \
{/TESTBED/in_mode\[8:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[206:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/I_MDC/Instruction\[4:0\]} \
{/TESTBED/I_MDC/cal_cnt\[3:0\]} \
{/TESTBED/I_MDC/decoded_data\[175:0\]} \
{/TESTBED/I_MDC/out_cnt\[1:0\]} \
{/TESTBED/I_MDC/state\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetCursor -win $_nWave1 1171964.882516 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 1176255.214472 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 861274.358954 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 857322.737416 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 862290.490207 -snap {("G1" 5)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
