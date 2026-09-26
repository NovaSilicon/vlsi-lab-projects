module enc (Y , D ) ;
output [1:0] Y ;
input [3:0] D ;
or ( Y [1] , D [2] , D [3]) ;
or ( Y [0] , D [1] , D [3]) ;
endmodule
