module arithselect (Y , A , B , S ) ;

output [3:0] Y ;
input [3:0] A , B ;
input S ;

wire [3:0] diff_AB ;
wire [3:0] diff_BA ;
wire c1 , c2 ;

adder4bit sub1 ( diff_AB , c1 , A , ~B , 1 ' b1 ) ;
adder4bit sub2 ( diff_BA , c2 , B , ~A , 1 ' b1 ) ;

mux21   m0 ( Y [0] ,   diff_AB [0] ,   diff_BA [0] ,   S);
mux21   m1 ( Y [1] ,   diff_AB [1] ,   diff_BA [1] ,   S);
mux21   m2 ( Y [2] ,   diff_AB [2] ,   diff_BA [2] ,   S);
mux21   m3 ( Y [3] ,   diff_AB [3] ,   diff_BA [3] ,   S);

endmodule
