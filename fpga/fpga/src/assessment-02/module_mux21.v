module mux21 (Y , a , b , s ) ;
output Y ;
input a , b , s ;
wire w1 , w2 , w3 ;
not ( w1 , s ) ;
and ( w2 , a , w1 ) ;
and ( w3 , b , s ) ;
or (Y , w2 , w3 ) ;
endmodule
