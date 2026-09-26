module ram_2port_top(CLOCK_50,SW,KEY,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7,LEDG0);
input CLOCK_50;
input [17:0]SW;
input [3:0]KEY;
output [6:0]HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7;
output LEDG0;
wire rst;
wire write_mode;
wire read_mode;
wire k0_pulse,k1_pulse,k2_pulse,k3_pulse;
wire [7:0]address_a;
wire [7:0]address_b;
wire [5:0]data_a;
wire [5:0]data_b;
wire [5:0]q_a;
wire [5:0]q_b;
reg [5:0]data_a_reg;
reg [5:0]data_b_reg;
reg [5:0]read_a_reg;
reg [5:0]read_b_reg;
wire [5:0]display_a;
wire [5:0]display_b;
wire wren_a;
wire wren_b;
assign rst = SW[17];
assign write_mode = ~SW[16];
assign read_mode = SW[16];
// Separate address switch groups
// Port A address = SW[7:0]
// Port B address = SW[15:8]
assign address_a = SW[7:0];
assign address_b = SW[15:8];
assign data_a = data_a_reg;
assign data_b = data_b_reg;
// A single physical 6-bit data entry field is used sequentially.
// K0 captures data for Port A; K1 captures data for Port B.
// This is necessary because DE2-115 has only 18 user switches,
// while two independent 8-bit addresses + two independent 6-bit
// data buses would require 28 switches.
assign wren_a = write_mode & k2_pulse;
assign wren_b = write_mode & k2_pulse;
// In read mode, K0/K1 latch the currently addressed RAM outputs.
assign display_a = read_mode ? read_a_reg : data_a_reg;
assign display_b = read_mode ? read_b_reg : data_b_reg;
assign LEDG0 = write_mode;
button_pulse p0(
.clk(CLOCK_50),
.rst_n(~rst),
.key(KEY[0]),
.pulse(k0_pulse)
);







button_pulse p1(
.clk(CLOCK_50),
.rst_n(~rst),
.key(KEY[1]),
.pulse(k1_pulse)
);
button_pulse p2(
.clk(CLOCK_50),
.rst_n(~rst),
.key(KEY[2]),
.pulse(k2_pulse)
);
button_pulse p3(
.clk(CLOCK_50),
.rst_n(~rst),
.key(KEY[3]),
.pulse(k3_pulse)
);
// Data entry and read-back latches
always@(posedge CLOCK_50 or posedge rst)
begin
if(rst)
begin
data_a_reg<=6'b000000;
data_b_reg<=6'b000000;
read_a_reg<=6'b000000;
read_b_reg<=6'b000000;
end
else
begin
if(write_mode)
begin
 if(k0_pulse)
   data_a_reg<=SW[5:0];
if(k1_pulse)
  data_b_reg<=SW[5:0];
end
if(read_mode)
begin
if(k0_pulse)
  read_a_reg<=q_a;
 if(k1_pulse)
   read_b_reg<=q_b;
end
end
end
// 256 x 6 dual-port RAM
// Both ports WRITE together in write mode.
// Both ports READ together in read mode.
ram_2port r1(
.address_a(address_a),
.address_b(address_b),
.clock(CLOCK_50),
.data_a(data_a),
.data_b(data_b),
.wren_a(wren_a),
.wren_b(wren_b),
.q_a(q_a),
.q_b(q_b)
);
//============================================================
// SEVEN SEGMENT DISPLAY
//============================================================
// HEX5 HEX4 = Port A address
// HEX1 HEX0 = Port A data/read value
// HEX7 HEX6 = Port B address
// HEX3 HEX2 = Port B data/read value
//============================================================






seven_segment s0(
.in(display_a[3:0]),
.hex(HEX0)
);
seven_segment s1(
.in({2'b00,display_a[5:4]}),
.hex(HEX1)
);
seven_segment s2(
.in(display_b[3:0]),
.hex(HEX2)
);
seven_segment s3(
.in({2'b00,display_b[5:4]}),
.hex(HEX3)
);
seven_segment s4(
.in(address_a[3:0]),
.hex(HEX4)
);
seven_segment s5(
.in(address_a[7:4]),
.hex(HEX5)
);
seven_segment s6(
.in(address_b[3:0]),
.hex(HEX6)
);
seven_segment s7(
.in(address_b[7:4]),
.hex(HEX7)
);
endmodule
