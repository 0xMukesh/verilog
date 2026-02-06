module modules_basics(
    input a, b,
    output out
);
    mod_a instance1 (.in1(a), .in2(b), .out(out));
endmodule

module mod_a(
    input in1, in2,
    output out
);
endmodule
