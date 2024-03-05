debImport "-f" "filelist.f"
debLoadSimResult /home/host/.ssh/base/RAM/sims/ram_tb.fsdb
wvCreateWindow
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
srcHBSelect "ram_tb.ram_inst" -win $_nTrace1
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave2
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 114.950048 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
srcHBSelect "ram_tb.ram_inst" -win $_nTrace1
srcHBSelect "ram_tb.ram_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "ram_tb.ram_inst" -delim "."
srcHBSelect "ram_tb.ram_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ram\[addr\]" -line 43 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "ram_inst" 7 )} 
wvExpandBus -win $_nWave2 {("ram_inst" 7)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_io" -line 24 -pos 1 -win $_nTrace1
srcAction -pos 23 11 2 -win $_nTrace1 -name "data_io" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_io" -line 24 -pos 1 -win $_nTrace1
srcAction -pos 23 11 2 -win $_nTrace1 -name "data_io" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "data_io" -line 24 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
debExit
