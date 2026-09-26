module Assesment ( peoplein , total , pin_pulse , pout_pulse , rst , clk ) ;
output [6:0] peoplein , total ;
input pin_pulse , pout_pulse , rst , clk ;
reg [6:0] peoplein , total ;
reg [6:0] pincount ;
reg [6:0] poutcount ;

// COUNT PEOPLE ENTERING

always @ ( posedge clk or posedge rst )
begin
if ( rst )
begin
pincount <= 7 ' d0 ;
total <= 7 ' d0 ;
end
else
begin
if ( pin_pulse && pincount < 7 ' d99 )
pincount <= pincount + 1 ' b1 ;
if ( pin_pulse && total < 7 ' d99 )
total <= total + 1 ' b1 ;
end
end

// COUNT PEOPLE LEAVING

always @ ( posedge clk or posedge rst )
begin
if ( rst )
poutcount <= 7 ' d0 ;
else if ( pout_pulse && poutcount < pincount )
poutcount <= poutcount + 1 ' b1 ;
end

// TOTAL PEOPLE CURRENTLY INSIDE




always @ (*)
begin
peoplein = pincount - poutcount ;
end
endmodule
