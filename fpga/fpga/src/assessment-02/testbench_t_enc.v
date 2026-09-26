module t_enc () ;
reg [3:0] d ;
wire [1:0] y ;
enc e1 (y , d ) ;
initial
begin
d = 4 ' b0001 ;
#5 d = 4 ' b0010 ;
#5 d = 4 ' b0100 ;
#5 d = 4 ' b1000 ;
#10 $stop ;
end
endmodule
