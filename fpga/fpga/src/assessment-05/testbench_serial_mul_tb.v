module serial_mul_tb();
reg clk,rst,st;
reg [3:0]multiplicand;
reg [3:0]multiplier;






wire done;
wire [6:0]HEX0,HEX1,HEX2;
serial_mul m1(
.clk(clk),
.rst(rst),
.st(st),
.multiplicand(multiplicand),
.multiplier(multiplier),
.done(done),
.HEX0(HEX0),
.HEX1(HEX1),
.HEX2(HEX2)
);
// Internal product is kept in the top module for simulation checking.
wire [8:0] product;
assign product = m1.product;
always
#5 clk=~clk;
initial
begin
clk=0;
rst=1;
st=0;
multiplicand=4'b0000;
multiplier=4'b0000;
 #10 rst=0;
 #10 multiplicand=4'b1010;
     multiplier=4'b1011;
     st=1;
 #10 st=0;
 #100 $stop;
end
endmodule
