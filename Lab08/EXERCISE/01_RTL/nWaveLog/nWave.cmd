wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[63:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA_CG.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[63:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA_CG.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[63:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 13 14 15 16 17 18 19 20 21 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvExit
