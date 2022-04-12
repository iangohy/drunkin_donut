/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shifter_19 (
    input [15:0] a,
    input [3:0] b,
    input [1:0] alufn,
    output reg [15:0] s
  );
  
  
  
  wire [16-1:0] M_shl16_s;
  reg [16-1:0] M_shl16_a;
  reg [4-1:0] M_shl16_b;
  sixteen_bit_shiftleft_29 shl16 (
    .a(M_shl16_a),
    .b(M_shl16_b),
    .s(M_shl16_s)
  );
  
  wire [16-1:0] M_shr16_s;
  reg [16-1:0] M_shr16_a;
  reg [4-1:0] M_shr16_b;
  sixteen_bit_shiftright_30 shr16 (
    .a(M_shr16_a),
    .b(M_shr16_b),
    .s(M_shr16_s)
  );
  
  wire [16-1:0] M_sra16_s;
  reg [16-1:0] M_sra16_a;
  reg [4-1:0] M_sra16_b;
  sixteen_bit_sra_31 sra16 (
    .a(M_sra16_a),
    .b(M_sra16_b),
    .s(M_sra16_s)
  );
  
  always @* begin
    M_shl16_a = a;
    M_shl16_b = b;
    M_shr16_a = a;
    M_shr16_b = b;
    M_sra16_a = a;
    M_sra16_b = b;
    
    case (alufn[1+0-:1])
      1'h0: begin
        
        case (alufn[0+0-:1])
          1'h0: begin
            s = M_shl16_s;
          end
          1'h1: begin
            s = M_shr16_s;
          end
          default: begin
            s = a;
          end
        endcase
      end
      1'h1: begin
        
        case (alufn[0+0-:1])
          1'h0: begin
            s = a;
          end
          1'h1: begin
            s = M_sra16_s;
          end
          default: begin
            s = a;
          end
        endcase
      end
      default: begin
        s = a;
      end
    endcase
  end
endmodule
