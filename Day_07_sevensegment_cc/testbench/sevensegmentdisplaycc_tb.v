`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2026 23:23:09
// Design Name: 
// Module Name: sevensegmentdisplaycc_tb
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


module sevensegmentdisplaycc_tb;
reg [3:0] bcd;
wire [6:0] seg;
sevensegmentdisplaycc DUT (.bcd(bcd),.seg(seg));
initial begin
bcd=4'b0000;
#10;
bcd=4'b0001;
#10;
bcd=4'b0010;
#10;
bcd=4'b0011;
#10;
bcd=4'b0100;
#10;
bcd=4'b0101;
#10;
bcd=4'b0110;
#10;
bcd=4'b0111;
#10;
bcd=4'b1000;
#10;
bcd=4'b1001;
#10;
$finish;
end 

endmodule
