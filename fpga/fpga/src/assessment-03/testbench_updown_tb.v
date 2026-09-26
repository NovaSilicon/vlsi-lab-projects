module updown_tb () ;

reg s , clk , rst ;
wire [3:0] q ;

updown s1 (q , s , clk , rst ) ;

always
#5 clk = ~ clk ;

initial
begin
s = 0;
clk = 0;
rst = 1;

#5 rst = 0;

// UP counting
s = 0;
#50;

// DOWN counting
s = 1;



 #50;

 #20 $stop ;

end

endmodule
