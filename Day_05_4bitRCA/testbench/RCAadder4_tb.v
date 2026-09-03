`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2026 10:45:30
// Design Name: 
// Module Name: RCAadder4_tb
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


module RCAadder4_tb;
wire [3:0]Sum;
wire C_out;
reg [3:0] A,B;
reg C_in;
RCAdder4 DUT(.Sum(Sum),.C_out(C_out),.A(A),.B(B),.C_in(C_in));
initial begin
A=4'b0000; B=4'b0000; C_in=0;
#10;

A=4'b0001; B=4'b0001; C_in=0;
#10;

A=4'b1010; B=4'b0101; C_in=1;
#10;

A=4'b1111; B=4'b1111; C_in=1;
#10;

A=4'b1111; B=4'b0001; C_in=1;
#10;

A=4'b0000; B=4'b0000; C_in=1;
#10;

A=4'b1111; B=4'b0000; C_in=0;
#10;

A=4'b0000; B=4'b0001; C_in=0;
#10;

A=4'b1010; B=4'b1010; C_in=0;
#10;
$finish;
end 
endmodule
