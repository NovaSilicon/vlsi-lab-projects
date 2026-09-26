module fa ( Sum , Carry , a , b , c ) ;
    output Sum , Carry ;
    input a , b , c ;
    wire w1 , w2 , w3 ;

    ha h1 ( w1 , w2 , a , b ) ;
    ha h2 ( Sum , w3 , w1 , c ) ;
    or ( Carry , w2 , w3 ) ;
endmodule
