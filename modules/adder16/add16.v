`default_nettype none

module add16(
    input [15:0] a,
    input [15:0] b,
    input carry_in,
    output [15:0] sum,
    output carry_out
);
    assign {carry_out, sum} = a + b + {16'b0, carry_in};
endmodule

