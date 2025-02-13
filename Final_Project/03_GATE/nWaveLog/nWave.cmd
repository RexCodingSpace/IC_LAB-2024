wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Final_Project/03_GATE/ISP_SYN.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_ISP/sub_flag\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 0.000000 114972.904412
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_ISP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_ISP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_ISP/sub_flag\[2:0\]} \
{/TESTBED/clk} \
{/TESTBED/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 4764.919835 -snap {("G1" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_ISP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/u_ISP/sub_flag\[2:0\]} \
{/TESTBED/clk} \
{/TESTBED/rst_n} \
{/TESTBED/u_ISP/sub_a\[23:0\]} \
{/TESTBED/u_ISP/sub_b\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 69552.458885 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 7224.233299 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 8377.036485 -snap {("G1" 5)}
wvZoom -win $_nWave1 4764.919835 10759.496402
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 0.000000 2529403.897059
wvZoom -win $_nWave1 0.000000 37197.116133
wvSetCursor -win $_nWave1 0.000000 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 4997.740871 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 10865.735127 -snap {("G1" 3)}
wvSetCursor -win $_nWave1 5047.469636 -snap {("G1" 3)}
