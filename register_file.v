`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2026 10:24:02
// Design Name: 
// Module Name: register_file
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


module register_file(clk, a1, a2, d1, d2, da, din, web);

input [4:0]a1, a2;
output [31:0]d1, d2;
input clk, web;
input [4:0]da;
input [31:0]din;
reg [31:0]REG[31:0];

assign d1=REG[a1];
assign d2=REG[a2];

always @(posedge clk)
begin
	if(web)
		REG[da]<=din;
end

initial
begin
REG[2] = 32'd2; // 2
REG[1] = 32'd1; //1
end

always @(posedge clk) begin
    $display("REG[3]: %d", REG[3]);
    //$display("REG[4]: %d", REG[4]);
end 


endmodule