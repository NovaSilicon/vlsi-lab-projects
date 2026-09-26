module fsm_tb();
reg x,clk,rst;
wire y0,y1;
fsm fs1(y0,y1,x,clk,rst);
always #5 clk = ˜clk;
initial
begin
clk =0;
rst =1;
x=0;
#10 rst =0;
#10 x =1;
#10 x =0;
#10 x =0;
#10 x =1;
#10 x =1;
#10 x =1;
#10 x =0;
#10 x =1;
#10 x =1;
#10 x =0;
#10 x =1;
#10 x =1;
#10 x =1;
#10 x =1;
#10 x =0;
#10 $stop;
end
endmodule
