wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab09/Exercise/01_RTL/Program.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvResizeWindow -win $_nWave1 8 37 893 202
wvResizeWindow -win $_nWave1 0 29 1920 1003
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
{/TESTBED/inf/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 0.000000 120369.585561
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 162209.281078 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 113289.021705 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 51495.009866 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 56644.510852 -snap {("G1" 10)}
wvZoom -win $_nWave1 0.000000 79817.265292
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetCursor -win $_nWave1 4855.194613 -snap {("G1" 5)}
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
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dram_r"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/test_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dram_r"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
{/TESTBED/inf/rst_n} \
{/TESTBED/inf/out_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 70364.863636 208388.250000
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/DRAM"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
{/TESTBED/inf/rst_n} \
{/TESTBED/inf/out_valid} \
{/TESTBED/inf/PATTERN/data_no_valid} \
{/TESTBED/inf/PATTERN/date_valid} \
{/TESTBED/inf/PATTERN/formula_valid} \
{/TESTBED/inf/PATTERN/index_valid} \
{/TESTBED/inf/PATTERN/mode_valid} \
{/TESTBED/inf/PATTERN/sel_action_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 19 20 21 22 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetCursor -win $_nWave1 190427.987603 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 190058.941116 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 185261.336777 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 191535.127066 -snap {("G1" 21)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/Program_inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/Program_inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dram_r"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dram_r"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dram_r"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
{/TESTBED/inf/rst_n} \
{/TESTBED/inf/out_valid} \
{/TESTBED/inf/PATTERN/data_no_valid} \
{/TESTBED/inf/PATTERN/date_valid} \
{/TESTBED/inf/PATTERN/formula_valid} \
{/TESTBED/inf/PATTERN/index_valid} \
{/TESTBED/inf/PATTERN/mode_valid} \
{/TESTBED/inf/PATTERN/sel_action_valid} \
{/TESTBED/dut_p/cnt\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetPosition -win $_nWave1 {("G1" 24)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 162749.501033 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 171975.663223 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 188213.708678 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 197808.917356 -snap {("G1" 24)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/DRAM"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/DRAM"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dram_r"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvSetPosition -win $_nWave1 {("G1" 25)}
wvSetPosition -win $_nWave1 {("G1" 25)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
{/TESTBED/inf/rst_n} \
{/TESTBED/inf/out_valid} \
{/TESTBED/inf/PATTERN/data_no_valid} \
{/TESTBED/inf/PATTERN/date_valid} \
{/TESTBED/inf/PATTERN/formula_valid} \
{/TESTBED/inf/PATTERN/index_valid} \
{/TESTBED/inf/PATTERN/mode_valid} \
{/TESTBED/inf/PATTERN/sel_action_valid} \
{/TESTBED/dut_p/cnt\[3:0\]} \
{/TESTBED/dut_p/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetPosition -win $_nWave1 {("G1" 25)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/_\$novas_unit__1"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/test_p"
wvSetPosition -win $_nWave1 {("G1" 26)}
wvSetPosition -win $_nWave1 {("G1" 26)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
{/TESTBED/inf/rst_n} \
{/TESTBED/inf/out_valid} \
{/TESTBED/inf/PATTERN/data_no_valid} \
{/TESTBED/inf/PATTERN/date_valid} \
{/TESTBED/inf/PATTERN/formula_valid} \
{/TESTBED/inf/PATTERN/index_valid} \
{/TESTBED/inf/PATTERN/mode_valid} \
{/TESTBED/inf/PATTERN/sel_action_valid} \
{/TESTBED/dut_p/cnt\[3:0\]} \
{/TESTBED/dut_p/state\[2:0\]} \
{/TESTBED/test_p/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSetPosition -win $_nWave1 {("G1" 26)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 193011.313017 215154.102273
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/test_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/Program_inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/DRAM"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/Program_inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/DRAM"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/Program_inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/DRAM"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dram_r"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p/FSM"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvSetPosition -win $_nWave1 {("G1" 27)}
wvSetPosition -win $_nWave1 {("G1" 27)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
{/TESTBED/inf/rst_n} \
{/TESTBED/inf/out_valid} \
{/TESTBED/inf/PATTERN/data_no_valid} \
{/TESTBED/inf/PATTERN/date_valid} \
{/TESTBED/inf/PATTERN/formula_valid} \
{/TESTBED/inf/PATTERN/index_valid} \
{/TESTBED/inf/PATTERN/mode_valid} \
{/TESTBED/inf/PATTERN/sel_action_valid} \
{/TESTBED/dut_p/cnt\[3:0\]} \
{/TESTBED/dut_p/state\[2:0\]} \
{/TESTBED/test_p/clk} \
{/TESTBED/dut_p/state_bridge\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetPosition -win $_nWave1 {("G1" 27)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 164059.912091 -snap {("G1" 27)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 5303293.957219 5637906.552139
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetCursor -win $_nWave1 5497351.368551 -snap {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 5494219.967262 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 5483036.391228 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 5490864.894452 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 5542085.672685 -snap {("G1" 25)}
wvSetCursor -win $_nWave1 5511890.017394 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 5538730.599875 -snap {("G1" 27)}
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetCursor -win $_nWave1 5075775.286395 -snap {("G1" 24)}
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 4699112.445589 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 5541906.735467 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 5546380.165881 -snap {("G1" 24)}
wvZoom -win $_nWave1 5531170.502475 5553537.654542
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 5535536.283493 -snap {("G1" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
{/TESTBED/inf/rst_n} \
{/TESTBED/inf/out_valid} \
{/TESTBED/inf/PATTERN/formula_valid} \
{/TESTBED/inf/PATTERN/mode_valid} \
{/TESTBED/inf/PATTERN/date_valid} \
{/TESTBED/dut_p/R_VALID_STORE} \
{/TESTBED/inf/PATTERN/data_no_valid} \
{/TESTBED/inf/PATTERN/index_valid} \
{/TESTBED/inf/PATTERN/sel_action_valid} \
{/TESTBED/dut_p/cnt\[3:0\]} \
{/TESTBED/dut_p/state\[2:0\]} \
{/TESTBED/test_p/clk} \
{/TESTBED/dut_p/state_bridge\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 380532.433957 -snap {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 14 21 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1210003.764706 1433441.959893
wvSetCursor -win $_nWave1 1343678.353403 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 1347023.952048 -snap {("G1" 26)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/test_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/Program_inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dram_r"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
{/TESTBED/inf/rst_n} \
{/TESTBED/inf/out_valid} \
{/TESTBED/inf/PATTERN/formula_valid} \
{/TESTBED/inf/PATTERN/mode_valid} \
{/TESTBED/inf/PATTERN/date_valid} \
{/TESTBED/dut_p/R_VALID_STORE} \
{/TESTBED/dut_p/g_A\[11:0\]} \
{/TESTBED/dut_p/g_B\[11:0\]} \
{/TESTBED/dut_p/g_C\[11:0\]} \
{/TESTBED/dut_p/g_D\[11:0\]} \
{/TESTBED/dut_p/i_A\[11:0\]} \
{/TESTBED/dut_p/i_B\[11:0\]} \
{/TESTBED/dut_p/i_C\[11:0\]} \
{/TESTBED/dut_p/i_D\[11:0\]} \
{/TESTBED/dut_p/i_date\[4:0\]} \
{/TESTBED/dut_p/i_month\[3:0\]} \
{/TESTBED/inf/PATTERN/data_no_valid} \
{/TESTBED/inf/PATTERN/index_valid} \
{/TESTBED/inf/PATTERN/sel_action_valid} \
{/TESTBED/dut_p/cnt\[3:0\]} \
{/TESTBED/dut_p/state\[2:0\]} \
{/TESTBED/test_p/clk} \
{/TESTBED/dut_p/state_bridge\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 22 23 24 25 26 27 28 29 30 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/test_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
{/TESTBED/inf/rst_n} \
{/TESTBED/inf/out_valid} \
{/TESTBED/inf/PATTERN/formula_valid} \
{/TESTBED/inf/PATTERN/mode_valid} \
{/TESTBED/inf/PATTERN/date_valid} \
{/TESTBED/dut_p/R_VALID_STORE} \
{/TESTBED/dut_p/g_A\[11:0\]} \
{/TESTBED/dut_p/g_B\[11:0\]} \
{/TESTBED/dut_p/g_C\[11:0\]} \
{/TESTBED/dut_p/g_D\[11:0\]} \
{/TESTBED/dut_p/i_A\[11:0\]} \
{/TESTBED/dut_p/i_B\[11:0\]} \
{/TESTBED/dut_p/i_C\[11:0\]} \
{/TESTBED/dut_p/i_D\[11:0\]} \
{/TESTBED/dut_p/i_date\[4:0\]} \
{/TESTBED/dut_p/i_month\[3:0\]} \
{/TESTBED/dut_p/formula\[2:0\]} \
{/TESTBED/inf/PATTERN/data_no_valid} \
{/TESTBED/inf/PATTERN/index_valid} \
{/TESTBED/inf/PATTERN/sel_action_valid} \
{/TESTBED/dut_p/cnt\[3:0\]} \
{/TESTBED/dut_p/state\[2:0\]} \
{/TESTBED/test_p/clk} \
{/TESTBED/dut_p/state_bridge\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetPosition -win $_nWave1 {("G1" 32)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 1343409.510656 -snap {("G1" 39)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/test_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
{/TESTBED/inf/rst_n} \
{/TESTBED/inf/out_valid} \
{/TESTBED/inf/PATTERN/formula_valid} \
{/TESTBED/inf/PATTERN/mode_valid} \
{/TESTBED/inf/PATTERN/date_valid} \
{/TESTBED/dut_p/R_VALID_STORE} \
{/TESTBED/dut_p/g_A\[11:0\]} \
{/TESTBED/dut_p/g_B\[11:0\]} \
{/TESTBED/dut_p/g_C\[11:0\]} \
{/TESTBED/dut_p/g_D\[11:0\]} \
{/TESTBED/dut_p/i_A\[11:0\]} \
{/TESTBED/dut_p/i_B\[11:0\]} \
{/TESTBED/dut_p/i_C\[11:0\]} \
{/TESTBED/dut_p/i_D\[11:0\]} \
{/TESTBED/dut_p/i_date\[4:0\]} \
{/TESTBED/dut_p/i_month\[3:0\]} \
{/TESTBED/dut_p/formula\[2:0\]} \
{/TESTBED/dut_p/action\[1:0\]} \
{/TESTBED/inf/PATTERN/data_no_valid} \
{/TESTBED/inf/PATTERN/index_valid} \
{/TESTBED/inf/PATTERN/sel_action_valid} \
{/TESTBED/dut_p/cnt\[3:0\]} \
{/TESTBED/dut_p/state\[2:0\]} \
{/TESTBED/test_p/clk} \
{/TESTBED/dut_p/state_bridge\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalClose -win $_nWave1
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
wvZoom -win $_nWave1 1295941.532086 1344066.681818
wvSetCursor -win $_nWave1 1308519.696220 -snap {("G1" 38)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetCursor -win $_nWave1 1342648.901622 -snap {("G1" 40)}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
{/TESTBED/inf/rst_n} \
{/TESTBED/inf/out_valid} \
{/TESTBED/inf/PATTERN/formula_valid} \
{/TESTBED/inf/PATTERN/mode_valid} \
{/TESTBED/inf/PATTERN/date_valid} \
{/TESTBED/dut_p/R_VALID_STORE} \
{/TESTBED/dut_p/g_A\[11:0\]} \
{/TESTBED/dut_p/g_B\[11:0\]} \
{/TESTBED/dut_p/g_C\[11:0\]} \
{/TESTBED/dut_p/g_D\[11:0\]} \
{/TESTBED/dut_p/i_A\[11:0\]} \
{/TESTBED/dut_p/i_B\[11:0\]} \
{/TESTBED/dut_p/i_C\[11:0\]} \
{/TESTBED/dut_p/i_D\[11:0\]} \
{/TESTBED/dut_p/i_date\[4:0\]} \
{/TESTBED/dut_p/i_month\[3:0\]} \
{/TESTBED/dut_p/formula\[2:0\]} \
{/TESTBED/dut_p/action\[1:0\]} \
{/TESTBED/dut_p/data_flag\[3:0\]} \
{/TESTBED/inf/PATTERN/data_no_valid} \
{/TESTBED/inf/PATTERN/index_valid} \
{/TESTBED/inf/PATTERN/sel_action_valid} \
{/TESTBED/dut_p/cnt\[3:0\]} \
{/TESTBED/dut_p/state\[2:0\]} \
{/TESTBED/test_p/clk} \
{/TESTBED/dut_p/state_bridge\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/inf/PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/test_p"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/dut_p"
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/inf/AR_ADDR\[16:0\]} \
{/TESTBED/inf/AR_READY} \
{/TESTBED/inf/AR_VALID} \
{/TESTBED/inf/AW_ADDR\[16:0\]} \
{/TESTBED/inf/AW_READY} \
{/TESTBED/inf/AW_VALID} \
{/TESTBED/inf/B_READY} \
{/TESTBED/inf/B_RESP\[1:0\]} \
{/TESTBED/inf/B_VALID} \
{/TESTBED/inf/D} \
{/TESTBED/inf/R_DATA\[63:0\]} \
{/TESTBED/inf/R_READY} \
{/TESTBED/inf/R_RESP\[1:0\]} \
{/TESTBED/inf/R_VALID} \
{/TESTBED/inf/W_DATA\[63:0\]} \
{/TESTBED/inf/rst_n} \
{/TESTBED/inf/out_valid} \
{/TESTBED/inf/PATTERN/formula_valid} \
{/TESTBED/inf/PATTERN/mode_valid} \
{/TESTBED/inf/PATTERN/date_valid} \
{/TESTBED/dut_p/R_VALID_STORE} \
{/TESTBED/dut_p/g_A\[11:0\]} \
{/TESTBED/dut_p/g_B\[11:0\]} \
{/TESTBED/dut_p/g_C\[11:0\]} \
{/TESTBED/dut_p/g_D\[11:0\]} \
{/TESTBED/dut_p/i_A\[11:0\]} \
{/TESTBED/dut_p/i_B\[11:0\]} \
{/TESTBED/dut_p/i_C\[11:0\]} \
{/TESTBED/dut_p/i_D\[11:0\]} \
{/TESTBED/dut_p/i_date\[4:0\]} \
{/TESTBED/dut_p/i_month\[3:0\]} \
{/TESTBED/dut_p/formula\[2:0\]} \
{/TESTBED/dut_p/action\[1:0\]} \
{/TESTBED/dut_p/data_flag\[3:0\]} \
{/TESTBED/dut_p/e\[11:0\]} \
{/TESTBED/dut_p/f\[11:0\]} \
{/TESTBED/inf/PATTERN/data_no_valid} \
{/TESTBED/inf/PATTERN/index_valid} \
{/TESTBED/inf/PATTERN/sel_action_valid} \
{/TESTBED/dut_p/cnt\[3:0\]} \
{/TESTBED/dut_p/state\[2:0\]} \
{/TESTBED/test_p/clk} \
{/TESTBED/dut_p/state_bridge\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 35 36 )} 
wvSetPosition -win $_nWave1 {("G1" 36)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 35 36 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 1348053.330202 -snap {("G1" 43)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1295932.620321 1369090.106952
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 1305126.208213 1357549.220023
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1350708.998161 -snap {("G1" 41)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvScrollUp -win $_nWave1 1
