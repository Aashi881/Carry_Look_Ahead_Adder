`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2026 12:17:50
// Design Name: 
// Module Name: tb_cla_16bit
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


`timescale 1ns / 1ps

module tb_cla_16bit;

    reg  [15:0] A;
    reg  [15:0] B;
    reg         Cin;
    wire [15:0] Sum;
    wire        Cout;

    // DUT instantiation
    cla_16bit dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        // Test case 1
        A = 16'h0003; B = 16'h0005; Cin = 0;
        #10;

        // Test case 2
        A = 16'h00FF; B = 16'h0001; Cin = 0;
        #10;

        // Test case 3
        A = 16'h0F0F; B = 16'h00F0; Cin = 1;
        #10;

        // Test case 4
        A = 16'hFFFF; B = 16'h0001; Cin = 0;
        #10;

        $stop;
    end

endmodule

