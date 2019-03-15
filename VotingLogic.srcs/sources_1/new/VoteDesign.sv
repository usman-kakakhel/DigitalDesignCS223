`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2018 06:00:05 PM
// Design Name: 
// Module Name: VoteDesign
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


module VoteDesign(input logic vote1,vote2,vote3,
                 output  [3:0] out);
                 
    logic zero, bnc, cNot, bncNot;

    assign zero = 0;
    
    and(bnc, vote2, vote3);
    
    not(bncNot, bnc);
    
    not(cNot, vote3);
    
    Mux_2To1 mux1(zero, bnc, vote1, out[3]);
    
    Mux_2To1 mux2(bnc, bncNot, vote1, out[2]);
    
    Mux_2To1 mux3(vote3, cNot, vote2, out[1]);
    
    assign out[0] = ~(~vote2);
    
endmodule
