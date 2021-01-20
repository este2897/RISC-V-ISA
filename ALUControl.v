`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: MT-7003
// Engineer: E.SALAZAR / E.MONTERO
//
// Create Date:    22:35:28 01/08/2021
// Design Name:
// Module Name:    ALUControl
// Project Name: RISC-V-ISA
// Target Devices:
// Tool versions:
// Description: Unidad de control para la ALU
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module alu_control(
 input [6:0] Opcode;
 input [2:0] funct3,
 input [6:0] funct7,

 output reg[2:0] ALU_Cnt
  );

 wire [16:0] ALUControlIn;
 assign ALUControlIn = {Opcode,funct3,funct7};

 always @(ALUControlIn)
 casex (ALUControlIn)
   17'b0010011000xxxxxxx: ALU_Cnt=3'b000; //addi suma
   17'b0000011010xxxxxxx: ALU_Cnt=3'b000; //lw suma
   17'b0000011100xxxxxxx: ALU_Cnt=3'b000; //lbu suma
   17'b0010011100xxxxxxx: ALU_Cnt=3'b110; //xori or
   17'b0010011111xxxxxxx: ALU_Cnt=3'b101; //andi and
   17'b0010011101000000x: ALU_Cnt=3'b100; //srli >>
   17'b0010011101010000x: ALU_Cnt=3'b010; //srai >>>
   17'b0010011001xxxxxxx: ALU_Cnt=3'b011; //slli <<
   17'b01100110000100000: ALU_Cnt=3'b001; //sub resta
   17'b01100110000000000: ALU_Cnt=3'b000; //add suma
   17'b1100011001xxxxxxx: ALU_Cnt=3'b001; //bne resta
   default: ALU_Cnt=3'b000;
  endcase
endmodule
