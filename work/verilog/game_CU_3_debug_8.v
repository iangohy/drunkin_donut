/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module game_CU_3_debug_8 (
    input clk,
    input rst,
    input decrease_timer,
    input circle_clock,
    input [15:0] rb_data,
    input [15:0] countdown_time_reg,
    input p1_button,
    input p2_button,
    input reset_button,
    output reg [6:0] alufn,
    output reg [1:0] asel,
    output reg [1:0] bsel,
    output reg [2:0] wdsel,
    output reg [3:0] regfile_write_address,
    output reg [3:0] regfile_read_address_a,
    output reg [3:0] regfile_read_address_b,
    output reg we_regfile,
    output reg [5:0] debug__
  );
  
  
  
  localparam RESET_SPEED_game_fsm = 6'd0;
  localparam RESET_P1_SCORE_game_fsm = 6'd1;
  localparam RESET_P2_SCORE_game_fsm = 6'd2;
  localparam RESET_RIGHT_HALF_game_fsm = 6'd3;
  localparam RESET_LEFT_HALF_game_fsm = 6'd4;
  localparam RESET_TIMER_game_fsm = 6'd5;
  localparam BRANCH_CHECK_SPEED_game_fsm = 6'd6;
  localparam READY_game_fsm = 6'd7;
  localparam SET_COUNT_TO_3_game_fsm = 6'd8;
  localparam INCREASE_SPEED_game_fsm = 6'd9;
  localparam COUNTDOWN_game_fsm = 6'd10;
  localparam COUNTDOWN_IDLE_game_fsm = 6'd11;
  localparam SET_COUNT_TO_60_game_fsm = 6'd12;
  localparam IDLE_game_fsm = 6'd13;
  localparam SHL_RIGHT_HALF_game_fsm = 6'd14;
  localparam SHL_LEFT_HALF_game_fsm = 6'd15;
  localparam CHECK_MSB_RIGHT_HALF_game_fsm = 6'd16;
  localparam CMPEQ_RIGHT_game_fsm = 6'd17;
  localparam BRANCH_CMPEQ_RIGHT_game_fsm = 6'd18;
  localparam PLUS1_TO_LEFT_HALF_game_fsm = 6'd19;
  localparam CHECK_MSB_LEFT_HALF_game_fsm = 6'd20;
  localparam CMPEQ_LEFT_game_fsm = 6'd21;
  localparam BRANCH_CMPEQ_LEFT_game_fsm = 6'd22;
  localparam PLUS1_TO_RIGHT_HALF_game_fsm = 6'd23;
  localparam CHECK_P2_LOSE_game_fsm = 6'd24;
  localparam BRANCH_P2_LOSE_OR_CARRYON_game_fsm = 6'd25;
  localparam P2_LED_LIGHT_UP_game_fsm = 6'd26;
  localparam P2_SCORE_INCREASE_BY_1_game_fsm = 6'd27;
  localparam CHECK_P1_LOSE_game_fsm = 6'd28;
  localparam BRANCH_P1_LOSE_OR_CARRYON_game_fsm = 6'd29;
  localparam P1_LED_LIGHT_UP_game_fsm = 6'd30;
  localparam P1_SCORE_INCREASE_BY_1_game_fsm = 6'd31;
  localparam CHECK_ANY_LED_FIRST_HALF_NOT_LIT_game_fsm = 6'd32;
  localparam CHECK_ANY_LED_SECOND_HALF_NOT_LIT_game_fsm = 6'd33;
  localparam CMPEQ_FIRST_HALF_game_fsm = 6'd34;
  localparam BRANCH_FIRST_HALF_game_fsm = 6'd35;
  localparam CMPLE_SECOND_HALF_game_fsm = 6'd36;
  localparam BRANCH_SECOND_HALF_game_fsm = 6'd37;
  localparam CHECK_COUNT_MORETHAN_0_game_fsm = 6'd38;
  localparam CHECK_TIMER_game_fsm = 6'd39;
  localparam BRANCH_TIMER_game_fsm = 6'd40;
  localparam COUNT_MINUS_1_game_fsm = 6'd41;
  localparam CHECK_DRAW_game_fsm = 6'd42;
  localparam BRANCH_DRAW_game_fsm = 6'd43;
  localparam DRAW_game_fsm = 6'd44;
  localparam CHECK_WINNER_game_fsm = 6'd45;
  localparam BRANCH_WINNER_game_fsm = 6'd46;
  localparam P1_WINS_game_fsm = 6'd47;
  localparam P2_LOSES_game_fsm = 6'd48;
  localparam LIGHT_LOWER_LEFT_LED_game_fsm = 6'd49;
  localparam LIGHT_UPPER_RIGHT_LED_game_fsm = 6'd50;
  localparam P2_WINS_game_fsm = 6'd51;
  localparam P1_LOSES_game_fsm = 6'd52;
  localparam LIGHT_UPPER_LEFT_LED_game_fsm = 6'd53;
  localparam LIGHT_LOWER_RIGHT_LED_game_fsm = 6'd54;
  localparam GAMEOVER_game_fsm = 6'd55;
  
  reg [5:0] M_game_fsm_d, M_game_fsm_q = RESET_SPEED_game_fsm;
  
  always @* begin
    M_game_fsm_d = M_game_fsm_q;
    
    alufn = 1'h0;
    asel = 1'h0;
    bsel = 1'h0;
    we_regfile = 1'h0;
    regfile_write_address = 11'h457;
    regfile_read_address_a = 1'h0;
    regfile_read_address_b = 1'h0;
    wdsel = 1'h0;
    if (rst) begin
      M_game_fsm_d = RESET_SPEED_game_fsm;
    end else begin
      
      case (M_game_fsm_q)
        RESET_SPEED_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h5;
          wdsel = 4'h4;
          M_game_fsm_d = RESET_P1_SCORE_game_fsm;
        end
        RESET_P1_SCORE_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h3;
          wdsel = 4'h4;
          M_game_fsm_d = RESET_P2_SCORE_game_fsm;
        end
        RESET_P2_SCORE_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h4;
          wdsel = 4'h4;
          M_game_fsm_d = RESET_RIGHT_HALF_game_fsm;
        end
        RESET_RIGHT_HALF_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h1;
          wdsel = 4'h4;
          M_game_fsm_d = RESET_LEFT_HALF_game_fsm;
        end
        RESET_LEFT_HALF_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h0;
          wdsel = 4'h4;
          M_game_fsm_d = RESET_TIMER_game_fsm;
        end
        RESET_TIMER_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h2;
          wdsel = 4'h4;
          M_game_fsm_d = BRANCH_CHECK_SPEED_game_fsm;
        end
        BRANCH_CHECK_SPEED_game_fsm: begin
          we_regfile = 1'h0;
          regfile_read_address_b = 4'h5;
          if (rb_data != 1'h0) begin
            M_game_fsm_d = SET_COUNT_TO_3_game_fsm;
          end else begin
            M_game_fsm_d = READY_game_fsm;
          end
        end
        READY_game_fsm: begin
          we_regfile = 1'h0;
          if (p1_button || p2_button) begin
            M_game_fsm_d = SET_COUNT_TO_3_game_fsm;
          end
        end
        SET_COUNT_TO_3_game_fsm: begin
          alufn = 7'h40;
          asel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h2;
          regfile_write_address = 4'h2;
          wdsel = 4'h0;
          if (countdown_time_reg == 2'h2) begin
            M_game_fsm_d = INCREASE_SPEED_game_fsm;
          end
        end
        INCREASE_SPEED_game_fsm: begin
          alufn = 7'h40;
          asel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h5;
          regfile_write_address = 4'h5;
          wdsel = 4'h0;
          if (decrease_timer == 1'h1) begin
            M_game_fsm_d = COUNTDOWN_IDLE_game_fsm;
          end
        end
        COUNTDOWN_game_fsm: begin
          alufn = 7'h41;
          asel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h2;
          regfile_write_address = 4'h2;
          wdsel = 4'h0;
          M_game_fsm_d = COUNTDOWN_IDLE_game_fsm;
        end
        COUNTDOWN_IDLE_game_fsm: begin
          we_regfile = 1'h0;
          if (countdown_time_reg == 1'h0) begin
            M_game_fsm_d = SET_COUNT_TO_60_game_fsm;
          end else begin
            if (decrease_timer == 1'h1) begin
              M_game_fsm_d = COUNTDOWN_game_fsm;
            end
          end
        end
        SET_COUNT_TO_60_game_fsm: begin
          alufn = 7'h00;
          asel = 2'h1;
          bsel = 2'h3;
          we_regfile = 1'h1;
          regfile_write_address = 4'h2;
          wdsel = 4'h0;
          M_game_fsm_d = IDLE_game_fsm;
        end
        SHL_RIGHT_HALF_game_fsm: begin
          alufn = 7'h20;
          asel = 2'h0;
          bsel = 2'h2;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h1;
          regfile_write_address = 4'h1;
          wdsel = 4'h0;
          M_game_fsm_d = SHL_LEFT_HALF_game_fsm;
        end
        SHL_LEFT_HALF_game_fsm: begin
          alufn = 7'h20;
          asel = 2'h0;
          bsel = 2'h2;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h0;
          regfile_write_address = 4'h0;
          wdsel = 4'h0;
          M_game_fsm_d = CHECK_MSB_RIGHT_HALF_game_fsm;
        end
        CHECK_MSB_RIGHT_HALF_game_fsm: begin
          alufn = 7'h18;
          asel = 2'h0;
          bsel = 2'h1;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h1;
          regfile_write_address = 4'h6;
          wdsel = 4'h0;
          M_game_fsm_d = CMPEQ_RIGHT_game_fsm;
        end
        CMPEQ_RIGHT_game_fsm: begin
          alufn = 7'h33;
          asel = 2'h0;
          bsel = 2'h1;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h6;
          regfile_write_address = 4'h8;
          wdsel = 4'h0;
          M_game_fsm_d = BRANCH_CMPEQ_RIGHT_game_fsm;
        end
        BRANCH_CMPEQ_RIGHT_game_fsm: begin
          we_regfile = 1'h0;
          regfile_read_address_b = 4'h8;
          if (rb_data == 1'h0) begin
            M_game_fsm_d = CHECK_MSB_LEFT_HALF_game_fsm;
          end else begin
            M_game_fsm_d = PLUS1_TO_LEFT_HALF_game_fsm;
          end
        end
        PLUS1_TO_LEFT_HALF_game_fsm: begin
          alufn = 7'h40;
          asel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h0;
          regfile_write_address = 4'h0;
          wdsel = 4'h0;
          M_game_fsm_d = CHECK_MSB_LEFT_HALF_game_fsm;
        end
        CHECK_MSB_LEFT_HALF_game_fsm: begin
          alufn = 7'h18;
          asel = 2'h0;
          bsel = 2'h1;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h0;
          regfile_write_address = 4'h6;
          wdsel = 4'h0;
          M_game_fsm_d = CMPEQ_LEFT_game_fsm;
        end
        CMPEQ_LEFT_game_fsm: begin
          alufn = 7'h33;
          asel = 2'h0;
          bsel = 2'h1;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h6;
          regfile_write_address = 4'h8;
          wdsel = 4'h0;
          M_game_fsm_d = BRANCH_CMPEQ_LEFT_game_fsm;
        end
        BRANCH_CMPEQ_LEFT_game_fsm: begin
          we_regfile = 1'h0;
          regfile_read_address_b = 4'h8;
          if (rb_data == 1'h0) begin
            M_game_fsm_d = IDLE_game_fsm;
          end else begin
            M_game_fsm_d = PLUS1_TO_RIGHT_HALF_game_fsm;
          end
        end
        PLUS1_TO_RIGHT_HALF_game_fsm: begin
          alufn = 7'h40;
          asel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h1;
          regfile_write_address = 4'h1;
          wdsel = 4'h0;
          M_game_fsm_d = IDLE_game_fsm;
        end
        CHECK_P2_LOSE_game_fsm: begin
          alufn = 7'h18;
          asel = 2'h0;
          bsel = 2'h2;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h1;
          regfile_write_address = 4'h8;
          wdsel = 4'h0;
          M_game_fsm_d = BRANCH_P2_LOSE_OR_CARRYON_game_fsm;
        end
        BRANCH_P2_LOSE_OR_CARRYON_game_fsm: begin
          we_regfile = 1'h0;
          regfile_read_address_b = 4'h8;
          if (rb_data == 1'h1) begin
            M_game_fsm_d = P1_WINS_game_fsm;
          end else begin
            M_game_fsm_d = P2_LED_LIGHT_UP_game_fsm;
          end
        end
        P2_LED_LIGHT_UP_game_fsm: begin
          alufn = 7'h40;
          asel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h1;
          regfile_write_address = 4'h1;
          wdsel = 4'h0;
          M_game_fsm_d = P2_SCORE_INCREASE_BY_1_game_fsm;
        end
        P2_SCORE_INCREASE_BY_1_game_fsm: begin
          alufn = 7'h40;
          asel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h4;
          regfile_write_address = 4'h4;
          wdsel = 4'h0;
          M_game_fsm_d = CHECK_ANY_LED_FIRST_HALF_NOT_LIT_game_fsm;
        end
        CHECK_P1_LOSE_game_fsm: begin
          alufn = 7'h18;
          asel = 2'h0;
          bsel = 2'h2;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h0;
          regfile_write_address = 4'h8;
          wdsel = 4'h0;
          M_game_fsm_d = BRANCH_P1_LOSE_OR_CARRYON_game_fsm;
        end
        BRANCH_P1_LOSE_OR_CARRYON_game_fsm: begin
          we_regfile = 1'h0;
          regfile_read_address_b = 4'h8;
          if (rb_data == 1'h1) begin
            M_game_fsm_d = P2_WINS_game_fsm;
          end else begin
            M_game_fsm_d = P1_LED_LIGHT_UP_game_fsm;
          end
        end
        P1_LED_LIGHT_UP_game_fsm: begin
          alufn = 7'h40;
          asel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h0;
          regfile_write_address = 4'h0;
          wdsel = 4'h0;
          M_game_fsm_d = P1_SCORE_INCREASE_BY_1_game_fsm;
        end
        P1_SCORE_INCREASE_BY_1_game_fsm: begin
          alufn = 7'h40;
          asel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h3;
          regfile_write_address = 4'h3;
          wdsel = 4'h0;
          M_game_fsm_d = CHECK_ANY_LED_FIRST_HALF_NOT_LIT_game_fsm;
        end
        CHECK_ANY_LED_FIRST_HALF_NOT_LIT_game_fsm: begin
          alufn = 7'h18;
          asel = 2'h2;
          bsel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_b = 4'h0;
          regfile_write_address = 4'h6;
          wdsel = 4'h0;
          M_game_fsm_d = CHECK_ANY_LED_SECOND_HALF_NOT_LIT_game_fsm;
        end
        CHECK_ANY_LED_SECOND_HALF_NOT_LIT_game_fsm: begin
          alufn = 7'h18;
          asel = 2'h2;
          bsel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_b = 4'h1;
          regfile_write_address = 4'h7;
          wdsel = 4'h0;
          M_game_fsm_d = CMPEQ_FIRST_HALF_game_fsm;
        end
        CMPEQ_FIRST_HALF_game_fsm: begin
          alufn = 7'h33;
          asel = 2'h2;
          bsel = 2'h0;
          we_regfile = 1'h0;
          regfile_read_address_b = 4'h6;
          wdsel = 4'h0;
          M_game_fsm_d = BRANCH_FIRST_HALF_game_fsm;
        end
        BRANCH_FIRST_HALF_game_fsm: begin
          we_regfile = 1'h0;
          regfile_read_address_b = 4'h6;
          if (rb_data == 1'h1) begin
            M_game_fsm_d = CMPLE_SECOND_HALF_game_fsm;
          end else begin
            M_game_fsm_d = IDLE_game_fsm;
          end
        end
        CMPLE_SECOND_HALF_game_fsm: begin
          alufn = 7'h37;
          asel = 2'h2;
          bsel = 2'h0;
          we_regfile = 1'h0;
          regfile_read_address_b = 4'h7;
          wdsel = 4'h0;
          M_game_fsm_d = BRANCH_SECOND_HALF_game_fsm;
        end
        BRANCH_SECOND_HALF_game_fsm: begin
          we_regfile = 1'h0;
          regfile_read_address_b = 4'h7;
          if (rb_data == 1'h1) begin
            M_game_fsm_d = RESET_RIGHT_HALF_game_fsm;
          end else begin
            M_game_fsm_d = IDLE_game_fsm;
          end
        end
        CHECK_COUNT_MORETHAN_0_game_fsm: begin
          alufn = 7'h33;
          asel = 2'h0;
          bsel = 2'h3;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h2;
          regfile_write_address = 4'h8;
          wdsel = 4'h0;
          M_game_fsm_d = BRANCH_TIMER_game_fsm;
        end
        BRANCH_TIMER_game_fsm: begin
          we_regfile = 1'h0;
          regfile_read_address_b = 4'h8;
          if (rb_data == 1'h1) begin
            M_game_fsm_d = CHECK_DRAW_game_fsm;
          end else begin
            M_game_fsm_d = COUNT_MINUS_1_game_fsm;
          end
        end
        COUNT_MINUS_1_game_fsm: begin
          alufn = 7'h41;
          asel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h2;
          regfile_write_address = 4'h2;
          wdsel = 4'h0;
          M_game_fsm_d = IDLE_game_fsm;
        end
        CHECK_DRAW_game_fsm: begin
          alufn = 7'h33;
          asel = 2'h0;
          bsel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h3;
          regfile_read_address_b = 4'h4;
          regfile_write_address = 4'h8;
          wdsel = 4'h0;
        end
        BRANCH_DRAW_game_fsm: begin
          we_regfile = 1'h0;
          regfile_read_address_b = 4'h8;
          if (rb_data == 1'h1) begin
            M_game_fsm_d = DRAW_game_fsm;
          end else begin
            M_game_fsm_d = CHECK_WINNER_game_fsm;
          end
        end
        DRAW_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h2;
          wdsel = 4'h3;
          M_game_fsm_d = GAMEOVER_game_fsm;
        end
        CHECK_WINNER_game_fsm: begin
          alufn = 7'h35;
          asel = 2'h0;
          bsel = 2'h0;
          we_regfile = 1'h1;
          regfile_read_address_a = 4'h3;
          regfile_read_address_b = 4'h4;
          regfile_write_address = 4'h8;
          wdsel = 4'h0;
          M_game_fsm_d = BRANCH_WINNER_game_fsm;
        end
        BRANCH_WINNER_game_fsm: begin
          we_regfile = 1'h0;
          regfile_read_address_b = 4'h8;
          wdsel = 4'h3;
          if (rb_data == 1'h1) begin
            M_game_fsm_d = P2_WINS_game_fsm;
          end else begin
            M_game_fsm_d = P1_WINS_game_fsm;
          end
        end
        P1_WINS_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h3;
          wdsel = 4'h1;
          M_game_fsm_d = P2_LOSES_game_fsm;
        end
        P2_LOSES_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h4;
          wdsel = 4'h2;
          M_game_fsm_d = LIGHT_LOWER_LEFT_LED_game_fsm;
        end
        LIGHT_LOWER_LEFT_LED_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h0;
          wdsel = 4'h5;
          M_game_fsm_d = LIGHT_UPPER_RIGHT_LED_game_fsm;
        end
        LIGHT_UPPER_RIGHT_LED_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h1;
          wdsel = 4'h6;
          M_game_fsm_d = GAMEOVER_game_fsm;
        end
        P2_WINS_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h4;
          wdsel = 4'h1;
          M_game_fsm_d = P1_LOSES_game_fsm;
        end
        P1_LOSES_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h3;
          wdsel = 4'h2;
          M_game_fsm_d = LIGHT_UPPER_LEFT_LED_game_fsm;
        end
        LIGHT_UPPER_LEFT_LED_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h0;
          wdsel = 4'h6;
          M_game_fsm_d = LIGHT_LOWER_RIGHT_LED_game_fsm;
        end
        LIGHT_LOWER_RIGHT_LED_game_fsm: begin
          we_regfile = 1'h1;
          regfile_write_address = 4'h1;
          wdsel = 4'h5;
          M_game_fsm_d = GAMEOVER_game_fsm;
        end
        GAMEOVER_game_fsm: begin
          if (reset_button == 1'h1) begin
            M_game_fsm_d = RESET_SPEED_game_fsm;
          end
        end
        IDLE_game_fsm: begin
          if (decrease_timer) begin
            M_game_fsm_d = CHECK_COUNT_MORETHAN_0_game_fsm;
          end else begin
            if (p1_button && ~p2_button) begin
              M_game_fsm_d = CHECK_P1_LOSE_game_fsm;
            end else begin
              if (p2_button && ~p1_button) begin
                M_game_fsm_d = CHECK_P2_LOSE_game_fsm;
              end else begin
                if (reset_button) begin
                  M_game_fsm_d = RESET_SPEED_game_fsm;
                end else begin
                  if (circle_clock) begin
                    M_game_fsm_d = SHL_RIGHT_HALF_game_fsm;
                  end
                end
              end
            end
          end
        end
      endcase
    end
  end
  
  always @* begin
    debug__ = {M_game_fsm_q};
  end
  
  always @(posedge clk) begin
    M_game_fsm_q <= M_game_fsm_d;
  end
  
endmodule
