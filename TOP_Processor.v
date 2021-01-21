`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: MT7003
// Engineer: E.SALAZAR / E.MONTERO
// 
// Create Date:    02:09:13 01/18/2021 
// Design Name: 
// Module Name:    TOP_Processor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Modulo principal para realizar todas las conexiones del DATAPATH
//
//////////////////////////////////////////////////////////////////////////////////
module TOP_Processor(
		
input CLK,
input RST);

	wire a, x, y;
	wire b, c, d, e, f, g, h, i; //para control
	wire [2:0] aluC, imms; //para control
	wire [4:0] rs1, rs2;
	wire [31:0] add, instr, ab, bc, cd, de, fe, fg, gh, hi, ij, jk, kl, lm;
	
	PC_next PC_next(
		.CLK(CLK),
		.reset(RST),
		.pc_next(jk),
		.pc_actual(add)
	);
	
	PCplus4 PCplus4(
		.pc_actual(add),
		.pc_next(kl)
	);
	
	Imm_plus_PC Imm_plus_PC(
		.imm(hi),
		.pc(add),
		.hik(lm)
	);

	OR_gate OR_gate(
		.l(x), //out
		.j(c), //control jump
		.k(y)  //from AND
	);

	UC UC(
		.opcode(instr[6:0]),
		.ImmSel(imms),
		.branch(b), 
		.jump(c),
		.jumplink(d),
		.memtoreg(e),
		.MemW(f),
		.ALUsrc(g),
		.RegW(h), 
		.LUItoReg(i)
	);

	InstrMemory InstrMemory(
		.CLK(CLK),
		.Address(add),
		.Instr(instr)
	);
	
	Imm_Gen Imm_Gen(
		.Instr(instr),
		.ImmSel(imms), //control
		.ExtImm(hi)
	);
	
	MUXsrcALU MUXsrcALU(
		.ALUsrc(g), //control
		.rd2(fg),
		.ImmGEN(hi),
		.ALU2(fe)
	);
	
	ALUControl ALUControl( 
		.Opcode(instr[6:0]),
		.funct3(instr[14:12]),
		.funct7(instr[31:25]),
		.ALU_Cnt(aluC)
	);
	
	ALU ALU(
		.a(de),
		.b(fe),
		.alu_control(aluC), //ALU control 
		.result(gh),
		.zero(a)
	);
	
	MUXMemtoReg MUXMemtoReg(
		.MemtoReg(e), //control
		.out(cd),
		.AD(gh),
		.RD(ij)
	);
	
	MUX_JL MUX_JL(
		.lm(kl),
		.xt(cd),
		.JL(d), //control
		.ok(bc)
	);
	
	MUX_LUItoreg MUX_LUItoreg(
		.xt(cd),
		.to(ab),
		.imms(hi),
		.LUItoReg(i) //control
	);
	
	DataMemory DataMemory(
		.CLK(CLK),
		.Address(gh),
		.WriteData(fg),
		.MemW(f), //control
		.ReadData(ij)
	);

	regFile regFile(
		.CLK(CLK),
		.WE(h), //control
		.A1(instr[19:15]),
		.A2(instr[24:20]),
		.A3(instr[11:7]),
		.WD3(ab),
		.RD1(de),
		.RD2(fg)
	);
	
	AND AND(
		.a(a),
		.b(b), //Branch control
		.y(y)
	);
	
	MUXBranch MUXBranch(
		.br(x),
		.uno(lm),
		.cero(kl),
		.j0(jk)
	);

endmodule