module S2P (
    input clk,
    input reset,
    input kb_negedge_o,
    input kb_data,
    output reg [7:0] char_o,
    output reg valid_o
);

  localparam Idle = 4'b0001, S0 = 4'b0010, S1 = 4'b0100, S2 = 4'b1000;

  reg [7:0] shift = 8'b00000000;
  reg [3:0] cnt = 4'b0000;

  reg [3:0] cur_state;
  reg [3:0] next_state;

  // Seq logic
  always @(posedge kb_negedge_o, negedge reset) begin
    if (!reset) begin
      cur_state <= Idle;
      char_o <= 8'b00000000;
      valid_o <= 1'b0;
    end else begin
      //        cur_state <= next_state;
      case (cur_state)
        S0: begin
          shift <= {kb_data, shift[7:1]};

          if (cnt == 3'b111) begin
            cnt <= 3'b000;
            cur_state <= S1;
          end else begin
            cnt <= cnt + 1;
            cur_state <= S0;
          end
        end

        // parity bit
        S1: begin
          cur_state <= S2;
        end
        // stop bit should be sent here
        S2: begin
          valid_o <= 1'b1;
          char_o <= shift;
          cur_state <= Idle;
        end
        // Idle state
        default begin
          valid_o <= 1'b0;
          if (kb_data == 1'b0) begin
            shift <= 8'b00000000;
            cur_state <= S0;
          end else begin
            cur_state <= Idle;
          end
        end
      endcase
    end
  end

  //always @(posedge kb_negedge_o) begin
  //        if(cur_state == S2) begin
  //             valid_o <= 1'b1;
  //             char_o <= shift;
  //        end else begin
  //            valid_o <= 1'b0;
  //            char_o <= 8'h00;
  //        end 
  //end

  //always @(posedge kb_negedge_o)begin
  //        if(cur_state == S0)begin
  //            cnt <= cnt + 1;
  //        end else begin
  //            cnt <= 3'b000;
  //        end
  //end


  //always @(cur_state, cnt, kb_data) begin
  //    case(cur_state)
  //        Idle: begin
  //            if (kb_data == 1'b0) begin
  //                    shift = 8'h00;
  //                    next_state = S0;
  //              end 
  //            else begin
  //                    next_state = Idle;
  //            end 
  //        end
  //        S0: begin
  //                    shift = {shift[6:0], kb_data};
  //                if (cnt == 3'b111) begin 
  //                    next_state = S1;
  //                end else begin
  //                    next_state = S0;
  //                end
  //        end
  //            // parity bit
  //        S1: begin
  //                next_state = S2;
  //        end
  //        S2: begin
  //            next_state = Idle;
  //        end
  //    endcase
  //end





  //always @(posedge kb_negedge_o, negedge reset) begin
  //    if(!reset) begin
  //        next_state <= Idle;
  //    end else begin
  //        case(cur_state)
  //            Idle: begin
  //                if (kb_data == 1'b0) begin
  //                    shift <= 8'b00000000;
  //                    next_state <= S0;
  //                end else begin
  //                    next_state <= Idle;
  //                end 
  //            end

  //            S0: begin
  //                shift <= {shift[6:0], kb_data};

  //                if (cnt == 3'b111) begin 
  //                    cnt <= 3'b000;
  //                    next_state <= S1;
  //                end else begin
  //                    cnt <= cnt + 1;
  //                    next_state <= S0;
  //                end
  //            end

  //            // parity bit
  //            S1: begin
  //                next_state <= S2;
  //            end

  //            // stop bit should be sent here
  //            S2: begin
  //                valid_o <= 1'b1;
  //                char_o <= shift;
  //                next_state <= Idle;
  //            end
  //        endcase
  //    end 
  //end


endmodule  // S2P
