module PC(clock, endereco, saida, reset, resetPC, halt);
	
	input clock, reset, resetPC, halt;
	input [31:0] endereco;
	output reg [31:0] saida;
	
	always @(posedge clock) begin
		if(reset==0 || resetPC==1) begin
			saida = 0;
		end
		else begin
			saida = endereco;
		end
	end
endmodule	