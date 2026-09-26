module t_arith_unit () ;
reg [3:0] a , b ;
reg s ;
wire [3:0] y ;
arith_unit a1 (y , a , b , s ) ;
initial
begin
a = 4 ' b1100 ; b = 4 ' b1001 ; s = 0;
#5 a = 4 ' b1100 ; b = 4 ' b1001 ; s = 1;
#10 $stop ;
end
endmodule
