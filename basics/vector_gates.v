`default_nettype none

module vector_gates(
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    assign out_or_bitwise = a | b; // | is bitwise OR operator 
    assign out_or_logical = a || b; // || is logical OR operator. if all the bits are zero then false else true
    assign out_not[5:3] = ~b;
    assign out_not[2:0] = ~a;
endmodule