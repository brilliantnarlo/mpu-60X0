module pc_main #(
    parameter RESET_VECTOR = 8'h0D,
    parameter COUNTER = 8'd1
)(
    input wire clk,
    input wire reset,

    input wire jump,
    input wire jump_address,

    output reg [7:0] pc_out
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            pc_out <= RESET_VECTOR;
        else if (jump)
            pc_out <= jump_address;
        else
            pc_out <= pc_out + COUNTER;
    end

endmodule
