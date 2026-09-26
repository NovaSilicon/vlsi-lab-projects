module multiplier4 (Y , A , B ) ;
output [7:0] Y ;
input [3:0] A , B ;
wire p00 , p01 , p02 , p03 ;
wire p10 , p11 , p12 , p13 ;
wire p20 , p21 , p22 , p23 ;
wire p30 , p31 , p32 , p33 ;
wire [3:0] sum1 , sum2 , sum3 ;
wire c1 , c2 , c3 ;
and ( p00 , A [0] , B [0]) ;
and ( p01 , A [1] , B [0]) ;
and ( p02 , A [2] , B [0]) ;
and ( p03 , A [3] , B [0]) ;
and ( p10 , A [0] , B [1]) ;
and ( p11 , A [1] , B [1]) ;
and ( p12 , A [2] , B [1]) ;
and ( p13 , A [3] , B [1]) ;
and ( p20 , A [0] , B [2]) ;
and ( p21 , A [1] , B [2]) ;
and ( p22 , A [2] , B [2]) ;
and ( p23 , A [3] , B [2]) ;
and ( p30 , A [0] , B [3]) ;
and ( p31 , A [1] , B [3]) ;
and ( p32 , A [2] , B [3]) ;
and ( p33 , A [3] , B [3]) ;
buf ( Y [0] , p00 ) ;
adder4bit add1 ( sum1 , c1 , {1 ' b0 , p03 , p02 , p01 } , { p13 , p12 , p11 ,
buf ( Y [1] , sum1 [0]) ;
adder4bit add2 ( sum2 , c2 , { c1 , sum1 [3:1]} , { p23 , p22 , p21 , p20 } ,
' b0 ) ;
buf ( Y [2] , sum2 [0]) ;
adder4bit add3 ( sum3 , c3 , { c2 , sum2 [3:1]} , { p33 , p32 , p31 , p30 } ,
' b0 ) ;
buf ( Y [3] , sum3 [0]) ;
buf ( Y [4] , sum3 [1]) ;
buf ( Y [5] , sum3 [2]) ;
buf ( Y [6] , sum3 [3]) ;
buf ( Y [7] , c3 ) ;
endmodule
