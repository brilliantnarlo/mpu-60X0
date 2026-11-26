module self_test_x(

    input wire [7:0] write_data,
    input wire enable_self_test_x,

    output reg [4:0] XG_TEST,
    output reg [2:0] XA_TEST

);

    always @(*) begin

        if (enable_self_test_x) begin
            XA_TEST = write_data[7:5];
            XG_TEST = write_data[4:0];
        end

    end

endmodule
