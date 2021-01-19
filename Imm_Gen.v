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
  output [31:0] ExtImm);


always @(*) begin
  case (ImmSel)
    2'b000 : ExtImm={20{Instr[31]}, Instr[31:20]}; //Instruccion tipo I
    2'b001 : ExtImm={20{Instr[31]}, Instr[30:25], Instr[11:7]}; // Instruccion tipo S
    2'b010 : ExtImm={19{Instr[31]}, Instr[7], Instr[30:25], Instr[11:8], 1'b0}; //Instruccion tipo B
    2'b011 : ExtImm={Instr[31:12], 12'b0}; //Instruccion tipo U
    2'b100 : ExtImm={11{Instr[31]}, Instr[19:12], Instr[20], Instr[30:21], 1'b0}; //Instruccion tipo J

  end

endmodule
