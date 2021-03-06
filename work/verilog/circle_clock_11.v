/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module circle_clock_11 (
    input clk,
    input rst,
    input [15:0] speed,
    output reg out,
    output reg [7:0] debug_counter
  );
  
  
  
  wire [1-1:0] M_freq_divider_value;
  counter_20 freq_divider (
    .rst(rst),
    .clk(clk),
    .value(M_freq_divider_value)
  );
  
  wire [1-1:0] M_edge_rise_out;
  reg [1-1:0] M_edge_rise_in;
  edge_detector_3 edge_rise (
    .clk(clk),
    .in(M_edge_rise_in),
    .out(M_edge_rise_out)
  );
  
  reg [7:0] M_ctr_d, M_ctr_q = 1'h0;
  
  always @* begin
    M_ctr_d = M_ctr_q;
    
    M_edge_rise_in = M_freq_divider_value;
    debug_counter = M_ctr_q;
    if (M_edge_rise_out == 1'h1) begin
      M_ctr_d = M_ctr_q + 1'h1;
    end
    
    case (speed)
      1'h1: begin
        if (M_ctr_q == 4'ha) begin
          out = 1'h1;
          M_ctr_d = 1'h0;
        end else begin
          if (M_ctr_q > 4'ha) begin
            M_ctr_d = 1'h0;
            out = 1'h0;
          end else begin
            out = 1'h0;
          end
        end
      end
      2'h2: begin
        if (M_ctr_q == 4'h8) begin
          out = 1'h1;
          M_ctr_d = 1'h0;
        end else begin
          if (M_ctr_q > 4'h8) begin
            M_ctr_d = 1'h0;
            out = 1'h0;
          end else begin
            out = 1'h0;
          end
        end
      end
      2'h3: begin
        if (M_ctr_q == 3'h7) begin
          out = 1'h1;
          M_ctr_d = 1'h0;
        end else begin
          if (M_ctr_q > 3'h7) begin
            M_ctr_d = 1'h0;
            out = 1'h0;
          end else begin
            out = 1'h0;
          end
        end
      end
      3'h4: begin
        if (M_ctr_q == 3'h6) begin
          out = 1'h1;
          M_ctr_d = 1'h0;
        end else begin
          if (M_ctr_q > 3'h6) begin
            M_ctr_d = 1'h0;
            out = 1'h0;
          end else begin
            out = 1'h0;
          end
        end
      end
      default: begin
        if (M_ctr_q == 2'h3) begin
          out = 1'h1;
          M_ctr_d = 1'h0;
        end else begin
          if (M_ctr_q > 2'h3) begin
            M_ctr_d = 1'h0;
            out = 1'h0;
          end else begin
            out = 1'h0;
          end
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_ctr_q <= 1'h0;
    end else begin
      M_ctr_q <= M_ctr_d;
    end
  end
  
endmodule
