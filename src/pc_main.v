module pc_main #(
	parameter RESET_VECTOR = 10'b0,
	parameter COUNTER = 10'd1
)(
	input wire clk,
	input wire reset,
	
	output reg [9:0] pc_out 
);



	always @(posedge clk or posedge reset) begin
		if (reset)
			pc_out <= RESET_VECTOR;

		else
			pc_out <= pc_out + COUNTER;
	
	end

endmodule
