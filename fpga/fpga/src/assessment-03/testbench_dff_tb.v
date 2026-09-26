module dff_tb () ;

reg d , rst , clk ;
wire q ;

dff f1 (q ,d , rst , clk ) ;
always
      #5 clk = ~ clk ;

initial
begin
clk = 0;
rst = 1;
d = 0;
#5 rst = 0;
#10 d = 0;
#10 d = 1;

#15 $stop ;
end
endmodule
