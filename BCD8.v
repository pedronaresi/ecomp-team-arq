module BCD8(numero, d1, d2, d3, d4, d5, d6, d7, d8, neg);

input [31:0] numero;

output reg [3:0] d1;
output reg [3:0] d2;
output reg [3:0] d3;
output reg [3:0] d4;
output reg [3:0] d5;
output reg [3:0] d6;
output reg [3:0] d7;
output reg [3:0] d8;
 
output neg;

wire [31:0] numeroP;

integer i;

assign neg = numero[31:31];
assign numeroP = (neg == 1) ? ~numero + 1 : numero;

always @(numero) begin	
	
	d1 = 4'b0;
	d2 = 4'b0;
	d3 = 4'b0;
	d4 = 4'b0;
	d5 = 4'b0;
	d6 = 4'b0;
	d7 = 4'b0;
	d8 = 4'b0;
	
	
	for(i=31; i>=0; i=i-1) begin
		if(d8 >= 5)
			d8 = d8 + 3;
		if(d7 >= 5)
			d7 = d7 + 3;
		if(d6 >= 5)
			d6 = d6 + 3;
		if(d5 >= 5)
			d5 = d5 + 3;
		
		if(d4 >= 5)
			d4 = d4 + 3;
		if(d3 >= 5)
			d3 = d3 + 3;
		if(d2 >= 5)
			d2 = d2 + 3;
		if(d1 >= 5)
			d1 = d1 + 3;
		
		d8 = d8 << 1;
		d8[0] = d7[3];
		d7 = d7 << 1;
		d7[0] = d6[3];
		d6 = d6 << 1;
		d6[0] = d5[3];
		d5 = d5 << 1;
		d5[0] = d4[3];	
		d4 = d4 << 1;
		d4[0] = d3[3];
		d3 = d3 << 1;
		d3[0] = d2[3];
		d2 = d2 << 1;
		d2[0] = d1[3];
		d1 = d1 << 1;
		d1[0] = numeroP[i];
	end
end
		
endmodule	