module tb
(

);

	reg clk, reset;
	wire [31:0] Instruction;
	
	Instruction_Fetch inst_fetch
	(
		.clk(clk),
		.reset(reset),
		.Instruction(Instruction)
	);
	
	initial begin
		clk = 1'b0;
		reset = 1'b0;
		
		#10 reset = 1'b1;
		
		#10 reset = 1'b0;
  end
	always
	#5 clk = ~clk;
	
endmodule
