module tb
(

);
	reg [63:0] a;
	reg [63:0] b;
	reg sel;
	wire [63:0] data_out;

	Multiplexer m1
	(
		.a(a),
		.b(b),
		.sel(sel),
		.data_out(data_out)
	);
	
	
	initial
	begin
		a= 64'b0; 
		b= 64'b0;
		sel= 1'b0;
	end
	
	always
	begin
		#5 sel= ~sel;
		#10 a = ~a;
		#20 b = ~b;
	end
	initial
	$monitor("a = ", $a,", b = ",$b,", sel = ",$sel,", out = ", $data_out);
endmodule
