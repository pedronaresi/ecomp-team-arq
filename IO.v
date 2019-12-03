module IO(dadosEscrita, endereco, dadosExternos, dadosLidos, OpIO, clock, reset, display0, display1, display2, display3, display4, display5, display6, display7, neg1, neg2, neg3, clock_auto, LCD_ON, LCD_BLON, LCD_RW, LCD_EN, LCD_RS, LCD_DATA, pcAtual, progAtual);

	input [31:0] dadosEscrita, pcAtual, progAtual;
	input [31:0] endereco;
	input [17:0] dadosExternos;			//Dados do usuário
	input OpIO;									//Se 1 habilita a escrita de dados
	input clock;
	input reset;
	input clock_auto;
	output [7:0] LCD_DATA;
	output LCD_ON, LCD_BLON, LCD_RW, LCD_EN, LCD_RS;
	
	wire [3:0] n0, n1, n2, n3, n4, n5, n6, n7;
	
	output reg [31:0] dadosLidos;
	
	output [6:0] display0;					//Número 1
	output [6:0] display1;
	
	output [6:0] display2;					//Número 2
	output [6:0] display3;
	
	output [6:0] display4;					//Resultado
	output [6:0] display5;
	output [6:0] display6;
	output [6:0] display7;
	
	output neg1, neg2, neg3;
	
	reg [31:0] bancoIO[4:0];
	
	always @(posedge clock) begin
		if(reset==0) begin
			bancoIO[0] = 32'b0;
			bancoIO[1] = 32'b0;		//Display 16x2
			bancoIO[2] = 32'b0;		//Display de 7 segmentos
			//...
		end
		
		if(OpIO) begin
			bancoIO[2] = dadosEscrita;
			if(endereco == 1)
				bancoIO[1] = dadosEscrita;
		end
		else begin
			bancoIO[2] = dadosLidos;
		end
	end
	
	always @(*) begin	
		if(dadosExternos[17:17] == 1) begin
			dadosLidos = {15'b111111111111111,dadosExternos[16:0]};
		end
		else begin
			dadosLidos = {15'b000000000000000,dadosExternos[16:0]};
		end
	end
	
	
	assign	neg1 = 0;
	assign	neg2 = 0;
//	assign	neg3 = 0;
	
	
//	BCD2 bcd1(bancoIO[0], n0, n1, neg1);
	
	BCD8 bcd8(bancoIO[2], n7, n6, n5, n4, n3, n2, n1, n0, neg3);

	LCD lcd(clock_auto, dadosExternos, LCD_ON, LCD_BLON, LCD_RW, LCD_EN, LCD_RS, LCD_DATA, bancoIO[1], pcAtual, progAtual);

	Display7seg d1 (n1, display0);
	Display7seg d2 (n0, display1);
	Display7seg d3 (n3, display2);
	Display7seg d4 (n2, display3);
	Display7seg d5 (n7, display4);
	Display7seg d6 (n6, display5);
	Display7seg d7 (n5, display6);
	Display7seg d8 (n4, display7);

endmodule	