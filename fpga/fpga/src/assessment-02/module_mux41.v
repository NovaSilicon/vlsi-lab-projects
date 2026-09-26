module mux41 (Y , i0 , i1 , i2 , i3 , s0 , s1 ) ;
output Y ;
input i0 , i1 , i2 , i3 ;
input s0 , s1 ;
wire w1 , w2 ;
wire t0 , t1 , t2 , t3 ;
not ( w1 , s0 ) ;
not ( w2 , s1 ) ;
and ( t0 , i0 , w2 , w1 ) ;
and ( t1 , i1 , w2 , s0 ) ;
and ( t2 , i2 , s1 , w1 ) ;
and ( t3 , i3 , s1 , s0 ) ;
or (Y , t0 , t1 , t2 , t3 ) ;
endmodule
