module accumulator(clk, rst, load, sh, ad, sum, cout, d, q);
input clk, rst, load, sh, ad;
input [3:0] sum;
input cout;
input [3:0] d;
output reg [8:0] q;
 always @(posedge clk or posedge rst) begin
     if (rst)
         q <= 9'b000000000;
     else if (load)
         q <= {5'b00000, d};
     else if (ad) begin
         q[7:4] <= sum;
         q[8]   <= cout;
     end
     else if (sh)
         // Right-shift the 9-bit {carry, A, Q} word with zero fill.
         q <= {1'b0, q[8:1]};





end
endmodule
