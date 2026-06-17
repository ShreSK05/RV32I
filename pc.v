`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2026 10:23:13
// Design Name: 
// Module Name: pc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pc(pc, pc_next, clk, pc_write, rst);
input clk, pc_write;
input [31:0]pc_next;
output reg [31:0]pc;
input rst;
always @(posedge clk)
begin
	if(rst)
		pc<=0;
	else if(pc_write)
		pc<=pc_next;
	else
		pc<=pc;
end
endmodule
