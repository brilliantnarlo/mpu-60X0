module im_main #(
    parameter DEPTH = 256
)(
    input wire [7:0] pc_out,
    output reg [7:0] instr
);

    reg [7:0] rom [0:DEPTH-1];

    integer i;

    initial begin
        for (i = 0; i < DEPTH; i = i + 1)
            rom[i] = 8'b0;
    end

    always @(*) begin

        if (pc_out < DEPTH)
            instr = rom[pc_out];

        else
            instr = 8'b0;

    end

endmodule
