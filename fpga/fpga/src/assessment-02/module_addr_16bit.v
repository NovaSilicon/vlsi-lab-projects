module addr_16bit ( w1 , offset , pc ) ;
output [0:15] w1 ;
input [0:7] offset ;
input [0:15] pc ;
assign w1 = offset + pc ;

endmodule
