module MemInst(endereco, saida, clock_auto, instrucao, OpMemIns, endLeitura);
	input [31:0] endereco, endLeitura;
	input [31:0] instrucao;
	input clock_auto;
	input OpMemIns;
	
	output reg [31:0] saida;
	
	reg [31:0] bancoInst [2**14-1: 0];
	
	always @(posedge clock_auto) begin
		if(OpMemIns == 1) begin
			bancoInst[endLeitura] = instrucao;
		end
		
		saida = bancoInst[endereco];
	end
	
	

endmodule	