#include "main.h"
#include "program_counter.h"


double sc_time_stamp() {
    return 0.0;
}


int Main::main(int argc, char** argv) {

    ProgramCounter program_counter;
    program_counter.start();

    return 0;

}


int main(int argc, char** argv) {
    Main app;
    return app.main(argc, argv);
}
