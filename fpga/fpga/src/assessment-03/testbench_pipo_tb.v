module pipo_tb () ;

reg [3:0] i ;
reg load , clk , rst ;
wire [3:0] q ;

pipo s1 (q , i , load , clk , rst ) ;

always
#5 clk = ~ clk ;

initial
begin
i = 4 ' b0000 ;
load = 0;
clk = 0;
rst = 1;

 #5 rst = 0;

 // Load 1011
 #5 i = 4 ' b1011 ;
     load = 1;

 #10 load = 0;





 // Load 1100
 #10 i = 4 ' b1100 ;
     load = 1;

 #10 load = 0;

 #20 $stop ;

end

endmodule
