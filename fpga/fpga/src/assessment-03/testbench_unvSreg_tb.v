module unvSreg_tb () ;

reg   [3:0] p ;
reg   SR , SL ;
reg   [1:0] S ;
reg   clk , rst ;

wire [3:0] q ;

unvSreg s1 (q , p , SR , SL , S , clk , rst ) ;

always
#5 clk = ~ clk ;

initial
begin



 p = 4 ' b0000 ;
 SR = 0;
 SL = 0;
 S = 2 ' b00 ;
 clk = 0;
 rst = 1;

 #5 rst = 0;

 // Parallel Load : 1011
 #5 p = 4 ' b1011 ;
     S = 2 ' b11 ;

 #10;

 // Hold
 S = 2 ' b00 ;

 #10;

 // Shift Right , SR = 0
 SR = 0;
 S = 2 ' b01 ;

 #10;

 // Shift Right , SR = 1
 SR = 1;
 S = 2 ' b01 ;

 #10;

 // Shift Left , SL = 0
 SL = 0;
 S = 2 ' b10 ;

 #10;

 // Shift Left , SL = 1
 SL = 1;
 S = 2 ' b10 ;

 #20 $stop ;

end

endmodule
