module ha ( Sum , Carry , a , b ) ;
    output Sum , Carry ;
    input a , b ;
    xor ( Sum , a , b ) ;
    and ( Carry , a , b ) ;
endmodule
