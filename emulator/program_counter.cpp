#include "program_counter.h"


void ProgramCounter::start() {


    Vsim_top top(&context);

    top.clk = 0;
    top.reset = 0;
    top.jump = 0;
    top.jump_address = 0;
    top.eval();

    top.reset = 1;
    top.eval();

    std::cout << "Simulation started" << std::endl;
    std::cout << "PC_OUT: " << std::bitset<8>(top.pc_out)
          << " (0x" << std::hex << std::setw(2) << std::setfill('0')
          << static_cast<unsigned>(top.pc_out)
          << std::dec << std::setfill(' ') << ")\n";

    top.reset = 0;
    top.eval();

    int counter = 0;
    while (counter < 20)
    {
        /* code */
        top.clk = 1;
        top.eval();
        top.clk = 0;
        top.eval();
        
        std::cout << "PC_OUT: " << std::bitset<8>(top.pc_out)
          << " (0x" << std::hex << std::setw(2) << std::setfill('0')
          << static_cast<unsigned>(top.pc_out)
          << std::dec << std::setfill(' ') << ")\n";

        counter++;
    }

    std::cout << "Simulation ends" << std::endl;

    top.final();

}
