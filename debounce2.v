module debounce2 (clock, entrada, saida, reset, resetPC);
	input entrada, reset, clock, resetPC;
	output saida;
	
	reg estado;
	
	always@(posedge clock)
	begin
		if(reset == 1 || resetPC == 1) estado = 0;
		if(estado == 0 && entrada == 1) 
			begin
				estado = 1;
			end
		else if(estado == 1 && entrada == 0)
			begin
				estado = 0;
			end
	end
	
	assign saida = (estado == 0) ? entrada : 0;
	
endmodule