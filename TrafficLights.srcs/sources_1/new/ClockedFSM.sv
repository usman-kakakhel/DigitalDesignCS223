`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 03:26:27 PM
// Design Name: 
// Module Name: ClockedFSM
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


module ClockedFSM(input logic reset, clk, SA, SB,
                  output logic [2:0] LA, LB,
                  output logic [2:0] curState);
                  
      logic nclk;            
      ClockDivider clkk(clk, nclk);
      MyFSM mFSM(reset, nclk, SA, SB, LA, LB, curState);
      
endmodule
