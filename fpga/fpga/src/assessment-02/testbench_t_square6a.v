module t_square6a () ;
reg [3:0] a ;
wire [7:0] y ;
square6a s1 (y , a ) ;
initial
begin
a = 4 ' b1111 ;
#5 a = 4 ' b1000 ;
#10 $stop ;
end
endmodule
