/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module seven_seg_22 (
    input [3:0] char,
    output reg [7:0] segs
  );
  
  
  
  always @* begin
    
    case (char)
      1'h0: begin
        segs = 8'hfc;
      end
      1'h1: begin
        segs = 8'h60;
      end
      2'h2: begin
        segs = 8'hda;
      end
      2'h3: begin
        segs = 8'hf2;
      end
      3'h4: begin
        segs = 8'h66;
      end
      3'h5: begin
        segs = 8'hb6;
      end
      3'h6: begin
        segs = 8'hbe;
      end
      3'h7: begin
        segs = 8'he0;
      end
      4'h8: begin
        segs = 8'hfe;
      end
      4'h9: begin
        segs = 8'hf6;
      end
      4'ha: begin
        segs = 8'hec;
      end
      4'hb: begin
        segs = 8'h3c;
      end
      4'hc: begin
        segs = 8'h78;
      end
      4'hd: begin
        segs = 8'h9e;
      end
      4'he: begin
        segs = 8'h1c;
      end
      4'hf: begin
        segs = 8'h02;
      end
      default: begin
        segs = 8'h00;
      end
    endcase
  end
endmodule
