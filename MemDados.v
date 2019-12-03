module MemDados(dadosEscrita, dadosLidos, endereco, OpMem, clock, clock_auto);

	input [31:0] dadosEscrita;
	input [31:0] endereco;
	input clock, OpMem, clock_auto; //Se OpMem for 0 não ocorrerá a escrita de dados na memória, se OpIO for 1 haverá a escrita.

	output reg [31:0] dadosLidos;

	reg [31:0] bancoMem[7000:0];
	
	always @(posedge clock) begin
		if(OpMem) begin
			bancoMem[endereco] = dadosEscrita;
		end
	end
	
	//assign dadosLidos = bancoMem[endereco];
	
	always @(posedge clock_auto) begin
		dadosLidos = bancoMem[endereco];
	end

endmodule	

//negedge