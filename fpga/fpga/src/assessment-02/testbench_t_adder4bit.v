module t_adder4bit () ;
reg [3:0] a , b ;
reg cin ;
wire [3:0] sum ;
wire cout ;
adder4bit r1 ( sum , cout , a , b , cin ) ;
initial
begin
a = 4 ' b0001 ; b = 4 ' b0010 ; cin = 0;
#5 a = 4 ' b0100 ; b = 4 ' b0011 ; cin = 0;
#5 a = 4 ' b1111 ; b = 4 ' b0001 ; cin = 0;
#10 $stop ;
end
endmodule
