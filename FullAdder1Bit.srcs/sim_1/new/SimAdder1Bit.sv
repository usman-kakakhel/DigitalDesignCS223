`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2018 03:53:02 PM
// Design Name: 
// Module Name: SimAdder1Bit
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


module SimAdder1Bit();
    
    logic a,b,cin;
    logic s,cout;
    
    Adder1Bit adderDUT(a,b,cin,s,cout);
    
    initial begin
    a = 0; b = 0; cin = 0; #5;
    if((cout !== 0) | (s !== 0)) $display("test at 000 has wrong results.");
    
    a = 0; b = 0; cin = 1; #5;
    if((cout !== 0) | (s !== 1)) $display("test at 001 has wrong results.");
        
    a = 0; b = 1; cin = 0; #5;
    if((cout !== 0) | (s !== 1)) $display("test at 010 has wrong results.");
    
    a = 0; b = 1; cin = 1; #5;
    if((cout !== 1) | (s !== 0)) $display("test at 011 has wrong results.");
    
    a = 1; b = 0; cin = 0; #5;
    if((cout !== 0) | (s !== 1)) $display("test at 100 has wrong results.");
            
    a = 1; b = 0; cin = 1; #5;
    if((cout !== 1) | (s !== 0)) $display("test at 101 has wrong results.");
    
    a = 1; b = 1; cin = 0; #5;
    if((cout !== 1) | (s !== 0)) $display("test at 110 has wrong results.");
          
    a = 1; b = 1; cin = 1; #5;
    if((cout !== 1) | (s !== 1)) $display("test at 111 has wrong results.");
    end
    
endmodule
