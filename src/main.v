module main();


    pc_main(
        .clk(clk),
        .reset(reset),

        .jump(jump),
        .jump_address(jump_address),

        .pc_out(pc_out) // output
    );

    address_memory(
        .pc_out(pc_out) // input
        .instr(instr)
    );

    address_decoder(
        .address(address),
        .instr(instr),

        .XG_TEST(XG_TEST),
        .XA_TEST(XA_TEST),

        .YG_TEST(YG_TEST),
        .YA_TEST(YA_TEST),

        .ZG_TEST(ZG_TEST),
        .ZA_TEST(ZA_TEST),

        .XA_A(XA_A),
        .YA_A(YA_A),
        .ZA_A(ZA_A),

        .RESERVED(RESERVED)
    );




endmodule
