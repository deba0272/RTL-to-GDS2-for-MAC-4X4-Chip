`timescale 1ns/1ps

module muxdelay(A,B,C,S,clk,rst,Y);
input A,B,C,S,clk,rst;
output Y;
wire Z;
reg temp;

MUX2X1 mux1 (A,B,S,Z);
always@(posedge(clk),posedge(rst))
begin
	if (rst) begin
		temp<=0;
	end else begin
		temp<=Z;
	end
end 
assign Y = ~(temp|C);

endmodule

