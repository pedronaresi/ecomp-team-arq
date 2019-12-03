module Mux1(RegDst, entrada1, entrada2, saida);

	input	RegDst;
	input [4:0] entrada1;	//Instruçao [20:16]
	input [4:0] entrada2;	//Instruçao [15:11]
	
	output reg [4:0] saida;
	
	always @(*) begin
		if(RegDst)
			saida = entrada2;
		else
			saida = entrada1;
	end
	
	//assign 	saida = RegDst==1 ? entrada2 : entrada1;

endmodule	