module tb
();

reg clk;
reg reset;
wire [31:0] ins;

Instruction_Fetch f (.clk(clk),.reset(reset),.Instruction(ins));

initial
	begin
		clk = 1'b0;
		reset = 1'b0;
		//ins <= 31'b0;
	end

always@*
	begin
		# 10 clk = ~clk;
	end

initial
$monitor ("Ins = %d", ins);

endmodule