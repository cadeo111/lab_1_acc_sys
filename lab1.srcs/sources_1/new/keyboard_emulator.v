`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// This module defines a `keyboard emulator` that generates and submits 
// “Accelerator – 1DT109�?. Each letter is sent in three lines, where the first
// line is always the start bit (kb_data = 0), the second line has the actual
// data (LSB first), and the last line always contains the parity and the stop
// bits. We discard the parity bit, so here it is always set as 0.
///////////////////////////////////////////////////////////////////////////////


module keyboard_emulator(
    output kb_clk,
    output kb_data
    );
    
    reg kb_clk, kb_data;
    
    always begin
        #10 kb_clk = ! kb_clk;
    end
    
    initial begin
        kb_clk = 1;
        kb_data = 1;
        
        #25 kb_data = 0;
        #20 kb_data = 1; #20 kb_data = 0; #20 kb_data = 0;  #20 kb_data = 0;  #20 kb_data = 0;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 

        #20 kb_data = 0;
        #20 kb_data = 1; #20 kb_data = 1; #20 kb_data = 0;  #20 kb_data = 0;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
    
        #20 kb_data = 0;
        #20 kb_data = 1; #20 kb_data = 1; #20 kb_data = 0;  #20 kb_data = 0;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 

        #20 kb_data = 0;
        #20 kb_data = 1; #20 kb_data = 0; #20 kb_data = 1;  #20 kb_data = 0;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
    
        #20 kb_data = 0;
        #20 kb_data = 0; #20 kb_data = 0; #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
    
        #20 kb_data = 0;
        #20 kb_data = 1; #20 kb_data = 0; #20 kb_data = 1;  #20 kb_data = 0;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
    
        #20 kb_data = 0;
        #20 kb_data = 0; #20 kb_data = 1; #20 kb_data = 0;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
    
        #20 kb_data = 0;
        #20 kb_data = 1; #20 kb_data = 0; #20 kb_data = 0;  #20 kb_data = 0;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
    
        #20 kb_data = 0;
        #20 kb_data = 0; #20 kb_data = 0; #20 kb_data = 1;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
    
        #20 kb_data = 0;
        #20 kb_data = 1; #20 kb_data = 1; #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
    
        #20 kb_data = 0;
        #20 kb_data = 0; #20 kb_data = 1; #20 kb_data = 0;  #20 kb_data =0;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
                    
        #20 kb_data = 0;
        #20 kb_data = 0; #20 kb_data = 0; #20 kb_data = 0;  #20 kb_data =0;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 0;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
                    
        #20 kb_data = 0;
        #20 kb_data = 1; #20 kb_data = 0; #20 kb_data = 1;  #20 kb_data =1;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 0;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
                    
        #20 kb_data = 0;
        #20 kb_data = 0; #20 kb_data = 0; #20 kb_data = 0;  #20 kb_data =0;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 0;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
                    
        #20 kb_data = 0;
        #20 kb_data = 1; #20 kb_data = 0; #20 kb_data = 0;  #20 kb_data =0;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
                    
        #20 kb_data = 0;
        #20 kb_data = 0; #20 kb_data = 0; #20 kb_data = 1;  #20 kb_data =0;  #20 kb_data = 0;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
                    
        #20 kb_data = 0;
        #20 kb_data = 0; #20 kb_data = 0; #20 kb_data = 1;  #20 kb_data =0;  #20 kb_data = 1;  #20 kb_data = 0;  #20 kb_data = 1;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
                    
        #20 kb_data = 0;
        #20 kb_data = 1; #20 kb_data = 0; #20 kb_data = 0;  #20 kb_data =0;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
                    
        #20 kb_data = 0;
        #20 kb_data = 0; #20 kb_data = 0; #20 kb_data = 0;  #20 kb_data =0;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
                    
        #20 kb_data = 0;
        #20 kb_data = 1; #20 kb_data = 0; #20 kb_data = 0;  #20 kb_data =1;  #20 kb_data = 1;  #20 kb_data = 1;  #20 kb_data = 0;  #20 kb_data = 0;  
        #20 kb_data = 0; #20 kb_data = 1; 
                    
    end
    
endmodule
