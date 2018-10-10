module ALU_1_bit
(
	input a,b, CarryIn,
	input [3:0] ALUOp,
	output Result, CarryOut
);

	wire abar, bbar, mux1out, mux2out;

	assign abar = ~a;
	assign bbar = ~b;
	
	mux m1
	(
		.in1(a), .in2(abar), .sel(ALUOp[3]), .out(mux1out)
	);

	mux m2
	(
		.in1(b), .in2(bbar), .sel(ALUOp[2]), .out(mux2out)
	);
	wire andout, orout, sum;
	assign andout = mux1out&mux2out;
	assign orout  = mux1out|mux2out;
	assign sum = mux1out+mux2out+CarryIn;
	assign CarryOut = mux1out&CarryIn+mux2out&CarryIn+mux1out&mux2out;
	
	mux2 op
	(
		.a(mux1out), .b(mux2out), .c(sum), .d(1'b0), .sel(ALUOp[1:0]), .out(Result)
	);

endmodule
	
	