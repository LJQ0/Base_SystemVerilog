debImport "-f" "filelist.f"
debLoadSimResult /home/host/.ssh/base/TB/tb.fsdb
wvCreateWindow
srcHBSelect "top_tb.top_inst" -win $_nTrace1
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 91.124444 -snap {("G2" 0)}
srcHBSelect "top_tb.top_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "top_tb.top_inst" -delim "."
srcHBSelect "top_tb.top_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt" -line 32 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {18 19 1 1 1 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvDrop -win $_nWave2
srcAction -pos 24 3 0 -win $_nTrace1 -name "
" -ctrlKey off
debExit
