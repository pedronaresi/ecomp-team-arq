module ExtSinal26(entrada, saida);

	input [25:0] entrada;
	output reg [31:0] saida;
	
	always @(*) begin	
		saida = {6'b000000,entrada};
	end	
endmodule	
