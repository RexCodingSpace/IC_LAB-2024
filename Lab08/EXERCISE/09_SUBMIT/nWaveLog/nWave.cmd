wvOpenFile -win $_nWave1 -mul \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/03_GATE_SIM/SA_SYN.fsdb} {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/03_GATE_SIM/SA_SYN_CG.fsdb} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/cg_en} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/cg_en} \
{/TESTBED/I_SA/clk_gated\[5:0\]} \
{/TESTBED/I_SA/clk_gated_P\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvExpandBus -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetCursor -win $_nWave1 2450541.193182 -snap {("G1" 3)}
wvZoom -win $_nWave1 1739093.750000 7667822.443182
wvZoom -win $_nWave1 1739093.750000 2075953.334840
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvExpandBus -win $_nWave1 {("G1" 9)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoom -win $_nWave1 72055.526169 432333.157014
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvCollapseBus -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/cg_en} \
{/TESTBED/I_SA/clk_gated\[5:0\]} \
{/TESTBED/I_SA/clk_gated\[5\]} \
{/TESTBED/I_SA/clk_gated\[4\]} \
{/TESTBED/I_SA/clk_gated\[3\]} \
{/TESTBED/I_SA/clk_gated\[2\]} \
{/TESTBED/I_SA/clk_gated\[1\]} \
{/TESTBED/I_SA/clk_gated\[0\]} \
{/TESTBED/I_SA/clk_gated_P\[63:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/cg_en} \
{/TESTBED/I_SA/clk_gated\[5:0\]} \
{/TESTBED/I_SA/clk_gated\[5\]} \
{/TESTBED/I_SA/clk_gated\[4\]} \
{/TESTBED/I_SA/clk_gated\[3\]} \
{/TESTBED/I_SA/clk_gated\[2\]} \
{/TESTBED/I_SA/clk_gated\[1\]} \
{/TESTBED/I_SA/clk_gated\[0\]} \
{/TESTBED/I_SA/clk_gated_P\[63:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/cg_en} \
{/TESTBED/I_SA/clk_gated\[5:0\]} \
{/TESTBED/I_SA/clk_gated\[5\]} \
{/TESTBED/I_SA/clk_gated\[4\]} \
{/TESTBED/I_SA/clk_gated\[3\]} \
{/TESTBED/I_SA/clk_gated\[2\]} \
{/TESTBED/I_SA/clk_gated\[1\]} \
{/TESTBED/I_SA/clk_gated\[0\]} \
{/TESTBED/I_SA/clk_gated_P\[63:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/03_GATE_SIM/SA_SYN_CG.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/cg_en} \
{/TESTBED/I_SA/clk_gated\[5:0\]} \
{/TESTBED/I_SA/clk_gated\[5\]} \
{/TESTBED/I_SA/clk_gated\[4\]} \
{/TESTBED/I_SA/clk_gated\[3\]} \
{/TESTBED/I_SA/clk_gated\[2\]} \
{/TESTBED/I_SA/clk_gated\[1\]} \
{/TESTBED/I_SA/clk_gated\[0\]} \
{/TESTBED/I_SA/clk_gated_P\[63:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/cg_en} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/03_GATE_SIM/SA_SYN.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/03_GATE_SIM/SA_SYN_CG.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/cg_en} \
{/TESTBED/I_SA/clk_gated\[5:0\]} \
{/TESTBED/I_SA/clk_gated\[5\]} \
{/TESTBED/I_SA/clk_gated\[4\]} \
{/TESTBED/I_SA/clk_gated\[3\]} \
{/TESTBED/I_SA/clk_gated\[2\]} \
{/TESTBED/I_SA/clk_gated\[1\]} \
{/TESTBED/I_SA/clk_gated\[0\]} \
{/TESTBED/I_SA/clk_gated_P\[63:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/cg_en} \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/03_GATE_SIM/SA_SYN.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/cg_en} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/cg_en} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 -mul \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA.fsdb} {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA_CG.fsdb} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/cg_en} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalClose -win $_nWave1
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA_CG.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/cg_en} \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/cg_en} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 89684.084042 -snap {("G2" 0)}
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA_CG.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/cg_en} \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/cg_en} \
{/TESTBED/I_SA/P_store\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvExpandBus -win $_nWave1 {("G1" 3)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 66)}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 \
           41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 \
           63 64 65 66 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA_CG.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/cg_en} \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/cg_en} \
{/TESTBED/I_SA/clk_gated_P\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvExpandBus -win $_nWave1 {("G1" 3)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA_CG.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 68)}
wvSetPosition -win $_nWave1 {("G1" 68)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/cg_en} \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/cg_en} \
{/TESTBED/I_SA/clk_gated_P\[63:0\]} \
{/TESTBED/I_SA/clk_gated_P\[63\]} \
{/TESTBED/I_SA/clk_gated_P\[62\]} \
{/TESTBED/I_SA/clk_gated_P\[61\]} \
{/TESTBED/I_SA/clk_gated_P\[60\]} \
{/TESTBED/I_SA/clk_gated_P\[59\]} \
{/TESTBED/I_SA/clk_gated_P\[58\]} \
{/TESTBED/I_SA/clk_gated_P\[57\]} \
{/TESTBED/I_SA/clk_gated_P\[56\]} \
{/TESTBED/I_SA/clk_gated_P\[55\]} \
{/TESTBED/I_SA/clk_gated_P\[54\]} \
{/TESTBED/I_SA/clk_gated_P\[53\]} \
{/TESTBED/I_SA/clk_gated_P\[52\]} \
{/TESTBED/I_SA/clk_gated_P\[51\]} \
{/TESTBED/I_SA/clk_gated_P\[50\]} \
{/TESTBED/I_SA/clk_gated_P\[49\]} \
{/TESTBED/I_SA/clk_gated_P\[48\]} \
{/TESTBED/I_SA/clk_gated_P\[47\]} \
{/TESTBED/I_SA/clk_gated_P\[46\]} \
{/TESTBED/I_SA/clk_gated_P\[45\]} \
{/TESTBED/I_SA/clk_gated_P\[44\]} \
{/TESTBED/I_SA/clk_gated_P\[43\]} \
{/TESTBED/I_SA/clk_gated_P\[42\]} \
{/TESTBED/I_SA/clk_gated_P\[41\]} \
{/TESTBED/I_SA/clk_gated_P\[40\]} \
{/TESTBED/I_SA/clk_gated_P\[39\]} \
{/TESTBED/I_SA/clk_gated_P\[38\]} \
{/TESTBED/I_SA/clk_gated_P\[37\]} \
{/TESTBED/I_SA/clk_gated_P\[36\]} \
{/TESTBED/I_SA/clk_gated_P\[35\]} \
{/TESTBED/I_SA/clk_gated_P\[34\]} \
{/TESTBED/I_SA/clk_gated_P\[33\]} \
{/TESTBED/I_SA/clk_gated_P\[32\]} \
{/TESTBED/I_SA/clk_gated_P\[31\]} \
{/TESTBED/I_SA/clk_gated_P\[30\]} \
{/TESTBED/I_SA/clk_gated_P\[29\]} \
{/TESTBED/I_SA/clk_gated_P\[28\]} \
{/TESTBED/I_SA/clk_gated_P\[27\]} \
{/TESTBED/I_SA/clk_gated_P\[26\]} \
{/TESTBED/I_SA/clk_gated_P\[25\]} \
{/TESTBED/I_SA/clk_gated_P\[24\]} \
{/TESTBED/I_SA/clk_gated_P\[23\]} \
{/TESTBED/I_SA/clk_gated_P\[22\]} \
{/TESTBED/I_SA/clk_gated_P\[21\]} \
{/TESTBED/I_SA/clk_gated_P\[20\]} \
{/TESTBED/I_SA/clk_gated_P\[19\]} \
{/TESTBED/I_SA/clk_gated_P\[18\]} \
{/TESTBED/I_SA/clk_gated_P\[17\]} \
{/TESTBED/I_SA/clk_gated_P\[16\]} \
{/TESTBED/I_SA/clk_gated_P\[15\]} \
{/TESTBED/I_SA/clk_gated_P\[14\]} \
{/TESTBED/I_SA/clk_gated_P\[13\]} \
{/TESTBED/I_SA/clk_gated_P\[12\]} \
{/TESTBED/I_SA/clk_gated_P\[11\]} \
{/TESTBED/I_SA/clk_gated_P\[10\]} \
{/TESTBED/I_SA/clk_gated_P\[9\]} \
{/TESTBED/I_SA/clk_gated_P\[8\]} \
{/TESTBED/I_SA/clk_gated_P\[7\]} \
{/TESTBED/I_SA/clk_gated_P\[6\]} \
{/TESTBED/I_SA/clk_gated_P\[5\]} \
{/TESTBED/I_SA/clk_gated_P\[4\]} \
{/TESTBED/I_SA/clk_gated_P\[3\]} \
{/TESTBED/I_SA/clk_gated_P\[2\]} \
{/TESTBED/I_SA/clk_gated_P\[1\]} \
{/TESTBED/I_SA/clk_gated_P\[0\]} \
}
wvSetActiveFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/01_RTL/SA_CG.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/TESTBED/I_SA/clk_gated_P\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 68 )} 
wvSetPosition -win $_nWave1 {("G1" 68)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 68 )} 
wvExpandBus -win $_nWave1 {("G1" 68)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 68 )} 
wvSetPosition -win $_nWave1 {("G1" 68)}
wvCollapseBus -win $_nWave1 {("G1" 68)}
wvSetPosition -win $_nWave1 {("G1" 68)}
wvScrollUp -win $_nWave1 27
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 24
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvCollapseBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvExpandBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 68)}
wvZoom -win $_nWave1 937107.163866 3057928.639983
wvScrollUp -win $_nWave1 15
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE/03_GATE_SIM/SA_SYN.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/cg_en} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvZoom -win $_nWave1 10079902.345914 11922862.184786
wvExit
