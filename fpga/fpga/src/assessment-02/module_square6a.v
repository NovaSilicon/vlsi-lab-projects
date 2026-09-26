module square6a (Y , A ) ;
output [7:0] Y ;
input [3:0] A ;
wire [7:0] a_squared ;
wire [7:0] six_a ;
wire c_out ;
multiplier4 mult1 ( a_squared , A , A ) ;
multiplier4 mult2 ( six_a , 4 ' d6 , A ) ;
adder4bit add_low ( Y [3:0] , c_out , a_squared [3:0] , six_a [3:0] , 1 '
adder4bit add_high ( Y [7:4] , , a_squared [7:4] , six_a [7:4] , c_out ) ;
endmodule
