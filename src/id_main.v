module id_main(
	input wire [9:0] instr,

	input wire SELF_TEST_X,
	output reg [4:0] XG_TEST,
	output reg [2:0] XA_TEST,
	output reg [1:0] RW

	input wire SELF_TEST_Y,
	output reg [4:0] YG_TEST,
	output reg [2:0] YA_TEST,

	input wire SELF_TEST_Z,
	output reg [4:0] ZG_TEST,
	output reg [2:0] ZA_TEST,

	input wire SELF_TEST_A,
	output reg [1:0] ZA_TEST,
	output reg [1:0] YA_TEST,
	output reg [1:0] XA_TEST,
	output reg [1:0] RESERVED,
);


always @(*) begin	
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

	else if (SELF_TEST_Z) begin
		ZG_TEST <= instr[4:0];
		ZA_TEST <= instr[7:5];
		RW     <= instr[9:8];
	end

	else if (SELF_TEST_A) begin
		ZA_TEST  <= instr[1:0];
		YA_TEST  <= instr[3:2];
		XA_TEST  <= instr[5:4];
		RESERVED <= instr[7:6];
		RW       <= instr[9:8];
	end

end


endmodule
