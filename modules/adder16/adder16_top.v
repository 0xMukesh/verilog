`default_nettype none

module adder16_top(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum,
    output overflow
);
    wire carry_between;

    add16 lower_half_sum (
        .a(a[15:0]),
        .b(b[15:0]),
        .carry_in(1'b0),
        .sum(sum[15:0]),
        .carry_out(carry_between)
    );
    add16 upper_half_sum (
        .a(a[31:16]),
        .b(b[31:16]),
        .carry_in(carry_between),
        .sum(sum[31:16]),
        .carry_out(overflow)
    );
endmodule
