module BidirSreg (q , SDR , SDL , SIR , SIL , direction , clk , rst ) ;

output SDR , SDL ;
output [3:0] q ;
input SIR , SIL ;
input direction , clk , rst ;
reg [3:0] q ;

always@ ( posedge clk or posedge rst )

begin
if ( rst )
q <=4 ' b0 ;
else if ( direction )
q <={ SIL , q [3:1]};
else
q <={ q [2:0] , SIR };
end
assign SDL = q [0];
assign SDR = q [3];
endmodule
