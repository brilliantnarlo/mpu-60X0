
module self_test_x(

    input wire [7:0] write_data,

    output reg [4:0] XG_TEST,
    output reg [2:0] XA_TEST

);

    always @(*) begin

        XA_TEST = write_data[7:5];
        XG_TEST = write_data[4:0];

    end

endmodule
