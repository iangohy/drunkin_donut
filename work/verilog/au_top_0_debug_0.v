/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module au_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input usb_rx,
    output reg usb_tx,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    output reg [7:0] multi_sev,
    output reg [3:0] multi_sel,
    input [4:0] io_button,
    input [23:0] io_dip
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_p1_btn_cond_out;
  reg [1-1:0] M_p1_btn_cond_in;
  button_conditioner_2 p1_btn_cond (
    .clk(clk),
    .in(M_p1_btn_cond_in),
    .out(M_p1_btn_cond_out)
  );
  wire [1-1:0] M_p2_btn_cond_out;
  reg [1-1:0] M_p2_btn_cond_in;
  button_conditioner_2 p2_btn_cond (
    .clk(clk),
    .in(M_p2_btn_cond_in),
    .out(M_p2_btn_cond_out)
  );
  wire [1-1:0] M_rst_btn_cond_out;
  reg [1-1:0] M_rst_btn_cond_in;
  button_conditioner_2 rst_btn_cond (
    .clk(clk),
    .in(M_rst_btn_cond_in),
    .out(M_rst_btn_cond_out)
  );
  wire [1-1:0] M_p1_btn_edge_out;
  reg [1-1:0] M_p1_btn_edge_in;
  edge_detector_3 p1_btn_edge (
    .clk(clk),
    .in(M_p1_btn_edge_in),
    .out(M_p1_btn_edge_out)
  );
  wire [1-1:0] M_p2_btn_edge_out;
  reg [1-1:0] M_p2_btn_edge_in;
  edge_detector_3 p2_btn_edge (
    .clk(clk),
    .in(M_p2_btn_edge_in),
    .out(M_p2_btn_edge_out)
  );
  wire [1-1:0] M_rst_btn_edge_out;
  reg [1-1:0] M_rst_btn_edge_in;
  edge_detector_3 rst_btn_edge (
    .clk(clk),
    .in(M_rst_btn_edge_in),
    .out(M_rst_btn_edge_out)
  );
  wire [16-1:0] M_game_beta_countdown_timer_val;
  wire [16-1:0] M_game_beta_p1_score;
  wire [16-1:0] M_game_beta_p2_score;
  wire [16-1:0] M_game_beta_circle_left;
  wire [16-1:0] M_game_beta_circle_right;
  wire [138-1:0] M_game_beta_debug__;
  reg [1-1:0] M_game_beta_p1_button;
  reg [1-1:0] M_game_beta_p2_button;
  reg [1-1:0] M_game_beta_reset_button;
  beta_1_debug_4 game_beta (
    .clk(clk),
    .rst(rst),
    .p1_button(M_game_beta_p1_button),
    .p2_button(M_game_beta_p2_button),
    .reset_button(M_game_beta_reset_button),
    .countdown_timer_val(M_game_beta_countdown_timer_val),
    .p1_score(M_game_beta_p1_score),
    .p2_score(M_game_beta_p2_score),
    .circle_left(M_game_beta_circle_left),
    .circle_right(M_game_beta_circle_right),
    .debug__(M_game_beta_debug__)
  );
  wire [4-1:0] M_p1_score_decoder_out_7segsel;
  wire [8-1:0] M_p1_score_decoder_out_7seg;
  wire [16-1:0] M_p1_score_decoder_debug__;
  reg [16-1:0] M_p1_score_decoder_data;
  custom_seven_seg_5_debug_5 p1_score_decoder (
    .clk(clk),
    .rst(rst),
    .data(M_p1_score_decoder_data),
    .out_7segsel(M_p1_score_decoder_out_7segsel),
    .out_7seg(M_p1_score_decoder_out_7seg),
    .debug__(M_p1_score_decoder_debug__)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    usb_tx = usb_rx;
    led = 8'h00;
    io_led = 24'h000000;
    io_seg = 8'hff;
    io_sel = 4'hf;
    M_p1_btn_cond_in = io_button[0+0-:1];
    M_p2_btn_cond_in = io_button[1+0-:1];
    M_rst_btn_cond_in = io_button[2+0-:1];
    M_p1_btn_edge_in = M_p1_btn_cond_out;
    M_p2_btn_edge_in = M_p2_btn_cond_out;
    M_rst_btn_edge_in = M_rst_btn_cond_out;
    M_game_beta_p1_button = M_p1_btn_edge_out;
    M_game_beta_p2_button = M_p2_btn_edge_out;
    M_game_beta_reset_button = M_rst_btn_edge_out;
    M_p1_score_decoder_data = M_game_beta_p1_score;
    multi_sev = M_p1_score_decoder_out_7seg;
    multi_sel = M_p1_score_decoder_out_7segsel;
    io_led[16+7-:8] = M_game_beta_countdown_timer_val[0+7-:8];
    io_led[8+7-:8] = M_game_beta_circle_left[0+7-:8];
    io_led[0+7-:8] = M_game_beta_circle_right[8+7-:8];
  end
  
  reg [154-1:0] M_debugger_data;
  au_debugger_6 debugger (
    .clk(clk),
    .data(M_debugger_data)
  );
  
  always @* begin
    M_debugger_data = {M_game_beta_debug__, M_p1_score_decoder_debug__};
  end
endmodule
