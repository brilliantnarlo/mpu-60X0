module sim_top(
    input clk,
    input reset,

    input jump,
    input [7:0] jump_address,

    output [7:0] pc_out,
    output [31:0] instr
);

    pc_main pc(
        .clk(clk),
        .reset(reset),

        .jump(jump),
        .jump_address(jump_address),

        .pc_out(pc_out) // output
    );

    address_memory ad(
        .pc_out(pc_out), // input
        .instr(instr)
    );


endmodule
