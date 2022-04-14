/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     DATA_WIDTH = 162
     CAPTURE_DEPTH = 256
     NONCE = 4044524770
*/
module au_debugger_6 (
    input clk,
    input [161:0] data
  );
  
  localparam DATA_WIDTH = 8'ha2;
  localparam CAPTURE_DEPTH = 9'h100;
  localparam NONCE = 32'hf1128ce2;
  
  
  localparam VERSION = 2'h3;
  
  wire [1-1:0] M_info_scan_CAPTURE;
  wire [1-1:0] M_info_scan_DRCK;
  wire [1-1:0] M_info_scan_RESET;
  wire [1-1:0] M_info_scan_RUNTEST;
  wire [1-1:0] M_info_scan_SEL;
  wire [1-1:0] M_info_scan_SHIFT;
  wire [1-1:0] M_info_scan_TCK;
  wire [1-1:0] M_info_scan_TDI;
  wire [1-1:0] M_info_scan_TMS;
  wire [1-1:0] M_info_scan_UPDATE;
  reg [1-1:0] M_info_scan_TDO;
  BSCANE2 #(.JTAG_CHAIN(1)) info_scan (
    .TDO(M_info_scan_TDO),
    .CAPTURE(M_info_scan_CAPTURE),
    .DRCK(M_info_scan_DRCK),
    .RESET(M_info_scan_RESET),
    .RUNTEST(M_info_scan_RUNTEST),
    .SEL(M_info_scan_SEL),
    .SHIFT(M_info_scan_SHIFT),
    .TCK(M_info_scan_TCK),
    .TDI(M_info_scan_TDI),
    .TMS(M_info_scan_TMS),
    .UPDATE(M_info_scan_UPDATE)
  );
  
  wire [1-1:0] M_config_scan_CAPTURE;
  wire [1-1:0] M_config_scan_DRCK;
  wire [1-1:0] M_config_scan_RESET;
  wire [1-1:0] M_config_scan_RUNTEST;
  wire [1-1:0] M_config_scan_SEL;
  wire [1-1:0] M_config_scan_SHIFT;
  wire [1-1:0] M_config_scan_TCK;
  wire [1-1:0] M_config_scan_TDI;
  wire [1-1:0] M_config_scan_TMS;
  wire [1-1:0] M_config_scan_UPDATE;
  reg [1-1:0] M_config_scan_TDO;
  BSCANE2 #(.JTAG_CHAIN(2)) config_scan (
    .TDO(M_config_scan_TDO),
    .CAPTURE(M_config_scan_CAPTURE),
    .DRCK(M_config_scan_DRCK),
    .RESET(M_config_scan_RESET),
    .RUNTEST(M_config_scan_RUNTEST),
    .SEL(M_config_scan_SEL),
    .SHIFT(M_config_scan_SHIFT),
    .TCK(M_config_scan_TCK),
    .TDI(M_config_scan_TDI),
    .TMS(M_config_scan_TMS),
    .UPDATE(M_config_scan_UPDATE)
  );
  
  wire [1-1:0] M_data_scan_CAPTURE;
  wire [1-1:0] M_data_scan_DRCK;
  wire [1-1:0] M_data_scan_RESET;
  wire [1-1:0] M_data_scan_RUNTEST;
  wire [1-1:0] M_data_scan_SEL;
  wire [1-1:0] M_data_scan_SHIFT;
  wire [1-1:0] M_data_scan_TCK;
  wire [1-1:0] M_data_scan_TDI;
  wire [1-1:0] M_data_scan_TMS;
  wire [1-1:0] M_data_scan_UPDATE;
  reg [1-1:0] M_data_scan_TDO;
  BSCANE2 #(.JTAG_CHAIN(3)) data_scan (
    .TDO(M_data_scan_TDO),
    .CAPTURE(M_data_scan_CAPTURE),
    .DRCK(M_data_scan_DRCK),
    .RESET(M_data_scan_RESET),
    .RUNTEST(M_data_scan_RUNTEST),
    .SEL(M_data_scan_SEL),
    .SHIFT(M_data_scan_SHIFT),
    .TCK(M_data_scan_TCK),
    .TDI(M_data_scan_TDI),
    .TMS(M_data_scan_TMS),
    .UPDATE(M_data_scan_UPDATE)
  );
  
  wire [1-1:0] M_capture_scan_CAPTURE;
  wire [1-1:0] M_capture_scan_DRCK;
  wire [1-1:0] M_capture_scan_RESET;
  wire [1-1:0] M_capture_scan_RUNTEST;
  wire [1-1:0] M_capture_scan_SEL;
  wire [1-1:0] M_capture_scan_SHIFT;
  wire [1-1:0] M_capture_scan_TCK;
  wire [1-1:0] M_capture_scan_TDI;
  wire [1-1:0] M_capture_scan_TMS;
  wire [1-1:0] M_capture_scan_UPDATE;
  reg [1-1:0] M_capture_scan_TDO;
  BSCANE2 #(.JTAG_CHAIN(4)) capture_scan (
    .TDO(M_capture_scan_TDO),
    .CAPTURE(M_capture_scan_CAPTURE),
    .DRCK(M_capture_scan_DRCK),
    .RESET(M_capture_scan_RESET),
    .RUNTEST(M_capture_scan_RUNTEST),
    .SEL(M_capture_scan_SEL),
    .SHIFT(M_capture_scan_SHIFT),
    .TCK(M_capture_scan_TCK),
    .TDI(M_capture_scan_TDI),
    .TMS(M_capture_scan_TMS),
    .UPDATE(M_capture_scan_UPDATE)
  );
  
  reg rst;
  
  wire [1-1:0] M_reset_conditioner_out;
  reset_conditioner_1 reset_conditioner (
    .clk(clk),
    .in(M_info_scan_RESET),
    .out(M_reset_conditioner_out)
  );
  
  always @* begin
    rst = M_reset_conditioner_out;
  end
  
  reg [103:0] M_status_d, M_status_q = 1'h0;
  
  wire [1-1:0] M_config_fifo_full;
  wire [1-1:0] M_config_fifo_dout;
  wire [1-1:0] M_config_fifo_empty;
  reg [1-1:0] M_config_fifo_din;
  reg [1-1:0] M_config_fifo_wput;
  reg [1-1:0] M_config_fifo_rget;
  async_fifo_14 config_fifo (
    .wclk(M_config_scan_TCK),
    .wrst(1'h0),
    .rclk(clk),
    .rrst(1'h0),
    .din(M_config_fifo_din),
    .wput(M_config_fifo_wput),
    .rget(M_config_fifo_rget),
    .full(M_config_fifo_full),
    .dout(M_config_fifo_dout),
    .empty(M_config_fifo_empty)
  );
  
  localparam IDLE_state = 2'd0;
  localparam ARMED_state = 2'd1;
  localparam FIRED_state = 2'd2;
  localparam CAPTURED_state = 2'd3;
  
  reg [1:0] M_state_d, M_state_q = IDLE_state;
  reg [7:0] M_waddr_d, M_waddr_q = 1'h0;
  reg [161:0] M_data_old_d, M_data_old_q = 1'h0;
  reg [647:0] M_trigger_data_d, M_trigger_data_q = 1'h0;
  wire [1-1:0] M_arm_sync_out;
  reg [1-1:0] M_arm_sync_in;
  pipeline_7 arm_sync (
    .clk(clk),
    .in(M_arm_sync_in),
    .out(M_arm_sync_out)
  );
  wire [1-1:0] M_force_sync_out;
  reg [1-1:0] M_force_sync_in;
  pipeline_7 force_sync (
    .clk(clk),
    .in(M_force_sync_in),
    .out(M_force_sync_out)
  );
  
  reg [7:0] M_raddr_d, M_raddr_q = 1'h0;
  reg [7:0] M_offset_d, M_offset_q = 1'h0;
  reg [161:0] M_rdata_d, M_rdata_q = 1'h0;
  
  wire [1-1:0] M_status_sync_out;
  reg [1-1:0] M_status_sync_in;
  pipeline_7 status_sync (
    .clk(M_capture_scan_TCK),
    .in(M_status_sync_in),
    .out(M_status_sync_out)
  );
  reg M_force_d, M_force_q = 1'h0;
  
  wire [162-1:0] M_ram_read_data;
  reg [8-1:0] M_ram_waddr;
  reg [162-1:0] M_ram_write_data;
  reg [1-1:0] M_ram_write_en;
  reg [8-1:0] M_ram_raddr;
  simple_dual_ram_15 #(.SIZE(8'ha2), .DEPTH(9'h100)) ram (
    .rclk(M_data_scan_TCK),
    .wclk(clk),
    .waddr(M_ram_waddr),
    .write_data(M_ram_write_data),
    .write_en(M_ram_write_en),
    .raddr(M_ram_raddr),
    .read_data(M_ram_read_data)
  );
  
  integer i;
  
  reg triggered;
  
  reg [647:0] trigger_type;
  
  always @* begin
    M_state_d = M_state_q;
    M_waddr_d = M_waddr_q;
    M_offset_d = M_offset_q;
    M_data_old_d = M_data_old_q;
    M_raddr_d = M_raddr_q;
    M_rdata_d = M_rdata_q;
    M_force_d = M_force_q;
    M_trigger_data_d = M_trigger_data_q;
    M_status_d = M_status_q;
    
    if (M_info_scan_SEL) begin
      if (M_info_scan_CAPTURE) begin
        M_status_d = 104'h0300000100000000a2f1128ce2;
      end else begin
        if (M_info_scan_SHIFT) begin
          M_status_d = {M_status_q[0+0-:1], M_status_q[1+102-:103]};
        end
      end
    end
    M_info_scan_TDO = M_status_q[0+0-:1];
    M_config_fifo_din = M_config_scan_TDI;
    M_config_fifo_wput = M_config_scan_SHIFT & M_config_scan_SEL;
    M_config_scan_TDO = 1'h0;
    M_config_fifo_rget = 1'h1;
    if (!M_config_fifo_empty) begin
      M_trigger_data_d = {M_config_fifo_dout, M_trigger_data_q[1+646-:647]};
    end
    M_ram_waddr = M_waddr_q;
    M_ram_write_data = data;
    M_ram_write_en = 1'h0;
    M_data_old_d = data;
    trigger_type = M_trigger_data_q;
    
    case (M_state_q)
      IDLE_state: begin
        M_waddr_d = 1'h0;
        if (M_arm_sync_out) begin
          M_state_d = ARMED_state;
        end
      end
      ARMED_state: begin
        triggered = 1'h1;
        for (i = 1'h0; i < 8'ha2; i = i + 1) begin
          triggered = triggered & ((trigger_type[(i)*4+0+0-:1] && M_data_old_q[(i)*1+0-:1] == 1'h0 && data[(i)*1+0-:1] == 1'h1) || (trigger_type[(i)*4+1+0-:1] && M_data_old_q[(i)*1+0-:1] == 1'h1 && data[(i)*1+0-:1] == 1'h0) || (trigger_type[(i)*4+2+0-:1] && data[(i)*1+0-:1] == 1'h0) || (trigger_type[(i)*4+3+0-:1] && data[(i)*1+0-:1] == 1'h1) || trigger_type[(i)*4+3-:4] == 4'h0);
        end
        if (triggered || M_force_sync_out) begin
          M_ram_write_en = 1'h1;
          M_state_d = FIRED_state;
          M_waddr_d = M_waddr_q + 1'h1;
        end
      end
      FIRED_state: begin
        M_waddr_d = M_waddr_q + 1'h1;
        M_ram_write_en = 1'h1;
        if (M_waddr_q == 10'h0ff) begin
          M_state_d = CAPTURED_state;
        end
      end
    endcase
    M_ram_raddr = M_raddr_q;
    M_data_scan_TDO = M_rdata_q[0+0-:1];
    if (M_data_scan_SEL) begin
      if (M_data_scan_CAPTURE) begin
        M_rdata_d = M_ram_read_data;
        M_raddr_d = M_raddr_q + 1'h1;
        M_offset_d = 1'h0;
      end else begin
        if (M_data_scan_SHIFT) begin
          M_rdata_d = {1'h0, M_rdata_q[1+160-:161]};
          M_offset_d = M_offset_q + 1'h1;
          if (M_offset_q == 9'h0a1) begin
            M_offset_d = 1'h0;
            M_rdata_d = M_ram_read_data;
            M_raddr_d = M_raddr_q + 1'h1;
          end
        end else begin
          M_raddr_d = 1'h0;
        end
      end
    end
    M_status_sync_in = M_state_q == CAPTURED_state;
    M_capture_scan_TDO = M_status_sync_out;
    M_arm_sync_in = 1'h0;
    M_force_sync_in = M_force_q;
    if (M_capture_scan_SEL) begin
      M_arm_sync_in = M_capture_scan_SHIFT | M_capture_scan_CAPTURE;
      if (M_capture_scan_SHIFT) begin
        M_force_d = M_force_q | M_capture_scan_TDI;
      end
    end
  end
  
  always @(posedge M_data_scan_TCK) begin
    M_raddr_q <= M_raddr_d;
    M_offset_q <= M_offset_d;
    M_rdata_q <= M_rdata_d;
  end
  
  
  always @(posedge clk) begin
    M_data_old_q <= M_data_old_d;
    M_trigger_data_q <= M_trigger_data_d;
    
    if (rst == 1'b1) begin
      M_waddr_q <= 1'h0;
      M_state_q <= 1'h0;
    end else begin
      M_waddr_q <= M_waddr_d;
      M_state_q <= M_state_d;
    end
  end
  
  
  always @(posedge M_info_scan_TCK) begin
    M_status_q <= M_status_d;
  end
  
  
  always @(posedge M_capture_scan_TCK) begin
    if (!M_capture_scan_SEL == 1'b1) begin
      M_force_q <= 1'h0;
    end else begin
      M_force_q <= M_force_d;
    end
  end
  
endmodule
