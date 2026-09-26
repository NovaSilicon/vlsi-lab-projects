module t_dec () ;
reg a , b ;
wire [3:0] y ;
dec d1 (y , a , b ) ;
initial begin a = 0; b = 0;
#5 a = 0; b = 1;
#5 a = 1; b = 0;
#5 a = 1; b = 1;
#10 $stop ;
end
endmodule
