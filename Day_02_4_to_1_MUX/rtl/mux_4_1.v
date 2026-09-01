`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2026 12:15:05
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(input I0,I1,I2,I3,S0,S1,output reg Y );
always@(*)begin
case({S1,S0})
2'b00:begin
Y=I0;
end
2'b10:begin
Y=I1;
end
2'b01:begin
Y=I2;
end
2'b11:begin
Y=I3;
end
default:begin
Y=I0;
end
endcase
end 
endmodule
