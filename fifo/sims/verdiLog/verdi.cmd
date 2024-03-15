debImport "-f" "filelist.f"
debLoadSimResult /home/host/.ssh/base/fifo/sims/fifo_tb.fsdb
wvCreateWindow
srcHBSelect "fifo_tb.fifo_inst" -win $_nTrace1
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 64.984148 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "fifo_inst" 8 )} 
wvExpandBus -win $_nWave2 {("fifo_inst" 8)}
wvSetPosition -win $_nWave2 {("fifo_inst" 8)}
wvCollapseBus -win $_nWave2 {("fifo_inst" 8)}
wvSetPosition -win $_nWave2 {("fifo_inst" 8)}
srcHBSelect "fifo_tb.fifo_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "fifo_tb.fifo_inst" -delim "."
srcHBSelect "fifo_tb.fifo_inst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "arm" -line 22 -pos 1 -win $_nTrace1
srcSelect -signal "cnt_w" -line 23 -pos 1 -win $_nTrace1
srcSelect -signal "cnt_r" -line 24 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvSetCursor -win $_nWave2 48.004706 -snap {("fifo_inst" 9)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 1555.708061 -snap {("G2" 0)}
wvZoom -win $_nWave2 1501.480523 1548.596253
wvZoom -win $_nWave2 1532.542004 1536.052588
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 1532.853291 -snap {("fifo_inst" 3)}
srcDeselectAll -win $_nTrace1
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
srcHBSelect "fifo_tb.fifo_inst" -win $_nTrace1
srcSetScope -win $_nTrace1 "fifo_tb.fifo_inst" -delim "."
srcHBSelect "fifo_tb.fifo_inst" -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "fifo_inst" 9 )} 
wvSetPosition -win $_nWave2 {("fifo_inst" 9)}
wvExpandBus -win $_nWave2 {("fifo_inst" 9)}
wvSetPosition -win $_nWave2 {("fifo_inst" 267)}
wvScrollUp -win $_nWave2 69
wvScrollUp -win $_nWave2 17
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "fifo_inst" 165 )} 
wvSelectSignal -win $_nWave2 {( "fifo_inst" 164 )} 
wvSelectSignal -win $_nWave2 {( "fifo_inst" 165 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_r" -win $_nTrace1
wvScrollDown -win $_nWave2 82
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 9
wvSelectSignal -win $_nWave2 {( "fifo_inst" 265 )} 
wvSetCursor -win $_nWave2 1532.998491 -snap {("fifo_inst" 265)}
wvSetCursor -win $_nWave2 1532.998491 -snap {("fifo_inst" 265)}
wvSetCursor -win $_nWave2 1532.998491 -snap {("fifo_inst" 265)}
wvSetCursor -win $_nWave2 1532.998491 -snap {("fifo_inst" 265)}
srcActiveTrace "fifo_tb.fifo_inst.arm\[0\]\[2:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 1049 -TraceValue 010
wvSetCursor -win $_nWave2 1532.998491 -snap {("fifo_inst" 265)}
wvSetCursor -win $_nWave2 1532.998491 -snap {("fifo_inst" 265)}
srcActiveTrace "fifo_tb.fifo_inst.arm\[0\]\[2:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 1049 -TraceValue 010
wvSetCursor -win $_nWave2 1532.998491 -snap {("fifo_inst" 265)}
wvSetCursor -win $_nWave2 1532.753752 -snap {("fifo_inst" 266)}
wvScrollDown -win $_nWave2 0
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 767.398438 -snap {("fifo_inst" 181)}
wvZoomAll -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 4
wvScrollUp -win $_nWave2 156
wvSelectSignal -win $_nWave2 {( "fifo_inst" 9 )} 
wvSetPosition -win $_nWave2 {("fifo_inst" 9)}
wvCollapseBus -win $_nWave2 {("fifo_inst" 9)}
wvSetPosition -win $_nWave2 {("fifo_inst" 9)}
wvSetPosition -win $_nWave2 {("fifo_inst" 11)}
wvSetCursor -win $_nWave2 1033.365249 -snap {("G2" 0)}
debExit
