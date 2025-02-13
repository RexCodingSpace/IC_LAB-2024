debImport "/RAID2/COURSE/iclab/iclab143/Lab02/Exercise/01_RTL/BB.v" "-f" \
          "/RAID2/COURSE/iclab/iclab143/Lab02/Exercise/01_RTL/filelist.f" \
          "/RAID2/COURSE/iclab/iclab143/Lab02/Exercise/01_RTL/PATTERN.v" \
          "/RAID2/COURSE/iclab/iclab143/Lab02/Exercise/01_RTL/TESTBED.v" "-sv" \
          -path {/RAID2/COURSE/iclab/iclab143/Lab02/Exercise/01_RTL}
srcHBSelect "TESTBED" -win $_nTrace1
srcHBSelect "BB" -win $_nTrace1
srcHBSelect "TESTBED" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED" -delim "."
srcHBSelect "TESTBED" -win $_nTrace1
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED.u_PATTERN" -delim "."
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED.u_PATTERN" -delim "."
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcHBSelect "BB" -win $_nTrace1
srcHBSelect "TESTBED" -win $_nTrace1
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
verdiShowWindow -win $_Verdi_1 -switchFS
verdiShowWindow -win $_Verdi_1 -switchFS
verdiWindowResize -win $_Verdi_1 "69" "65" "900" "700"
verdiWindowResize -win $_Verdi_1 "69" "65" "905" "695"
schCreateWindow -delim "." -win $_nSchema1 -scope "TESTBED.u_PATTERN"
schLastView -win $_nSchema2
schPopViewUp -win $_nSchema2
schPushViewIn -win $_nSchema2
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_2
schFit -win $_nSchema2
verdiDockWidgetHide -dock widgetDock_<Message>
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
viaOneSearchClose
schZoom {3716} {9222} {4949} {9541} -win $_nSchema2
schFit -win $_nSchema2
schSelect -win $_nSchema2 -inst "PATTERN:Always1:53:61:NonSyn"
schSelect -win $_nSchema2 -inst "PATTERN:Always1:53:61:NonSyn"
schPushViewIn -win $_nSchema2
srcSelect -win $_nTrace1 -range {53 61 1 3 1 1}
verdiDockWidgetSetCurTab -dock windowDock_nSchema_2
schSelect -win $_nSchema2 -inst "PATTERN:Always0:34:34:Combo"
schPushViewIn -win $_nSchema2
srcSelect -win $_nTrace1 -range {34 34 1 18 1 1}
verdiDockWidgetSetCurTab -dock windowDock_nSchema_2
schSelect -win $_nSchema2 -signal "clk"
schFocusConnection -win $_nSchema2
schSelect -win $_nSchema2 -signal "clk"
schFocusConnection -win $_nSchema2
schSelect -win $_nSchema2 -port "clk"
schPopViewUp -win $_nSchema2
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_2
schFit -win $_nSchema2
schFit -win $_nSchema2
schFit -win $_nSchema2
schFit -win $_nSchema2
schPushViewIn -win $_nSchema2
schPopViewUp -win $_nSchema2
schLastView -win $_nSchema2
schPopViewUp -win $_nSchema2
schPushViewIn -win $_nSchema2
schSetOptions -win $_nSchema2 -minimap on
schSetOptions -win $_nSchema2 -minimap off
schZoomOut -win $_nSchema2
schZoomOut -win $_nSchema2
schZoomOut -win $_nSchema2
schZoomOut -win $_nSchema2
schZoomOut -win $_nSchema2
schZoomOut -win $_nSchema2
schZoomIn -win $_nSchema2
schZoomIn -win $_nSchema2
schZoomIn -win $_nSchema2
schZoomIn -win $_nSchema2
schZoomIn -win $_nSchema2
schZoomOut -win $_nSchema2
schZoomOut -win $_nSchema2
schZoomOut -win $_nSchema2
schPopViewUp -win $_nSchema2
schPopViewUp -win $_nSchema2
schPopViewUp -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schPushViewIn -win $_nSchema2
schPushViewIn -win $_nSchema2
schPushViewIn -win $_nSchema2
schPushViewIn -win $_nSchema2
schPopViewUp -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schLastView -win $_nSchema2
schSelect -win $_nSchema2 -inst "u_PATTERN"
schPushViewIn -win $_nSchema2
schSelect -win $_nSchema2 -port "out_valid"
schPopViewUp -win $_nSchema2
schSelect -win $_nSchema2 -inst "u_PATTERN"
schPushViewIn -win $_nSchema2
schSelect -win $_nSchema2 -inst "PATTERN:Init0:63:94:Init"
schPushViewIn -win $_nSchema2
srcSelect -win $_nTrace1 -range {63 94 1 3 1 1}
verdiDockWidgetSetCurTab -dock windowDock_nSchema_2
schSelect -win $_nSchema2 -inst "PATTERN:Init0:63:94:Init"
schPushViewIn -win $_nSchema2
srcSelect -win $_nTrace1 -range {63 94 1 3 1 1}
srcDeselectAll -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_2
schSelect -win $_nSchema2 -inst "PATTERN:Init1:37:37:Init"
schPushViewIn -win $_nSchema2
srcSelect -win $_nTrace1 -range {37 37 1 11 1 1}
verdiDockWidgetSetCurTab -dock windowDock_nSchema_2
srcHBSelect "BB" -win $_nTrace1
srcSetScope -win $_nTrace1 "BB" -delim "."
srcHBSelect "BB" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "BB"
schSelect -win $_nSchema3 -inst "BB\(@1\):FSM0:47:358:FSM"
schPushViewIn -win $_nSchema3
fsmSetCurrentWindow -win $_nState4
fsmResizeWindow 0 27 1592 879 -win $_nState4
fsmResizeWindow 0 27 1592 879 -win $_nState4
fsmResizeWindow 0 27 1592 879 -win $_nState4
fsmSelect -add -state "Others" -win $_nState4
fsmSelect -state "IDLE" -win $_nState4
fsmSelect -state "Others" -win $_nState4
fsmSelect -state "IDLE" -win $_nState4
fsmSelect   -state "one_out" "END_GAME" "two_out" -win $_nState4
fsmSelect -state "IDLE" -win $_nState4
fsmDeselectAll -nonSticky -win $_nState4
fsmSelect -add -state "one_out" -win $_nState4
fsmSelect   -state "IDLE" "two_out" -win $_nState4
fsmSelect -state "END_GAME" -win $_nState4
fsmSelect -state "IDLE" -win $_nState4
fsmSelect -state "END_GAME" -win $_nState4
fsmSelect -state "IDLE" -win $_nState4
fsmDeselectAll -nonSticky -win $_nState4
srcBackwardHistory -win $_nTrace1
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
schCloseWindow -win $_nSchema2
schCloseWindow -win $_nSchema3
fsmCloseWindow -win $_nState4
srcHBSelect "BB" -win $_nTrace1
srcSetScope -win $_nTrace1 "BB" -delim "."
srcHBSelect "BB" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "BB"
schSelect -win $_nSchema5 -inst "BB\(@1\):Always3:134:140:Reg"
schPushViewIn -win $_nSchema5
srcSelect -win $_nTrace1 -range {134 140 1 2 1 1}
srcDeselectAll -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_5
schSelect -win $_nSchema5 -inst "BB\(@1\):Always2:128:133:Reg"
schSelect -win $_nSchema5 -inst "BB\(@1\):Always2:128:133:Reg"
schPushViewIn -win $_nSchema5
srcSelect -win $_nTrace1 -range {128 133 1 2 1 1}
verdiDockWidgetSetCurTab -dock windowDock_nSchema_5
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiDockWidgetSetCurTab -dock widgetDock_<Inst._Tree>
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED.u_PATTERN" -delim "."
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcHBSelect "TESTBED" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED" -delim "."
srcHBSelect "TESTBED" -win $_nTrace1
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED.u_PATTERN" -delim "."
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcTBFSDBMsgTogg
verdiDockWidgetHide -dock widgetDock_<FSDB_Msg>
srcHBSelect "BB" -win $_nTrace1
srcSetScope -win $_nTrace1 "BB" -delim "."
srcHBSelect "BB" -win $_nTrace1
srcHBSelect "TESTBED" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED" -delim "."
srcHBSelect "TESTBED" -win $_nTrace1
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED.u_PATTERN" -delim "."
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED.u_PATTERN" -delim "."
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiHideMenus -win $_Verdi_1 -on
verdiHideBanners -win $_Verdi_1 -on
verdiHideBanners -win $_Verdi_1 -off
verdiHideMenus -win $_Verdi_1 -off
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED.u_PATTERN" -delim "."
srcHBSelect "TESTBED.u_PATTERN" -win $_nTrace1
srcHBSelect "TESTBED" -win $_nTrace1
srcHBSelect "TESTBED" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED" -delim "."
srcHBSelect "TESTBED" -win $_nTrace1
srcHBSelect "TESTBED" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED" -delim "."
srcHBSelect "TESTBED" -win $_nTrace1
srcHBSelect "TESTBED" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED" -delim "."
srcHBSelect "TESTBED" -win $_nTrace1
srcHBSelect "TESTBED" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED" -delim "."
srcHBSelect "TESTBED" -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_5
schSelect -win $_nSchema5 -inst "BB\(@1\):Always3:134:140:Reg"
schProperties -win $_nSchema5
schProperties -win $_nSchema5 -Basic on -Library on
schSelect -win $_nSchema5 -inst "BB\(@1\):Always2:128:133:Reg"
schProperties -win $_nSchema5 -Basic on -Library on
schSelect -win $_nSchema5 -inst "BB\(@1\):Always2:128:133:Reg"
schProperties -win $_nSchema5
schSelect -win $_nSchema5 -inst "BB\(@1\):Always3:134:140:Reg"
schPushViewIn -win $_nSchema5
srcSetScope -win $_nTrace1 "BB" -delim "."
srcSelect -win $_nTrace1 -range {134 140 1 2 1 1}
verdiDockWidgetSetCurTab -dock windowDock_nSchema_5
schSelect -win $_nSchema5 -inst "BB\(@1\):Always3:134:140:Reg"
schDisplayDetailRTL -win $_nSchema5
schSelect -win $_nSchema6 -inst "BB.BB\(@1\):Always1#Always3:134:140:Reg"
schPushViewIn -win $_nSchema6
srcSelect -win $_nTrace1 -range {134 134 1 17 1 1}
verdiDockWidgetSetCurTab -dock windowDock_nSchema_6
verdiDockWidgetSetCurTab -dock windowDock_nSchema_5
schZoom {7513} {12272} {7653} {14262} -win $_nSchema5
schFit -win $_nSchema5
schSelect -win $_nSchema5 -inst "BB\(@1\):Always3:134:140:Reg"
schSelect -win $_nSchema5 -inst "BB\(@1\):FSM0:47:358:FSM"
schSelect -win $_nSchema5 -inst "BB\(@1\):Always3:134:140:Reg"
schSelect -win $_nSchema5 -inst "BB\(@1\):Always3:134:140:Reg"
schPushViewIn -win $_nSchema5
srcSelect -win $_nTrace1 -range {134 140 1 2 1 1}
srcDeselectAll -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_5
schSelect -win $_nSchema5 -inst "BB\(@1\):Always3:134:140:Reg"
schDeselectAll -win $_nSchema5
debExit
