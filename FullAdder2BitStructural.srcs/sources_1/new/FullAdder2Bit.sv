`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2018 06:57:57 PM
// Design Name: 
// Module Name: FullAdder2Bit
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


module FullAdder2Bit(input logic [1:0] a,b,
                           logic cin,
                    output logic [1:0]s,
                           logic cout);
                           
    logic z;
    
    FullAdder1Bit adder1(a[0],b[0],cin,s[0],z);
    FullAdder1Bit adder2(a[1],b[1],z,s[1],cout);
    
    
endmodule
