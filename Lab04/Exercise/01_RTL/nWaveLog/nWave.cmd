wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab04/Exercise/01_RTL/CNN.fsdb}
wvSetCursor -win $_nWave1 87780.186524
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 10)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalClose -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 458565.702718 586595.908039
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 411704.973973 739730.075188
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 403723.201495 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 506171.758265 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 518313.809438 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 512242.783851 -snap {("G1" 6)}
wvZoom -win $_nWave1 423454.034651 563846.501336
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 12 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvExpandBus -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvExpandBus -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvCollapseBus -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvExpandBus -win $_nWave1 {("G1" 16)}
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 20 21 )} 
wvSetPosition -win $_nWave1 {("G1" 21)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 324005.331258 -snap {("G1" 20)}
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSetCursor -win $_nWave1 340672.485016 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 352569.988224 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 362348.757984 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 368134.530092 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 390742.070940 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 399624.453472 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 406877.041044 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 418367.095512 -snap {("G1" 20)}
wvSetCursor -win $_nWave1 517634.968760 -snap {("G1" 20)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 530999.287432 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 527821.187260 -snap {("G1" 11)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/act_out_s\[7:0\]} \
{/TESTBED/u_CNN/fc_out_s\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 22 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvSetPosition -win $_nWave1 {("G1" 22)}
wvExpandBus -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetCursor -win $_nWave1 532751.454367 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 527454.620747 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 532669.964619 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 527210.151503 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 518653.727963 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 527210.151503 -snap {("G1" 11)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoom -win $_nWave1 366265.164924 585832.502011
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSetRadix -win $_nWave1 -format 754
wvSetCursor -win $_nWave1 545027.952641 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 549444.029413 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 554566.678468 -snap {("G1" 6)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 169888297.264682 243342416.130330
wvZoom -win $_nWave1 217518240.792928 228391577.777063
wvZoom -win $_nWave1 217518240.792900 217894390.020831
wvSetCursor -win $_nWave1 401765.504796 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 405396.873047 -snap {("G1" 6)}
wvZoom -win $_nWave1 327322.455665 554888.199352
wvSetCursor -win $_nWave1 498683.305296 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 463349.283951 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 449435.368810 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 404581.300263 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 409341.323864 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 414101.347465 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 418861.371066 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 423621.394667 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 428747.573929 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 432592.208376 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 438816.854623 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 444126.111717 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 449984.602302 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 443759.956055 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetCursor -win $_nWave1 458406.182519 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 404032.066771 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 460770.284564 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 404016.157015 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 400720.756061 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 459122.584087 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 463333.374195 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 460037.973241 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 465713.385996 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 470107.253935 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 476148.822352 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 478528.834152 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 482373.468599 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 487682.725692 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 484753.480399 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 493724.294109 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 499033.551202 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 281677.572294 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 283508.350602 -snap {("G1" 11)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/act_out_s\[7:0\]} \
{/TESTBED/u_CNN/act_out_s\[7\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[6\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[5\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[4\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[3\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[2\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[1\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[0\]\[31:0\]} \
{/TESTBED/u_CNN/fc_out_s\[2:0\]} \
{/TESTBED/u_CNN/Img\[31:0\]} \
{/TESTBED/u_CNN/Img_array\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 32 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvExpandBus -win $_nWave1 {("G1" 33)}
wvSetCursor -win $_nWave1 150410.767608 -snap {("G1" 36)}
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSetCursor -win $_nWave1 151875.390255 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 285522.206741 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 276002.159539 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 269914.821665 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 264605.564572 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 269731.743834 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 273759.456112 -snap {("G1" 35)}
wvSelectSignal -win $_nWave1 {( "G1" 34 )} 
wvSetPosition -win $_nWave1 {("G1" 34)}
wvExpandBus -win $_nWave1 {("G1" 34)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 279801.024528 -snap {("G1" 34)}
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSetPosition -win $_nWave1 {("G1" 42)}
wvExpandBus -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 50)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 155308.099582 -snap {("G1" 33)}
wvSetCursor -win $_nWave1 148506.758168 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 154365.248754 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetCursor -win $_nWave1 150886.769968 -snap {("G1" 32)}
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSetCursor -win $_nWave1 155408.792389 -snap {("G1" 41)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvZoom -win $_nWave1 411841.110217 685516.170555
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 527345.132743 557547.626710
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoom -win $_nWave1 129838.240642 471954.986454
wvZoom -win $_nWave1 200023.091955 449110.505438
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvCollapseBus -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvCollapseBus -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetPosition -win $_nWave1 {("G1" 12)}
wvExpandBus -win $_nWave1 {("G1" 12)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvExpandBus -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvExpandBus -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 55)}
wvSetCursor -win $_nWave1 209241.129783 -snap {("G1" 11)}
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSetCursor -win $_nWave1 190155.505896 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetCursor -win $_nWave1 196577.818529 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvExpandBus -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 61)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvCollapseBus -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 55)}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvExpandBus -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 61)}
wvSetCursor -win $_nWave1 202197.342084 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 206010.590210 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 212633.600114 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 218052.426399 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 226281.014461 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 234710.299793 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 243139.585125 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 256184.907662 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 199788.974846 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 202799.433893 -snap {("G1" 11)}
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
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 63)}
wvSetPosition -win $_nWave1 {("G1" 63)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/act_out_s\[7:0\]} \
{/TESTBED/u_CNN/act_out_s\[7\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[6\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[5\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[4\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[3\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[2\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[1\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[0\]\[31:0\]} \
{/TESTBED/u_CNN/fc_out_s\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[5\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[4\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[3\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[0\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[5\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[4\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[3\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[0\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 62 63 )} 
wvSetPosition -win $_nWave1 {("G1" 63)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 52 )} 
wvSelectSignal -win $_nWave1 {( "G1" 53 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 198183.396688 -snap {("G1" 11)}
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
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/dp2"
wvSetPosition -win $_nWave1 {("G1" 72)}
wvSetPosition -win $_nWave1 {("G1" 72)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/act_out_s\[7:0\]} \
{/TESTBED/u_CNN/act_out_s\[7\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[6\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[5\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[4\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[3\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[2\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[1\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[0\]\[31:0\]} \
{/TESTBED/u_CNN/fc_out_s\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[5\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[4\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[3\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[0\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[5\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[4\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[3\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[0\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/dp2/a\[31:0\]} \
{/TESTBED/u_CNN/dp2/b\[31:0\]} \
{/TESTBED/u_CNN/dp2/c\[31:0\]} \
{/TESTBED/u_CNN/dp2/d\[31:0\]} \
{/TESTBED/u_CNN/dp2/e\[31:0\]} \
{/TESTBED/u_CNN/dp2/f\[31:0\]} \
{/TESTBED/u_CNN/dp2/g\[31:0\]} \
{/TESTBED/u_CNN/dp2/h\[31:0\]} \
{/TESTBED/u_CNN/dp2/z\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 64 65 66 67 68 69 70 71 72 )} 
wvSetPosition -win $_nWave1 {("G1" 72)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/dp2"
wvGetSignalClose -win $_nWave1
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
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 201595.250274 -snap {("G1" 25)}
wvSetCursor -win $_nWave1 197179.910339 -snap {("G1" 25)}
wvSetCursor -win $_nWave1 202197.342084 -snap {("G1" 25)}
wvSetCursor -win $_nWave1 208619.654718 -snap {("G1" 25)}
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
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvExpandBus -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 74)}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvCollapseBus -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 72)}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvExpandBus -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 74)}
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSetPosition -win $_nWave1 {("G1" 33)}
wvCollapseBus -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 33)}
wvSetPosition -win $_nWave1 {("G1" 72)}
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
wvSetCursor -win $_nWave1 197581.304878 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 202197.342084 -snap {("G1" 15)}
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
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 198584.791227 -snap {("G1" 63)}
wvSetCursor -win $_nWave1 202799.433893 -snap {("G1" 62)}
wvSetCursor -win $_nWave1 198183.396688 -snap {("G1" 63)}
wvSetCursor -win $_nWave1 202799.433893 -snap {("G1" 63)}
wvSetCursor -win $_nWave1 197982.699418 -snap {("G1" 63)}
wvScrollUp -win $_nWave1 1
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
wvSetCursor -win $_nWave1 201193.855735 -snap {("G1" 63)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 206010.590210 -snap {("G1" 25)}
wvSetCursor -win $_nWave1 212834.297384 -snap {("G1" 25)}
wvSetCursor -win $_nWave1 235914.483412 -snap {("G1" 25)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 259797.458519 -snap {("G1" 27)}
wvSetCursor -win $_nWave1 267624.652041 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 299736.215210 -snap {("G1" 24)}
wvSetCursor -win $_nWave1 307162.014193 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 318401.061302 -snap {("G1" 23)}
wvSetCursor -win $_nWave1 328034.530253 -snap {("G1" 22)}
wvSetCursor -win $_nWave1 323518.841682 -snap {("G1" 11)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvExpandBus -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 78)}
wvSetCursor -win $_nWave1 327332.089809 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 333152.310633 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 338169.742378 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 342585.082314 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 346799.724980 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 352519.597170 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 386437.435767 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 383426.976720 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetCursor -win $_nWave1 387440.922116 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 382222.793101 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 378610.242244 -snap {("G1" 12)}
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSetCursor -win $_nWave1 381571.066103 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 377551.473527 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 381169.106846 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 387182.655451 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 382560.123988 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 385775.798050 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 391403.227657 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 386780.696194 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 382560.123988 -snap {("G1" 11)}
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
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 387383.635080 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 392408.125801 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 397231.636893 -snap {("G1" 50)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 380952.286957 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 386780.696194 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 407280.618335 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 413912.946087 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 417530.579406 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 423961.927529 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 408097.222117 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 423861.437714 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 416023.232190 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 413410.497015 -snap {("G1" 11)}
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
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
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 417631.069220 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 422454.580313 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 427680.050662 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 429890.826580 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 431297.683981 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 436724.133960 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 441949.604310 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 438130.991362 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 432503.561754 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 428684.948807 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 423861.437714 -snap {("G1" 50)}
wvSetCursor -win $_nWave1 418234.008107 -snap {("G1" 50)}
wvScrollUp -win $_nWave1 1
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 409993.843325 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 413611.476644 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 416224.211819 -snap {("G1" 11)}
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
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 53 )} 
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSetPosition -win $_nWave1 {("G1" 50)}
wvSetPosition -win $_nWave1 {("G1" 49)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSetPosition -win $_nWave1 {("G1" 47)}
wvSetPosition -win $_nWave1 {("G1" 46)}
wvSetPosition -win $_nWave1 {("G1" 45)}
wvSetPosition -win $_nWave1 {("G1" 44)}
wvSetPosition -win $_nWave1 {("G1" 43)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetPosition -win $_nWave1 {("G1" 41)}
wvSetPosition -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 37)}
wvSetPosition -win $_nWave1 {("G1" 38)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 38)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvExpandBus -win $_nWave1 {("G1" 39)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 7
wvSelectSignal -win $_nWave1 {( "G1" 53 )} 
wvSelectSignal -win $_nWave1 {( "G1" 54 )} 
wvSetPosition -win $_nWave1 {("G1" 54)}
wvCollapseBus -win $_nWave1 {("G1" 54)}
wvSetPosition -win $_nWave1 {("G1" 54)}
wvSelectSignal -win $_nWave1 {( "G1" 55 )} 
wvSetPosition -win $_nWave1 {("G1" 55)}
wvCollapseBus -win $_nWave1 {("G1" 55)}
wvSetPosition -win $_nWave1 {("G1" 55)}
wvSelectSignal -win $_nWave1 {( "G1" 58 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSetPosition -win $_nWave1 {("G1" 40)}
wvExpandBus -win $_nWave1 {("G1" 40)}
wvSetPosition -win $_nWave1 {("G1" 62)}
wvResizeWindow -win $_nWave1 0 23 1920 1009
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
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvSetPosition -win $_nWave1 {("G1" 66)}
wvSetPosition -win $_nWave1 {("G1" 66)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/Img_array\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[5\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[4\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[3\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[0\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/act_out_s\[7:0\]} \
{/TESTBED/u_CNN/act_out_s\[7\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[6\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[5\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[4\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[3\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[2\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[1\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[0\]\[31:0\]} \
{/TESTBED/u_CNN/fc_out_s\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/x_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/x_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/dp2/a\[31:0\]} \
{/TESTBED/u_CNN/dp2/b\[31:0\]} \
{/TESTBED/u_CNN/dp2/c\[31:0\]} \
{/TESTBED/u_CNN/dp2/d\[31:0\]} \
{/TESTBED/u_CNN/dp2/e\[31:0\]} \
{/TESTBED/u_CNN/dp2/f\[31:0\]} \
{/TESTBED/u_CNN/dp2/g\[31:0\]} \
{/TESTBED/u_CNN/dp2/h\[31:0\]} \
{/TESTBED/u_CNN/dp2/z\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 63 64 65 66 )} 
wvSetPosition -win $_nWave1 {("G1" 66)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 473524.922393 -snap {("G1" 68)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
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
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/dp2"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvSetPosition -win $_nWave1 {("G1" 67)}
wvSetPosition -win $_nWave1 {("G1" 67)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/Img_array\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[5\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[4\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[3\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[0\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/act_out_s\[7:0\]} \
{/TESTBED/u_CNN/act_out_s\[7\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[6\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[5\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[4\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[3\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[2\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[1\]\[31:0\]} \
{/TESTBED/u_CNN/act_out_s\[0\]\[31:0\]} \
{/TESTBED/u_CNN/fc_out_s\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/x_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/x_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/dp2/a\[31:0\]} \
{/TESTBED/u_CNN/dp2/b\[31:0\]} \
{/TESTBED/u_CNN/dp2/c\[31:0\]} \
{/TESTBED/u_CNN/dp2/d\[31:0\]} \
{/TESTBED/u_CNN/dp2/e\[31:0\]} \
{/TESTBED/u_CNN/dp2/f\[31:0\]} \
{/TESTBED/u_CNN/dp2/g\[31:0\]} \
{/TESTBED/u_CNN/dp2/h\[31:0\]} \
{/TESTBED/u_CNN/dp2/z\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 67 )} 
wvSetPosition -win $_nWave1 {("G1" 67)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 421256.268140 -snap {("G1" 67)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 416300.910166 -snap {("G1" 67)}
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 51 )} 
wvSetPosition -win $_nWave1 {("G1" 51)}
wvCollapseBus -win $_nWave1 {("G1" 51)}
wvSetPosition -win $_nWave1 {("G1" 51)}
wvSetPosition -win $_nWave1 {("G1" 59)}
wvScrollUp -win $_nWave1 1
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
wvSetCursor -win $_nWave1 413285.410882 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 426352.574445 -snap {("G1" 19)}
wvSetCursor -win $_nWave1 412481.277739 -snap {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 58 )} 
wvSetCursor -win $_nWave1 408460.612028 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 380718.018617 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 377501.486048 -snap {("G1" 59)}
wvSelectSignal -win $_nWave1 {( "G1" 57 )} 
wvSetPosition -win $_nWave1 {("G1" 57)}
wvSetPosition -win $_nWave1 {("G1" 56)}
wvSetPosition -win $_nWave1 {("G1" 55)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 55)}
wvSetPosition -win $_nWave1 {("G1" 56)}
wvSetCursor -win $_nWave1 382728.351473 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 412682.311025 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 376295.286334 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 382728.351473 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 407254.412314 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 403233.746603 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 406852.345743 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 383733.517901 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 373882.886907 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 371068.420909 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 379109.752332 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 381120.085188 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 386950.050470 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 390568.649611 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 394187.248751 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 396398.614893 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 401022.380461 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 406852.345743 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 412079.211168 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 416904.010022 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 413084.377596 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 408460.612028 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 382125.251616 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 378104.585904 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 373681.853622 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 377099.419476 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 411677.144597 -snap {("G1" 59)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 408460.612028 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 411677.144597 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 408058.545457 -snap {("G1" 55)}
wvSelectSignal -win $_nWave1 {( "G1" 58 )} 
wvSetCursor -win $_nWave1 411476.111312 -snap {("G1" 57)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 408058.545457 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 411677.144597 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 415697.810309 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 414290.577310 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 415898.843595 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 412682.311025 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 416300.910166 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 422130.875448 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 427156.707587 -snap {("G1" 59)}
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 415094.710452 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 413285.410882 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 417306.076594 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 422733.975305 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 413285.410882 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 416300.910166 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 421527.775591 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 419316.409450 -snap {("G1" 59)}
wvSetCursor -win $_nWave1 421929.842162 -snap {("G1" 59)}
wvSelectSignal -win $_nWave1 {( "G1" 57 )} 
wvSetCursor -win $_nWave1 416904.010023 -snap {("G1" 59)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 421929.842162 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 427357.740873 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 432584.606298 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 437409.405152 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 434192.872583 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 431378.406585 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 436806.305296 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 442435.237292 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 448265.202574 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 451481.735143 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 448667.269145 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 446254.869718 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 444646.603433 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 442033.170721 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 438414.571580 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 430574.273442 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 423136.041876 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 427156.707587 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 431981.506442 -snap {("G1" 57)}
wvSelectSignal -win $_nWave1 {( "G1" 56 )} 
wvSelectSignal -win $_nWave1 {( "G1" 56 )} 
wvSelectSignal -win $_nWave1 {( "G1" 57 )} 
wvSelectSignal -win $_nWave1 {( "G1" 58 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 412481.277740 -snap {("G1" 58)}
wvSetCursor -win $_nWave1 416300.910166 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 422130.875448 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 426151.541160 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 430574.273442 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 436605.272010 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 441430.070864 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 435801.138868 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 442636.270578 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 446053.836432 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 451079.668572 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 458115.833568 -snap {("G1" 57)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
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
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetRadix -win $_nWave1 -format 754
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
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
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvSetCursor -win $_nWave1 451045.230927 -snap {("G1" 10)}
wvSetCursor -win $_nWave1 457271.606893 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 337797.673907 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 285175.623127 -snap {("G1" 14)}
wvSetCursor -win $_nWave1 327428.108689 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 331261.012737 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 336089.868230 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 340777.882104 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 345405.535285 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 348624.772280 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 354459.639334 -snap {("G1" 11)}
wvSetCursor -win $_nWave1 386450.806974 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 410192.679814 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 423572.633575 -snap {("G1" 12)}
wvSetCursor -win $_nWave1 325084.101752 -snap {("G1" 15)}
wvSetCursor -win $_nWave1 332659.368807 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 325013.680943 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 329238.929499 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 324208.871694 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 327830.513314 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 331854.559558 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 337890.628924 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 342387.500601 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 339168.263606 -snap {("G1" 17)}
wvSetCursor -win $_nWave1 341381.489040 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 334339.408113 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 337156.240484 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 347618.760719 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 360294.506387 -snap {("G1" 16)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvSetPosition -win $_nWave1 {("G1" 58)}
wvSetPosition -win $_nWave1 {("G1" 58)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/Img_array\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[5\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[4\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[3\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[0\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/act_out_s\[7:0\]} \
{/TESTBED/u_CNN/fc_out_s\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/x_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[5:0\]} \
{/TESTBED/u_CNN/x_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/dp2/a\[31:0\]} \
{/TESTBED/u_CNN/dp2/b\[31:0\]} \
{/TESTBED/u_CNN/dp2/c\[31:0\]} \
{/TESTBED/u_CNN/dp2/d\[31:0\]} \
{/TESTBED/u_CNN/dp2/e\[31:0\]} \
{/TESTBED/u_CNN/dp2/f\[31:0\]} \
{/TESTBED/u_CNN/dp2/g\[31:0\]} \
{/TESTBED/u_CNN/dp2/h\[31:0\]} \
{/TESTBED/u_CNN/dp2/z\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 57 58 )} 
wvSetPosition -win $_nWave1 {("G1" 58)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 392496.936455 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 404569.075187 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 430322.971149 -snap {("G1" 58)}
wvSetCursor -win $_nWave1 468149.005843 -snap {("G1" 58)}
wvSetCursor -win $_nWave1 486257.213941 -snap {("G1" 58)}
wvSelectSignal -win $_nWave1 {( "G1" 58 )} 
wvExpandBus -win $_nWave1 {("G1" 58)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 451248.011618 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 446016.751501 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 443199.919130 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 437566.254388 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 440181.884447 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 446016.751501 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 437968.659013 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 431328.982710 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 436359.040515 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 439779.479823 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 444407.133003 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 445815.549189 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 451650.416243 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 456076.867111 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 453260.034740 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 449034.786184 -snap {("G1" 67)}
wvSetCursor -win $_nWave1 457082.878672 -snap {("G1" 66)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/dp2"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvSetPosition -win $_nWave1 {("G1" 65)}
wvSetPosition -win $_nWave1 {("G1" 65)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/Img_array\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[5\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[4\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[3\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[0\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/act_out_s\[7:0\]} \
{/TESTBED/u_CNN/fc_out_s\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/x_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[5\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[4\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[3\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[2\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[1\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[0\]\[5:0\]} \
{/TESTBED/u_CNN/max_out\[7:0\]} \
{/TESTBED/u_CNN/x_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/dp2/a\[31:0\]} \
{/TESTBED/u_CNN/dp2/b\[31:0\]} \
{/TESTBED/u_CNN/dp2/c\[31:0\]} \
{/TESTBED/u_CNN/dp2/d\[31:0\]} \
{/TESTBED/u_CNN/dp2/e\[31:0\]} \
{/TESTBED/u_CNN/dp2/f\[31:0\]} \
{/TESTBED/u_CNN/dp2/g\[31:0\]} \
{/TESTBED/u_CNN/dp2/h\[31:0\]} \
{/TESTBED/u_CNN/dp2/z\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 65 )} 
wvSetPosition -win $_nWave1 {("G1" 65)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 65 )} 
wvExpandBus -win $_nWave1 {("G1" 65)}
wvSetCursor -win $_nWave1 408794.323744 -snap {("G1" 73)}
wvSetCursor -win $_nWave1 424488.104095 -snap {("G1" 72)}
wvSetCursor -win $_nWave1 407788.312183 -snap {("G1" 69)}
wvSetCursor -win $_nWave1 408794.323744 -snap {("G1" 73)}
wvSetCursor -win $_nWave1 423482.092534 -snap {("G1" 72)}
wvSetCursor -win $_nWave1 410806.346866 -snap {("G1" 68)}
wvSetCursor -win $_nWave1 413421.976924 -snap {("G1" 70)}
wvSetCursor -win $_nWave1 408190.716807 -snap {("G1" 73)}
wvSetCursor -win $_nWave1 422476.080973 -snap {("G1" 72)}
wvSetCursor -win $_nWave1 414025.583861 -snap {("G1" 69)}
wvSetCursor -win $_nWave1 433944.612769 -snap {("G1" 68)}
wvSetCursor -win $_nWave1 457082.878672 -snap {("G1" 76)}
wvSetCursor -win $_nWave1 462112.936477 -snap {("G1" 76)}
wvSetCursor -win $_nWave1 466941.791970 -snap {("G1" 76)}
wvSetCursor -win $_nWave1 471569.445151 -snap {("G1" 76)}
wvSetCursor -win $_nWave1 475995.896019 -snap {("G1" 76)}
wvSetCursor -win $_nWave1 457082.878672 -snap {("G1" 76)}
wvSetCursor -win $_nWave1 450845.606994 -snap {("G1" 76)}
wvSetCursor -win $_nWave1 447626.369999 -snap {("G1" 76)}
wvSetCursor -win $_nWave1 452857.630116 -snap {("G1" 76)}
wvSetCursor -win $_nWave1 445413.144564 -snap {("G1" 76)}
wvSetCursor -win $_nWave1 448632.381560 -snap {("G1" 76)}
wvSetCursor -win $_nWave1 441389.098320 -snap {("G1" 76)}
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 448028.774623 -snap {("G1" 74)}
wvSetCursor -win $_nWave1 452254.023179 -snap {("G1" 74)}
wvSetCursor -win $_nWave1 448632.381560 -snap {("G1" 74)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/dp2"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvSetPosition -win $_nWave1 {("G1" 75)}
wvSetPosition -win $_nWave1 {("G1" 75)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/Img_array\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[5\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[4\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[3\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[0\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/act_out_s\[7:0\]} \
{/TESTBED/u_CNN/fc_out_s\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/x_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[5\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[4\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[3\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[2\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[1\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[0\]\[5:0\]} \
{/TESTBED/u_CNN/max_out\[7:0\]} \
{/TESTBED/u_CNN/max_out\[7\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[6\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[5\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[4\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[3\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[2\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[1\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[0\]\[31:0\]} \
{/TESTBED/u_CNN/max_xcnt\[6:0\]} \
{/TESTBED/u_CNN/max_ycnt\[6:0\]} \
{/TESTBED/u_CNN/x_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/dp2/a\[31:0\]} \
{/TESTBED/u_CNN/dp2/b\[31:0\]} \
{/TESTBED/u_CNN/dp2/c\[31:0\]} \
{/TESTBED/u_CNN/dp2/d\[31:0\]} \
{/TESTBED/u_CNN/dp2/e\[31:0\]} \
{/TESTBED/u_CNN/dp2/f\[31:0\]} \
{/TESTBED/u_CNN/dp2/g\[31:0\]} \
{/TESTBED/u_CNN/dp2/h\[31:0\]} \
{/TESTBED/u_CNN/dp2/z\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 74 75 )} 
wvSetPosition -win $_nWave1 {("G1" 75)}
wvGetSignalClose -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 451248.011618 -snap {("G1" 74)}
wvSetCursor -win $_nWave1 446620.358438 -snap {("G1" 74)}
wvSetCursor -win $_nWave1 451248.011618 -snap {("G1" 74)}
wvSetCursor -win $_nWave1 447022.763062 -snap {("G1" 74)}
wvSetCursor -win $_nWave1 451248.011618 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 448632.381560 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 450845.606994 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 449034.786184 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 451650.416243 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 447022.763062 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 451650.416243 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 447022.763062 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 443401.121442 -snap {("G1" 77)}
wvSetCursor -win $_nWave1 445815.549189 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 443199.919130 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 446419.156125 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 443803.526067 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 447626.369999 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 444809.537628 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 447022.763062 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 450845.606994 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 447626.369999 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 451650.416243 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 448229.976935 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 452656.427804 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 448632.381560 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 452656.427804 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 448028.774623 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 451248.011618 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 447022.763062 -snap {("G1" 75)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 450070.978092 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 447656.550345 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 451278.191965 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 456911.856707 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 461740.712199 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 466569.567692 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 471800.827810 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 474416.457868 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 452686.608150 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 448662.561906 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 451680.596589 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 456107.047458 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 460734.700638 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 465563.556131 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 462947.926073 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 466569.567692 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 463350.330697 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 466971.972317 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 471599.625497 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 478440.504112 -snap {("G1" 78)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 450272.180404 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 438803.648608 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 441821.683291 -snap {("G1" 78)}
wvSetCursor -win $_nWave1 433371.186179 -snap {("G1" 78)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 438200.041671 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 441821.683291 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 438803.648608 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 433773.590803 -snap {("G1" 13)}
wvSetCursor -win $_nWave1 428743.532998 -snap {("G1" 13)}
wvGetSignalOpen -win $_nWave1
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
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 442425.290228 -snap {("G1" 77)}
wvSetCursor -win $_nWave1 455503.440521 -snap {("G1" 77)}
wvSetCursor -win $_nWave1 472203.232434 -snap {("G1" 77)}
wvSetCursor -win $_nWave1 476830.885614 -snap {("G1" 76)}
wvSelectSignal -win $_nWave1 {( "G1" 58 )} 
wvSelectSignal -win $_nWave1 {( "G1" 58 )} 
wvSetRadix -win $_nWave1 -format 754
wvSelectSignal -win $_nWave1 {( "G1" 57 )} 
wvSetPosition -win $_nWave1 {("G1" 57)}
wvExpandBus -win $_nWave1 {("G1" 57)}
wvSetPosition -win $_nWave1 {("G1" 81)}
wvSelectSignal -win $_nWave1 {( "G1" 57 )} 
wvSelectSignal -win $_nWave1 {( "G1" 57 )} 
wvSetRadix -win $_nWave1 -format 754
wvSelectSignal -win $_nWave1 {( "G1" 64 )} 
wvSelectSignal -win $_nWave1 {( "G1" 65 )} 
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 482263.348044 -snap {("G1" 55)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 509023.255567 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 502584.781576 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 517876.157304 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 523308.619733 -snap {("G1" 55)}
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
wvSetCursor -win $_nWave1 1008860.099656 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 1010872.122778 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 1020328.631451 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 1004433.648787 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 998598.781733 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 988136.261499 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 984112.215255 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 987733.856875 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 983106.203694 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 986727.845314 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 978277.348201 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 982502.596757 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 978880.955138 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 966808.816405 -snap {("G1" 83)}
wvSetCursor -win $_nWave1 977271.336640 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 981496.585196 -snap {("G1" 84)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 986526.643001 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 992965.116992 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 975661.718142 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 959967.937790 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 949505.417556 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 935220.053389 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 931598.411770 -snap {("G1" 81)}
wvSetCursor -win $_nWave1 940018.728535 -snap {("G1" 83)}
wvSetCursor -win $_nWave1 933177.849921 -snap {("G1" 82)}
wvSetCursor -win $_nWave1 926739.375930 -snap {("G1" 82)}
wvSetCursor -win $_nWave1 938811.514662 -snap {("G1" 82)}
wvSetCursor -win $_nWave1 925330.959745 -snap {("G1" 82)}
wvSetCursor -win $_nWave1 918490.081130 -snap {("G1" 82)}
wvSetCursor -win $_nWave1 910039.584017 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 922111.722749 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 928952.601364 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 934183.861482 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 945652.393277 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 878783.228319 -snap {("G1" 81)}
wvSetCursor -win $_nWave1 886630.118495 -snap {("G1" 82)}
wvSetCursor -win $_nWave1 909365.979774 -snap {("G1" 82)}
wvSetCursor -win $_nWave1 918822.488448 -snap {("G1" 82)}
wvSetCursor -win $_nWave1 926669.378623 -snap {("G1" 82)}
wvSetCursor -win $_nWave1 891458.973988 -snap {("G1" 82)}
wvSetCursor -win $_nWave1 875161.586700 -snap {("G1" 82)}
wvSetCursor -win $_nWave1 860876.222533 -snap {("G1" 82)}
wvSetCursor -win $_nWave1 856248.569353 -snap {("G1" 82)}
wvSelectSignal -win $_nWave1 {( "G1" 64 )} 
wvSelectSignal -win $_nWave1 {( "G1" 80 81 )} 
wvSetCursor -win $_nWave1 871338.742768 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 866107.482650 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 872344.754329 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 859266.604036 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 864095.459528 -snap {("G1" 83)}
wvSetCursor -win $_nWave1 861479.829470 -snap {("G1" 82)}
wvSetCursor -win $_nWave1 857254.580914 -snap {("G1" 82)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 295738.282078 505535.524920
wvSetCursor -win $_nWave1 332669.716131 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 337341.765017 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 343793.642051 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 352470.304268 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 370491.064258 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 387844.388692 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 428557.957557 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 432378.288983 -snap {("G1" 83)}
wvSetCursor -win $_nWave1 412132.743810 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 420586.927508 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 430598.460836 -snap {("G1" 84)}
wvSetCursor -win $_nWave1 445727.000087 -snap {("G1" 84)}
wvSelectSignal -win $_nWave1 {( "G1" 80 )} 
wvSelectSignal -win $_nWave1 {( "G1" 80 81 )} 
wvSetCursor -win $_nWave1 452178.877120 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 436382.902314 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 442167.343792 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 444614.607495 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 447506.828234 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 451511.441565 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 456628.447488 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 460633.060819 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 468197.330444 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 472424.422293 -snap {("G1" 80)}
wvSetCursor -win $_nWave1 477096.471180 -snap {("G1" 80)}
wvResizeWindow -win $_nWave1 54 237 960 332
wvResizeWindow -win $_nWave1 961 31 958 1000
wvSelectSignal -win $_nWave1 {( "G1" 63 )} 
wvSelectSignal -win $_nWave1 {( "G1" 70 )} 
wvSelectSignal -win $_nWave1 {( "G1" 65 )} 
wvSelectSignal -win $_nWave1 {( "G1" 66 )} 
wvSelectSignal -win $_nWave1 {( "G1" 67 )} 
wvSelectSignal -win $_nWave1 {( "G1" 70 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvResizeWindow -win $_nWave1 54 237 960 332
wvResizeWindow -win $_nWave1 1 31 958 1000
wvSelectSignal -win $_nWave1 {( "G1" 63 )} 
wvSelectSignal -win $_nWave1 {( "G1" 70 )} 
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvResizeWindow -win $_nWave1 0 23 1920 1009
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/dp2/U1"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/sum3"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/sum2"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/sum1"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/sum2"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/sum1"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/sum3"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/sum1"
wvSetPosition -win $_nWave1 {("G1" 84)}
wvSetPosition -win $_nWave1 {("G1" 84)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/Img_array\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[5\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[4\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[3\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[0\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/act_out_s\[7:0\]} \
{/TESTBED/u_CNN/fc_out_s\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/x_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[5:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[5\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[4\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[3\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[2\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[1\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[0\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[5\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[4\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[3\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[2\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[1\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[0\]\[5:0\]} \
{/TESTBED/u_CNN/max_out\[7:0\]} \
{/TESTBED/u_CNN/max_out\[7\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[6\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[5\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[4\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[3\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[2\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[1\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[0\]\[31:0\]} \
{/TESTBED/u_CNN/max_xcnt\[6:0\]} \
{/TESTBED/u_CNN/max_ycnt\[6:0\]} \
{/TESTBED/u_CNN/sum1/a\[31:0\]} \
{/TESTBED/u_CNN/sum1/b\[31:0\]} \
{/TESTBED/u_CNN/sum1/c\[31:0\]} \
{/TESTBED/u_CNN/x_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/dp2/a\[31:0\]} \
{/TESTBED/u_CNN/dp2/b\[31:0\]} \
{/TESTBED/u_CNN/dp2/c\[31:0\]} \
{/TESTBED/u_CNN/dp2/d\[31:0\]} \
{/TESTBED/u_CNN/dp2/e\[31:0\]} \
{/TESTBED/u_CNN/dp2/f\[31:0\]} \
{/TESTBED/u_CNN/dp2/g\[31:0\]} \
{/TESTBED/u_CNN/dp2/h\[31:0\]} \
{/TESTBED/u_CNN/dp2/z\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 82 83 84 )} 
wvSetPosition -win $_nWave1 {("G1" 84)}
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/sum3"
wvSetPosition -win $_nWave1 {("G1" 87)}
wvSetPosition -win $_nWave1 {("G1" 87)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/Img\[31:0\]} \
{/TESTBED/Kernel_ch1\[31:0\]} \
{/TESTBED/Kernel_ch2\[31:0\]} \
{/TESTBED/Opt} \
{/TESTBED/Weight\[31:0\]} \
{/TESTBED/clk} \
{/TESTBED/in_valid} \
{/TESTBED/out\[31:0\]} \
{/TESTBED/out_valid} \
{/TESTBED/rst_n} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[2\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[1\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[5\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[4\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[3\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[2\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[1\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_2\[0\]\[0\]\[5:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/Img_array\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[5\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[4\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[3\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[0\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/act_out_s\[7:0\]} \
{/TESTBED/u_CNN/fc_out_s\[2:0\]} \
{/TESTBED/u_CNN/Img_array\[2\]\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[1\]\[6:0\]} \
{/TESTBED/u_CNN/x_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_1\[2:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[5:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[5\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[4\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[3\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[2\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[1\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch1_s\[0\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[5\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[4\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[3\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[2\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[1\]\[5:0\]} \
{/TESTBED/u_CNN/out_ch2_s\[0\]\[5:0\]} \
{/TESTBED/u_CNN/max_out\[7:0\]} \
{/TESTBED/u_CNN/max_out\[7\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[6\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[5\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[4\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[3\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[2\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[1\]\[31:0\]} \
{/TESTBED/u_CNN/max_out\[0\]\[31:0\]} \
{/TESTBED/u_CNN/max_xcnt\[6:0\]} \
{/TESTBED/u_CNN/max_ycnt\[6:0\]} \
{/TESTBED/u_CNN/sum1/a\[31:0\]} \
{/TESTBED/u_CNN/sum1/b\[31:0\]} \
{/TESTBED/u_CNN/sum1/c\[31:0\]} \
{/TESTBED/u_CNN/sum3/a\[31:0\]} \
{/TESTBED/u_CNN/sum3/b\[31:0\]} \
{/TESTBED/u_CNN/sum3/c\[31:0\]} \
{/TESTBED/u_CNN/x_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/y_cnt_2\[2:0\]} \
{/TESTBED/u_CNN/cnt\[6:0\]} \
{/TESTBED/u_CNN/Img_array\[0\]\[6:0\]} \
{/TESTBED/u_CNN/convolution_array_1o\[1:0\]} \
{/TESTBED/u_CNN/convolution_array_2o\[1:0\]} \
{/TESTBED/u_CNN/dp2/a\[31:0\]} \
{/TESTBED/u_CNN/dp2/b\[31:0\]} \
{/TESTBED/u_CNN/dp2/c\[31:0\]} \
{/TESTBED/u_CNN/dp2/d\[31:0\]} \
{/TESTBED/u_CNN/dp2/e\[31:0\]} \
{/TESTBED/u_CNN/dp2/f\[31:0\]} \
{/TESTBED/u_CNN/dp2/g\[31:0\]} \
{/TESTBED/u_CNN/dp2/h\[31:0\]} \
{/TESTBED/u_CNN/dp2/z\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 85 86 87 )} 
wvSetPosition -win $_nWave1 {("G1" 87)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 386473.366823 -snap {("G1" 84)}
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
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 93 94 95 96 97 98 )} 
wvSelectSignal -win $_nWave1 {( "G1" 96 )} 
wvSelectSignal -win $_nWave1 {( "G1" 94 95 96 97 98 99 100 101 102 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 87)}
wvSelectSignal -win $_nWave1 {( "G1" 84 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 392042.659128 -snap {("G1" 88)}
wvSelectSignal -win $_nWave1 {( "G1" 82 )} 
wvSelectSignal -win $_nWave1 {( "G1" 83 )} 
wvSelectSignal -win $_nWave1 {( "G1" 83 )} 
wvSelectSignal -win $_nWave1 {( "G1" 83 )} 
wvSelectSignal -win $_nWave1 {( "G1" 83 )} 
wvSelectSignal -win $_nWave1 {( "G1" 84 )} 
wvSelectSignal -win $_nWave1 {( "G1" 82 83 84 85 86 87 )} 
wvSelectSignal -win $_nWave1 {( "G1" 81 )} 
wvSelectSignal -win $_nWave1 {( "G1" 82 83 84 85 86 87 )} 
wvSelectSignal -win $_nWave1 {( "G1" 82 83 84 85 86 87 )} 
wvSetRadix -win $_nWave1 -format 754
wvSetCursor -win $_nWave1 382659.025476 -snap {("G1" 85)}
wvSetCursor -win $_nWave1 386752.993066 -snap {("G1" 90)}
wvSetCursor -win $_nWave1 382983.943538 -snap {("G1" 90)}
wvSetCursor -win $_nWave1 387272.861967 -snap {("G1" 90)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 64 )} 
wvSelectSignal -win $_nWave1 {( "G1" 64 )} 
wvSetPosition -win $_nWave1 {("G1" 64)}
wvCollapseBus -win $_nWave1 {("G1" 64)}
wvSetPosition -win $_nWave1 {("G1" 64)}
wvSetPosition -win $_nWave1 {("G1" 81)}
wvSelectSignal -win $_nWave1 {( "G1" 65 )} 
wvSetPosition -win $_nWave1 {("G1" 65)}
wvCollapseBus -win $_nWave1 {("G1" 65)}
wvSetPosition -win $_nWave1 {("G1" 65)}
wvSetPosition -win $_nWave1 {("G1" 73)}
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSetPosition -win $_nWave1 {("G1" 39)}
wvCollapseBus -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 39)}
wvSetPosition -win $_nWave1 {("G1" 63)}
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvCollapseBus -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 57)}
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvSetPosition -win $_nWave1 {("G1" 24)}
wvCollapseBus -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 24)}
wvSetPosition -win $_nWave1 {("G1" 51)}
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 16 )} 
wvSetPosition -win $_nWave1 {("G1" 16)}
wvCollapseBus -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 16)}
wvSetPosition -win $_nWave1 {("G1" 42)}
wvSetCursor -win $_nWave1 375055.942807 -snap {("G1" 45)}
wvSetCursor -win $_nWave1 330964.561691 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 344871.054777 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 335968.299858 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 329599.905828 -snap {("G1" 44)}
wvSetCursor -win $_nWave1 328365.217189 -snap {("G1" 43)}
wvSetCursor -win $_nWave1 331939.315879 -snap {("G1" 43)}
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSetRadix -win $_nWave1 -format 754
wvSelectSignal -win $_nWave1 {( "G1" 13 14 15 )} 
wvSetCursor -win $_nWave1 337527.906559 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 333174.004518 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 337073.021271 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 333109.020905 -snap {("G1" 40)}
wvSetCursor -win $_nWave1 336163.250695 -snap {("G1" 40)}
wvSetCursor -win $_nWave1 332264.233942 -snap {("G1" 40)}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvExpandBus -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 48)}
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetPosition -win $_nWave1 {("G1" 13)}
wvExpandBus -win $_nWave1 {("G1" 13)}
wvSetPosition -win $_nWave1 {("G1" 54)}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvExpandBus -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 60)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 328170.266352 -snap {("G1" 42)}
wvSetCursor -win $_nWave1 332459.184780 -snap {("G1" 42)}
wvSetCursor -win $_nWave1 327845.348289 -snap {("G1" 42)}
wvSetCursor -win $_nWave1 332654.135618 -snap {("G1" 42)}
wvSetCursor -win $_nWave1 337202.988496 -snap {("G1" 42)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 55 )} 
wvSelectSignal -win $_nWave1 {( "G1" 55 )} 
wvSetPosition -win $_nWave1 {("G1" 55)}
wvExpandBus -win $_nWave1 {("G1" 55)}
wvSetPosition -win $_nWave1 {("G1" 92)}
wvSelectSignal -win $_nWave1 {( "G1" 55 )} 
wvSetPosition -win $_nWave1 {("G1" 55)}
wvCollapseBus -win $_nWave1 {("G1" 55)}
wvSetPosition -win $_nWave1 {("G1" 55)}
wvSetPosition -win $_nWave1 {("G1" 60)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/dp2"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/sum3"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/u_CNN/sum1"
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
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 332979.053680 -snap {("G1" 53)}
wvSelectSignal -win $_nWave1 {( "G1" 55 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 337657.873784 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 332134.266717 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 337332.955721 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 332979.053680 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 337527.906559 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 332784.102843 -snap {("G1" 53)}
wvSetCursor -win $_nWave1 336878.070433 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 332459.184780 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 326805.610488 -snap {("G1" 42)}
wvSetCursor -win $_nWave1 327520.430226 -snap {("G1" 42)}
wvSetCursor -win $_nWave1 332264.233942 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 337397.939334 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 340452.169124 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 343311.448076 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 346885.546766 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 350069.743781 -snap {("G1" 54)}
wvSetCursor -win $_nWave1 353318.924409 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 357737.810062 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 362091.712103 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 364950.991055 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 367745.286395 -snap {("G1" 56)}
wvSetCursor -win $_nWave1 370084.696447 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 376193.156027 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 402050.135461 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 407313.808077 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 410433.021480 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 433963.587585 -snap {("G1" 55)}
wvSetCursor -win $_nWave1 429349.751093 -snap {("G1" 56)}
wvSetCursor -win $_nWave1 437472.702662 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 442476.440829 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 446310.473969 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 451639.130199 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 460411.917893 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 463986.016583 -snap {("G1" 57)}
wvSetCursor -win $_nWave1 469184.705587 -snap {("G1" 56)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 33 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvExit
