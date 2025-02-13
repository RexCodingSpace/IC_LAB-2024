wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab08/EXERCISE_wocg/01_RTL/SA.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
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
wvZoom -win $_nWave1 11953583.859050 12090107.087984
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetRadix -win $_nWave1 -2Com
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
{/TESTBED/I_SA/P_store\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
{/TESTBED/I_SA/P_store\[63:0\]} \
{/TESTBED/I_SA/in_valid} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/I_SA/B_cnt\[6:0\]} \
{/TESTBED/I_SA/in_data_store\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 16 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
{/TESTBED/I_SA/P_store\[63:0\]} \
{/TESTBED/I_SA/in_valid} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/I_SA/B_cnt\[6:0\]} \
{/TESTBED/I_SA/in_data_store\[63:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
{/TESTBED/I_SA/P_store\[63:0\]} \
{/TESTBED/I_SA/in_valid} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/I_SA/B_cnt\[6:0\]} \
{/TESTBED/I_SA/in_data_store\[63:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
{/TESTBED/I_SA/P_store\[63:0\]} \
{/TESTBED/I_SA/in_valid} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/I_SA/B_cnt\[6:0\]} \
{/TESTBED/I_SA/in_data_store\[63:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
{/TESTBED/I_SA/comp_out\[40:0\]} \
{/TESTBED/I_SA/divide_in\[40:0\]} \
{/TESTBED/I_SA/divide_out\[40:0\]} \
{/TESTBED/I_SA/multi_a41\[7:0\]} \
{/TESTBED/I_SA/multi_a\[6:0\]} \
{/TESTBED/I_SA/multi_b41\[7:0\]} \
{/TESTBED/I_SA/multi_b\[6:0\]} \
{/TESTBED/I_SA/multi_out41\[41:0\]} \
{/TESTBED/I_SA/multi_out\[6:0\]} \
{/TESTBED/I_SA/state\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 20 21 22 23 24 25 26 27 28 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
{/TESTBED/I_SA/P_store\[63:0\]} \
{/TESTBED/I_SA/in_valid} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/I_SA/B_cnt\[6:0\]} \
{/TESTBED/I_SA/in_data_store\[63:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
{/TESTBED/I_SA/comp_out\[40:0\]} \
{/TESTBED/I_SA/divide_in\[40:0\]} \
{/TESTBED/I_SA/divide_out\[40:0\]} \
{/TESTBED/I_SA/multi_a41\[7:0\]} \
{/TESTBED/I_SA/multi_a\[6:0\]} \
{/TESTBED/I_SA/multi_b41\[7:0\]} \
{/TESTBED/I_SA/multi_b\[6:0\]} \
{/TESTBED/I_SA/multi_out41\[41:0\]} \
{/TESTBED/I_SA/multi_out\[6:0\]} \
{/TESTBED/I_SA/state\[2:0\]} \
{/TESTBED/I_SA/QKV\[63:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSetCursor -win $_nWave1 12300572.763722 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 12335187.154354 -snap {("G1" 30)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
{/TESTBED/I_SA/P_store\[63:0\]} \
{/TESTBED/I_SA/in_valid} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/I_SA/B_cnt\[6:0\]} \
{/TESTBED/I_SA/in_data_store\[63:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
{/TESTBED/I_SA/comp_out\[40:0\]} \
{/TESTBED/I_SA/divide_in\[40:0\]} \
{/TESTBED/I_SA/divide_out\[40:0\]} \
{/TESTBED/I_SA/multi_a41\[7:0\]} \
{/TESTBED/I_SA/multi_a\[6:0\]} \
{/TESTBED/I_SA/multi_b41\[7:0\]} \
{/TESTBED/I_SA/multi_b\[6:0\]} \
{/TESTBED/I_SA/multi_out41\[41:0\]} \
{/TESTBED/I_SA/multi_out\[6:0\]} \
{/TESTBED/I_SA/state\[2:0\]} \
{/TESTBED/I_SA/QKV\[63:0\]} \
{/TESTBED/I_PATTERN/gold_Q\[0:7\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvExpandBus -win $_nWave1 {("G1" 31)}
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvCollapseBus -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvExpandBus -win $_nWave1 {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvCollapseBus -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvExpandBus -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 95)}
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
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvExpandBus -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 98)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvCollapseBus -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 95)}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetPosition -win $_nWave1 {("G1" 30)}
wvCollapseBus -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 30)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetCursor -win $_nWave1 12664680.509116 -snap {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 95)}
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
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvCollapseBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
{/TESTBED/I_SA/P_store\[63:0\]} \
{/TESTBED/I_SA/in_valid} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/I_SA/B_cnt\[6:0\]} \
{/TESTBED/I_SA/in_data_store\[63:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
{/TESTBED/I_SA/comp_out\[40:0\]} \
{/TESTBED/I_SA/divide_in\[40:0\]} \
{/TESTBED/I_SA/divide_out\[40:0\]} \
{/TESTBED/I_SA/multi_a41\[7:0\]} \
{/TESTBED/I_SA/multi_a\[6:0\]} \
{/TESTBED/I_SA/multi_b41\[7:0\]} \
{/TESTBED/I_SA/multi_b\[6:0\]} \
{/TESTBED/I_SA/multi_out41\[41:0\]} \
{/TESTBED/I_SA/multi_out\[6:0\]} \
{/TESTBED/I_SA/state\[2:0\]} \
{/TESTBED/I_SA/QKV\[63:0\]} \
{/TESTBED/I_PATTERN/gold_Q\[0:7\]} \
{/TESTBED/I_PATTERN/gold_KT\[0:7\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetPosition -win $_nWave1 {("G1" 32)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvExpandBus -win $_nWave1 {("G1" 32)}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 12649607.465494 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12644718.910806 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12641052.494790 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12644311.531248 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12651338.828613 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 12585037.805656 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12620581.672034 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetCursor -win $_nWave1 12615183.892899 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12619155.843583 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12624146.243160 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12620479.827144 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12623229.639156 -snap {("G1" 18)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvSetPosition -win $_nWave1 {("G1" 41)}
wvSetPosition -win $_nWave1 {("G1" 41)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
{/TESTBED/I_SA/P_store\[63:0\]} \
{/TESTBED/I_SA/in_valid} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/I_SA/B_cnt\[6:0\]} \
{/TESTBED/I_SA/in_data_store\[63:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
{/TESTBED/I_SA/comp_out\[40:0\]} \
{/TESTBED/I_SA/divide_in\[40:0\]} \
{/TESTBED/I_SA/divide_out\[40:0\]} \
{/TESTBED/I_SA/multi_a41\[7:0\]} \
{/TESTBED/I_SA/multi_a\[6:0\]} \
{/TESTBED/I_SA/multi_b41\[7:0\]} \
{/TESTBED/I_SA/multi_b\[6:0\]} \
{/TESTBED/I_SA/multi_out41\[41:0\]} \
{/TESTBED/I_SA/multi_out\[6:0\]} \
{/TESTBED/I_SA/state\[2:0\]} \
{/TESTBED/I_SA/QKV\[63:0\]} \
{/TESTBED/I_PATTERN/gold_Q\[0:7\]} \
{/TESTBED/I_PATTERN/gold_KT\[0:7\]} \
{/TESTBED/I_PATTERN/gold_KT\[0\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_KT\[1\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_KT\[2\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_KT\[3\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_KT\[4\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_KT\[5\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_KT\[6\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_KT\[7\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[0:7\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSetPosition -win $_nWave1 {("G1" 41)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvExpandBus -win $_nWave1 {("G1" 41)}
wvSelectSignal -win $_nWave1 {( "G1" 32 33 34 35 36 37 38 39 40 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 35)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 32 33 34 35 36 37 38 39 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 32 33 34 35 36 37 38 39 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetCursor -win $_nWave1 12623535.173824 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 12300194.089347 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12304267.884921 -snap {("G1" 25)}
wvSetCursor -win $_nWave1 12300499.624015 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12304980.799146 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 95)}
wvScrollUp -win $_nWave1 27
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvCollapseBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSetCursor -win $_nWave1 11800068.411691 -snap {("G1" 30)}
wvSetCursor -win $_nWave1 12624532.741251 -snap {("G1" 12)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 12620458.945680 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12624227.206585 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12620968.170126 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12624430.896364 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetCursor -win $_nWave1 12629828.675498 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12624532.741253 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12629828.675498 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12634513.540408 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12640216.854211 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12645003.564009 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12649790.273808 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12654882.518275 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12659872.917852 -snap {("G1" 14)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 11960755.012881 12500125.546801
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 12746783.840958 -snap {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 12574392.720309 12696373.441058
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetCursor -win $_nWave1 12584057.346636 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12589687.226055 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12595410.936798 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12600102.502981 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12606013.876371 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12609110.310051 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12614458.695500 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12619807.080948 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12624873.972425 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12619431.755653 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12624498.647130 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12611549.924466 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12615490.840060 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12619431.755653 -snap {("G1" 13)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 12625343.129044 -snap {("G1" 17)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 12536506.575752 12742184.837200
wvSetCursor -win $_nWave1 12617986.810093 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 12622733.231511 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetCursor -win $_nWave1 12614980.743195 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12618936.094376 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12625422.870314 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12627163.224834 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12618936.094376 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12614347.887006 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12620834.662943 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12623524.301747 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12630169.291732 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12625422.870314 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12629378.221496 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12625264.656267 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12630011.077685 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12635073.927198 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12639503.920521 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12636339.639576 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12639345.706474 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12643775.699797 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12650737.117877 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 12654692.469059 -snap {("G1" 18)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvSetPosition -win $_nWave1 {("G1" 32)}
wvSetPosition -win $_nWave1 {("G1" 32)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
{/TESTBED/I_SA/P_store\[63:0\]} \
{/TESTBED/I_SA/in_valid} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/I_SA/B_cnt\[6:0\]} \
{/TESTBED/I_SA/in_data_store\[63:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
{/TESTBED/I_SA/comp_out\[40:0\]} \
{/TESTBED/I_SA/divide_in\[40:0\]} \
{/TESTBED/I_SA/divide_out\[40:0\]} \
{/TESTBED/I_SA/multi_a41\[7:0\]} \
{/TESTBED/I_SA/multi_a\[6:0\]} \
{/TESTBED/I_SA/multi_b41\[7:0\]} \
{/TESTBED/I_SA/multi_b\[6:0\]} \
{/TESTBED/I_SA/multi_out41\[41:0\]} \
{/TESTBED/I_SA/multi_out\[6:0\]} \
{/TESTBED/I_SA/state\[2:0\]} \
{/TESTBED/I_SA/QKV\[63:0\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[0\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[1\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[2\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[3\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[4\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[5\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[6\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[7\]\[0:7\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetPosition -win $_nWave1 {("G1" 32)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvExpandBus -win $_nWave1 {("G1" 32)}
wvSelectSignal -win $_nWave1 {( "G1" 33 34 35 36 37 38 39 40 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSetCursor -win $_nWave1 12659691.326672 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 12664599.716490 -snap {("G1" 16)}
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSetCursor -win $_nWave1 12670850.238455 -snap {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetCursor -win $_nWave1 12673701.872805 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12679563.565635 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12688118.468685 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12692712.768471 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12749872.194771 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12745119.470854 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12749238.498249 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 12902941.589704 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12929239.995375 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 12935893.808858 -snap {("G1" 13)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 12941121.805166 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 12929715.267766 -snap {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvSetPosition -win $_nWave1 {("G1" 41)}
wvSetPosition -win $_nWave1 {("G1" 41)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
{/TESTBED/I_SA/P_store\[63:0\]} \
{/TESTBED/I_SA/in_valid} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/I_SA/B_cnt\[6:0\]} \
{/TESTBED/I_SA/in_data_store\[63:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
{/TESTBED/I_SA/comp_out\[40:0\]} \
{/TESTBED/I_SA/divide_in\[40:0\]} \
{/TESTBED/I_SA/divide_out\[40:0\]} \
{/TESTBED/I_SA/multi_a41\[7:0\]} \
{/TESTBED/I_SA/multi_a\[6:0\]} \
{/TESTBED/I_SA/multi_b41\[7:0\]} \
{/TESTBED/I_SA/multi_b\[6:0\]} \
{/TESTBED/I_SA/multi_out41\[41:0\]} \
{/TESTBED/I_SA/multi_out\[6:0\]} \
{/TESTBED/I_SA/state\[2:0\]} \
{/TESTBED/I_SA/QKV\[63:0\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[0\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[1\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[2\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[3\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[4\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[5\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[6\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[7\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[0\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[1\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[2\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[3\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[4\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[5\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[6\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[7\]\[0:7\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSetPosition -win $_nWave1 {("G1" 41)}
wvGetSignalClose -win $_nWave1
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvExpandBus -win $_nWave1 {("G1" 41)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 12940012.836252 -snap {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSetCursor -win $_nWave1 12930665.812550 -snap {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetRadix -win $_nWave1 -2Com
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvSetPosition -win $_nWave1 {("G1" 51)}
wvSetPosition -win $_nWave1 {("G1" 51)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
{/TESTBED/I_SA/P_store\[63:0\]} \
{/TESTBED/I_SA/in_valid} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/I_SA/B_cnt\[6:0\]} \
{/TESTBED/I_SA/in_data_store\[63:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
{/TESTBED/I_SA/comp_out\[40:0\]} \
{/TESTBED/I_SA/divide_in\[40:0\]} \
{/TESTBED/I_SA/divide_out\[40:0\]} \
{/TESTBED/I_SA/multi_a41\[7:0\]} \
{/TESTBED/I_SA/multi_a\[6:0\]} \
{/TESTBED/I_SA/multi_b41\[7:0\]} \
{/TESTBED/I_SA/multi_b\[6:0\]} \
{/TESTBED/I_SA/multi_out41\[41:0\]} \
{/TESTBED/I_SA/multi_out\[6:0\]} \
{/TESTBED/I_SA/state\[2:0\]} \
{/TESTBED/I_SA/QKV\[63:0\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[0\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[1\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[2\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[3\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[4\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[5\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[6\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[7\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[0\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[1\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[2\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[3\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[4\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[5\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[6\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[7\]\[0:7\]} \
{/TESTBED/I_SA/out_data_store1\[63:0\]} \
{/TESTBED/I_SA/out_data_store\[63:0\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[0\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[1\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[2\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[3\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[4\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[5\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[6\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[7\]\[0:7\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 50 51 )} 
wvSetPosition -win $_nWave1 {("G1" 51)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 50 51 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
wvSetCursor -win $_nWave1 12935260.112336 -snap {("G1" 51)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 12940012.836252 -snap {("G1" 50)}
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
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
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
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
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
wvScrollDown -win $_nWave1 0
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
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
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
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
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
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 51)}
wvSetPosition -win $_nWave1 {("G1" 50)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_SA"
wvSetPosition -win $_nWave1 {("G1" 51)}
wvSetPosition -win $_nWave1 {("G1" 51)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/T\[3:0\]} \
{/TESTBED/cg_en} \
{/TESTBED/clk} \
{/TESTBED/in_data\[7:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/w_K\[7:0\]} \
{/TESTBED/w_Q\[7:0\]} \
{/TESTBED/w_V\[7:0\]} \
{/TESTBED/I_SA/W_store\[71:0\]} \
{/TESTBED/I_SA/P_store\[63:0\]} \
{/TESTBED/I_SA/in_valid} \
{/TESTBED/I_SA/A_cnt\[6:0\]} \
{/TESTBED/I_SA/B_cnt\[6:0\]} \
{/TESTBED/I_SA/in_data_store\[63:0\]} \
{/TESTBED/I_SA/in_cnt\[5:0\]} \
{/TESTBED/I_SA/flag_qkv\[1:0\]} \
{/TESTBED/I_SA/comp_out\[40:0\]} \
{/TESTBED/I_SA/divide_in\[40:0\]} \
{/TESTBED/I_SA/divide_out\[40:0\]} \
{/TESTBED/I_SA/multi_a41\[7:0\]} \
{/TESTBED/I_SA/multi_a\[6:0\]} \
{/TESTBED/I_SA/multi_b41\[7:0\]} \
{/TESTBED/I_SA/multi_b\[6:0\]} \
{/TESTBED/I_SA/multi_out41\[41:0\]} \
{/TESTBED/I_SA/multi_out\[6:0\]} \
{/TESTBED/I_SA/state\[2:0\]} \
{/TESTBED/I_SA/QKV\[63:0\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[0\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[1\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[2\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[3\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[4\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[5\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[6\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_RELU\[7\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[0\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[1\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[2\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[3\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[4\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[5\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[6\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_V\[7\]\[0:7\]} \
{/TESTBED/I_SA/out_data_store1\[63:0\]} \
{/TESTBED/I_SA/out_data_store\[63:0\]} \
{/TESTBED/I_SA/out_data\[63:0\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[0\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[1\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[2\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[3\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[4\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[5\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[6\]\[0:7\]} \
{/TESTBED/I_PATTERN/gold_matmul1\[7\]\[0:7\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 51 )} 
wvSetPosition -win $_nWave1 {("G1" 51)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 51 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetRadix -win $_nWave1 -2Com
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
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
wvSetCursor -win $_nWave1 12945399.256691 -snap {("G1" 51)}
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
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 12940488.108644 -snap {("G1" 7)}
wvSetCursor -win $_nWave1 12946191.377344 -snap {("G1" 7)}
wvExit
