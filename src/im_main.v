module im_main#(
	parameter DEPTH = 100
)(
	input wire [9:0] pc_out,
	output reg [9:0] instr
);

	reg [9:0] rom [0:DEPTH - 1];

	integer i;

	initial begin
		for(i = 0; i < DEPTH; i = i + 1)
			rom[i] <= 9'b0;
	end


	always @(*) begin
		if (rom < DEPTH)
			instr <= rom;
		else
			instr <= 9'b0;
	end


endmodule
