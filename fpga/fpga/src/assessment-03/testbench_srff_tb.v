module srff_tb () ;

reg s ,r , clk , rst ;
wire q ;

srff f1 (q ,s ,r , clk , rst ) ;
always
     #5 clk = ~ clk ;

initial
begin
clk     = 0;
rst     = 0;
s =     0;
r =     0;

 #10   s   =   0;   r   =   0;
 #10   s   =   0;   r   =   1;
 #10   s   =   1;   r   =   0;
 #10   s   =   1;   r   =   1;




#15 $stop ;
end
endmodule
