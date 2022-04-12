/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     SIZE = 1
     DEPTH = 8
*/
module async_fifo_14 (
    input wclk,
    input wrst,
    input [0:0] din,
    input wput,
    output reg full,
    input rclk,
    input rrst,
    output reg [0:0] dout,
    input rget,
    output reg empty
  );
  
  localparam SIZE = 1'h1;
  localparam DEPTH = 4'h8;
  
  
  localparam ADDR_SIZE = 2'h3;
  
  reg [2:0] M_waddr_d, M_waddr_q = 1'h0;
  reg [8:0] M_wsync_d, M_wsync_q = 1'h0;
  reg [2:0] M_gwsync_d, M_gwsync_q = 1'h0;
  
  reg [2:0] M_raddr_d, M_raddr_q = 1'h0;
  reg [8:0] M_rsync_d, M_rsync_q = 1'h0;
  reg [2:0] M_grsync_d, M_grsync_q = 1'h0;
  
  wire [1-1:0] M_ram_read_data;
  reg [1-1:0] M_ram_wclk;
  reg [3-1:0] M_ram_waddr;
  reg [1-1:0] M_ram_write_data;
  reg [1-1:0] M_ram_write_en;
  reg [1-1:0] M_ram_rclk;
  reg [3-1:0] M_ram_raddr;
  simple_dual_ram_27 #(.SIZE(1'h1), .DEPTH(4'h8)) ram (
    .wclk(M_ram_wclk),
    .waddr(M_ram_waddr),
    .write_data(M_ram_write_data),
    .write_en(M_ram_write_en),
    .rclk(M_ram_rclk),
    .raddr(M_ram_raddr),
    .read_data(M_ram_read_data)
  );
  
  reg [2:0] waddr_gray;
  
  reg [2:0] wnext_gray;
  
  reg [2:0] raddr_gray;
  
  reg wrdy;
  reg rrdy;
  
  reg [2:0] wnext;
  
  reg [2:0] read_sync;
  
  always @* begin
    M_rsync_d = M_rsync_q;
    M_wsync_d = M_wsync_q;
    M_waddr_d = M_waddr_q;
    M_raddr_d = M_raddr_q;
    M_grsync_d = M_grsync_q;
    M_gwsync_d = M_gwsync_q;
    
    M_ram_wclk = wclk;
    M_ram_rclk = rclk;
    M_ram_write_en = 1'h0;
    wnext = M_waddr_q + 1'h1;
    waddr_gray = M_waddr_q[1+1-:2] ^ M_waddr_q;
    wnext_gray = wnext[1+1-:2] ^ wnext;
    raddr_gray = M_raddr_q[1+1-:2] ^ M_raddr_q;
    M_gwsync_d = waddr_gray;
    M_grsync_d = raddr_gray;
    M_rsync_d = {M_rsync_q[3+2-:3], M_rsync_q[0+2-:3], M_gwsync_q};
    M_wsync_d = {M_wsync_q[3+2-:3], M_wsync_q[0+2-:3], M_grsync_q};
    wrdy = wnext_gray != M_wsync_q[6+2-:3];
    read_sync = M_wsync_q[6+2-:3];
    rrdy = raddr_gray != M_rsync_q[6+2-:3];
    full = !wrdy;
    empty = !rrdy;
    M_ram_waddr = M_waddr_q;
    M_ram_raddr = M_raddr_q;
    M_ram_write_data = din;
    if (wput && wrdy) begin
      M_waddr_d = M_waddr_q + 1'h1;
      M_ram_write_en = 1'h1;
    end
    if (rget && rrdy) begin
      M_raddr_d = M_raddr_q + 1'h1;
      M_ram_raddr = M_raddr_q + 1'h1;
    end
    dout = M_ram_read_data;
  end
  
  always @(posedge rclk) begin
    if (rrst == 1'b1) begin
      M_raddr_q <= 1'h0;
      M_rsync_q <= 1'h0;
      M_grsync_q <= 1'h0;
    end else begin
      M_raddr_q <= M_raddr_d;
      M_rsync_q <= M_rsync_d;
      M_grsync_q <= M_grsync_d;
    end
  end
  
  
  always @(posedge wclk) begin
    if (wrst == 1'b1) begin
      M_waddr_q <= 1'h0;
      M_wsync_q <= 1'h0;
      M_gwsync_q <= 1'h0;
    end else begin
      M_waddr_q <= M_waddr_d;
      M_wsync_q <= M_wsync_d;
      M_gwsync_q <= M_gwsync_d;
    end
  end
  
endmodule
