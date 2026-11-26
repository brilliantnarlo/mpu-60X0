#!/usr/bin/env bash
set -euo pipefail
export PATH="/ucrt64/bin:/usr/bin:$PATH"
cd "$(dirname "${BASH_SOURCE[0]}")"

if ! command -v verilator >/dev/null; then
    echo "Install Verilator with pacman -S mingw-w64-ucrt-x86_64-verilator" >&2
    exit 1
fi

mkdir -p build
verilator --cc --exe --build -j 2 --top-module sim_top --Mdir build \
    -Wno-fatal -CFLAGS "-std=c++17 -DVL_TIME_CONTEXT" \
    -LDFLAGS "-static -lgdi32 -luser32" -o arcade-sim.exe \
    sim_top.v \
    ../src/pc_main.v \
    ../src/main.v \
    ../src/instruction_processor.v \
    ../src/address_decoder.v \
    ../src/address_memory.v \
    ../src/registers/self_test_x.v \
    main.cpp