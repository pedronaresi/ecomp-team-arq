module temporizador_hd(clock_auto, clock);
	input clock_auto;
	output reg clock;
	reg [31:0] sinal = 0;
	
	always@(posedge clock_auto)
	begin
		if(sinal == 400000) //4000000
			begin
				sinal = 0;
				clock = ~clock;
			end
		else
			sinal = sinal + 1;
	end
	
endmodule
