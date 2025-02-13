wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/RAID2/COURSE/iclab/iclab143/Lab10/01_RTL/Program.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/\$unit_0x0359e3aa"
wvGetSignalSetScope -win $_nWave1 "/TESTBED"
wvRestoreSignal -win $_nWave1 \
           "/RAID2/COURSE/iclab/iclab143/Lab09/Exercise/01_RTL/signalnew.rc" \
           -overWriteAutoAlias on -appendSignals on
wvGetSignalOpen -win $_nWave1
wvExit
