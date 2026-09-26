module ButtonPulse ( clk , rst , key , pulse ) ;

input clk , rst , key ;
output pulse ;

reg key1 , key2 ;
reg key2_prev ;
reg pulse ;

// SYNCHRONIZE AND DETECT BUTTON PRESS


always @ ( posedge clk or posedge rst )
begin
if ( rst )
begin
    key1 <= 1 ' b1 ;
    key2 <= 1 ' b1 ;
    key2_prev <= 1 ' b1 ;
    pulse <= 1 ' b0 ;
end
else
begin
    // Synchronizer
    key1 <= key ;
    key2 <= key1 ;

     // Previous synchronized state
     key2_prev <= key2 ;




        // Default : no pulse
        pulse <= 1 ' b0 ;

        // Active - low button press
        if ( key2_prev && ! key2 )
             pulse <= 1 ' b1 ;
  end
end

endmodule
