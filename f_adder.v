`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 16:12:54
// Design Name: 
// Module Name: f_adder
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


module f_adder(y,carryout,a,b,carryin);
 input a,b,carryin;
 output y,carryout;
 assign y=a^b^carryin;
 assign carryout=((a&b)|(a&carryin)|(b&carryin));
 
endmodule
