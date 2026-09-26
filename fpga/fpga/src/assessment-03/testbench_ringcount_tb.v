module ringcount_tb () ;

reg clk , rst ;
wire [3:0] q ;

ringcount s1 (q , clk , rst ) ;

always
#5 clk = ~ clk ;

initial
begin
clk = 0;
rst = 1;

 #5 rst = 0;

 #50 $stop ;

end

endmodule
