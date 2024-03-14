debImport "-f" "filelist.f"
debLoadSimResult /home/host/.ssh/base/ROM/sims/ROM_tb.fsdb
wvCreateWindow
srcHBSelect "ROM_tb.ROM_inst" -win $_nTrace1
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 433454.888986 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "ROM_inst" 5 )} 
wvBusWaveform -win $_nWave2 -analog
wvSetPosition -win $_nWave2 {("ROM_inst" 5)}
debExit
