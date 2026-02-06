// https://hdlbits.01xz.net/wiki/Gates4

// -- reduction operators 
// &in over here are equivalent to in[0] & in[1] & in[2] & in[3] 
// and similarly for |in and ^in

`default_nettype none

module gates4(
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    assign out_and = &in; 
    assign out_or = |in;
    assign out_xor = ^in;
endmodule