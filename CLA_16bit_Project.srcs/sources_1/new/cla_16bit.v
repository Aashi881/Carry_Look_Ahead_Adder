`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2026 12:16:11
// Design Name: 
// Module Name: cla_16bit
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


module cla_16bit(
    input  [15:0] A,
    input  [15:0] B,
    input         Cin,
    output [15:0] Sum,
    output        Cout
);

    wire [15:0] P;   // Propagate
    wire [15:0] G;   // Generate
    wire [16:0] C;   // Carry

    assign C[0] = Cin;

    assign P = A ^ B;
    assign G = A & B;

    genvar i;
    generate
        for(i = 0; i < 16; i = i + 1) begin
            assign C[i+1] = G[i] | (P[i] & C[i]);
            assign Sum[i] = P[i] ^ C[i];
        end
    endgenerate

    assign Cout = C[16];

endmodule
