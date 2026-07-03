`timescale 1ns/1ps
module tb_muxdelay;

wire Y;
reg  A;
reg  B;
reg  S;

reg C;
reg clk;
reg rst;

muxdelay dut(A,B,C,S,clk,rst,Y);


initial begin
rst=1'b1;
clk=1'b0;
A=1'b0; 
B=1'b0;
C=1'b0; 
S=1'b0;
#160;
rst=1'b0;
//Z=1'b0;
#500 $finish;

end

always #40 A=~A;
always #20 B=~B;
always #320 C=~C;

always #80 S=~S;

always #10 clk=~clk;

always@(*) 
$monitor("At time = %t,A=%d, B=%d, C=%d, S=%d, RST=%d, Y = %d", $time,A,B,C,S,rst,Y);

initial $sdf_annotate("../4_Physical_Design_Flow/5_Routing/Routing/muxdelay_postRoute_with_pad_delay.sdf",dut,,"sdf.log");

endmodule 
