module t_ha () ;
    reg a , b ;
    wire s , c ; ha    h1 (s , c , a , b ) ;
    initial
    begin
    a = 0; b = 0;
    #5 a = 0; b =      1;
    #5 a = 1; b =      0;
   #5 a = 1; b =      1;
   #10 $stop ;
end endmodule
