module add_sub_4bit (Y , Cout , A , B , s ) ;

output [3:0] Y ;
output Cout ;

input [3:0] A , B ;
input s ;

wire [3:0] sum ;
wire [3:0] diff ;
wire c1 ;

adder4bit A1 ( sum , Cout , A , B , 1 ' b0 ) ;

wire [3:0] B_comp ;
assign B_comp = ~ B ;

adder4bit A2 ( diff , c1 , A , B_comp , 1 ' b1 ) ;

mux21   M0 ( Y [0] ,   sum [0] ,   diff [0] ,   s);
mux21   M1 ( Y [1] ,   sum [1] ,   diff [1] ,   s);
mux21   M2 ( Y [2] ,   sum [2] ,   diff [2] ,   s);
mux21   M3 ( Y [3] ,   sum [3] ,   diff [3] ,   s);

endmodule
