module t_mux2x1 () ;
reg a , b , s ;
wire y ;
mux21 m1 (y , a , b , s ) ;
initial
begin
a = 0; b = 1; s = 0;
#5 s = 1;
#5 a = 1;
b = 0; s = 0;
#5 s = 1;
#10 $stop ;
end
endmodule
