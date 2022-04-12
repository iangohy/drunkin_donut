/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module regfile_10 (
    input clk,
    input rst,
    input [3:0] write_address,
    input we,
    input [15:0] data,
    input [3:0] read_address_a,
    input [3:0] read_address_b,
    output reg [15:0] out_a,
    output reg [15:0] out_b,
    output reg [15:0] p1_score_out,
    output reg [15:0] p2_score_out,
    output reg [15:0] countdown_time_out,
    output reg [15:0] speed_out,
    output reg [15:0] circle_left,
    output reg [15:0] circle_right
  );
  
  
  
  reg [15:0] M_left_half_circle_d, M_left_half_circle_q = 1'h0;
  reg [15:0] M_right_half_circle_d, M_right_half_circle_q = 1'h0;
  reg [15:0] M_countdown_time_d, M_countdown_time_q = 1'h0;
  reg [15:0] M_player1_score_d, M_player1_score_q = 1'h0;
  reg [15:0] M_player2_score_d, M_player2_score_q = 1'h0;
  reg [15:0] M_speed_counter_d, M_speed_counter_q = 1'h0;
  reg [15:0] M_temp_var1_d, M_temp_var1_q = 1'h0;
  reg [15:0] M_temp_var2_d, M_temp_var2_q = 1'h0;
  reg [15:0] M_temp_var3_d, M_temp_var3_q = 1'h0;
  
  always @* begin
    M_left_half_circle_d = M_left_half_circle_q;
    M_countdown_time_d = M_countdown_time_q;
    M_temp_var1_d = M_temp_var1_q;
    M_temp_var2_d = M_temp_var2_q;
    M_temp_var3_d = M_temp_var3_q;
    M_player1_score_d = M_player1_score_q;
    M_player2_score_d = M_player2_score_q;
    M_right_half_circle_d = M_right_half_circle_q;
    M_speed_counter_d = M_speed_counter_q;
    
    if (we) begin
      
      case (write_address)
        4'h0: begin
          M_left_half_circle_d = data;
        end
        4'h1: begin
          M_right_half_circle_d = data;
        end
        4'h2: begin
          M_countdown_time_d = data;
        end
        4'h3: begin
          M_player1_score_d = data;
        end
        4'h4: begin
          M_player2_score_d = data;
        end
        4'h5: begin
          M_speed_counter_d = data;
        end
        4'h6: begin
          M_temp_var1_d = data;
        end
        4'h7: begin
          M_temp_var2_d = data;
        end
        4'h8: begin
          M_temp_var3_d = data;
        end
      endcase
    end
    
    case (read_address_a)
      4'h0: begin
        out_a = M_left_half_circle_q;
      end
      4'h1: begin
        out_a = M_right_half_circle_q;
      end
      4'h2: begin
        out_a = M_countdown_time_q;
      end
      4'h3: begin
        out_a = M_player1_score_q;
      end
      4'h4: begin
        out_a = M_player2_score_q;
      end
      4'h5: begin
        out_a = M_speed_counter_q;
      end
      4'h6: begin
        out_a = M_temp_var1_q;
      end
      4'h7: begin
        out_a = M_temp_var2_q;
      end
      4'h8: begin
        out_a = M_temp_var3_q;
      end
      default: begin
        out_a = 16'h0000;
      end
    endcase
    
    case (read_address_b)
      4'h0: begin
        out_b = M_left_half_circle_q;
      end
      4'h1: begin
        out_b = M_right_half_circle_q;
      end
      4'h2: begin
        out_b = M_countdown_time_q;
      end
      4'h3: begin
        out_b = M_player1_score_q;
      end
      4'h4: begin
        out_b = M_player2_score_q;
      end
      4'h5: begin
        out_b = M_speed_counter_q;
      end
      4'h6: begin
        out_b = M_temp_var1_q;
      end
      4'h7: begin
        out_b = M_temp_var2_q;
      end
      4'h8: begin
        out_b = M_temp_var3_q;
      end
      default: begin
        out_b = 16'h0000;
      end
    endcase
    p1_score_out = M_player1_score_q;
    p2_score_out = M_player2_score_q;
    countdown_time_out = M_countdown_time_q;
    speed_out = M_speed_counter_q;
    circle_left = M_left_half_circle_q;
    circle_right = M_right_half_circle_q;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_left_half_circle_q <= 1'h0;
      M_right_half_circle_q <= 1'h0;
      M_countdown_time_q <= 1'h0;
      M_player1_score_q <= 1'h0;
      M_player2_score_q <= 1'h0;
      M_speed_counter_q <= 1'h0;
      M_temp_var1_q <= 1'h0;
      M_temp_var2_q <= 1'h0;
      M_temp_var3_q <= 1'h0;
    end else begin
      M_left_half_circle_q <= M_left_half_circle_d;
      M_right_half_circle_q <= M_right_half_circle_d;
      M_countdown_time_q <= M_countdown_time_d;
      M_player1_score_q <= M_player1_score_d;
      M_player2_score_q <= M_player2_score_d;
      M_speed_counter_q <= M_speed_counter_d;
      M_temp_var1_q <= M_temp_var1_d;
      M_temp_var2_q <= M_temp_var2_d;
      M_temp_var3_q <= M_temp_var3_d;
    end
  end
  
endmodule