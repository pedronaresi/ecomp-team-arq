module bios(clock, endereco, saida, reset, clock_auto);
	input [31:0] endereco;
	input clock, clock_auto;
	input reset;
	
	output reg [31:0] saida;
	
	reg [31:0] bancoInst [1130: 0];
	
	always @(posedge clock) begin
		if(reset==0) begin
			
			//Teste da ALU
			bancoInst[0] = 32'b011011_00000_00000_0000000000000000; 		//R[0] <= 0
			bancoInst[1] = 32'b000010_00000_00001_0000000000000010;		//R[1] <= R[0] + 2
			bancoInst[2] = 32'b000100_00001_00010_0000000000000001;		//R[2] <= R[1] - 1
			
			//Teste da memória
			bancoInst[3] = 32'b011010_00000_00010_0000000000000000;		//Mem[0] <= R[2]
			bancoInst[4] = 32'b011001_00000_00110_0000000000000000;		//R[6] <= Mem[0]
			
			//Teste de Saída
			bancoInst[5] = 32'b100000_00001_00110_0000000000000001;		//Dispositivo[1] <= R[6]
			bancoInst[6] = 32'b011011_00000_00001_0000000000000010; 		//R[1] <= 2	
			bancoInst[7] = 32'b000010_00000_00001_0000000000000010;		//R[1] <= R[0] + 2
			
			bancoInst[8] = 32'b000000000000000000000000000000000; 		//NOOP
			
			//Seta os parâmetros SO
			bancoInst[9]  = 32'b011011_00000_00010_0000101110111000; 	//R[2] <= 3000		Tamanho maximo do setor + 1
			bancoInst[10] = 32'b011011_00000_00001_0000000000000000; 	//R[1] <= 0			Setor
			bancoInst[11] = 32'b011011_00000_00011_0000000000000001; 	//R[3] <= 1			Trilha
			bancoInst[12] = 32'b011011_00000_00100_0000000000000000; 	//R[4] <= 0			Endereço Memória
			
			//Copiar o SO do hd para a memória
			bancoInst[13] = 32'b100011_00001_00011_00100_00000000000; 	//Mem[R[4]] <= HD[R[1]][R[3]]
			bancoInst[14] = 32'b000010_00001_00001_0000000000000001;		//R[1] <= R[1] + 1
			bancoInst[15] = 32'b000010_00100_00100_0000000000000001;		//R[4] <= R[4] + 1
			bancoInst[16] = 32'b010001_00001_00010_0000000000001101;		//R[1] != R[2] ? PC <= 13
			
			//Seta os parâmetros
			bancoInst[17] = 32'b011011_00000_00010_0000000111110100; 	//R[2] <= 500		Tamanho maximo do setor + 1
			bancoInst[18] = 32'b011011_00000_00101_0000000000000111; 	//R[5] <= 7			Tamanho maximo da trilha + 1 (programas + 1)
			bancoInst[19] = 32'b011011_00000_00001_0000000000000000; 	//R[1] <= 0			Setor
			bancoInst[20] = 32'b011011_00000_00011_0000000000000010; 	//R[3] <= 2			Trilha
			
			bancoInst[21] = 32'b000000000000000000000000000000000; 		//NOOP
			
			//Copiar os arquivos do hd para a memória
			bancoInst[22] = 32'b100011_00001_00011_00100_00000000000; 	//Mem[R[4]] <= HD[R[1]][R[3]]
			bancoInst[23] = 32'b000010_00001_00001_0000000000000001;		//R[1] <= R[1] + 1
			bancoInst[24] = 32'b000010_00100_00100_0000000000000001;		//R[4] <= R[4] + 1
			bancoInst[25] = 32'b010001_00001_00010_0000000000010101;		//R[1] != R[2] ? PC <= 21
			bancoInst[26] = 32'b000010_00011_00011_0000000000000001;		//R[3] <= R[3] + 1
			bancoInst[27] = 32'b011011_00000_00001_0000000000000000; 	//R[1] <= 0			Setor
			bancoInst[28] = 32'b010001_00011_00101_0000000000010101;		//R[3] != R[5] ? PC <= 21
			
			bancoInst[29] = 32'b000000000000000000000000000000000; 		//NOOP
			
			//Copiar as informações dos arquivos do hd para a Tabela de arquivos
			bancoInst[30] = 32'b011011_00000_00010_0000000001010000; 	//R[2] <= 80		Tamanho maximo do setor + 1
			bancoInst[31] = 32'b011011_00000_00001_0000000000000000; 	//R[1] <= 0			Setor
			bancoInst[32] = 32'b011011_00000_00100_0000000000000000; 	//R[4] <= 0			Endereço Tabela de Arquivos

			bancoInst[33] = 32'b100001_00001_00000_00100_00000000000; 	//TabArq[R[4]] <= HD[R[1]][R[0]]
			bancoInst[34] = 32'b000010_00001_00001_0000000000000001;		//R[1] <= R[1] + 1
			bancoInst[35] = 32'b000010_00100_00100_0000000000000001;		//R[4] <= R[4] + 1
			bancoInst[36] = 32'b010001_00001_00010_0000000000100001;		//R[1] != R[2] ? PC <= 24
			
			bancoInst[37] = 32'bb100010_00000_00001_00101_00000000000;	//R[1] <= TabArq[R[5]]
			bancoInst[38] = 32'b011011_00000_11000_0000000000000000; 	//R[24] <= 0	
		
			//Print final
			bancoInst[39] = 32'b011011_00000_00001_0000000000000010; 	//R[1] <= 2	
			bancoInst[40] = 32'b100000_00000_00001_0000000000000001;		//Dispositivo[1] <= R[1]
			bancoInst[41] = 32'bb011011_00000_00001_0010011100001111;	//R[1] <= 9999
			bancoInst[42] = 32'b100000_00000_00001_0000000000000001;		//Dispositivo[2] <= R[1]
			bancoInst[43] = 32'b100101_00000000000000000000000000; 		//CMB PC <= 0
		end
	end
	
	always @(posedge clock_auto) begin
		saida = bancoInst[endereco];
	end

endmodule	