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


//UNICAS ENTRADAS DEL PROCESADOR
input CLK,
input RST
);

	wire a, x, y;
	wire b, c, d, e, f, g, h, i, j; //para control
	wire [2:0] aluC, imms; //para control
	wire [4:0] rs1, rs2;
	wire [31:0] add, instr, ab, bc, cd, de, fe, fg, gh, hi, ij, jk, kl, lm;

	PC_next PC_next(
		.CLK(CLK),
		.reset(RST),
		.pc_next(jk), //input from mux branch
		.pc_actual(add) //output to IM and plus4 
	);

	PCplus4 PCplus4(
		.pc_actual(add), //input from pc actual
		.pc_next(kl) //output to mux branch and mux jumplink
	);

	Imm_plus_PC Imm_plus_PC(
		.imm(hi), //input from imm generator
		.pc(add), //input from pc actual with address value
		.hik(lm) //output to mux branch
	);

	OR_gate OR_gate(
		.l(x), //output to mux branch (control)
		.j(c), //input control jump
		.k(y)  //input from AND
	);

	UC UC(
		.opcode(instr[6:0]), //INPUT FROM INSTRUCTION DECODE [6:0]
    .funct3(instr[14:12]),
		.ImmSel(imms), //output to imm generator
		.branch(b), //output to AND logic gate
		.jump(c), //output to OR logic gate
		.jumplink(d), //output to control jumplink mux
		.memtoreg(e), //output to control memtoreg mux
		.MemW(f), //output to enable write on data memory
		.ALUsrc(g), //output to control ALU src mux
		.RegW(h), //output to enable write on register file
		.LUItoReg(i), //output to control LUItoReg mux
    .byte_cnt(j)
	);

	InstrMemory InstrMemory(
		.CLK(CLK),
		.Address(add), //input address memory
		.Instr(instr) //output instruction
	);

	Imm_Gen Imm_Gen(
		.Instr(instr), //input instruccion completa
		.ImmSel(imms), //control
		.ExtImm(hi) //output to various muxes
	);

	MUXsrcALU MUXsrcALU(
		.ALUsrc(g), //input control
		.rd2(fg), //input from reg file
		.ImmGEN(hi), //input from imm gen
		.ALU2(fe) //output to alu
	);

	ALUControl ALUControl( 
		.Opcode(instr[6:0]), // input from instr
		.funct3(instr[14:12]), //input from instr
		.funct7(instr[31:25]), //input from instr 
		.ALU_Cnt(aluC) //output to ALU control
	);

  ALU ALU(
		.a(de), //input from reg file RD1
		.b(fe), //input from alu src mux
		.alu_control(aluC), //ALU control 
		.result(gh), //output result
		.zero(a) //zero result flag
	);

	MUXMemtoReg MUXMemtoReg(
		.MemtoReg(e), //control
		.out(cd), //output to JL mux
		.AD(gh), //input from alu result
		.RD(ij) //input from RD, data memory
	);

	MUX_JL MUX_JL(
		.lm(kl), //input FROM PC+4
		.xt(cd), //input from memtoreg mux
		.JL(d), //control
		.ok(bc) //output to luitoreg mux
	);

	MUX_LUItoreg MUX_LUItoreg(
    .jls(bc), // input FROM MUX JL OUTPUT
		.to(ab), //OUTPUT TO WD3 
		.imms(hi), //input from imm generator
		.LUItoReg(i) //control
	);
	
	DataMemory DataMemory(
		.CLK(CLK), 
		.Address(gh), //input, direccion de memoria
		.WriteData(fg), //input, dato a escribir
		.MemW(f), //control
		.byte_cnt(j),
		.ReadData(ij)  //output
	);

	regFile regFile(
		.CLK(CLK),
		.WE(h), //control
		.A1(instr[19:15]),
		.A2(instr[24:20]),
		.A3(instr[11:7]),
		.WD3(ab), //input de escritura
		.RD1(de), //output rd1
		.RD2(fg) //output rd2
	);

	AND AND(
		.a(a), //input from ALU zero flag
		.b(b), //input Branch control
		.y(y) //output to OR logic gate
	);

	MUXBranch MUXBranch(
		.br(x), //input control select
		.uno(lm), //input form pc plus imm
		.cero(kl), //input from pc+4
		.j0(jk) //output to pc next
	);

endmodule
