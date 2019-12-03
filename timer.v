module timer(clock_auto, timer, prog, preempcao, pcAtual);
	input clock_auto;
	input [31:0] prog, preempcao, pcAtual;
	
	output reg timer;
	reg [31:0] sinal = 0;
	
	always@(posedge clock_auto)
	begin
		if(prog != 0 && preempcao == 1 && pcAtual >= 3000) begin
			if(sinal == 80 && timer == 0)
				begin
					timer = ~timer;
				end
			else
				sinal = sinal + 1;
		end
		else begin 
			sinal = 0;
		end
		if(pcAtual <= 3000) timer = 0;
	end
	
endmodule
