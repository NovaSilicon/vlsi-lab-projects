module ringcount (q , clk , rst ) ;

output [3:0] q ;
input clk , rst ;
reg [3:0] q ;

always @ ( posedge clk or posedge rst )
begin
if ( rst )
    q <= 4 ' b1000 ;
else
    q <={ q [2:0] , q [3]};

end

endmodule
