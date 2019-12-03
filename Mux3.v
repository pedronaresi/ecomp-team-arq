module Mux3(PCDst, ULACrl, entrada1, entrada2, entrada3, entrada4, saida);

	input ULACrl;
	input [2:0]	PCDst;
	input [31:0] entrada1;	//PC+1
	input [31:0] entrada2;	//Banco de Registradores: Dado 1
	input [31:0] entrada3;	//Imediato Jump
	input [31:0] entrada4;	//Imediato Branch
	
	output reg [31:0] saida;
	
	always @(*) begin
		if(PCDst == 4)
			saida = 524;	//Instrução de retorno para o SO
		else if(PCDst == 1)
			saida = entrada2;
		else if(PCDst == 2)
			saida = entrada3;
		else if(PCDst == 3)
		begin
			if (ULACrl == 1)
				saida = entrada4;
			else
				saida = entrada1;
		end
		else 	//PCDst == 0
			saida = entrada1;
	end

endmodule	