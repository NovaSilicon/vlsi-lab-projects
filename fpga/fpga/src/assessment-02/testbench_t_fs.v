module t_fs () ;
reg a , b , bin ;
wire diff , borrow ;
fs f1 ( diff , borrow , a ,   b , bin ) ;
initial
begin
a = 0; b = 0; bin = 0;
#5 a = 0; b = 0; bin =        1;
#5 a = 0; b = 1; bin =        0;
#5 a = 0; b = 1; bin =        1;
#5 a = 1; b = 0; bin =        0;
#5 a = 1; b = 0; bin =        1;
#5 a = 1; b = 1; bin =        0;
#5 a = 1; b = 1; bin =        1;
#10 $stop ;
end
endmodule
