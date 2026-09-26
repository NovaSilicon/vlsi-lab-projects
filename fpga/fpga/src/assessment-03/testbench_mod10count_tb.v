module mod10count_tb () ;

reg clk , rst ;
wire [3:0] q ;

mod10count s1 (q , clk , rst ) ;

always
#5 clk = ~ clk ;

initial
begin
clk = 0;
rst = 1;

 #5 rst = 0;

 #120 $stop ;

end

endmodule
