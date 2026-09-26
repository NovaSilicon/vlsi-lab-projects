module unvSreg (q ,p , SR , SL ,S , clk , rst ) ;
output [3:0] q ;
input [3:0] p ;
input SR , SL ;
input [1:0] S ;
input clk ;
input rst ;
reg [3:0] q ;

always @ ( posedge clk or posedge rst )
begin
if ( rst )
    q <= 4 ' b0000 ;

 else
 begin
      case ( S )
          2 ' b00 :   q   <=   q;
          2 ' b01 :   q   <=   { SR , q [3:1]};
          2 ' b10 :   q   <=   { q [2:0] , SL };
          2 ' b11 :   q   <=   p;
      endcase
 end
end

endmodule
