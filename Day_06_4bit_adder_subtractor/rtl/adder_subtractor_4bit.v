`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2026 19:52:46
// Design Name: 
// Module Name: adder_subtractor_4bit
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


module adder_subtractor_4bit(Sum,C_out,A,B,ctrl );
input [3:0] A,B;
input ctrl;
output [3:0] Sum;
output C_out;
wire [3:0] B_out;
wire c1,c2,c3;
assign B_out[0] = ctrl^B[0];
assign B_out[1] = ctrl^B[1];
assign B_out[2] = ctrl^B[2];
assign B_out[3] = ctrl^B[3];
fulladder fa0 (.a(A[0]),.b(B_out[0]),.cin(ctrl),.sum(Sum[0]),.carry(c1));
fulladder fa1 (.a(A[1]),.b(B_out[1]),.cin(c1),.sum(Sum[1]),.carry(c2));
fulladder fa2 (.a(A[2]),.b(B_out[2]),.cin(c2),.sum(Sum[2]),.carry(c3));
fulladder fa3 (.a(A[3]),.b(B_out[3]),.cin(c3),.sum(Sum[3]),.carry(C_out));
endmodule
