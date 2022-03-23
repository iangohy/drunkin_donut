/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module rca_five_18 (
    input [4:0] a,
    input [4:0] b,
    output reg [4:0] out
  );
  
  
  
  wire [(3'h5+0)-1:0] M_fa_s;
  wire [(3'h5+0)-1:0] M_fa_cout;
  reg [(3'h5+0)-1:0] M_fa_x;
  reg [(3'h5+0)-1:0] M_fa_y;
  reg [(3'h5+0)-1:0] M_fa_cin;
  
  genvar GEN_fa0;
  generate
  for (GEN_fa0=0;GEN_fa0<3'h5;GEN_fa0=GEN_fa0+1) begin: fa_gen_0
    full_adder_19 fa (
      .x(M_fa_x[GEN_fa0*(1)+(1)-1-:(1)]),
      .y(M_fa_y[GEN_fa0*(1)+(1)-1-:(1)]),
      .cin(M_fa_cin[GEN_fa0*(1)+(1)-1-:(1)]),
      .s(M_fa_s[GEN_fa0*(1)+(1)-1-:(1)]),
      .cout(M_fa_cout[GEN_fa0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  
  always @* begin
    M_fa_x = a;
    M_fa_y = b;
    M_fa_cin[0+0-:1] = 1'h0;
    M_fa_cin[1+3-:4] = M_fa_cout[0+3-:4];
    out = M_fa_s;
  end
endmodule
