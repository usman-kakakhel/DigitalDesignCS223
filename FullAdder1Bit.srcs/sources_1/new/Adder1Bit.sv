`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2018 03:42:17 PM
// Design Name: 
// Module Name: Adder1Bit
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


module Adder1Bit( input logic a,b,cin, output logic s,cout);
    
    assign s = ((a ^ b) ^ cin);
    assign cout = ((a & b) | ((a ^ b) & cin));
    
endmodule
