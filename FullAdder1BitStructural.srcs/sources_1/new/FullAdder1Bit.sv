`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2018 06:21:06 PM
// Design Name: 
// Module Name: FullAdder1Bit
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


module FullAdder1Bit(input logic a,b,cin, output logic s,cout);

    logic x,y,z;
    
    and (y,a,b), (z,x,cin);
    xor (x,a,b), (s,x,cin);
    or (cout,y,z);
    

endmodule
