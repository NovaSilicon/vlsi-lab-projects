module t_mux41 () ;
reg i0 , i1 , i2 , i3 ;
reg s0 , s1 ;
wire y ;
mux41 m1 (y , i0 , i1 , i2 , i3 , s0 , s1 ) ;
initial
begin
i0 = 0;
i1 = 1;
i2 = 0;
i3 = 1;
s1 = 0;
s0 = 0;
#5 s1 = 0; s0 = 1;
#5 s1 = 1; s0 = 0;
#5 s1 = 1; s0 = 1;
#10 $stop ;
end
endmodule
