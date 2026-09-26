module serial_mul(clk,rst,st,multiplicand,multiplier,done,HEX0,HEX1,HEX2);
input clk,rst,st;
input [3:0]multiplicand;
input [3:0]multiplier;
output done;
output [6:0]HEX0,HEX1,HEX2;
wire load,sh,ad,m;
wire [8:0]product;
wire [3:0]hundreds,tens,ones;
control_unit c1(
.clk(clk),
.rst(rst),
.st(st),
.load(load),
.sh(sh),
.ad(ad),
.done(done),
.m(m)
);
datapath d1(
.clk(clk),
.rst(rst),
.load(load),
.sh(sh),
.ad(ad),
.multiplicand(multiplicand),
.multiplier(multiplier),
.product(product),
.m(m)
);
bin_to_bcd b1(
.product(product),
.hundreds(hundreds),
.tens(tens),
.ones(ones)
);
seven_segment s0(
.in(ones),
.hex(HEX0)
);
seven_segment s1(
.in(tens),
.hex(HEX1)
);
seven_segment s2(
.in(hundreds),
.hex(HEX2)
);
endmodule
