module Display7seg (n, display);
	input [3:0] n;
	output reg [6:0] display;
	
	always @(*) begin
		case(n)
			0: display = 7'b0000001;
			1: display = 7'b1001111;
			2: display = 7'b0010010;
			3: display = 7'b0000110;
			4: display = 7'b1001100;
			5: display = 7'b0100100;
			6: display = 7'b0100000;
			7: display = 7'b0001101;
			8: display = 7'b0000000;
			9: display = 7'b0000100;
			10: display = 7'b1111110;
			11: display = 7'b1111111;
			default: display = 7'b1111111;
		endcase
	end
	
endmodule	