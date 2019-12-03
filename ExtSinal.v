module ExtSinal(entrada, saida, OpExt, Negativo);

	input [15:0] entrada;
	input OpExt; //Se o sinal for 0 adiciona 0's à esquerda se o númeoro for positivo ou adiciona 1' se 
					 //o número for negativo, se o sinal for 1 adiciona 0's à direita

	input Negativo; //Se a entrada poder ser um número negativo o sinal é 1, caso contrário é 0
	
	output reg [31:0] saida;
	
	always @(*) begin	
	
		if(entrada[15:15] == 1 && Negativo == 1) begin
			if(OpExt == 0)
				saida = {16'b1111111111111111,entrada};
			else
				saida = {entrada,16'b0000000000000000};
		end
		
		else begin
			if(OpExt == 0)
				saida = {16'b0000000000000000,entrada};
			else
				saida = {entrada,16'b0000000000000000};
		end
	end	
endmodule	
