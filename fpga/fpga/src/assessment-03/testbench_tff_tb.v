module tff_tb () ;

reg t , rst , clk ;
wire q ;

tff f1 (q ,t , rst , clk ) ;
always
      #5 clk = ~ clk ;

initial
begin
clk = 0;
rst = 1;
t = 0;
#5 rst = 0;
#10 t = 0;
#10 t = 1;

 #15 $stop ;
end
endmodule
