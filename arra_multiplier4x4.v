`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 16:12:18
// Design Name: 
// Module Name: arra_multiplier4x4
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


module arra_multiplier4x4(A,B,P);
 input [3:0] A,B;
 output [7:0]P;
 wire[39:0] w;
 wire[10:0] c;
 wire[5:0] s;
 and and00(w[0],A[0],B[0]);
 and and01(w[1],A[1],B[0]);
 and and02(w[2],A[2],B[0]);
 and and03(w[3],A[3],B[0]);
 and and04(w[4],A[0],B[1]);
 and and05(w[5],A[1],B[1]);
 and and06(w[6],A[2],B[1]);
 and and07(w[7],A[3],B[1]);
 and and08(w[8],A[0],B[2]);
 and and09(w[9],A[1],B[2]);
 and and10(w[10],A[2],B[2]);
 and and11(w[11],A[3],B[2]);
 and and12(w[12],A[0],B[3]);
 and and13(w[13],A[1],B[3]);
 and and14(w[14],A[2],B[3]);
 and and15(w[15],A[3],B[3]);
 assign P[0]=w[0];
 
// Instantiation of HalfAdder
h_adder ha00(P[1],c[0],w[1],w[4]);
h_adder ha01(w[16],c[1],w[2],w[5]);
h_adder ha02(w[17],c[2],w[3],w[6]);

//Instantiation of FullAdder
f_adder fa00(P[2],c[3],w[16],w[8],c[0]);
f_adder fa01(w[18],c[4],w[17],w[9],c[1]);
f_adder fa02(w[19],c[5],w[7],w[10],c[2]);
f_adder fa03(P[3],c[6],w[18],w[12],c[3]);
f_adder fa04(w[20],c[7],w[19],w[13],c[4]);
f_adder fa05(w[21],c[8],w[11],w[14],c[5]);
//Instantiation of halfadder
h_adder ha03(P[4],c[9],w[20],c[6]);

f_adder fa06(P[5],c[10],w[21],c[7],c[9]);
f_adder fa07(P[6],P[7],w[15],c[8],c[10]);


 endmodule
