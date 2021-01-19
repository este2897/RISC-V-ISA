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

module ALU(
 input  [31:0] a,  //src1
 input  [31:0] b,  //src2
 input  [2:0] alu_control, //function sel

 output reg [31:0] result,  //result
 output zero
    );

always @(*)
begin
 case(alu_control)
 3'b000: result = a + b; // suma
 3'b001: result = a - b; // resta
 3'b010: result = ~a;
 3'b011: result = a<<b;
 3'b100: result = a>>b;
 3'b101: result = a & b; // and
 3'b110: result = a | b; // or
 3'b111: begin if (a<b) result = 32'd1;
    else result = 32'd0;
    end
 default:result = a + b; // add
 endcase
end
assign zero = (result==32'd0) ? 1'b1: 1'b0;

endmodule
