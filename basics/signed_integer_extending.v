// -- replication operator
// {num{vector}} is used to generate a vector with the internal vector times num


`default_nettype none

module signed_integer_extending(
    input [7:0] in,
    output [31:0] out
);
    assign out = {{24{in[7]}}, in}; 
endmodule