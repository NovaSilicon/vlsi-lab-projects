module Assesment_tb () ;
reg clk , rst ;
reg pin_pulse , pout_pulse ;
wire [6:0] peoplein , total ;

Assesment a1 ( peoplein , total , pin_pulse , pout_pulse , rst , clk ) ;

initial
begin
clk = 0;
forever #5 clk = ~ clk ;
end

initial
begin
rst = 1;
pin_pulse = 0;
pout_pulse = 0;
#20 rst = 0;

// One person enters

#10 pin_pulse = 1;
#10 pin_pulse = 0;

// One more person enters

#10 pin_pulse = 1;
#10 pin_pulse = 0;

// One person leaves

#10 pout_pulse = 1;
#10 pout_pulse = 0;

// Entry and exit together

#10 pin_pulse = 1;
pout_pulse = 1;
#10 pin_pulse = 0;
pout_pulse = 0;




// Five entries

begin
#10 pin_pulse = 1;
#10 pin_pulse = 0;
end

// Five exits

begin
#10 pout_pulse = 1;
#10 pout_pulse = 0;
end

#20 $stop ;
end
endmodule
