
module address_decoder(

    input wire [7:0] address,
    input wire [7:0] instr,

    output reg [3:0] operation,
    output reg [7:0] data
);

    // Operation codes
    localparam OP_NONE       = 4'd0;
    localparam OP_SELF_TEST_X = 4'd1;
    localparam OP_SELF_TEST_Y = 4'd2;
    localparam OP_SELF_TEST_Z = 4'd3;
    localparam OP_SELF_TEST_A = 4'd4;
    localparam OP_SYSTEM_STATUS = 4'd5;

    always @(*) begin

        // Default values
        operation = OP_NONE;
        data = instr;

        case (address)

            8'h0D: begin
                operation = OP_SELF_TEST_X;
            end

            8'h0E: begin
                operation = OP_SELF_TEST_Y;
            end

            8'h0F: begin
                operation = OP_SELF_TEST_Z;
            end

            8'h10: begin
                operation = OP_SELF_TEST_A;
            end

            8'h11: begin
                operation = OP_SYSTEM_STATUS;
            end

            default: begin
                operation = OP_NONE;
            end

        endcase

    end

endmodule
