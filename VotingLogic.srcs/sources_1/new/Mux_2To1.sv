`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2018 05:59:36 PM
// Design Name: 
// Module Name: Mux_2To1
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


module Mux_2To1(input logic inp1,inp2,select,
               output logic result);
               
               assign result = select ? inp2 : inp1;
               
endmodule
