module dff (q ,d , rst , clk ) ;
output q ;
input d , rst , clk ;
reg q ;

always @ ( posedge rst or posedge clk )
begin
if ( rst )
      q <= 1 ' b0 ;
else
      q <= d ;
end
endmodule
