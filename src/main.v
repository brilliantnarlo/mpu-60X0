module main(
    input wire clk,
    input wire reset,

    input wire jump,
    input wire [7:0] jump_address
);


    pc_main pc(
        .clk(clk),
        .reset(reset),

        .jump(jump),
        .jump_address(jump_address),

        .pc_out(pc_out) // output
    );


    address_memory am(
        .pc_out(pc_out), // input
        .instr(instr)
    );

    address_decoder ad(
        .address(address),
        .instr(instr),

        .operation(operation),
        .data(data)
    );

    control_unit cu(
        .operation(operation),

        .enable_self_test_x(enable_self_test_x),
        .enable_self_test_y(enable_self_test_y),
        .enable_self_test_z(enable_self_test_z),
        .enable_self_test_a(enable_self_test_a),
        .enable_system_status(enable_system_status)
    );


    self_test_x test_x(
        .write_data(write_data),
        .enable_self_test_x(enable_self_test_x),

        .XG_TEST(XG_TEST),
        .XA_TEST(XA_TEST)
    );






endmodule
