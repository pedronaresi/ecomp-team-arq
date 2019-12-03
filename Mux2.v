module Mux2(OrigULA, entrada1, entrada2, saida);

	input	OrigULA;
	input [31:0] entrada1;	//Saída Banco de Registradores: Dado 2
	input [31:0] entrada2;	//Imediato
	
	output reg [31:0] saida;
	
	always @(*) begin
		if(OrigULA)
			saida = entrada2;
		else
			saida = entrada1;
	end

endmodule	