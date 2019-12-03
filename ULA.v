module ULA(OpULA, dado1, dado2, saida, shamt, UlaCrl);

	input [4:0] OpULA;
	input [4:0] shamt;
	input [31:0] dado1, dado2;

	output reg [31:0] saida;
	output reg UlaCrl;

	always @(*) begin	
		saida = 0;
		UlaCrl = 0;
		case (OpULA)
			5'b00000: saida = dado1;									//Move
			5'b00001: saida = dado1 + dado2;							//Soma
			5'b00010: saida = dado1 - dado2;							//Subtraçao
			5'b00011: saida = dado1[15:0] * dado2[15:0];			//Multiplicaçao 16 bits
			5'b00100: saida = dado1 / dado2;							//Divisão
			5'b00101: saida = dado1 + 1;								//Incremento
			5'b00110: saida = dado1 - 1;								//Decremento
			5'b00111: saida = dado1 & dado2;							//"E" lógico bit a bit
			5'b01000: saida = dado1 | dado2;							//"OU" lógico bit a bit
			5'b01001: saida = dado1 % dado2;							//Resto
			5'b01010: saida = dado1 ^ dado2;							//XOR
			5'b01011: saida = ~dado1;									//NOT
			5'b01100: saida = dado1 << 16;							//Deslocamento para esquerda
			5'b01101: saida = dado1 >> shamt;						//Deslocamento para direita
			5'b01110: saida = (dado1 < dado2) ? 1 : 0;			//Set on Less Than 
			5'b01111: saida = (dado1 > dado2) ? 1 : 0;			//Set on Greater Than 
			5'b10000: saida = (dado1 == dado2) ? 1 : 0;			//Set on Equal Than 
			5'b10001: UlaCrl = (dado1 == dado2) ? 1 : 0;			//Branch on equal
			5'b10010: UlaCrl = (dado1 != dado2) ? 1 : 0;			//Branch not equal
			5'b10011: saida = {dado2[15:0],dado1[15:0]};
			default: saida = 0;
		endcase
	end	
endmodule	