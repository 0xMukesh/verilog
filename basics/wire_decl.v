module wire_decl(input a, b, c, d, output out, out_n);
    wire wire_and_ab;
    wire wire_and_cd;

    assign wire_and_ab = a & b;
    assign wire_and_cd = c & d;
    assign out = wire_and_ab | wire_and_cd;
    assign out_n = ~out;  
endmodule