wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab03/03_GATE/TETRIS_SYN.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/fail} \
{/TESTBED/in_valid} \
{/TESTBED/position\[2:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/score\[3:0\]} \
{/TESTBED/score_valid} \
{/TESTBED/tetris\[71:0\]} \
{/TESTBED/tetris_valid} \
{/TESTBED/tetrominoes\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/fail} \
{/TESTBED/in_valid} \
{/TESTBED/position\[2:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/score\[3:0\]} \
{/TESTBED/score_valid} \
{/TESTBED/tetris\[71:0\]} \
{/TESTBED/tetris_valid} \
{/TESTBED/tetrominoes\[2:0\]} \
{/TESTBED/u_TETRIS/grid\[83:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
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
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 205503.455755 272041.367843
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TETRIS"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TETRIS"
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/fail} \
{/TESTBED/in_valid} \
{/TESTBED/position\[2:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/score\[3:0\]} \
{/TESTBED/score_valid} \
{/TESTBED/tetris\[71:0\]} \
{/TESTBED/tetris_valid} \
{/TESTBED/tetrominoes\[2:0\]} \
{/TESTBED/u_TETRIS/grid\[83:0\]} \
{/TESTBED/u_TETRIS/y_high\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 250490.627085 -snap {("G2" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvExpandBus -win $_nWave1 {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetCursor -win $_nWave1 214739.487508 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 215419.651331 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 217305.341147 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvExpandBus -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 120)}
wvSelectSignal -win $_nWave1 {( "G1" 64 )} 
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
wvSetCursor -win $_nWave1 215419.651331 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 215188.750537 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvExpandBus -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 123)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvCollapseBus -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 120)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvCollapseBus -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TETRIS"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TETRIS"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetCursor -win $_nWave1 221346.105039 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSetCursor -win $_nWave1 217603.127326 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 216062.745471 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 215100.006812 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 215985.726378 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvExpandBus -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 120)}
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
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
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 214294.083851 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 212783.788820 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 214629.704969 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvSetCursor -win $_nWave1 228725.791925 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 227047.686335 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 221342.127329 -snap {("G1" 8)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvExpandBus -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 123)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvCollapseBus -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 120)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvExpandBus -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 123)}
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvCollapseBus -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 120)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvCollapseBus -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvCollapseBus -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/fail} \
{/TESTBED/in_valid} \
{/TESTBED/position\[2:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/score\[3:0\]} \
{/TESTBED/score_valid} \
{/TESTBED/tetris\[71:0\]} \
{/TESTBED/tetris_valid} \
{/TESTBED/tetrominoes\[2:0\]} \
{/TESTBED/u_TETRIS/grid\[83:0\]} \
{/TESTBED/u_TETRIS/y_high\[23:0\]} \
{/TESTBED/u_TETRIS/state_1_} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 216475.621118 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 215133.136646 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 226376.444099 -snap {("G1" 9)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 216475.621118 -snap {("G1" 10)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 221342.127329 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 224866.149068 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvExpandBus -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 97)}
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
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_PATTERN"
wvSetPosition -win $_nWave1 {("G1" 98)}
wvSetPosition -win $_nWave1 {("G1" 98)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/fail} \
{/TESTBED/in_valid} \
{/TESTBED/position\[2:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/score\[3:0\]} \
{/TESTBED/score_valid} \
{/TESTBED/tetris\[71:0\]} \
{/TESTBED/tetris_valid} \
{/TESTBED/tetrominoes\[2:0\]} \
{/TESTBED/u_TETRIS/grid\[83:0\]} \
{/TESTBED/u_TETRIS/grid\[83\]} \
{/TESTBED/u_TETRIS/grid\[82\]} \
{/TESTBED/u_TETRIS/grid\[81\]} \
{/TESTBED/u_TETRIS/grid\[80\]} \
{/TESTBED/u_TETRIS/grid\[79\]} \
{/TESTBED/u_TETRIS/grid\[78\]} \
{/TESTBED/u_TETRIS/grid\[77\]} \
{/TESTBED/u_TETRIS/grid\[76\]} \
{/TESTBED/u_TETRIS/grid\[75\]} \
{/TESTBED/u_TETRIS/grid\[74\]} \
{/TESTBED/u_TETRIS/grid\[73\]} \
{/TESTBED/u_TETRIS/grid\[72\]} \
{/TESTBED/u_TETRIS/grid\[71\]} \
{/TESTBED/u_TETRIS/grid\[70\]} \
{/TESTBED/u_TETRIS/grid\[69\]} \
{/TESTBED/u_TETRIS/grid\[68\]} \
{/TESTBED/u_TETRIS/grid\[67\]} \
{/TESTBED/u_TETRIS/grid\[66\]} \
{/TESTBED/u_TETRIS/grid\[65\]} \
{/TESTBED/u_TETRIS/grid\[64\]} \
{/TESTBED/u_TETRIS/grid\[63\]} \
{/TESTBED/u_TETRIS/grid\[62\]} \
{/TESTBED/u_TETRIS/grid\[61\]} \
{/TESTBED/u_TETRIS/grid\[60\]} \
{/TESTBED/u_TETRIS/grid\[59\]} \
{/TESTBED/u_TETRIS/grid\[58\]} \
{/TESTBED/u_TETRIS/grid\[57\]} \
{/TESTBED/u_TETRIS/grid\[56\]} \
{/TESTBED/u_TETRIS/grid\[55\]} \
{/TESTBED/u_TETRIS/grid\[54\]} \
{/TESTBED/u_TETRIS/grid\[53\]} \
{/TESTBED/u_TETRIS/grid\[52\]} \
{/TESTBED/u_TETRIS/grid\[51\]} \
{/TESTBED/u_TETRIS/grid\[50\]} \
{/TESTBED/u_TETRIS/grid\[49\]} \
{/TESTBED/u_TETRIS/grid\[48\]} \
{/TESTBED/u_TETRIS/grid\[47\]} \
{/TESTBED/u_TETRIS/grid\[46\]} \
{/TESTBED/u_TETRIS/grid\[45\]} \
{/TESTBED/u_TETRIS/grid\[44\]} \
{/TESTBED/u_TETRIS/grid\[43\]} \
{/TESTBED/u_TETRIS/grid\[42\]} \
{/TESTBED/u_TETRIS/grid\[41\]} \
{/TESTBED/u_TETRIS/grid\[40\]} \
{/TESTBED/u_TETRIS/grid\[39\]} \
{/TESTBED/u_TETRIS/grid\[38\]} \
{/TESTBED/u_TETRIS/grid\[37\]} \
{/TESTBED/u_TETRIS/grid\[36\]} \
{/TESTBED/u_TETRIS/grid\[35\]} \
{/TESTBED/u_TETRIS/grid\[34\]} \
{/TESTBED/u_TETRIS/grid\[33\]} \
{/TESTBED/u_TETRIS/grid\[32\]} \
{/TESTBED/u_TETRIS/grid\[31\]} \
{/TESTBED/u_TETRIS/grid\[30\]} \
{/TESTBED/u_TETRIS/grid\[29\]} \
{/TESTBED/u_TETRIS/grid\[28\]} \
{/TESTBED/u_TETRIS/grid\[27\]} \
{/TESTBED/u_TETRIS/grid\[26\]} \
{/TESTBED/u_TETRIS/grid\[25\]} \
{/TESTBED/u_TETRIS/grid\[24\]} \
{/TESTBED/u_TETRIS/grid\[23\]} \
{/TESTBED/u_TETRIS/grid\[22\]} \
{/TESTBED/u_TETRIS/grid\[21\]} \
{/TESTBED/u_TETRIS/grid\[20\]} \
{/TESTBED/u_TETRIS/grid\[19\]} \
{/TESTBED/u_TETRIS/grid\[18\]} \
{/TESTBED/u_TETRIS/grid\[17\]} \
{/TESTBED/u_TETRIS/grid\[16\]} \
{/TESTBED/u_TETRIS/grid\[15\]} \
{/TESTBED/u_TETRIS/grid\[14\]} \
{/TESTBED/u_TETRIS/grid\[13\]} \
{/TESTBED/u_TETRIS/grid\[12\]} \
{/TESTBED/u_TETRIS/grid\[11\]} \
{/TESTBED/u_TETRIS/grid\[10\]} \
{/TESTBED/u_TETRIS/grid\[9\]} \
{/TESTBED/u_TETRIS/grid\[8\]} \
{/TESTBED/u_TETRIS/grid\[7\]} \
{/TESTBED/u_TETRIS/grid\[6\]} \
{/TESTBED/u_TETRIS/grid\[5\]} \
{/TESTBED/u_TETRIS/grid\[4\]} \
{/TESTBED/u_TETRIS/grid\[3\]} \
{/TESTBED/u_TETRIS/grid\[2\]} \
{/TESTBED/u_TETRIS/grid\[1\]} \
{/TESTBED/u_TETRIS/grid\[0\]} \
{/TESTBED/u_TETRIS/y_high\[23:0\]} \
{/TESTBED/u_TETRIS/state_1_} \
{/TESTBED/u_PATTERN/tetris\[71:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 98 )} 
wvSetPosition -win $_nWave1 {("G1" 98)}
wvGetSignalClose -win $_nWave1
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
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvCollapseBus -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetCursor -win $_nWave1 226376.444099 -snap {("G1" 14)}
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/fail} \
{/TESTBED/in_valid} \
{/TESTBED/position\[2:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/score\[3:0\]} \
{/TESTBED/score_valid} \
{/TESTBED/tetris\[71:0\]} \
{/TESTBED/tetris_valid} \
{/TESTBED/tetrominoes\[2:0\]} \
{/TESTBED/u_TETRIS/grid\[83:0\]} \
{/TESTBED/u_TETRIS/y_high\[23:0\]} \
{/TESTBED/u_TETRIS/state_1_} \
{/TESTBED/u_PATTERN/tetris\[71:0\]} \
{/TESTBED/u_PATTERN/golden_fail} \
{/TESTBED/u_PATTERN/golden_score\[3:0\]} \
{/TESTBED/u_PATTERN/golden_tetris\[71:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 16 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetCursor -win $_nWave1 222181.180124 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 219831.832298 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 222852.422360 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 222516.801242 -snap {("G1" 14)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TETRIS"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TETRIS"
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/clk} \
{/TESTBED/fail} \
{/TESTBED/in_valid} \
{/TESTBED/position\[2:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/score\[3:0\]} \
{/TESTBED/score_valid} \
{/TESTBED/tetris\[71:0\]} \
{/TESTBED/tetris_valid} \
{/TESTBED/tetrominoes\[2:0\]} \
{/TESTBED/u_TETRIS/grid\[83:0\]} \
{/TESTBED/u_TETRIS/y_high\[23:0\]} \
{/TESTBED/u_TETRIS/state_1_} \
{/TESTBED/u_PATTERN/tetris\[71:0\]} \
{/TESTBED/u_PATTERN/golden_fail} \
{/TESTBED/u_PATTERN/golden_score\[3:0\]} \
{/TESTBED/u_PATTERN/golden_tetris\[71:0\]} \
{/TESTBED/u_TETRIS/fail} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 220838.695652 -snap {("G1" 18)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TETRIS"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_TETRIS"
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 220670.885093 -snap {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 214294.083851 -snap {("G1" 11)}
wvZoom -win $_nWave1 212112.546584 219160.590062
wvSetCursor -win $_nWave1 215430.817985 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 215864.206994 -snap {("G1" 13)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 221705.473670 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 214981.377532 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
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
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 160157.142857 258271.428571
wvSetCursor -win $_nWave1 215673.984028 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvExit
