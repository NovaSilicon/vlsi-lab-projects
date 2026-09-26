module piso_tb () ;

reg [3:0] din ;
reg load , clk , rst ;
wire [3:0] q ;
wire sout ;

piso s1 (q , sout , din , load , clk , rst ) ;

always
#5 clk = ~ clk ;

initial
begin
din = 4 ' b0000 ;
load = 0;
clk = 0;



 rst = 1;

 #5 rst = 0;

 // Parallel load 1011
 #5 din = 4 ' b1011 ;
     load = 1;

 #10 load = 0;

 // Shift
 #10;
 #10;
 #10;
 #10;

 #20 $stop ;

end

endmodule
