debImport "-f" "filelist.f"
debLoadSimResult /home/host/.ssh/base/ROM/sims/ROM_tb.fsdb
wvCreateWindow
srcHBSelect "ROM_tb.ROM_inst" -win $_nTrace1
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 782880.705882 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
wvBusWaveform -win $_nWave2 -analog
wvAddSignal -win $_nWave2 "/ROM_tb/ROM_inst/DtoA_clk" \
           "/ROM_tb/ROM_inst/DtoA_rst_n" "/ROM_tb/ROM_inst/DtoA_enable"
wvSetPosition -win $_nWave2 {("ROM_inst" 5)}
wvSetPosition -win $_nWave2 {("ROM_inst" 8)}
wvSetPosition -win $_nWave2 {("ROM_inst" 8)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
debExit
