
build-p:
	C:/msys64/usr/bin/bash.exe build.sh

run:
	verilator --cc --exe --build -Wall --top-module sim_top sim_top.v main.cpp && clear && ./obj_dir/Vsim_top.exe
	