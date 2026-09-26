module jkff_tb () ;

reg j ,k , clk , rst ;
wire q ;

jkff f1 (q ,j ,k , clk , rst ) ;
always
     #5 clk = ~ clk ;

initial
begin
clk     = 0;
rst     = 0;
j =     0;
k =     0;

 #10   j   =   0;   k   =   0;
 #10   j   =   0;   k   =   1;
 #10   j   =   1;   k   =   0;
 #10   j   =   0;   k   =   0;



 #10 j = 0; k = 1;
 #10 j = 1; k = 1;

#15 $stop ;
end
endmodule
