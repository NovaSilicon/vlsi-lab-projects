module fsm(y0,y1,x,clk,rst);
output y0,y1;
input x,clk,rst;
reg y0,y1;
reg[2:0]cs,ns;
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
//cs logic
always@(posedge clk or posedge rst)
begin
if(rst)
cs<=s0;
else
cs<=ns;
end
//ns logic
always@(x or cs)
begin
case(cs)
s0:
begin
if(x)
ns=s1;
else
ns=s0;
end
s1:
begin
if(x)
ns=s2;
else
ns=s0;
end
s2:
begin
if(x)
ns=s3;
else
ns=s0;
end
s3:
begin
if(x)
ns=s4;
else
ns=s0;
end
s4:
begin
if(x)
ns=s4;
else
ns=s0;
end
endcase
end
//output logic





always@(x or cs)
begin
case(cs)
s0:
begin
if(x)
begin
y1 = 1'b0;
y0 = 1'b0;
end
else
begin
y1 = 1'b0;
y0 = 1'b0;
end
end
s1:
begin
if(x)
begin
y1 = 1'b0;
y0 = 1'b0;
end
else
begin
y1 = 1'b0;
y0 = 1'b1;
end
end
s2:
begin
if(x)
begin
y1 = 1'b0;
y0 = 1'b0;
end
else
begin
y1 = 1'b1;
y0 = 1'b0;
end
end
s3:
begin
if(x)
begin
y1 = 1'b0;
y0 = 1'b0;
end
else
begin
y1 = 1'b1;
y0 = 1'b1;
end
end
s4:
begin
if(x)
begin
y1 = 1'b0;
y0 = 1'b0;
end
else
begin
y1 = 1'b0;
y0 = 1'b0;
end
end
endcase
end
endmodule
