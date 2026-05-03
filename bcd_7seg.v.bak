
/*===========================================
	BCD to 7-SEGMENT DECODER
=============================================
Description: 
This is a Binary Coded Decimal (BCD) to
7-Segment Decoder with Active-High outputs
for driving Common Cathode LED's.

Designer:
Pamposa, Rogelio III, V.
Caro, Mark Denzen
Emolaga, Roxie Elaine

Date 
15 January 2026
==========================================*/

module bcd_7seg(leds,bcd);

  input [3:0] bcd;
  output reg [0:6] leds;

  always @ (bcd) begin
    case (bcd)        // abcdefg
      4'd0:    leds = 7'b1111110 ^ 7'b1111111;
      4'd1:    leds = 7'b0110000 ^ 7'b1111111;
      4'd2:    leds = 7'b1101101 ^ 7'b1111111;
      4'd3:    leds = 7'b1111001 ^ 7'b1111111;
      4'd4:    leds = 7'b0110011 ^ 7'b1111111;
      4'd5:    leds = 7'b1011011 ^ 7'b1111111;
      4'd6:    leds = 7'b0011111 ^ 7'b1111111;
      4'd7:    leds = 7'b1110000 ^ 7'b1111111;
      4'd8:    leds = 7'b1111111 ^ 7'b1111111;
      4'd9:    leds = 7'b1110011 ^ 7'b1111111;
      default: leds = 7'b0000001 ^ 7'b1111111;
    endcase
  end

endmodule

