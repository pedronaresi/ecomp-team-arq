module BCD2(numero, d1, d2, neg);

input [31:0] numero;

output reg [3:0] d1;
output reg [3:0] d2;

output neg;

wire [31:0] numeroP;

integer i;

assign neg = numero[31:31];
assign numeroP = (neg == 1) ? ~numero + 1 : numero;

always @(numero) begin	
	d1 = 4'b0;
	d2 = 4'b0;
	


	
	for(i=31; i>=0; i=i-1) begin
		if(d2 >= 5)
			d2 = d2 + 3;
		if(d1 >= 5)
			d1 = d1 + 3;
			
		d2 = d2 << 1;
		d2[0] = d1[3];
		d1 = d1 << 1;
		d1[0] = numeroP[i];
	end
end
		
endmodule	