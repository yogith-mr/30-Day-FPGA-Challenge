`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2026 10:04:58
// Design Name: 
// Module Name: RCAdder4
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


module RCAdder4(Sum,C_out,A,B,C_in);
output[3:0] Sum;
output C_out;
input [3:0] A,B;
input C_in;
wire c1,c2,c3;
fulladder fa0 (Sum[0],c1,A[0],B[0],C_in);
fulladder fa1 (Sum[1],c2,A[1],B[1],c1);
fulladder fa2 (Sum[2],c3,A[2],B[2],c2);
fulladder fa3 (Sum[3],C_out,A[3],B[3],c3);
endmodule
