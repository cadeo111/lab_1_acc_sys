`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// The testbench instantiates the clock/reset signal generator, the keyboard
// emulator, and the device under test (dut) which you provide. It does not 
// check the output automatically, which you should do visually using a
// simulator.
///////////////////////////////////////////////////////////////////////////////

module testbench();
    
    wire sys_clk, reset, kb_clk, kb_data;
    wire [7:0] display_o;
    
    clock_reset_gen u1 (sys_clk, reset);
    keyboard_emulator u2 (kb_clk, kb_data);
    lab1 dut (sys_clk, reset, kb_clk, kb_data, display_o);
       
endmodule
