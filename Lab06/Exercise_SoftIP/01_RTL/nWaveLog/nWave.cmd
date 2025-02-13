wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/RAID2/COURSE/iclab/iclab143/Lab06/Exercise_SoftIP/01_RTL/HAMMING_IP_demo.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/IP_HAMMING/IN_code\[8:0\]} \
{/TESTBED/IP_HAMMING/OUT_code\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetRadix -win $_nWave1 -format Oct
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetRadix -win $_nWave1 -format Bin
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/IP_HAMMING/IN_code\[8:0\]} \
{/TESTBED/IP_HAMMING/OUT_code\[4:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/input_store\[8:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvExpandBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 89860.294118 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvExpandBus -win $_nWave1 {("G1" 14)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 95058.823529 157738.235294
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvCollapseBus -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvExpandBus -win $_nWave1 {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvCollapseBus -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvExpandBus -win $_nWave1 {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvCollapseBus -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvExpandBus -win $_nWave1 {("G1" 14)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvCollapseBus -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 125770.059374 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 84513.235294 124764.705882
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
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
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/IP_HAMMING/IN_code\[8:0\]} \
{/TESTBED/IP_HAMMING/OUT_code\[4:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[7\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[6\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[5\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[4\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[3\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[2\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[1\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[0\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/input_store\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvExpandBus -win $_nWave1 {("G2" 1)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 91197.058824 117189.705882
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP/genblk1"
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/IP_HAMMING/IN_code\[8:0\]} \
{/TESTBED/IP_HAMMING/OUT_code\[4:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[7\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[6\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[5\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[4\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[3\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[2\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[1\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[0\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/input_store\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[2\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[1\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/genblk1/loop1\[0\]/tmp_re} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/IP_HAMMING/IN_code\[8:0\]} \
{/TESTBED/IP_HAMMING/OUT_code\[4:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[7\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[6\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[5\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[4\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[3\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[2\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[1\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[0\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/input_store\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[2\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[1\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/genblk1/loop1\[0\]/tmp_re} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/genblk1/loop1\[1\]/tmp_re} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 102577.529294 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 103342.018913 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 \
           "/TESTBED/IP_HAMMING/I_HAMMING_IP/genblk1/loop2\[0\]"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP/genblk1"
wvGetSignalSetScope -win $_nWave1 \
           "/TESTBED/IP_HAMMING/I_HAMMING_IP/genblk1/loop2\[1\]"
wvGetSignalSetScope -win $_nWave1 \
           "/TESTBED/IP_HAMMING/I_HAMMING_IP/genblk1/loop2\[0\]"
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/IP_HAMMING/IN_code\[8:0\]} \
{/TESTBED/IP_HAMMING/OUT_code\[4:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[7\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[6\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[5\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[4\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[3\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[2\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[1\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[0\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/input_store\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[2\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[1\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/genblk1/loop2\[0\]/tmp} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 94316.176471 141994.117647
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 95950.000000 127438.235294
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetCursor -win $_nWave1 113651.608210 -snap {("G1" 11)}
wvSelectSignal -win $_nWave1 {( "G1" 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/IP_HAMMING/IN_code\[8:0\]} \
{/TESTBED/IP_HAMMING/OUT_code\[4:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[7\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[6\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[5\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[4\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[3\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[2\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[1\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[0\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/input_store\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[2\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[1\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/TESTBED/I_PATTERN/PATNUM\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/IP_HAMMING/IN_code\[8:0\]} \
{/TESTBED/IP_HAMMING/OUT_code\[4:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[7\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[6\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[5\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[4\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[3\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[2\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[1\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[0\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/input_store\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[2\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[1\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/TESTBED/I_PATTERN/PATNUM\[31:0\]} \
{/TESTBED/I_PATTERN/patcount\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetRadix -win $_nWave1 -format UDec
wvZoom -win $_nWave1 1706062.834225 1915151.737968
wvSetCursor -win $_nWave1 1779299.856658 -snap {("G4" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/IP_HAMMING/IN_code\[8:0\]} \
{/TESTBED/IP_HAMMING/OUT_code\[4:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[7\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[6\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[5\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[4\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[3\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[2\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[1\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[0\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/input_store\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[2\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[1\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/TESTBED/I_PATTERN/PATNUM\[31:0\]} \
{/TESTBED/I_PATTERN/patcount\[31:0\]} \
{/TESTBED/IP_HAMMING/IN_code\[10:0\]} \
{/TESTBED/IP_HAMMING/OUT_code\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 3 4 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[7\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[6\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[5\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[4\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[3\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[2\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[1\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[0\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/input_store\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[2\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[1\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/TESTBED/I_PATTERN/PATNUM\[31:0\]} \
{/TESTBED/I_PATTERN/patcount\[31:0\]} \
{/TESTBED/IP_HAMMING/IN_code\[10:0\]} \
{/TESTBED/IP_HAMMING/OUT_code\[6:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[10:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetPosition -win $_nWave1 {("G4" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvExpandBus -win $_nWave1 {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "G4" 6 7 8 9 10 11 12 13 14 15 16 )} 
wvSetRadix -win $_nWave1 -format UDec
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvSetPosition -win $_nWave1 {("G4" 17)}
wvSetPosition -win $_nWave1 {("G4" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[7\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[6\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[5\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[4\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[3\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[2\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[1\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[0\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/input_store\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[2\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[1\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/TESTBED/I_PATTERN/PATNUM\[31:0\]} \
{/TESTBED/I_PATTERN/patcount\[31:0\]} \
{/TESTBED/IP_HAMMING/IN_code\[10:0\]} \
{/TESTBED/IP_HAMMING/OUT_code\[6:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[10:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[10\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[9\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[7\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[6\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[5\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[4\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[3\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[2\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[1\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[0\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 17 )} 
wvSetPosition -win $_nWave1 {("G4" 17)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 17 )} 
wvExpandBus -win $_nWave1 {("G4" 17)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 17)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvSetPosition -win $_nWave1 {("G4" 18)}
wvSetPosition -win $_nWave1 {("G4" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[7\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[6\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[5\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[4\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[3\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[2\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[1\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[0\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/input_store\[8:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[2\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[1\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/TESTBED/I_PATTERN/PATNUM\[31:0\]} \
{/TESTBED/I_PATTERN/patcount\[31:0\]} \
{/TESTBED/IP_HAMMING/IN_code\[10:0\]} \
{/TESTBED/IP_HAMMING/OUT_code\[6:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[10:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[10\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[9\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[8\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[7\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[6\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[5\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[4\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[3\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[2\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[1\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[0\]\[3:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
{/TESTBED/I_PATTERN/ans_code\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 18 )} 
wvSetPosition -win $_nWave1 {("G4" 18)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 18 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSetCursor -win $_nWave1 1842473.776774 -snap {("G4" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomAll -win $_nWave1
wvZoom -win $_nWave1 649829.679144 785166.978610
wvSetCursor -win $_nWave1 680950.020733 -snap {("G4" 18)}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} {( "G2" 1 2 3 \
           4 5 )} {( "G4" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/TESTBED/code_in\[11:0\]} \
{/TESTBED/code_out\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 2 )} 
wvSetRadix -win $_nWave1 -format Bin
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/I_PATTERN"
wvGetSignalSetScope -win $_nWave1 \
           "/TESTBED/IP_HAMMING/I_HAMMING_IP/genblk1/loop2\[1\]"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING/I_HAMMING_IP"
wvGetSignalSetScope -win $_nWave1 "/TESTBED/IP_HAMMING"
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/TESTBED/code_in\[11:0\]} \
{/TESTBED/code_out\[7:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/data\[11:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/input_store\[11:0\]} \
{/TESTBED/IP_HAMMING/I_HAMMING_IP/result\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G4" 5)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvExpandBus -win $_nWave1 {("G4" 5)}
wvExit
