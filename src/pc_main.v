module pc_main #(
    parameter RESET_VECTOR = 8'h0D,
    parameter COUNTER = 8'd1
)(
    input wire clk,
    input wire reset,

    output reg [7:0] pc_out
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            pc_out <= RESET_VECTOR;
        else
            pc_out <= pc_out + COUNTER;
    end

endmodule
