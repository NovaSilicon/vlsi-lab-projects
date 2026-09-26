module control_unit(clk,rst,st,load,sh,ad,done,m);
input clk,rst,st,m;
output reg load,sh,ad,done;
reg [3:0]cs,ns;






parameter s0 =4'b0000;
parameter s1 =4'b0001;
parameter s2 =4'b0010;
parameter s3 =4'b0011;
parameter s4 =4'b0100;
parameter s5 =4'b0101;
parameter s6 =4'b0110;
parameter s7 =4'b0111;
parameter s8 =4'b1000;
parameter s9 =4'b1001;
parameter s10 =4'b1010;
//cs logic
always@(posedge clk or posedge rst)
begin
if(rst)
  cs<=s0;
else
  cs<=ns;
end
//ns logic
always@(*)
begin
case(cs)
 s0:
 begin
      if(st)
           ns=s1;
      else
           ns=s0;
 end
 s1: ns=s2;
 s2: ns=s3;
 s3: ns=s4;
 s4: ns=s5;
 s5: ns=s6;
 s6: ns=s7;
 s7: ns=s8;
 s8: ns=s9;
 s9: ns=s10;
 s10: ns=s0;
 default: ns=s0;
endcase
end
//output logic
always@(*)
begin
load=1'b0;
sh=1'b0;
ad=1'b0;
done=1'b0;
case(cs)
 s1: begin
      load=1'b1;
 end
 s2: begin
      ad=m;
 end
 s3: begin
      sh=1'b1;
 end
 s4: begin
      ad=m;
 end
 s5: begin
      sh=1'b1;
 end
 s6: begin
      ad=m;
 end
 s7: begin
      sh=1'b1;
 end
 s8: begin





         ad=m;
     end
     s9: begin
         sh=1'b1;
     end
     s10: begin
         done=1'b1;
     end
     default: begin
     end
 endcase
end
endmodule
