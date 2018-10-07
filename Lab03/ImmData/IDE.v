module IDE

(
input [31:0] instruction,
output reg [63:0] immediate
);

always @*
	begin
		case(instruction[6:5])

			2'b00: immediate = {{52{instruction[31]}}, instruction[31:20]}; //load instruction

			2'b01: immediate = {{52{instruction[31]}}, instruction[31:25], instruction[11:7]}; //store instruction

			2'b10: immediate = {{53{instruction[31]}}, instruction[7], instruction[30:25], instruction[11:8]}; //branch instruction

			2'b11: immediate = {{53{instruction[31]}}, instruction[7], instruction[30:25], instruction[11:8]}; //branch instruction
		endcase
	end
endmodule