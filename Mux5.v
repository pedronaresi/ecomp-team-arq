module Mux5( OpLeitura, entrada1, entrada2, saida);

	input	OpLeitura;
	input [31:0] entrada1;	//BIOS
	input [31:0] entrada2;	//Memória
	
	output reg [31:0] saida;
	
	always @(*) begin
		
		
		if(OpLeitura == 0)
			saida = entrada1;
		else
			saida = entrada2;
	end

endmodule	