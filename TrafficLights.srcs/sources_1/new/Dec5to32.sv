`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 03:26:27 PM
// Design Name: 
// Module Name: Dec5to32
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


module Dec5to32(input logic [2:0]S, 
                input logic SA, SB,
                output logic [31:0] outputs);
                
    logic[4:0] temp;
    assign temp[4] = S[2];
    assign temp[3] = S[1];
    assign temp[2] = S[0];
    assign temp[1] = SA;
    assign temp[0] = SB;
    
    //assign outputs = (1 << temp);
    
    
    always_comb
        begin
            outputs = 32'b0;
            case(temp)
                5'b00000 : outputs[0] = 1;
                5'b00001 : outputs[1] = 1;
                5'b00010 : outputs[2] = 1;
                5'b00011 : outputs[3] = 1;
                5'b00100 : outputs[4] = 1;
                5'b00101 : outputs[5] = 1;
                5'b00110 : outputs[6] = 1;
                5'b00111 : outputs[7] = 1;
                5'b01000 : outputs[8] = 1;
                5'b01001 : outputs[9] = 1;
                5'b01010 : outputs[10] = 1;
                5'b01011 : outputs[11] = 1;
                5'b01100 : outputs[12] = 1;
                5'b01101 : outputs[13] = 1;
                5'b01110 : outputs[14] = 1;
                5'b01111 : outputs[15] = 1;
                5'b10000 : outputs[16] = 1;
                5'b10001 : outputs[17] = 1;
                5'b10010 : outputs[18] = 1;
                5'b10011 : outputs[19] = 1;
                5'b10100 : outputs[20] = 1;
                5'b10101 : outputs[21] = 1;
                5'b10110 : outputs[22] = 1;
                5'b10111 : outputs[23] = 1;
                5'b11000 : outputs[24] = 1;
                5'b11001 : outputs[25] = 1;
                5'b11010 : outputs[26] = 1;
                5'b11011 : outputs[27] = 1;
                5'b11100 : outputs[28] = 1;
                5'b11101 : outputs[29] = 1;
                5'b11110 : outputs[30] = 1;
                5'b11111 : outputs[31] = 1;
                default : outputs[0] = 1;
            endcase
        end
endmodule
