`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2018 07:09:09 PM
// Design Name: 
// Module Name: TestBench2Bit
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


module TestBench2Bit();
    //Logic values to enter in the UUT
    logic [1:0] a,b;
    logic cin;
    logic [1:0] s;
    logic cout;
    
    FullAdder2Bit adderDUT(a,b,cin,s,cout);
    
    initial begin
    a[0] = 0; b[0] = 0; a[1] = 0; b[1] = 0; cin = 0; #15;
    if ((s[0] !== 0) | (s[1] !== 0) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 0; a[1] = 0; b[1] = 0; cin = 1; #15;
    if ((s[0] !== 1) | (s[1] !== 0) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 0; a[1] = 0; b[1] = 1; cin = 0; #15;
    if ((s[0] !== 0) | (s[1] !== 1) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 0; a[1] = 0; b[1] = 1; cin = 1; #15;
    if ((s[0] !== 1) | (s[1] !== 1) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 0; a[1] = 1; b[1] = 0; cin = 0; #15;
    if ((s[0] !== 0) | (s[1] !== 1) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 0; a[1] = 1; b[1] = 0; cin = 1; #15;
    if ((s[0] !== 1) | (s[1] !== 1) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 0; a[1] = 1; b[1] = 1; cin = 0; #15;
    if ((s[0] !== 0) | (s[1] !== 0) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 0; a[1] = 1; b[1] = 1; cin = 1; #15;
    if ((s[0] !== 1) | (s[1] !== 0) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 1; a[1] = 0; b[1] = 0; cin = 0; #15;
    if ((s[0] !== 1) | (s[1] !== 0) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 1; a[1] = 0; b[1] = 0; cin = 1; #15;
    if ((s[0] !== 0) | (s[1] !== 1) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 1; a[1] = 0; b[1] = 1; cin = 0; #15;
    if ((s[0] !== 1) | (s[1] !== 1) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 1; a[1] = 0; b[1] = 1; cin = 1; #15;
    if ((s[0] !== 0) | (s[1] !== 0) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 1; a[1] = 1; b[1] = 0; cin = 0; #15;
    if ((s[0] !== 1) | (s[1] !== 1) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 1; a[1] = 1; b[1] = 0; cin = 1; #15;
    if ((s[0] !== 0) | (s[1] !== 0) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 1; a[1] = 1; b[1] = 1; cin = 0; #15;
    if ((s[0] !== 1) | (s[1] !== 0) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 0; b[0] = 1; a[1] = 1; b[1] = 1; cin = 1; #15;
    if ((s[0] !== 0) | (s[1] !== 1) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 0; a[1] = 0; b[1] = 0; cin = 0; #15;
    if ((s[0] !== 1) | (s[1] !== 0) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 0; a[1] = 0; b[1] = 0; cin = 1; #15;
    if ((s[0] !== 0) | (s[1] !== 1) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);

    a[0] = 1; b[0] = 0; a[1] = 0; b[1] = 1; cin = 0; #15;
    if ((s[0] !== 1) | (s[1] !== 1) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 0; a[1] = 0; b[1] = 1; cin = 1; #15;
    if ((s[0] !== 0) | (s[1] !== 0) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 0; a[1] = 1; b[1] = 0; cin = 0; #15;
    if ((s[0] !== 1) | (s[1] !== 1) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 0; a[1] = 1; b[1] = 0; cin = 1; #15;
    if ((s[0] !== 0) | (s[1] !== 0) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 0; a[1] = 1; b[1] = 1; cin = 0; #15;
    if ((s[0] !== 1) | (s[1] !== 0) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 0; a[1] = 1; b[1] = 1; cin = 1; #15;
    if ((s[0] !== 0) | (s[1] !== 1) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 1; a[1] = 0; b[1] = 0; cin = 0; #15;
    if ((s[0] !== 0) | (s[1] !== 1) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 1; a[1] = 0; b[1] = 0; cin = 1; #15;
    if ((s[0] !== 1) | (s[1] !== 1) | (cout !== 0)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 1; a[1] = 0; b[1] = 1; cin = 0; #15;
    if ((s[0] !== 0) | (s[1] !== 0) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 1; a[1] = 0; b[1] = 1; cin = 1; #15;
    if ((s[0] !== 1) | (s[1] !== 0) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 1; a[1] = 1; b[1] = 0; cin = 0; #15;
    if ((s[0] !== 0) | (s[1] !== 0) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 1; a[1] = 1; b[1] = 0; cin = 1; #15;
    if ((s[0] !== 1) | (s[1] !== 0) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 1; a[1] = 1; b[1] = 1; cin = 0; #15;
    if ((s[0] !== 0) | (s[1] !== 1) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    a[0] = 1; b[0] = 1; a[1] = 1; b[1] = 1; cin = 1; #15;
    if ((s[0] !== 1) | (s[1] !== 1) | (cout !== 1)) $display("test %d %d %d %d %d IS WRONG", a[0], b[0], a[1], b[1], cin);
    
    end
endmodule
