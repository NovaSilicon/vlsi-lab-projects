module hs ( Diff , Borrow , a , b ) ;
output Diff , Borrow ;
input a , b ;
wire w1 ;
not ( w1 , a ) ;
xor ( Diff , a , b ) ;
and ( Borrow , w1 , b ) ;
endmodule
