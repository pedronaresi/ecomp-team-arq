module Mux4( OpSaida, entrada1, entrada2, entrada3, entrada4, entrada5, saida, entrada6);

	input [2:0]	OpSaida;
	input [31:0] entrada1;	//PC+1
	input [31:0] entrada2;	//Dados IO
	input [31:0] entrada3;	//Dados Memória
	input [31:0] entrada4;	//Dados ULA
	input [31:0] entrada5;	//Imediato
	input [31:0] entrada6;	//Tabela Arquivos
	
	output reg [31:0] saida;
	
	always @(*) begin
		if(OpSaida == 0)
			saida = entrada1;
		else if(OpSaida == 1)
			saida = entrada2;
		else if(OpSaida == 2)
			saida = entrada3;
		else if(OpSaida == 3)
			saida = entrada4;
		else if(OpSaida == 4)
			saida = entrada5;
		else if(OpSaida == 5)
			saida = entrada6;
		else
			saida = 0;
	end

endmodule	