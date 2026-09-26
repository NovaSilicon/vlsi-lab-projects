module t_Lab () ;

reg [15:0] pc ;
reg reset , branch ;

wire [15:0] nextpc ;

Lab L1 ( nextpc , reset , branch , pc ) ;

initial
begin
pc =16 ' d10 ;
reset = 0;
branch = 0;

#5 branch =       0;   reset    =   0   ;
#5 branch =       0;   reset    =   1   ;
#5 branch =       1;   reset    =   0   ;
#5 branch =       1;   reset    =   1   ;
#10 $stop ;
end
endmodule
