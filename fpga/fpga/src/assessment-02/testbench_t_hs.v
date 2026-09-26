module t_hs () ;
reg a , b ;
wire diff , borrow ;
hs h1 ( diff , borrow , a , b ) ;
initial
begin
a = 0; b = 0;
#5 a = 0; b = 1;
#5 a = 1; b = 0;
#5 a = 1; b = 1;
#10 $stop ;
end
endmodule
