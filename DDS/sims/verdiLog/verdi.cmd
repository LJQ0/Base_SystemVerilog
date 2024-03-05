debImport "-f" "filelist.f"
debLoadSimResult /home/host/.ssh/base/DDS/sims/DDS_tb.fsdb
wvCreateWindow
srcHBSelect "DDS_tb.DDS_inst" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "DDS_tb"
schZoomOut -win $_nSchema3 -pos -1566 3092
schZoomOut -win $_nSchema3 -pos -1566 3092
schZoomIn -win $_nSchema3 -pos -1543 3138
srcHBSelect "DDS_tb.DDS_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "DDS_tb.DDS_inst" -delim "."
srcHBSelect "DDS_tb.DDS_inst" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "DDS_tb.DDS_inst"
verdiDockWidgetSetCurTab -dock windowDock_nSchema_3
verdiDockWidgetSetCurTab -dock windowDock_nSchema_4
srcHBSelect "DDS_tb.DDS_inst" -win $_nTrace1
schCreateWindow -hierFSM -win $_nSchema4 -mode all
verdiDockWidgetMaximize -dock windowDock_nSchema_4
schSelect -win $_nSchema4 -inst "DDS\(@1\):Always0:27:39:RegCombo"
schPushViewIn -win $_nSchema4
srcSelect -win $_nTrace1 -range {27 39 1 2 1 1}
schSelect -win $_nSchema4 -inst "DDS\(@1\):Always0:27:39:RegCombo"
schPushViewIn -win $_nSchema4
srcSelect -win $_nTrace1 -range {27 39 1 2 1 1}
verdiDockWidgetRestore -dock windowDock_nSchema_4
schSelect -win $_nSchema4 -inst "DDS\(@1\):Always0:27:39:RegCombo"
schPushViewIn -win $_nSchema4
srcSelect -win $_nTrace1 -range {27 39 1 2 1 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {32 38 1 2 4 3} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {34 39 3 1 1 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debExit
