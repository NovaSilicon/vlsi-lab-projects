module dec (Y , a , b ) ;
output [3:0] Y ;
input a , b ;
wire w1 , w2 ;
not ( w1 , a ) ;
not ( w2 , b ) ;
and ( Y [0] , w1 , w2 ) ;
and ( Y [1] , w1 , b ) ;
and ( Y [2] , a , w2 ) ;
and ( Y [3] , a , b ) ;
endmodule
