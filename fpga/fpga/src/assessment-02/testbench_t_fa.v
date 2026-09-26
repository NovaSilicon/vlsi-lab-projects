module t_fa () ;
reg a , b , cin ;
wire s , c ;
fa f1 (s , c , a , b , cin ) ;
initial
begin
a = 0; b = 0; cin = 0;
#5 a = 0; b = 0; cin = 1;
#5 a = 0; b = 1; cin = 0;
#5 a = 0; b = 1; cin = 1;
#5 a = 1; b = 0; cin = 0;
#5 a = 1; b = 0; cin = 1;
#5 a = 1; b = 1; cin = 0;
#5 a = 1; b = 1; cin = 1;
#10 $stop ;
end
endmodule
