module BidirSreg_tb () ;

reg SIR , SIL ;
reg direction , clk , rst ;

wire [3:0] q ;
wire SDR , SDL ;

BidirSreg s1 (q , SDR , SDL , SIR , SIL , direction , clk , rst ) ;

always
#5 clk = ~ clk ;

initial
begin
SIR = 0;
SIL = 0;
direction = 0;
clk = 0;
rst = 1;





 #5 rst = 0;

 // Shift in from SIL
 SIL = 1;
 direction = 1;

 #10 SIL = 0;
 #10 SIL = 1;
 #10 SIL = 1;

 // Shift in from SIR
 SIR = 0;
 direction = 0;

 #10 SIR = 0;
 #10 SIR = 1;
 #10 SIR = 0;

 #20 $stop ;

end

endmodule
