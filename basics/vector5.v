// https://hdlbits.01xz.net/wiki/Vector5

`default_nettype none

module vector5(
    input a, b, c, d, e,
    output [24:0] out
);
    wire [24:0] v_1;
    wire [24:0] v_2;

    assign v_1 = {{5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}}};
    assign v_2 = {5{a, b, c, d, e}};
    assign out = ~(v_1 ^ v_2);
endmodule