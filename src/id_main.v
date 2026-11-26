module id_main(
	input wire [9:0] instr,

	input wire SELF_TEST_X,
	output wire [4:0] XG_TEST,
	output wire [2:0] XA_TEST,
	output wire [1:0] RW

	input wire SELF_TEST_Y,
	output reg [4:0] YG_TEST,
	output reg [2:0] YA_TEST
);


	if (SELF_TEST_X) begin
		XG_TEST <= instr[4:0];
		XA_TEST <= instr[7:5];
		RW      <= instr[9:8];
	end

	else if (SELF_TEST_Y) begin
		YG_TEST <= instr[4:0];
		YA_TEST <= instr[7:5];
		RW      <= instr[9:8];
	end

endmodule
