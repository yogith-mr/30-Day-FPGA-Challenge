`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2026 20:21:05
// Design Name: 
// Module Name: adder_subtractor_4bit_tb
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


module adder_subtractor_4bit_tb;
reg [3:0] A,B;
reg ctrl;
wire [3:0] Sum;
wire C_out;

adder_subtractor_4bit DUT (.A(A),.B(B),.ctrl(ctrl),.Sum(Sum),.C_out(C_out));
initial begin
A=4'b0101;B=4'b0001;ctrl=1;
#10;

A=4'b0101;B=4'b0001;ctrl=0;
#10;

A=4'b1001;B=4'b0011;ctrl=1;
#10;

A=4'b1001;B=4'b0011;ctrl=0;
#10;

A=4'b0110;B=4'b0101;ctrl=1;
#10;

A=4'b0110;B=4'b0101;ctrl=0;
#10;

A=4'b1000;B=4'b0111;ctrl=1;
#10;

A=4'b1000;B=4'b0111;ctrl=0;
#10;

A=4'b0001;B=4'b0101;ctrl=1;
#10;

A=4'b0001;B=4'b0101;ctrl=0;
#10;
$finish;
end

endmodule
