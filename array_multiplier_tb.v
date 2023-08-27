`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 17:01:29
// Design Name: 
// Module Name: array_multiplier_tb
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


module array_multiplier_tb();
reg [3:0]A,B;
wire[7:0]P;
arra_multiplier4x4 dut(.A(A),.B(B),.P(P));
initial
 begin
//$monitor($time,"A=%d B=%d P=%d",A,B,P);
A=11;B=10;
#10 A=01;B=15;
#10 A=12;B=07;
#10 A=10;B=15;
#5 $finish;
end
endmodule
