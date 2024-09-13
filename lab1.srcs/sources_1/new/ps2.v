`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:     Uppsala University
// Engineer:    Maximilian Scharf
// 
// Create Date: 09/12/2024 12:07:29 PM
// Design Name: 
// Module Name: ps2
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


module lab1(
    input kb_clk,
    input kb_data,
    input reset,
    input clk,
    output [7:0] display_0
    );
    
    reg kb_negedge_o;
    
    always @ (posedge kb_clk) begin
        kb_negedge_o = 1;
    end //always
        

endmodule // lab1