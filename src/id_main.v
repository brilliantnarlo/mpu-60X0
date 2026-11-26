module id_main(

    input wire [7:0] address,
    input wire [7:0] instr,

    output reg [4:0] XG_TEST,
    output reg [2:0] XA_TEST,

    output reg [4:0] YG_TEST,
    output reg [2:0] YA_TEST,

    output reg [4:0] ZG_TEST,
    output reg [2:0] ZA_TEST,

    output reg [1:0] XA_A,
    output reg [1:0] YA_A,
    output reg [1:0] ZA_A,

    output reg [1:0] RESERVED

);

always @(*) begin

    // Default values

    XG_TEST = 0;
    XA_TEST = 0;

    YG_TEST = 0;
    YA_TEST = 0;

    ZG_TEST = 0;
    ZA_TEST = 0;

    XA_A = 0;
    YA_A = 0;
    ZA_A = 0;

    RESERVED = 0;

    case (address)

        8'h0D: begin
            XA_TEST = instr[7:5];
            XG_TEST = instr[4:0];
        end

        8'h0E: begin
            YA_TEST = instr[7:5];
            YG_TEST = instr[4:0];
        end

        8'h0F: begin
            ZA_TEST = instr[7:5];
            ZG_TEST = instr[4:0];
        end

        8'h10: begin
            RESERVED = instr[7:6];
            XA_A = instr[5:4];
            YA_A = instr[3:2];
            ZA_A = instr[1:0];
        end

        default: begin
            // Keep default values
        end

    endcase

end

endmodule
