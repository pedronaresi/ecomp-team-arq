module Add(entrada, saida, halt, resetPC);

	input halt, resetPC;
	input [31:0] entrada;
	output reg [31:0] saida;

	always @(*) begin
		
		if (halt == 1) 
			saida = entrada;
		else if (resetPC == 1)
			saida = 0;
		else
			saida = entrada + 1;
			
	end
	
endmodule	