`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 03:26:27 PM
// Design Name: 
// Module Name: MyFSM
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


module MyFSM(input logic reset, wclk, SA, SB,
             output logic [2:0] LA, LB,
             output logic [2:0] curState);
    
    logic [31:0] tempDec;
    
    logic [2:0] nextState, currentState;
    parameter S0 = 3'b000;
    
    always_ff @ (posedge wclk, posedge reset)
        if (reset) currentState = S0;
        else       currentState = nextState;
    
    
    Dec5to32 myDec(currentState, SA, SB, tempDec);
    
    assign nextState[0] = (tempDec[0] | tempDec[1] | tempDec[8] | tempDec[9] | tempDec[10] | tempDec[11] | tempDec[16] |
                           tempDec[18] | tempDec[24] | tempDec[25] | tempDec[26] | tempDec[27]);
    
    assign nextState[1] = (tempDec[4] | tempDec[5] | tempDec[8] | tempDec[9] | tempDec[10] | tempDec[11] | tempDec[6] |
                           tempDec[7] | tempDec[24] | tempDec[25] | tempDec[26] | tempDec[27] | tempDec[20] | tempDec[21] | 
                           tempDec[22] | tempDec[23]);
                           
    assign nextState[2] = (tempDec[19] | tempDec[17] | tempDec[12] | tempDec[13] | tempDec[14] | tempDec[15] | tempDec[16] |
                           tempDec[18] | tempDec[24] | tempDec[25] | tempDec[26] | tempDec[27] | tempDec[20] | tempDec[21] | 
                           tempDec[22] | tempDec[23]);
    
    logic temp1;
    logic temp2;
    
    logic zero = 1'b0;
    
    Mux2To1 myMux1(zero, currentState[1], currentState[0], temp1);
    Mux2To1 myMux2(zero, ~currentState[0], ~currentState[1], temp2);
    
    assign LA[0] = 1;
    assign LB[0] = 1;
    
    Mux2To1 myMux3(~currentState[1], temp1, currentState[2], LA[1]);
    Mux2To1 myMux4(temp1, ~currentState[1], currentState[2], LB[1]);
    
    Mux2To1 myMux5(temp2, zero, currentState[2], LA[2]);
    Mux2To1 myMux6(zero, temp2, currentState[2], LB[2]);
    
    assign curState[0] = currentState[0];
    assign curState[1] = currentState[1];
    assign curState[2] = currentState[2];
    
endmodule
