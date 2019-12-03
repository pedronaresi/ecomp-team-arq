module TabArquivos(dadosEscrita, dadosLidos, endereco, OpTabArq, clock, clock_auto);

	input [31:0] dadosEscrita;
	input [31:0] endereco;
	input clock, OpTabArq, clock_auto; //Se OpTabArq for 0 não ocorrerá a escrita de dados na memória, se OpIO for 1 haverá a escrita.

	output [31:0] dadosLidos;

	reg [31:0] tab[200:0];
	
	always @(posedge clock) begin
		if(OpTabArq) begin
			tab[endereco] = dadosEscrita;
		end
	end
	
	assign dadosLidos = tab[endereco];

endmodule	