module datapath(clk,rst,load,sh,ad,multiplicand,multiplier,product,m);
input clk,rst,load,sh,ad;
input [3:0]multiplicand;
input [3:0]multiplier;
output [8:0]product;
output m;
wire [8:0]acc;
wire [3:0]sum;
wire cout;
assign m=acc[0];
assign product=acc;
accumulator a1(
.clk(clk),
.rst(rst),
.load(load),
.sh(sh),
.ad(ad),
.sum(sum),
.cout(cout),
.d(multiplier),
.q(acc)
);
adder4 a2(
.a(acc[7:4]),
.b(multiplicand),
.cin(1'b0),
.s(sum),
.cout(cout)
);
endmodule
