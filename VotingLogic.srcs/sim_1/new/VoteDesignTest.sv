`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2018 06:00:32 PM
// Design Name: 
// Module Name: VoteDesignTest
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


module VoteDesignTest(

    );
    
    logic A,B,C;
    logic [3:0] out;
    
    VoteDesign myLogic(A,B,C,out);
    
    initial begin
    A = 0; B = 0; C = 0; #15;
    if((out[3] !== 0) | (out[2] !== 0) | (out[1] !== 0) | (out[0] !== 0)) $display("test at 000 has wrong results.");
    
    A = 0; B = 0; C = 1; #15;
    if((out[3] !== 0) | (out[2] !== 0) | (out[1] !== 1) | (out[0] !== 0)) $display("test at 001 has wrong results.");
        
    A = 0; B = 1; C = 0; #15;
    if((out[3] !== 0) | (out[2] !== 0) | (out[1] !== 1) | (out[0] !== 1)) $display("test at 010 has wrong results.");
    
    A = 0; B = 1; C = 1; #15;
    if((out[3] !== 0) | (out[2] !== 1) | (out[1] !== 0) | (out[0] !== 1)) $display("test at 011 has wrong results.");
    
    A = 1; B = 0; C = 0; #15;
    if((out[3] !== 0) | (out[2] !== 1) | (out[1] !== 0) | (out[0] !== 0)) $display("test at 100 has wrong results.");
            
    A = 1; B = 0; C = 1; #15;
    if((out[3] !== 0) | (out[2] !== 1) | (out[1] !== 1) | (out[0] !== 0)) $display("test at 101 has wrong results.");
    
    A = 1; B = 1; C = 0; #15;
    if((out[3] !== 0) | (out[2] !== 1) | (out[1] !== 1) | (out[0] !== 1)) $display("test at 110 has wrong results.");
          
    A = 1; B = 1; C = 1; #15;
    if((out[3] !== 1) | (out[2] !== 0) | (out[1] !== 0) | (out[0] !== 1)) $display("test at 111 has wrong results.");
    end
        
endmodule
