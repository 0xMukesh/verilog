// type [upper:lower] vector_name;

// -- endianess
// LSB on lower index -> little endian (wire [3:0] w) 
// LSB on higher index -> big endian (wire [0:3] w)

`default_nettype none

module vectors(
    input [15:0] in,
    output [7:0] out_hi,
    output [7:0] out_lo
);
    assign out_lo = in[7:0];
    assign out_hi = in[15:8];
endmodule