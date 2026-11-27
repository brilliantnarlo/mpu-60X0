module address_memory #(
    parameter DEPTH = 256
)(
    input wire [7:0] pc_out,
    output reg [31:0] instr
);

    reg [31:0] rom [0:DEPTH-1];

    integer i;

    initial begin
        for (i = 0; i < DEPTH; i = i + 1)
            rom[i] = 32'h0;
    end

    assign instr = rom[pc_out];

endmodule
