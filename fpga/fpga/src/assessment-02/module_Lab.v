module Lab ( nextpc , reset , branch , pc ) ;

output [15:0] nextpc ;
input [15:0] pc ;


input reset , branch ;

wire [7:0] offset ;
wire [15:0] w1 , w2 , w3 ;

assign offset = 8 ' d5 ;

addr_16bit a1 ( w1 , offset , pc ) ;
addr_16bit a2 ( w2 ,16 ' d1 , pc ) ;

mux_16x1 m1 ( w1 , w2 , w3 , branch ) ;
mux_16x1 m2 (16 ' d0 , w3 , nextpc , reset ) ;
endmodule
