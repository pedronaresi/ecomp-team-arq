module Processador(clock_auto, reset, dadosExternos, display0, display1, display2, display3, display4, display5, display6, display7, neg1, neg2, neg3,  botaoEntrada, botaoSaida, ledentrada, ledsaida, ledmem, LCD_ON, LCD_BLON, LCD_RW, LCD_EN, LCD_RS, LCD_DATA);
		
	input botaoSaida, botaoEntrada;
	input clock_auto, reset;
	input [17:0] dadosExternos;
	
	output [6:0] display0, display1, display2, display3, display4, display5, display6, display7;
	output neg1, neg2, neg3,ledentrada, ledsaida, ledmem;
	output LCD_ON, LCD_BLON, LCD_RW, LCD_EN, LCD_RS;
	output [7:0] LCD_DATA;
	
	wire [31:0] instrucao_out, endereco2, enderecoPC, saida_m5, dadosEscritaReg, saida_hd,  dado1, pcAtual, progAtual;
	wire halt, OpMemIns;
	
	wire clock, clock_hd;
	wire ULACrl;
	wire [31:0]  dado2, dado3, jump, imediatoEx, enderecoADD, dado2ULA, saidaULA, dadosLidosMem, dadosLidosIO, saida_bios, saida_tab, preempcao;
	wire botaoEntrada2, botaoSaida2, botaoEntrada3, botaoSaida3;
	
	wire  escreveReg, OpExt, NegativoEx, RegDst, OrigULA, OpIO, OpMem, jal, pronto, stimer, OpLeitura, OpTabArq, resetPC, save;
	wire [4:0] regEscrita;
	wire [4:0] OpULA;
	wire [1:0] OpHD;
	wire [2:0] PCDst, OpSaida;
	
	temporizador temp(clock_auto, clock);
	
	temporizador_hd temp2(clock_auto, clock_hd);
	
	PC pc(clock, endereco2, enderecoPC, reset, resetPC, halt);
	
	bios b(clock, enderecoPC, saida_bios, reset, clock_auto);
	
	DiscoRigido hd(clock, dado2, dado1, saida_hd, reset, clock_hd, clock_auto, OpHD, pronto, dado3);
	
	timer st(clock, stimer, progAtual, preempcao, pcAtual);
	
	Mux5 m5(OpLeitura, saida_bios, instrucao_out, saida_m5);
	
	TabArquivos ta(saida_hd, saida_tab, dado3, OpTabArq, clock, clock_auto);
	
	MemInst mi(enderecoPC, instrucao_out, clock_auto, saida_hd, OpMemIns, dado3);
	
	DeBounce DB1(clock_auto, 1, ~botaoEntrada, botaoEntrada2);
	
	DeBounce DB2(clock_auto, 1, ~botaoSaida, botaoSaida2);
	
	debounce2 db1(clock, botaoEntrada2, botaoEntrada3,  reset, resetPC);
	
	debounce2 db2(clock, botaoSaida2, botaoSaida3, reset, resetPC);
	
	Controle ctr(saida_m5[31:26], botaoEntrada3, botaoSaida3, halt, escreveReg, OpExt, NegativoEx, RegDst, OrigULA, OpULA, PCDst, OpMem, OpIO, OpSaida, jal, ledentrada, ledsaida, ledmem, OpHD, pronto, stimer, OpLeitura, OpTabArq, OpMemIns, reset, resetPC, clock, save);
	
	BancoReg bg(saida_m5[25:21], saida_m5[20:16], saida_m5[15:11], regEscrita, dado1, dado2, dado3, dadosEscritaReg, escreveReg, clock, jal, enderecoPC, pcAtual, progAtual, save, preempcao);
	
	ExtSinal26 es26(saida_m5[25:0], jump);
	
	ExtSinal es(saida_m5[15:0], imediatoEx, OpExt, NegativoEx);
	
	Mux1 m1(RegDst, saida_m5[20:16], saida_m5[15:11], regEscrita);
	
	Add add(enderecoPC, enderecoADD, halt, resetPC);
	
	Mux2 m2(OrigULA, dado2, imediatoEx, dado2ULA);
	
	ULA ula(OpULA, dado1, dado2ULA, saidaULA, saida_m5[10:6], ULACrl);
	
	Mux3 m3(PCDst, ULACrl, enderecoADD, dado1, jump, imediatoEx, endereco2);
	
	MemDados md(dado2, dadosLidosMem, saidaULA, OpMem, clock, clock_auto);
	
	IO io(dado2, imediatoEx, dadosExternos, dadosLidosIO, OpIO, clock, reset, display0, display1, display2, display3, display4, display5, display6, display7, neg1, neg2, neg3, clock_auto, LCD_ON, LCD_BLON, LCD_RW, LCD_EN, LCD_RS, LCD_DATA, pcAtual, progAtual);
	
	Mux4 m4(OpSaida, enderecoADD, dadosLidosIO, dadosLidosMem, saidaULA, imediatoEx, dadosEscritaReg, saida_tab);
	
	
endmodule 