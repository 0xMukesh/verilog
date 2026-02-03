// https://hdlbits.01xz.net/wiki/7458

module chip_7458(
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y
);
    wire and_p1acb;
    wire and_p1fed;
    wire and_p2ab;
    wire and_p2cd;

    assign and_p1acb = p1a & p1c & p1b;
    assign and_p1fed = p1f & p1e & p1d;
    assign and_p2ab = p2a & p2b;
    assign and_p2cd = p2c & p2d;

    assign p1y = and_p1acb | and_p1fed;
    assign p2y = and_p2ab | and_p2cd;
endmodule