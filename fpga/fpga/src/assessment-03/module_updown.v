module updown (q ,s , clk , rst ) ;

output [3:0] q ;
input s ;
input clk , rst ;
reg [3:0] q ;

always @ ( posedge clk or posedge rst )
begin
if ( rst )
    q <= 4 ' b0000 ;
else if ( s )
    q <= q - 1 ' b1 ;
else
    q <= q + 1 ' b1 ;
end

endmodule
