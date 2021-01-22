`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: MT-7003
// Engineer: E.SALAZAR / E.MONTERO
//
// Create Date:    22:35:28 01/08/2021
// Design Name:
// Module Name:    ALU
// Project Name: RISC-V-ISA
// Target Devices:
// Tool versions:
// Description: Realizar operaciones de la alu segun señal de control
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module ALU(
 input signed [31:0] a,  //src1, con signo
 input signed [31:0] b,  //src2, con signo
 input  [2:0] alu_control, //selecciona operación

 output reg signed [31:0] result,  //resultado, con signo para el shift aritmetico
 output zero //flag de cero
    );

always @(*)
begin
 case(alu_control)
 3'b000: result = a + b; // suma
 3'b001: result = a - b; // resta
 3'b010: result = a>>>b; //shift aritmetico derecha
 3'b011: result = a<<b; // shift logico izquierda
 3'b100: result = a>>b; //shift logico derecha
 3'b101: result = a & b; // and
 3'b110: result = a ^ b; // xor
 default:result = a + b; // add
 endcase
end
assign zero = (result==32'd0) ? 1'b1: 1'b0; //flag zero para el comparador de branch

endmodule
