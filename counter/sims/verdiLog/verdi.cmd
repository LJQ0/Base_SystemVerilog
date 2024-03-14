debImport "-f" "filelist.f"
debLoadSimResult /home/host/.ssh/base/counter/sims/counter_top_tb.fsdb
wvCreateWindow
srcHBSelect "counter_top_tb.counter_top_inst" -win $_nTrace1
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 73.165368 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 1668.546405 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 8 )} 
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 7 )} 
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 7 8 )} 
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 7 8 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 7 )} 
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 7 )} 
wvSetPosition -win $_nWave2 {("counter_top_inst" 7)}
wvExpandBus -win $_nWave2 {("counter_top_inst" 7)}
wvSetPosition -win $_nWave2 {("counter_top_inst" 18)}
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 7 )} 
wvSetPosition -win $_nWave2 {("counter_top_inst" 7)}
wvCollapseBus -win $_nWave2 {("counter_top_inst" 7)}
wvSetPosition -win $_nWave2 {("counter_top_inst" 7)}
wvSetPosition -win $_nWave2 {("counter_top_inst" 10)}
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 8 )} 
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 6.980392 -snap {("counter_top_inst" 4)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 3 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 2037.692810 -snap {("counter_top_inst" 3)}
wvZoom -win $_nWave2 2032.651416 2070.267974
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
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 990.160871 1110.797560
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 4 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 1038.728889 -snap {("counter_top_inst" 4)}
wvZoom -win $_nWave2 1010.528105 1110.797560
srcHBSelect "counter_top_tb.counter_top_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "counter_top_tb.counter_top_inst" -delim "."
srcHBSelect "counter_top_tb.counter_top_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_0" -line 28 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 11 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 1310.888644 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 1353.038952 -snap {("counter_top_inst" 9)}
wvSetCursor -win $_nWave2 1552.987913 -snap {("counter_top_inst" 8)}
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 5 )} 
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 6 )} 
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 4 )} 
wvSelectSignal -win $_nWave2 {( "counter_top_inst" 8 )} 
debExit
