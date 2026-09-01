`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2026 16:17:05
// Design Name: 
// Module Name: comparator_2bit_tb
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


module comparator_2bit_tb;
reg [1:0] A;
reg [1:0] B;
wire A_gt_B;
wire A_eq_B;
wire A_lt_B;
comparator_2bit DUT (.A(A),.B(B),.A_gt_B(A_gt_B),.A_eq_B(A_eq_B),.A_lt_B(A_lt_B));
initial begin
A = 2'b00;
B = 2'b00;
#10;

A = 2'b00;
B = 2'b01;
#10;

A = 2'b00;
B = 2'b10;
#10;

A = 2'b00;
B = 2'b11;
#10;

A = 2'b01;
B = 2'b00;
#10;

A = 2'b01;
B = 2'b01;
#10;

A = 2'b01;
B = 2'b10;
#10;

A = 2'b01;
B = 2'b11;
#10;

A = 2'b10;
B = 2'b00;
#10;

A = 2'b10;
B = 2'b01;
#10;

A = 2'b10;
B = 2'b10;
#10;

A = 2'b10;
B = 2'b11;
#10;

A = 2'b11;
B = 2'b00;
#10;

A = 2'b11;
B = 2'b01;
#10;

A = 2'b11;
B = 2'b10;
#10;
A = 2'b11;
B = 2'b11;
#10;
$finish;

end
endmodule
