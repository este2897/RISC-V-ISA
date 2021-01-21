`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: MT-7003
// Engineer: E.SALAZAR / E.MONTERO
//
// Create Date:    22:35:28 01/08/2021
// Design Name:
// Module Name:    IMM_Gen
// Project Name: RISC-V-ISA
// Target Devices:
// Tool versions:
// Description: Extensión y orden del inmediato
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module Imm_Gen(
  input [31:0] Instr,
  input [2:0] ImmSel, //FROM CU
  output reg [31:0] ExtImm); //Inmediato extendido y acomodado a 32 bits


always @(*) begin
  case (ImmSel)
    3'b000 : begin
		if (Instr[31:26] == 6'b010000) ExtImm={ {30{Instr[31]}}, Instr[25:20] }; //srai, el imm sin el 1 del bit 30
		else ExtImm={ {21{Instr[31]}}, Instr[30:20] }; //Instruccion tipo I
	 end
    3'b001 : ExtImm={ {21{Instr[31]}}, Instr[30:25], Instr[11:7] }; // Instruccion tipo S
    3'b010 : ExtImm={ {20{Instr[31]}}, Instr[7], Instr[30:25], Instr[11:8], 1'b0 }; //Instruccion tipo B
    3'b011 : ExtImm={ Instr[31:12], 12'b0 }; //Instruccion tipo U
    3'b100 : ExtImm={ {12{Instr[31]}}, Instr[19:12], Instr[20], Instr[30:21], 1'b0 }; //Instruccion tipo J
  endcase
end

endmodule
