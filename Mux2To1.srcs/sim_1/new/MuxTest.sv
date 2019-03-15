`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2018 04:13:02 PM
// Design Name: 
// Module Name: MuxTest
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


module MuxTest();

    logic a,b,select,z;
    
    Mux2To1 myMux(a,b,select,z);
    
    initial begin
    a = 0; b = 0; select = 0; #15;
    if(z !== 0) $display("test at 000 has wrong results.");
    
    a = 0; b = 0; select = 1; #15;
    if(z !== 0) $display("test at 001 has wrong results.");
        
    a = 0; b = 1; select = 0; #15;
    if(z !== 0) $display("test at 010 has wrong results.");
    
    a = 0; b = 1; select = 1; #15;
    if(z !== 1) $display("test at 011 has wrong results.");
    
    a = 1; b = 0; select = 0; #15;
    if(z !== 1) $display("test at 100 has wrong results.");
            
    a = 1; b = 0; select = 1; #15;
    if(z !== 0) $display("test at 101 has wrong results.");
    
    a = 1; b = 1; select = 0; #15;
    if(z !== 1) $display("test at 110 has wrong results.");
          
    a = 1; b = 1; select = 1; #15;
    if(z !== 1) $display("test at 111 has wrong results.");
    end

endmodule
