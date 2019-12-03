module BancoReg(reg1, reg2, reg3, regEscrita, dado1, dado2, dado3, dadosEscrita, escreveReg, clock, jal, enderecoPC, pcAtual, progAtual, save, preempcao);

	input [4:0] reg1; 									//Endereço do registrador 1
	input [4:0] reg2; 									//Endereço do registrador 1
	input [4:0] reg3; 									//Endereço do registrador 1
	input [4:0] regEscrita;								//Endereço do registrador destino
	input [31:0] dadosEscrita;							//Dados para serem escritos no resgitrador
	input clock, escreveReg, jal, save;

	input [31:0] enderecoPC;							
	
	output [31:0] dado1;									//Dados guardados no registrador 1
	output [31:0] dado2;									//Dados guardados no registrador 2
	output [31:0] dado3;									//Dados guardados no registrador 3
	
	output [31:0] pcAtual, progAtual, preempcao;

	reg [31:0] bancoReg[31:0]; 						//Declaraçao do Banco de Registradores

	always @(posedge clock) begin
		
		if(escreveReg == 1)
			bancoReg[regEscrita] = dadosEscrita;
			
		if(jal == 1 && pcAtual < 3000)
			bancoReg[30] = dadosEscrita;
		if(jal == 1  && pcAtual >= 3000) 			//Operação Jump and link
			bancoReg[16] = dadosEscrita;  			//ra = registrador 16
		
		bancoReg[11] = enderecoPC;
		bancoReg[0] = 0;
		
		if(save == 1) bancoReg[10] = enderecoPC;
	end
	
	assign dado1  = bancoReg[reg1];
	assign dado2  = bancoReg[reg2];
	assign dado3  = bancoReg[reg3];
	
	assign pcAtual = bancoReg[11];
	assign progAtual = bancoReg[24];
	assign preempcao = bancoReg[29];

endmodule	