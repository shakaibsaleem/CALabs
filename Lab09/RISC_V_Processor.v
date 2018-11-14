module RISC_V_Processor
(
	input clk, reset
);
	
	wire PCOut,PCIn,inst,ocode,add1out,Rs1,Rs2,Rd,func3,func7,bch,mr,mtr,aluop,mw,alusrc,rw,wd,rd1,rd2

	Program_Counter PC
	(
		.clk(clk),
		.reset(reset),
		.PC_In(PCIn),
		.PC_Out(PCOut)
	);
	
	Instruction_Memory IM
	(
		.Inst_Address(PCOut),
		.Instruction(inst)
	);
	
	Adder add1
	(
		.a(PCOut)
		.b(64'0000000000000000000000000000000000000000000000000000000000000100),
		.out(add1out)
	);
	
	InsParser IP
	(
		.instruction(inst),
		.opcode(ocode),
		.rs1(Rs1),
		.rs2(Rs2),
		.rd(Rd),
		.funct3(func3),
		.funct7(func7)
	);
	
	Control_Unit CU
	(
		.Opcode(ocode),
		.Branch(bch),
		.MemRead(mr),
		.MemtoReg(mtr),
		.ALUOp(aluop),
		.MemWrite(mw),
		.ALUSrc(alusrc),
		.RegWrite(rw)
	);
	
	Registers registerfile
	(
		.RS1(Rs1),
		.RS2(Rs2),
		.RD(rd),
		.WriteData(wd),
		.clk(clk),
		.reset(reset),
		.ReadData1(rd1),
		.ReadData2(rd2),
		.RegWrite(rw)
	);