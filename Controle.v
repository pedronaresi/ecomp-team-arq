module Controle(Inst, botaoEntrada, botaoSaida, halt, escreveReg, OpExt, NegativoEx, RegDst, OrigULA, OpULA, PCDst, OpMem, OpIO, OpSaida, jal, ledentrada, ledsaida, ledmem, OpHD, pronto, stimer, OpLeitura, OpTabArq, OpMemIns, reset, resetPC, clock, save);

	input [5:0] Inst;
	input botaoEntrada, botaoSaida; 
	input pronto, stimer, clock;
	input reset;
	
	output reg halt, escreveReg, OpExt, NegativoEx, RegDst, OrigULA, OpIO, OpMem, jal, OpLeitura, OpTabArq, OpMemIns;
	output reg [4:0] OpULA;
	output reg [1:0] OpHD;
	output reg [2:0] PCDst, OpSaida;
	output reg ledentrada, ledsaida, ledmem, resetPC, save;
	
	reg [4:0] aux;
			
	always @(posedge clock) begin
		
		if(reset==0) begin 
			OpLeitura = 0;
			save = 0;
			aux = 0;
		end
		case (Inst)
			6'b100101: begin			//change bios mem
				OpLeitura = 1;			//0-Ler da Bios/ 1-Ler da Mem
			end
		endcase
		
		
		if(aux == 1)begin
			save = 0;
		end
		else if(stimer == 1 && aux == 0 && halt == 0 && Inst != 6'b010000 
			&& Inst != 6'b010001	&& Inst != 6'b010011	&& Inst != 6'b010100	&& Inst != 6'b010101	&& Inst != 6'b010110
				&& Inst != 6'b010111	&& Inst != 6'b011000	&& Inst != 6'b011111	&& Inst != 6'b100000	&& Inst != 6'b100110) begin
			
			save = 1;
			aux = 1;
		end
		if(stimer == 0) begin
			aux = 0;
			save = 0;
		end
	end
	
	always @(*) begin
		
		if(reset==0) begin 
			resetPC = 0;
			halt = 0;
			ledsaida = 0;
			ledentrada = 0;
		end
		
		halt = 0;		
		escreveReg = 0;			//0-Não Escreve / 1-Escreve
		OpExt = 0;					//0-Extende normal / 1-Extende na parte menos significativa
		NegativoEx = 0;
		RegDst = 0;					//0-Inst [25:21] / 1-Inst [20:16]
		OrigULA = 0;				//0-Dado 2 / 1-Imediato
		OpULA = 0;
		PCDst	= 0;					//0-PC+1 / 1-Dado 1 / 2- Imediato Jump/ 3- Imediato Branch
		OpMem = 0;					//0-Não Escreve / 1-Escreve
		OpIO = 0;					//0-Não Escreve / 1-Escreve
		OpSaida = 0;				//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3- Dados ULA / 4-Imediato / 5-Tabela Arquivos
		jal = 0;
		OpTabArq = 0;				//0-Não Escreve / 1-Escreve
		OpHD = 0;					//0-nada / 1-realizar leitura / 2-realizar gravação
		OpMemIns = 0;				//0-Não Escreve / 1-Escreve
		resetPC = 0;
		ledsaida = 0;
		ledentrada = 0;
		ledmem = 0;
		

	
		case (Inst)
			6'b000000: begin			//Noop
			
				
			end
			6'b000001: begin			//Adiçao		
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 1;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3- Dados ULA / 4-Imediato / 5-Tabela Arquivos
			
			end
			6'b000010: begin			//Adiçao i
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				NegativoEx = 1;
				OrigULA = 1;  			//0-Dado 2 / 1-Imediato
				OpULA = 1;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3- Dados ULA / 4-Imediato
			
			end
			6'b000011: begin			//Subtração
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 2;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3- Dados ULA / 4-Imediato
			
			end
			6'b000100: begin			//Subtração i
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				NegativoEx = 1;
				OrigULA = 1;  			//0-Dado 2 / 1-Imediato
				OpULA = 2;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3- Dados ULA / 4-Imediato
			
			end
			6'b000101: begin			//Multiplicação
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 3;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3- Dados ULA / 4-Imediato
			
			end
			6'b000110: begin			//Divisão
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				NegativoEx = 0;
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 4;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3- Dados ULA / 4-Imediato
			
			end
			6'b000111: begin			//Incrementa 
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 5;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3- Dados ULA / 4-Imediato
			end
			6'b001000: begin			//Decrementa 
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				NegativoEx = 0;
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 6;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3- Dados ULA / 4-Imediato
			end
			6'b001001: begin			//And 
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 7;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
			end
			6'b001010: begin			//Or 
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 8;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
			end
			6'b001011: begin			//Resto
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 9;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
				
			end
			6'b001100: begin			//Xor
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 10;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
			end
			6'b001101: begin			//Not
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 11;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
			end
			6'b001110: begin			//Desloca Esquerda 
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 12;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
			end
			6'b001111: begin			//Desloca Direita 
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 12;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
			end
			6'b010000: begin			//Branch on Equal 
			
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 17;				
				PCDst	= 3;				//0-PC+1 / 1-Dado 1 / 2-Imediato Jump/ 3-Imediato Branch
			end
			6'b010001: begin			//Branch not  Equal
			
				OpULA = 18;				
				PCDst	= 3;				//0-PC+1 / 1-Dado 1 / 2-Imediato Jump/ 3-Imediato Branch
			end
			6'b010011: begin			//Jump Register			
			
				PCDst	= 1;				//0-PC+1 / 1-Dado 1 / 2-Imediato Jump/ 3-Imediato Branch
			end
			6'b010100: begin			//Jump
			
				PCDst	= 2;				//0-PC+1 / 1-Dado 1 / 2-Imediato Jump/ 3-Imediato Branch
			end
			6'b010101: begin			//Jump and Link
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				PCDst	= 2;				//0-PC+1 / 1-Dado 1 / 2-Imediato Jump/ 3-Imediato Branch
				jal = 1;
			end
			6'b010110: begin			//Set on Less Than 
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 14;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
			end
			6'b010111: begin			//Set on Greater Than 
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 15;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
			end
			6'b011000: begin			//Set on Equal Than 
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				RegDst = 1;				//0-Inst [25:21] / 1-Inst [20:16]
				OpULA = 16;				
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
			end
			6'b011001: begin			//Load 
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				OrigULA = 1;  			//0-Dado 2 / 1-Imediato
				OpULA = 1;				
				OpSaida = 2;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
			end
			6'b011010: begin			//Store 
			
				OrigULA = 1;  			//0-Dado 2 / 1-Imediato
				OpULA = 1;				
				OpMem = 1;				//0-Não Escreve / 1-Escreve
				
			end
			6'b011011: begin			//Load Imediate
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				NegativoEx = 1;
				OpSaida = 4;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
				
			end
			6'b011100: begin			//Load Uper Imediate
				//halt = 0;
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				OpExt = 1;				//0-Extende normal / 1-Extende na parte mais significativa
				NegativoEx = 0;
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
				OpULA = 19;
				OrigULA = 1;  			//0-Dado 2 / 1-Imediato
			end
			6'b011101: begin			//Move
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
			end
			6'b011111: begin			//Entrada 
						
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				OpSaida = 1;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
				ledentrada = 1;
				halt = 1;	
				if(botaoEntrada == 1) begin
					halt = 0;
					ledentrada = 0;
				end
			end
			6'b100000: begin			//Saída 
			
				OpIO = 1;				//0-Não Escreve / 1-Escreve
				ledsaida = 1;
				halt = 1;				
				if(botaoSaida == 1) begin
					halt = 0;
					ledsaida = 0;
				end
			end
			6'b100001: begin			//copy hd to file tab
				ledmem = 1;
				OpTabArq = 1;			//0-Não Escreve / 1-Escreve
				halt = 1;
				RegDst = 1;				
				OpHD = 1;				//0-nada / 1-realizar leitura / 2-realizar gravação
				if(pronto == 1) begin
					halt = 0;
					OpHD = 0;
					ledmem = 0;
				end
			end
			6'b100010: begin			//load file tab
				
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				OpSaida = 5;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato / 5 - Tabela Arquivos
				
			end
			6'b100011: begin			//copy hd to mem
				ledmem = 1;
				halt = 1;				
				OpSaida = 4;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
				OpHD = 1;				//0-nada / 1-realizar leitura / 2-realizar gravação
				OpMemIns = 1;			//0-Não Escreve / 1-Escreve
				RegDst = 1;
				if(pronto == 1) begin
					OpHD = 0;
					halt = 0;
					ledmem = 0;
				end
			end
			6'b100100: begin			//store hd
				ledmem = 1;
				halt = 1;				
				OpSaida = 4;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
				OpHD = 2;				//0-nada / 1-realizar leitura / 2-realizar gravação
				if(pronto == 1) begin
					ledmem = 0;
					OpHD = 0;
					halt = 0;
				end
			end
			6'b100101: begin			//change bios mem
				
				PCDst	= 2;				//0-PC+1 / 1-Dado 1 / 2-Imediato Jump/ 3-Imediato Branch
				resetPC = 1;
			end
			6'b100110: begin			//Jump and Link Reg
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				PCDst	= 1;				//0-PC+1 / 1-Dado 1 / 2-Imediato Jump/ 3-Imediato Branch
				OpSaida = 0;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
			end
			
			6'b100111: begin			//ADD UPER
			
				escreveReg = 1;		//0-Não Escreve / 1-Escreve
				OpSaida = 3;			//0-PC+1 / 1-Dados IO / 2-Dados Memória / 3-Dados ULA / 4-Imediato
				OpULA = 19;
			end
			
			
			6'b111111: begin			//Halt
				halt = 1;
			end
			
			default: begin

			end
		endcase
		
		
		if(save == 1)	PCDst	= 4;
	end

endmodule
