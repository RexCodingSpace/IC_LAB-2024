wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Midterm_Project/Exercise/03_GATE/ISP_SYN.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/addr_dram\[12:0\]} \
{/TESTBED/addr_sd\[15:0\]} \
{/TESTBED/araddr_s_inf\[31:0\]} \
{/TESTBED/arburst_s_inf\[1:0\]} \
{/TESTBED/arid_s_inf\[3:0\]} \
{/TESTBED/arlen_s_inf\[7:0\]} \
{/TESTBED/arready_s_inf} \
{/TESTBED/arsize_s_inf\[2:0\]} \
{/TESTBED/arvalid_s_inf} \
{/TESTBED/awaddr_s_inf\[31:0\]} \
{/TESTBED/awburst_s_inf\[1:0\]} \
{/TESTBED/awid_s_inf\[3:0\]} \
{/TESTBED/awlen_s_inf\[7:0\]} \
{/TESTBED/awready_s_inf} \
{/TESTBED/awsize_s_inf\[2:0\]} \
{/TESTBED/awvalid_s_inf} \
{/TESTBED/bid_s_inf\[3:0\]} \
{/TESTBED/bready_s_inf} \
{/TESTBED/bresp_s_inf\[1:0\]} \
{/TESTBED/bvalid_s_inf} \
{/TESTBED/clk} \
{/TESTBED/direction} \
{/TESTBED/in_mode} \
{/TESTBED/in_pic_no\[3:0\]} \
{/TESTBED/in_ratio_mode\[1:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[7:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rdata_s_inf\[127:0\]} \
{/TESTBED/rid_s_inf\[3:0\]} \
{/TESTBED/rlast_s_inf} \
{/TESTBED/rready_s_inf} \
{/TESTBED/rresp_s_inf\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/rvalid_s_inf} \
{/TESTBED/wdata_s_inf\[127:0\]} \
{/TESTBED/wlast_s_inf} \
{/TESTBED/wready_s_inf} \
{/TESTBED/wvalid_s_inf} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           )} 
wvSetPosition -win $_nWave1 {("G1" 39)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 0.000000 12053.971925
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetCursor -win $_nWave1 1240.850051 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 7292.008417 -snap {("G1" 34)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 9797.880923 -snap {("G1" 33)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 9854.283198 -snap {("G1" 34)}
wvGoToTime -win $_nWave1 10862
wvZoom -win $_nWave1 10362.436992 11571.057172
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/addr_dram\[12:0\]} \
{/TESTBED/addr_sd\[15:0\]} \
{/TESTBED/araddr_s_inf\[31:0\]} \
{/TESTBED/arburst_s_inf\[1:0\]} \
{/TESTBED/arid_s_inf\[3:0\]} \
{/TESTBED/arlen_s_inf\[7:0\]} \
{/TESTBED/arready_s_inf} \
{/TESTBED/arsize_s_inf\[2:0\]} \
{/TESTBED/arvalid_s_inf} \
{/TESTBED/awaddr_s_inf\[31:0\]} \
{/TESTBED/awburst_s_inf\[1:0\]} \
{/TESTBED/awid_s_inf\[3:0\]} \
{/TESTBED/awlen_s_inf\[7:0\]} \
{/TESTBED/awready_s_inf} \
{/TESTBED/awsize_s_inf\[2:0\]} \
{/TESTBED/awvalid_s_inf} \
{/TESTBED/bid_s_inf\[3:0\]} \
{/TESTBED/bready_s_inf} \
{/TESTBED/bresp_s_inf\[1:0\]} \
{/TESTBED/bvalid_s_inf} \
{/TESTBED/clk} \
{/TESTBED/direction} \
{/TESTBED/in_mode} \
{/TESTBED/in_pic_no\[3:0\]} \
{/TESTBED/in_ratio_mode\[1:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[7:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rdata_s_inf\[127:0\]} \
{/TESTBED/rid_s_inf\[3:0\]} \
{/TESTBED/rlast_s_inf} \
{/TESTBED/rready_s_inf} \
{/TESTBED/rresp_s_inf\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/rvalid_s_inf} \
{/TESTBED/wdata_s_inf\[127:0\]} \
{/TESTBED/wlast_s_inf} \
{/TESTBED/wready_s_inf} \
{/TESTBED/wvalid_s_inf} \
{/TESTBED/u_ISP/sub_flag\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_ISP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_ISP"
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 2481.872454 128230.076814
wvSetCursor -win $_nWave1 110242.031538 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 11475.895092 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 10803.444802 -snap {("G1" 21)}
wvZoom -win $_nWave1 10971.557374 17107.666277
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 11775.486081 -snap {("G1" 40)}
wvSetCursor -win $_nWave1 11890.333039 -snap {("G1" 21)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 108415.528417 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 10500.293309 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 12600.351971 -snap {("G1" 21)}
wvZoom -win $_nWave1 10237.785976 20213.064620
wvZoom -win $_nWave1 10664.535865 11378.008335
wvSetCursor -win $_nWave1 10864.842307 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 8912.682832 13124.841156
wvSetCursor -win $_nWave1 10799.144114 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 9810.863651 -snap {("G1" 34)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 7162.921643 -snap {("G1" 40)}
wvSetCursor -win $_nWave1 9753.286388 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 10744.382464 -snap {("G1" 21)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_ISP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_ISP"
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/addr_dram\[12:0\]} \
{/TESTBED/addr_sd\[15:0\]} \
{/TESTBED/araddr_s_inf\[31:0\]} \
{/TESTBED/arburst_s_inf\[1:0\]} \
{/TESTBED/arid_s_inf\[3:0\]} \
{/TESTBED/arlen_s_inf\[7:0\]} \
{/TESTBED/arready_s_inf} \
{/TESTBED/arsize_s_inf\[2:0\]} \
{/TESTBED/arvalid_s_inf} \
{/TESTBED/awaddr_s_inf\[31:0\]} \
{/TESTBED/awburst_s_inf\[1:0\]} \
{/TESTBED/awid_s_inf\[3:0\]} \
{/TESTBED/awlen_s_inf\[7:0\]} \
{/TESTBED/awready_s_inf} \
{/TESTBED/awsize_s_inf\[2:0\]} \
{/TESTBED/awvalid_s_inf} \
{/TESTBED/bid_s_inf\[3:0\]} \
{/TESTBED/bready_s_inf} \
{/TESTBED/bresp_s_inf\[1:0\]} \
{/TESTBED/bvalid_s_inf} \
{/TESTBED/clk} \
{/TESTBED/direction} \
{/TESTBED/in_mode} \
{/TESTBED/in_pic_no\[3:0\]} \
{/TESTBED/in_ratio_mode\[1:0\]} \
{/TESTBED/in_valid} \
{/TESTBED/out_data\[7:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rdata_s_inf\[127:0\]} \
{/TESTBED/rid_s_inf\[3:0\]} \
{/TESTBED/rlast_s_inf} \
{/TESTBED/rready_s_inf} \
{/TESTBED/rresp_s_inf\[1:0\]} \
{/TESTBED/rst_n} \
{/TESTBED/rvalid_s_inf} \
{/TESTBED/wdata_s_inf\[127:0\]} \
{/TESTBED/wlast_s_inf} \
{/TESTBED/wready_s_inf} \
{/TESTBED/wvalid_s_inf} \
{/TESTBED/u_ISP/sub_flag\[2:0\]} \
{/TESTBED/u_ISP/sub_a\[23:0\]} \
{/TESTBED/u_ISP/sub_b\[23:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 41 42 )} 
wvSetPosition -win $_nWave1 {("G1" 42)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8852.289955 -snap {("G1" 42)}
wvSetCursor -win $_nWave1 4955.480382 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 10046.110229 -snap {("G1" 41)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_ISP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_ISP"
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 7861.193879 -snap {("G1" 41)}
wvSetCursor -win $_nWave1 9956.010585 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 11555.279254 -snap {("G1" 40)}
wvSetCursor -win $_nWave1 10789.432286 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 11735.478541 -snap {("G1" 40)}
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvExpandBus -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 45)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSetPosition -win $_nWave1 {("G1" 44)}
wvExpandBus -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 69)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
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
wvSetCursor -win $_nWave1 14100.594178 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 11825.578184 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 14033.019445 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 13109.498101 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 11893.152917 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 14123.119088 -snap {("G1" 43)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetCursor -win $_nWave1 4932.955471 -snap {("G1" 34)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetCursor -win $_nWave1 8469.366471 -snap {("G1" 48)}
wvSetCursor -win $_nWave1 9910.960764 -snap {("G1" 44)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoom -win $_nWave1 4459.932344 12388.700955
wvSetCursor -win $_nWave1 12001.802486 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 5037.630057 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 11985.902549 -snap {("G1" 34)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 9327.963072 -snap {("G1" 47)}
wvSetCursor -win $_nWave1 11871.953001 -snap {("G1" 34)}
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 9582.362065 -snap {("G1" 34)}
wvZoom -win $_nWave1 4239.983214 10345.559043
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 4734.270028 10219.493232
wvSetCursor -win $_nWave1 4950.599018 -snap {("G1" 34)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 10427.790637 -snap {("G1" 62)}
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
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
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 177639.100141 -snap {("G1" 36)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 0.000000 11733.097764
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 6023.408478 -snap {("G1" 21)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvSetCursor -win $_nWave1 4815.589590 -snap {("G1" 34)}
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
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
wvSetCursor -win $_nWave1 7686.120193 -snap {("G1" 61)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
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
wvSetCursor -win $_nWave1 4674.415954 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 6462.615346 -snap {("G1" 63)}
wvSetCursor -win $_nWave1 4737.159792 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 6493.987265 -snap {("G1" 62)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 9505.691504 -snap {("G1" 34)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 9254.716150 10133.129887
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvExit
