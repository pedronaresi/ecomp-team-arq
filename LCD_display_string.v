module LCD_display_string(index,out,hex0,hex1, estado, pcAtual, progAtual);
	input [4:0] index;
	input [3:0] hex0,hex1;
	input [31:0] estado;
	output [7:0] out;
	reg [7:0] out;
	input [31:0] pcAtual, progAtual;
	// ASCII hex values for LCD Display
	// Enter Live Hex Data Values from hardware here
	// LCD DISPLAYS THE FOLLOWING:
	//----------------------------
	//| Count=XX                  |
	//| DE2                       |
	//----------------------------

	
	wire [3:0] pc0, pc1, pc2, pc3;
	wire [3:0] pr0, pr1;
	wire neg1, neg2;
	
	
	BCD2 bcd2(progAtual, pr0, pr1, neg1);
	BCD4 bcd3(pcAtual, pc0, pc1, pc2, pc3, neg2);
	
   always begin
		if(estado == 1) begin
			case (index)
				// Line 1
				 5'h00: out <= 8'h49; //I
				 5'h01: out <= 8'h4E; //N
				 5'h02: out <= 8'h49; //I
				 5'h03: out <= 8'h43; //C
				 5'h04: out <= 8'h49; //I
				 5'h05: out <= 8'h41; //A
				 5'h06: out <= 8'h4E; //N
				 5'h07: out <= 8'h44; //D			 
				 5'h08: out <= 8'h4F; //O
				 
				// Line 2
				 5'h10: out <= 8'h35; //S
				 5'h11: out <= 8'h49; //I
				 5'h12: out <= 8'h53; //S
				 5'h13: out <= 8'h54; //T
				 5'h14: out <= 8'h45; //E
				 5'h15: out <= 8'h4D; //M
				 5'h16: out <= 8'h41; //A
		 
				default: out <= 8'h20;
			endcase 
	  end
	  else if(estado == 2) begin
			case (index)
				// Line 1
				 5'h00: out <= 8'h35; //S
				 5'h01: out <= 8'h49; //I
				 5'h02: out <= 8'h53; //S
				 5'h03: out <= 8'h54; //T
				 5'h04: out <= 8'h45; //E
				 5'h05: out <= 8'h4D; //M
				 5'h06: out <= 8'h41; //A

				 
				// Line 2
				 5'h10: out <= 8'h49; //I
				 5'h11: out <= 8'h4E; //N
				 5'h12: out <= 8'h49; //I
				 5'h13: out <= 8'h43; //C
				 5'h14: out <= 8'h49; //I
				 5'h15: out <= 8'h41; //A
				 5'h16: out <= 8'h44; //D			 
				 5'h17: out <= 8'h4F; //O
		 
				default: out <= 8'h20;
			endcase 
	  end
	  else if(estado == 9999) begin
			case (index)
				// Line 1
				 5'h00: out <= 8'h50; //P
				 5'h01: out <= 8'h52; //R
				 5'h02: out <= 8'h4F; //O
				 5'h03: out <= 8'h47; //G
				 5'h04: out <= 8'h52; //R
				 5'h05: out <= 8'h41; //A
				 5'h06: out <= 8'h4D; //M
				 5'h07: out <= 8'h41; //A		 
				 5'h08: out <= 8'h20;
				 5'h09: out <= {4'h0,pr1}; //X
				 5'h0A: out <= {4'h0,pr0}; //X
				 
			// Line 2
				 5'h10: out <= 8'h43; //C
				 5'h11: out <= 8'h4F; //O
				 5'h12: out <= 8'h4E; //N
				 5'h13: out <= 8'h54; //T
				 5'h14: out <= 8'h41; //A
				 5'h15: out <= 8'h44; //D
				 5'h16: out <= 8'h4F; //O
				 5'h17: out <= 8'h52; //R		 
				 5'h18: out <= 8'h20;
				 5'h19: out <= {4'h0,pc3}; //X
				 5'h1A: out <= {4'h0,pc2}; //X
				 5'h1B: out <= {4'h0,pc1}; //X
				 5'h1C: out <= {4'h0,pc0}; //X
		 
				default: out <= 8'h20;
			endcase 
	  end
	  else if(estado == 4) begin
			case (index)
				// Line 1
				 5'h00: out <= 8'h43;
				 5'h01: out <= 8'h6F;
				 5'h02: out <= 8'h75;
				 5'h03: out <= 8'h6E;
				 5'h04: out <= 8'h74;
				 5'h05: out <= 8'h3D;
				 5'h06: out <= {4'h0,hex1};
				 5'h07: out <= {4'h0,hex0};			 
				 5'h08: out <= 8'h43;
				 5'h09: out <= 8'h6F;
				 5'h0A: out <= 8'h75;
				 5'h0B: out <= 8'h6E;
				 5'h0C: out <= 8'h74;
				 
			// Line 2
				 5'h10: out <= 8'h44;
				 5'h11: out <= 8'h43;
				 5'h12: out <= 8'h6F;
				 5'h13: out <= 8'h75;
				 5'h14: out <= 8'h6E;
				 5'h15: out <= 8'h74;
				 5'h16: out <= 8'h20;
		 
				default: out <= 8'h20;
			endcase 
	  end
	  else begin
			case (index)
				// Line 1
				 5'h00: out <= 8'h20;
				 5'h01: out <= 8'h20;
				 5'h02: out <= 8'h20;
				 5'h03: out <= 8'h20;
				 5'h04: out <= 8'h20;
				 5'h05: out <= 8'h2D;
				 5'h06: out <= 8'h2D;
				 5'h07: out <= 8'h2D;			 
				 5'h08: out <= 8'h20;
				 5'h09: out <= 8'h20;
				 5'h0A: out <= 8'h20;
				 5'h0B: out <= 8'h20;
				 5'h0C: out <= 8'h20;
				 5'h0D: out <= 8'h20;
				 5'h0E: out <= 8'h20;
				 5'h0F: out <= 8'h20;
				 
			// Line 2
				 5'h10: out <= 8'h20;
				 5'h11: out <= 8'h20;
				 5'h12: out <= 8'h20;
				 5'h13: out <= 8'h20;
				 5'h14: out <= 8'h20;
				 5'h15: out <= 8'h2D;
				 5'h16: out <= 8'h2D;
				 5'h17: out <= 8'h2D;			 
				 5'h18: out <= 8'h20;
				 5'h19: out <= 8'h20;
				 5'h1A: out <= 8'h20;
				 5'h1B: out <= 8'h20;
				 5'h1C: out <= 8'h20;
				 5'h1D: out <= 8'h20;
				 5'h1E: out <= 8'h20;
				 5'h1F: out <= 8'h20;
		 
				default: out <= 8'h20;
			endcase 
	  end
	end
endmodule 
