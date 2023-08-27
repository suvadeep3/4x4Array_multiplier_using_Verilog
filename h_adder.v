`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 16:16:21
// Design Name: 
// Module Name: h_adder
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


module h_adder(sum,carry,a,b);
 input a,b;
 output sum,carry;
 assign sum=a^b;
 assign carry=a&b;
endmodule
