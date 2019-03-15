`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 03:29:52 PM
// Design Name: 
// Module Name: SimFSM
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


module SimFSM();

    logic sclk, reset, SA, SB;
    logic [2:0] LA, LB;
    logic [2:0] curState;
    
//    logic [2:0] aEx, bEx;    
//    logic [31:0] vecNum, errors;
//    logic [7:0] testVecs[10000:0];
    
    ClockedFSM theFSM(reset, sclk, SA, SB, LA, LB, curState);
    
    always
        begin 
            sclk = 1; #5; sclk = 0; #5;
        end
    
    initial
        begin
            SA = 0;
            SB = 0;
            reset = 1;
            #10; SA = 1; SB = 1;
            #10; reset = 0; SA = 1; SB = 0;
            #10; SA = 0; SB = 1;
            #10; SA = 0; SB = 1;
            #10; SA = 0; SB = 1;
            #10; SA = 1; SB = 1;
            #10; SA = 0; SB = 1;
            #10; SA = 1; SB = 1;
            #10; SA = 0; SB = 0;
            #10; SA = 1; SB = 0;
        end
        
    
    
    
//    initial 
//        begin
//            $readmemb("FSM.tv", testVecs);
//            vecNum = 0;
//            errors = 0;
//            reset = 1;
//            #27; reset = 0;
//        end
        
//     always @(posedge clk)
//        begin
//            #1;
//            {SA,SB,aEx,bEx} = testVecs[vecNum];
//        end
        
    
//    always @ (negedge clk)
//        if (~reset) begin
//            if ((LA !== aEx) | (LB !== bEx)) begin
//                $display("Error at: %b", {SA,SB});
//                $display("output %b and %b should be: %b and %b", LA, LB, aEx, bEx);
//                errors = errors + 1;
//            end
//            vecNum = vecNum + 1;
//            if (testVecs[vecNum] === 4'bx) begin
//                $display ("%b number of tests have completed with %b errors", vecNum, errors);
//                $finish;
//            end
//        end
endmodule
