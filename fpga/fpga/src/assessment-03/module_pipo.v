module pipo (q ,i , load , clk , rst ) ;

output [3:0] q ;
input [3:0] i ;
input load , clk , rst ;
reg [3:0] q ;
always @ ( posedge clk or posedge rst )
begin
if ( rst )
q <=4 ' b0 ;
else if ( load )
q <= i ;
else
q <= q ;
end
endmodule
