module sipo_tb () ;

reg din , clk , rst ;
wire [3:0] q ;

sipo s1 (q , din , clk , rst ) ;

always
#5 clk = ~ clk ;

initial
begin
din = 0;
clk = 0;
rst = 1;

 #5 rst = 0;

 #5    din   =   1;
 #10   din   =   0;
 #10   din   =   1;
 #10   din   =   1;

 #50 $stop ;

end




endmodule
