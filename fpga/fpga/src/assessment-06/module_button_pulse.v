module button_pulse(clk,rst_n,key,pulse);
input clk,rst_n,key;
output reg pulse;
reg key1,key2,key2_prev;
always@(posedge clk or negedge rst_n)
begin
if(!rst_n)
begin
key1<=1'b1;
key2<=1'b1;
key2_prev<=1'b1;
pulse<=1'b0;
end
else
begin
key1<=key;
key2<=key1;
key2_prev<=key2;
pulse<=1'b0;
// DE2-115 keys are active-low
if(key2_prev && !key2)
 pulse<=1'b1;
end
end






endmodule
