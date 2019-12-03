module CtrlClock(clockEntrada, clockSaida, halt);

	input clockEntrada, halt;
	
	output clockSaida;
	
	assign clockSaida = clockEntrada & ~halt;

endmodule	