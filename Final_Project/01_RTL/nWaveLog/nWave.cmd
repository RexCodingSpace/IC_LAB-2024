wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Final_Project/01_RTL/ISP.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 36)}
wvSetPosition -win $_nWave1 {("G1" 36)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
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
{/TESTBED/in_mode\[1:0\]} \
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
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 )} 
wvSetPosition -win $_nWave1 {("G1" 36)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetCursor -win $_nWave1 24256.101939 -snap {("G1" 1)}
wvZoom -win $_nWave1 1155.052473 23101.049465
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 12172.060322 -snap {("G1" 19)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
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
{/TESTBED/in_mode\[1:0\]} \
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
{/TESTBED/u_ISP/delay_valid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 37 )} 
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
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
{/TESTBED/in_mode\[1:0\]} \
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
{/TESTBED/u_ISP/delay_valid} \
{/TESTBED/u_ISP/in_pic_no_store\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSetPosition -win $_nWave1 {("G1" 38)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 12612.153844 -snap {("G1" 37)}
wvSetCursor -win $_nWave1 12685.502765 -snap {("G1" 37)}
wvSetCursor -win $_nWave1 6905.607835 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 12685.502765 -snap {("G1" 37)}
wvSetCursor -win $_nWave1 18729.453808 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 12714.842333 -snap {("G1" 37)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_ISP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_ISP"
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
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
{/TESTBED/in_mode\[1:0\]} \
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
{/TESTBED/u_ISP/delay_valid} \
{/TESTBED/u_ISP/in_pic_no_store\[3:0\]} \
{/TESTBED/u_ISP/base_addr\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSetPosition -win $_nWave1 {("G1" 39)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 11746.636583 -snap {("G1" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 11966.683344 -snap {("G1" 7)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 11673.287662 -snap {("G1" 8)}
wvExit
