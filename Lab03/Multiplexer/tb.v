module tb
(
);

reg [63:0] a,b;
reg sel;
wire [63:0] data_out;

Mux multi
(
	.sel(sel),
	.a(a),
	.b(b),
	.data_out (data_out)
);



initial
begin
a = 64'b 0;
b = 64'b 1111100101010010001111101111100000000001000100100011111011111111;
sel = 1'b0;
#150 sel = 1'b1;
end

initial
$monitor ("Output = %d", data_out);

endmodule
