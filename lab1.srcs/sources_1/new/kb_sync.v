module kb_sync(
    input clk,
    input reset,
    input kb_clk,
    output reg kb_negedge_o
    );
    
reg previous_value; // probably local variabel?

// Detect falling edge of kb_clk
always @(posedge clk or posedge reset) begin
    if (!reset) begin
        previous_value <= 1'b1;
        kb_negedge_o <= 1'b0;
    end else begin
        if (previous_value == 1'b1 && kb_clk == 1'b0) begin
            kb_negedge_o <= 1'b1;
        end else begin
            kb_negedge_o <= 1'b0;
        end
        previous_value <= kb_clk;
    end
end
    
endmodule