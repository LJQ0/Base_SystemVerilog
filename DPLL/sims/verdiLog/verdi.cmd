debImport "-f" "filelist.f"
debLoadSimResult /home/host/.ssh/base/DPLL/sims/Divider_2_tb.fsdb
wvCreateWindow
srcHBSelect "Divider_2_tb.Divider_2_inst" -win $_nTrace1
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 3204.154806 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "Divider_2_inst" 3 )} 
wvSetCursor -win $_nWave2 50615.082789 -snap {("G2" 0)}
debExit
