module Data_Memory
(
	input clk, MemWrite,MemRead,
	input [63:0] Mem_Addr,
	input [63:0] Write_Data,
	output reg [63:0] Read_Data,
	
);

	reg [7:0] Memory[63:0];
	
	initial
	begin
		Memory[0] =8'h0B;
		Memory[1] =8'h1C;
		Memory[2] =8'h2D;
		Memory[3] =8'h3E;
		Memory[4] =8'h4F;
		Memory[5] =8'h50;
		Memory[6] =8'h61;
		Memory[7] =8'h72;
		Memory[8] =8'h83;
		Memory[9] =8'h94;
		Memory[10] =8'hA5;
		Memory[11] =8'hB6;
		Memory[12] =8'hC7;
		Memory[13] =8'hD8;
		Memory[14] =8'hE9;
		Memory[15] =8'hFA;
		Memory[16] =8'h0B;
		Memory[17] =8'h1C;
		Memory[18] =8'h2D;
		Memory[19] =8'h3E;
		Memory[20] =8'h4F;
		Memory[21] =8'h50;
		Memory[22] =8'h61;
		Memory[23] =8'h72;
		Memory[24] =8'h83;
		Memory[25] =8'h94;
		Memory[26] =8'hA5;
		Memory[27] =8'hB6;
		Memory[28] =8'hC7;
		Memory[29] =8'hD8;
		Memory[30] =8'hE9;
		Memory[31] =8'hFA;
		Memory[32] =8'h0B;
		Memory[33] =8'h1C;
		Memory[34] =8'h2D;
		Memory[35] =8'h3E;
		Memory[36] =8'h4F;
		Memory[37] =8'h50;
		Memory[38] =8'h61;
		Memory[39] =8'h72;
		Memory[40] =8'h83;
		Memory[41] =8'h94;
		Memory[42] =8'hA5;
		Memory[43] =8'hB6;
		Memory[44] =8'hC7;
		Memory[45] =8'hD8;
		Memory[46] =8'hE9;
		Memory[47] =8'hFA;
		Memory[48] =8'h0B;
		Memory[49] =8'h1C;
		Memory[50] =8'd15;
		Memory[51] =8'h3E;
		Memory[52] =8'h4F;
		Memory[53] =8'h50;
		Memory[54] =8'h61;
		Memory[55] =8'h72;
		Memory[56] =8'h83;
		Memory[57] =8'h94;
		Memory[58] =8'hA5;
		Memory[59] =8'hB6;
		Memory[60] =8'hC7;
		Memory[61] =8'hD8;
		Memory[62] =8'hE9;
		Memory[63] =8'hFA;
 
	end
	
	always@ (posedge clk)
	begin
		if (MemWrite)
			Memory[Mem_Addr[5:0]] = Write_Data[7:0];
			Memory[Mem_Addr[5:0]+1]=Write_Data[15:8];
			Memory[Mem_Addr[5:0]+2]=Write_Data[23:16];
			Memory[Mem_Addr[5:0]+3]=Write_Data[31:24];
			Memory[Mem_Addr[5:0]+4]=Write_Data[39:32];
			Memory[Mem_Addr[5:0]+5]=Write_Data[47:40];
			Memory[Mem_Addr[5:0]+6]=Write_Data[55:48];
			Memory[Mem_Addr[5:0]+7]=Write_Data[63:56];
	end
	
	always@ (Mem_Addr)
	begin
		if (MemRead==1)
			Read_Data[7:0]= Memory[Mem_Addr[5:0]];
			Read_Data[15:8]= Memory[Mem_Addr[5:0]+1];
			Read_Data[23:16]= Memory[Mem_Addr[5:0]+2];
			Read_Data[31:24]= Memory[Mem_Addr[5:0]+3];
			Read_Data[39:32]= Memory[Mem_Addr[5:0]+4];
			Read_Data[47:40]= Memory[Mem_Addr[5:0]+5];
			Read_Data[55:48]= Memory[Mem_Addr[5:0]+6];
			Read_Data[63:56]= Memory[Mem_Addr[5:0]+7];
	end
	
endmodule