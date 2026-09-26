module siso_tb () ;

reg din , clk , rst ;
wire do ;

siso s1 ( do , din , rst , clk ) ;

always
       #5 clk = ~ clk ;

initial
begin
din = 0;
clk = 0;
rst = 1;


 #5 rst = 0;

       #5 din = 1;
       #10 din = 0;
       #10 din = 1;
       #10 din = 0;

 #50 $stop ;

end
endmodule
