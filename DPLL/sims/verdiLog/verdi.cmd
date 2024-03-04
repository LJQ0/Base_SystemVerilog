debImport "-f" "filelist.f"
debLoadSimResult /home/host/.ssh/base/DPLL/sims/Divider_1_tb.fsdb
wvCreateWindow
srcHBSelect "Divider_1_tb.Divider_1_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "Divider_1_tb.Divider_1_inst" -delim "."
srcHBSelect "Divider_1_tb.Divider_1_inst" -win $_nTrace1
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 5043.903033 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 264.078693 1320.393464
wvZoom -win $_nWave2 264.078693 264.999229
wvSetCursor -win $_nWave2 264.213333 -snap {("G2" 0)}
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debExit
