module johnsoncount_tb () ;

reg clk , rst ;
wire [3:0] q ;

johnsoncount s1 (q , clk , rst ) ;

always
#5 clk = ~ clk ;

initial
begin
clk = 0;
rst = 1;

 #5 rst = 0;

 #90 $stop ;

end

endmodule
