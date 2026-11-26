
module control_unit(

    input wire [3:0] operation,

    output reg enable_self_test_x,
    output reg enable_self_test_y,
    output reg enable_self_test_z,
    output reg enable_self_test_a,

    output reg enable_system_status

);

    // Operation codes
    localparam OP_NONE         = 4'd0;
    localparam OP_SELF_TEST_X  = 4'd1;
    localparam OP_SELF_TEST_Y  = 4'd2;
    localparam OP_SELF_TEST_Z  = 4'd3;
    localparam OP_SELF_TEST_A  = 4'd4;
    localparam OP_SYSTEM_STATUS = 4'd5;

    always @(*) begin

        // Default: disable everything
        enable_self_test_x = 0;
        enable_self_test_y = 0;
        enable_self_test_z = 0;
        enable_self_test_a = 0;

        enable_system_status = 0;

        case (operation)

            OP_SELF_TEST_X:
                enable_self_test_x = 1;

            OP_SELF_TEST_Y:
                enable_self_test_y = 1;

            OP_SELF_TEST_Z:
                enable_self_test_z = 1;

            OP_SELF_TEST_A:
                enable_self_test_a = 1;

            OP_SYSTEM_STATUS:
                enable_system_status = 1;

            default: begin
                // All operations disabled
            end

        endcase

    end

endmodule
