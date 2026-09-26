module adder4bit ( Sum , Cout , A , B , Cin ) ;
output [3:0] Sum ;
output Cout ;
input [3:0] A , B ;
input Cin ;
wire c1 , c2 , c3 ;
fa f1 ( Sum [0] , c1 , A [0] , B [0] , Cin ) ;
fa f2 ( Sum [1] , c2 , A [1] , B [1] , c1 ) ;
fa f3 ( Sum [2] , c3 , A [2] , B [2] , c2 ) ;
fa f4 ( Sum [3] , Cout , A [3] , B [3] , c3 ) ;
endmodule
