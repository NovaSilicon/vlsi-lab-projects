module t_multiplier4 () ;
reg [3:0] A , B ;
wire [7:0] Y ;
multiplier4 m1 (Y , A , B ) ;
initial
begin
A = 4 ' d2 ; B = 4 ' d3 ;
#5 A = 4 ' d4 ; B = 4 ' d5 ;
#5 A = 4 ' d7 ; B = 4 ' d2 ;
#10 $stop ;
end
endmodule
