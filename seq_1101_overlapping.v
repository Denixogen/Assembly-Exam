/*========================================
			         SEQUENCE 1101
==========================================
description:
This Moore FSM detects the overlapping 
sequence 1101, assuming the input stream 
arrive MSB- first.

Designer Engineer:
 Mark Denzen P.Caro 

				
				
				
Date:
    Apr 28 2026				
------------------------------------------*/
module seq_1101_overlapping(out,state,in,clk,rst_n);

 //ports
 input      	  	in;
 input      	  	clk;
 input      	  	rst_n;
 output reg 	  	out;
 output reg [2:0] state;
 
 // state assignments
 localparam [2:0] S0 = 3'b000;
 localparam [2:0] S1 = 3'b001;
 localparam [2:0] S2 = 3'b010;
 localparam [2:0] S3 = 3'b011;
 localparam [2:0] S4 = 3'b100;
 reg [2:0] nxt;
 reg [2:0] pre;


 // input block
 always @(in,pre)begin
	case (pre)
		
		S0: nxt = in? S1:S0;
		S1: nxt = in? S2:S0;
		S2: nxt = in? S2:S3;
		S3: nxt = in? S4:S0;
		S4: nxt = in? S2:S0;
		default: nxt = S0;
	endcase
 end
 
 
 // sequential block
 always @(posedge clk,negedge rst_n)begin
	if(!rst_n) pre <= S0;
	else       pre <= nxt;
 end

 
 // output block
 always @(pre)begin
	case(pre)
		S0: begin 
			out = 0;
		   state = S0;
		    end
			 
		S1: begin
			out = 0;
			state = S1;
		    end
			 
		S2: begin 
			out = 0;
			state = S2;
		    end
			 
		S3: begin 
			out = 0;
			state = S3;
		    end
		
		S4: begin
			out = 1;
			state = S4;
			end
			 
		default: begin
			 out = 0;
			 state = S0;
			end
	endcase
 end
endmodule

