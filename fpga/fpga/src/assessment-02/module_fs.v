module fs ( Diff , Borrow , a , b , bin ) ;
output Diff , Borrow ;
input a , b , bin ;
wire w1 , w2 , w3 ;
hs h1 ( w1 , w2 , a , b ) ;
hs h2 ( Diff , w3 , w1 , bin ) ;
or ( Borrow , w2 , w3 ) ;
endmodule
