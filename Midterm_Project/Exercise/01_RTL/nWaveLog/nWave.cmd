wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Midterm_Project/Exercise/01_RTL/ISP.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvRestoreSignal -win $_nWave1 \
           "/RAID2/COURSE/iclab/iclab143/Midterm_Project/Exercise/01_RTL/signaldiv.rc" \
           -overWriteAutoAlias on -appendSignals on
wvResizeWindow -win $_nWave1 0 23 1536 793
wvResizeWindow -win $_nWave1 1920 31 893 202
wvResizeWindow -win $_nWave1 1920 23 1920 1009
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
wvZoom -win $_nWave1 2389672.114861 2472090.848827
wvZoom -win $_nWave1 2408338.929848 2420124.334225
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvSetCursor -win $_nWave1 2411245.694650 -snap {("G1" 26)}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
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
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_PATTERN"
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 3755342.201468 -snap {("G1" 28)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 2166016.645843 2594543.902119
wvSetCursor -win $_nWave1 2409479.348064 -snap {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvZoomOut -win $_nWave1
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
wvZoom -win $_nWave1 3931322.294050 4185191.861804
wvSetCursor -win $_nWave1 4150839.070005 -snap {("G1" 27)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetCursor -win $_nWave1 4019031.549703 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 4017813.365597 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 4150595.433184 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 4149377.249078 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 4149377.249078 -snap {("G1" 27)}
wvZoom -win $_nWave1 4145966.333580 4154737.259146
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 4102007.330055 -snap {("G1" 29)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 3
wvScrollDown -win $_nWave1 3
wvSetCursor -win $_nWave1 4101497.235919 -snap {("G1" 39)}
wvSetCursor -win $_nWave1 4102136.957938 -snap {("G1" 39)}
wvSetCursor -win $_nWave1 4102338.975417 -snap {("G1" 38)}
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSetCursor -win $_nWave1 4101934.940458 -snap {("G1" 29)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSetCursor -win $_nWave1 4101463.566340 -snap {("G1" 39)}
wvSetCursor -win $_nWave1 4102237.966677 -snap {("G1" 38)}
wvSelectSignal -win $_nWave1 {( "G1" 36 )} 
wvSetCursor -win $_nWave1 4103147.045335 -snap {("G1" 36)}
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
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
{/TESTBED/u_ISP/dd1/clk} \
{/TESTBED/u_ISP/dd1/dividend\[13:0\]} \
{/TESTBED/u_ISP/dd1/en} \
{/TESTBED/u_ISP/dd1/rstn} \
{/TESTBED/u_ISP/dd1/vld_out} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/u_ISP/dd1/quotient\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 4150902.293993 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 4150565.598194 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 4150279.406765 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 4150548.763404 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 4150733.946094 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 4150868.624414 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 4148545.423400 -snap {("G1" 44)}
wvSetCursor -win $_nWave1 4148595.927770 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 4148680.101720 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 4148629.597350 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 4148797.945249 -snap {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSetCursor -win $_nWave1 4149606.015167 -snap {("G1" 28)}
wvSetCursor -win $_nWave1 4149521.841217 -snap {("G1" 28)}
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 4148276.066761 -snap {("G1" 37)}
wvSetCursor -win $_nWave1 4148461.249450 -snap {("G1" 36)}
wvSetCursor -win $_nWave1 4148309.736341 -snap {("G1" 36)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_ISP"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvExit
