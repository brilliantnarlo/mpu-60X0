
build-p:
	C:/msys64/usr/bin/bash.exe build.sh

run:
	verilator --cc --exe --build -Wall --top-module sim_top sim_top.v ../src/pc_main.v ../src/address_memory main.cpp program_counter.cpp address_memory.cpp && ./obj_dir/Vsim_top.exe
	
