module Se ve n S eg m e nt C o un t e r ( CLOCK_50 , KEY0 , KEY1 , KEY2 , HEX0 , HEX1 , HEX2

input CLOCK_50 , KEY0 , KEY1 , KEY2 ;

output [6:0] HEX0 , HEX1 , HEX2 , HEX3 ;

wire pin_pulse , pout_pulse ;
wire [6:0] peoplein , total ;

wire [3:0] punit , ptens , tunit , ttens ;

wire rst ;

assign rst = ~ KEY2 ;


//    PUSH   BUTTON INPUTS
//    KEY0   = PIN
//    KEY1   = POUT
//    KEY2   = RESET


ButtonPulse d1 ( CLOCK_50 , rst , KEY0 , pin_pulse ) ;
ButtonPulse d2 ( CLOCK_50 , rst , KEY1 , pout_pulse ) ;


// COUNTER


Assesment a1 ( peoplein , total , pin_pulse , pout_pulse , rst , CLOCK_50 ) ;


// PEOPLEIN






assign punit = peoplein % 10;
assign ptens = peoplein / 10;


// TOTAL


assign tunit = total % 10;
assign ttens = total / 10;


// SEVEN SEGMENT


SevenSegment   s1 ( punit , HEX0 ) ;
SevenSegment   s2 ( ptens , HEX1 ) ;
SevenSegment   s3 ( tunit , HEX2 ) ;
SevenSegment   s4 ( ttens , HEX3 ) ;

endmodule
