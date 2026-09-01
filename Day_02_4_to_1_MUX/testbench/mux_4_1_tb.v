`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2026 12:23:25
// Design Name: 
// Module Name: mux_4_1_tb
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


module mux_4_1_tb;
reg I0,I1,I2,I3;
reg S0,S1;
wire Y;
mux_4_1 uut (.I0(I0),.I1(I1),.I2(I2),.I3(I3),.S0(S0),.S1(S1),.Y(Y));
initial begin
I0=1;
I1=0;
I2=0;
I3=0;
S0=0;
S1=0;
#10;
I0=0;
I1=1;
I2=0;
I3=0;
S0=0;
S1=1;
#10;
I0=0;
I1=0;
I2=1;
I3=0;
S0=1;
S1=0;
#10;
I0=0;
I1=0;
I2=0;
I3=1;
S0=1;
S1=1;
#10;
$finish;
end
endmodule
