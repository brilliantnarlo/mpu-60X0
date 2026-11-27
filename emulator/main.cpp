#include "main.h"



double sc_time_stamp() {
    return 0.0;
}


int Main::main(int argc, char** argv) {

    // ProgramCounter program_counter;
    // program_counter.start();

    AddressMemory address_memory;
    address_memory.start();

    return 0;

}


int main(int argc, char** argv) {
    Main app;
    return app.main(argc, argv);
}
