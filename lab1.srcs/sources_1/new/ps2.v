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
    input wire clk,
    input wire reset,
    input wire kb_clk,
    input wire kb_data,
    output wire [7:0] display_o
    );
    
    wire kb_negedge_o;
    wire char_0;
    wire valid_1_o;
    
    kb_sync sync_inst (
    .clk(clk),
    .kb_clk(kb_clk),
    .reset(reset),
    .kb_negedge_o(kb_negedge_o)
    );

    // Instantiate S2P
    S2P s2p_inst (
        .clk(clk),
        .reset(reset),
        .kb_negedge_o(kb_negedge_o),
        .kb_data(kb_data),
        .char_o(char_o),
        .valid_o(valid_o)
    );
    
    // Instantiate Display
    Display display_inst (
        .clk(clk),
        .reset(reset),
        .valid_o(valid_o),
        .char_o(char_o),
        .display_o(display_o)
    );

endmodule // lab1