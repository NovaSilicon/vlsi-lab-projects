module mux_16x1 ( w1 , w2 , w3 , branch ) ;
output [0:15] w3 ;
input [0:15] w1 , w2 ;
input branch ;

assign w3 = branch ? w1 : w2 ;

endmodule
