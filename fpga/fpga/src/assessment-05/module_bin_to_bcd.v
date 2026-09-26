module bin_to_bcd(product,hundreds,tens,ones);
input [8:0]product;
output reg [3:0]hundreds;
output reg [3:0]tens;
output reg [3:0]ones;
integer value;
always@(*)
begin
value=product;
hundreds=value/100;
tens=(value%100)/10;
ones=value%10;
end
endmodule
