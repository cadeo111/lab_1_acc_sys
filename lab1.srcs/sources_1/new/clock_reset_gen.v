`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// This module provides the clock and reset signals.
///////////////////////////////////////////////////////////////////////////////


module clock_reset_gen(
    output sys_clk,
    output reset
    );
    
    reg sys_clk;
    reg reset;
    
    initial begin
        sys_clk = 0;
        reset = 1;
        #5 reset = 0;
        #10 reset = 1;
    end
    
    always begin
        #1 sys_clk = ! sys_clk;
    end

endmodule
