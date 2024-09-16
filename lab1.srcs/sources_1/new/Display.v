module Display(
    input clk,
    input reset,
    input char_o,
    input valid_o,
    output reg [7:0] display_o
    );
    
always @(posedge clk or posedge reset) begin
    if (reset) begin
        display_o <= 8'd0;
    end else if (valid_o) begin
        display_o <= char_o;
    end
end

endmodule // Display