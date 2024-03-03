all:compile sim

compile:
	vcs -LDFLAGS -Wl,--no-as-needed -full64 +v2k -fsdb +define+FSDB -sverilog \
		-f filelist.f


verdi:
	verdi -ssf ROM_tb.fsdb -f filelist.f

sim:
	./simv

clean:
	rm -rf ./csrc *.daidir *.log *.vpd *.vdb simv* *.key *race.out*
	rm -rf AN.DB
	rm -rf novas*
	rm -rf DVEfiles
	rm -rf $(OBJ_NAME)
	rm -rf urgReport
	rm -rf *.fsdb

 
