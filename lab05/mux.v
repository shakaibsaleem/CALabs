module mux
(
	input in1,in2,sel,
	output reg out
);
always @*
	if (sel)
		out <= in2;
	else
		out <= in1;
endmodule
