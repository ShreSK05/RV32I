`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2026 10:20:15
// Design Name: 
// Module Name: subtractor
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


module subtractor(
    input [31:0] a,
    input [31:0] b,
    output [31:0] result,
    output overflow,
    output underflow
);
    wire [31:0] b_neg; // Negate `b` for subtraction
    assign b_neg = {~b[31], b[30:0]}; // Flip sign bit of `b`

    adder adder (
        .a(a),
        .b(b_neg),
        .result(result),
        .overflow(overflow),
        .underflow(underflow)
    );
endmodule
