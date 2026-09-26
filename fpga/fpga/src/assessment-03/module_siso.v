module siso ( do , din , rst , clk ) ;
output do ;
input din , clk , rst ;
wire q1 , q2 , q3 ;

dff   f1 ( q3 , din , rst , clk ) ;
dff   f2 ( q2 , q3 , rst , clk ) ;
dff   f3 ( q1 , q2 , rst , clk ) ;
dff   f4 ( do , q1 , rst , clk ) ;

endmodule
