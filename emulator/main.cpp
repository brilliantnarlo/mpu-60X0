#include "Vsim_top.h"
#include "verilated.h"

#include <iostream>


double sc_time_stamp() {
    return 0.0;
}


int main(int argc, char** argv) {

    VerilatedContext context;

    Vsim_top* top = new Vsim_top(&context);

    top->clk   = 0;
    top->reset = 1;
    top->jump  = 0;
    top->jump_address = 0;

    top->eval();

    std::cout << "Simulation started" << std::endl;

    std::cout << "PC_OUT: " << top->pc_out << std::endl;

    return 0;

}
