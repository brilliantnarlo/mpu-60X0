module instruction_processor(
    input wire clk,
    input wire reset,
    input wire [7:0] address,
    input wire [7:0] instr,

    input wire       write_enable,
    input wire [7:0] write_data

    input wire read_enable
    output reg [7:0] read_data

);
    
    reg [7:0] registers [0:255];

    always @(posedge clk or posedge reset) begin

        if (reset) begin
            for (i = 0; i < 256; i = i + 1)
                registers[i] <= 8'h00;
        end

        else if (write_enable) begin
            registers[address] <= write_data;
        end
    end


    always@(*) begin
        if (read_enable)
            read_data <= register[address];
        else
            read_data = 8'h00;
    end

endmodule