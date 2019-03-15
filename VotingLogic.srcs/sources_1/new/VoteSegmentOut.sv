`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2018 05:04:38 PM
// Design Name: 
// Module Name: VoteSegmentOut
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


module VoteSegmentOut(input logic clk,
                      input logic p1, p2, p3,
                      output logic a,b,c,d,e,f,g,dp,
                      output logic [3:0] an, out);
                      
                      logic [3:0] tempOut;
                      VoteDesign myVotes(p1, p2, p3, tempOut);
                      
                      assign out = tempOut;
                      
                      SevSeg_4digit(clk, tempOut, 4'b0000, 4'b0000, 4'b0000, a, b, c, d, e, f, g, dp, an);
endmodule
