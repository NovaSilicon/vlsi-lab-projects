module tff (q ,t , rst , clk ) ;
output q ;
input t , rst , clk ;
reg q ;

always @ ( posedge clk      or posedge rst )
begin
     if ( rst )
               q <=    1 ' b1 ;
    else if ( t )
               q <=    ~q;
    else
               q <=    q;
end
endmodule
