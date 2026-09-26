module piso (q , sout , din , load , clk , rst ) ;

output [3:0] q ;
output sout ;

input [3:0] din ;
input load , clk , rst ;

reg [3:0] q ;

always @ ( posedge clk or posedge rst )
begin
if ( rst )
    q <= 4 ' b0000 ;
else if ( load )
    q <= din ;
else
    q <= { q [2:0] ,1 ' b0 };
end

assign sout = q [3];

endmodule
