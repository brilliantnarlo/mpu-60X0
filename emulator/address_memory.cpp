#include "address_memory.h"



void AddressMemory::start() {

    Vsim_top top(&context);

    top.pc_out = 0;
    top.eval();
    
    std::cout << "Starting simulation" << std::endl;

    std::cout << "Instruction: " << std::bitset<8>(top.instr)
          << " (0x" << std::hex << std::setw(2) << std::setfill('0')
          << static_cast<unsigned>(top.instr)
          << std::dec << std::setfill(' ') << ")\n";


    top.final();

}
