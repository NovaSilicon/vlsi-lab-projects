module t_add_sub_4bit () ;

reg [3:0] A , B ;
reg s ;
wire [3:0] Y ;
wire Cout ;

add_sub_4bit U1 (Y , Cout , A , B , s ) ;

initial
begin
A = 4 ' b0101 ; B = 4 ' b0011 ; s = 0; // 5+3=8
#5;

A = 4 ' b0101 ; B = 4 ' b0011 ; s = 1; // 5 -3=2



 #5;

 A = 4 ' b1001 ; B = 4 ' b0100 ; s = 0; // 9+4=13
 #5;

 A = 4 ' b1001 ; B = 4 ' b0100 ; s = 1; // 9 -4=5
 #10 $stop ;
end

endmodule
