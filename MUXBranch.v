`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:09:27 01/20/2021 
// Design Name: 
// Module Name:    MUXBranch 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUXBranch(
	// MUX 2:1 FOR JUMP SOURCE IN 0
    input [31:0]uno, // PC+4 
    input [31:0]cero, // PC+Imm 
	 input br, //FROM OR JUMP/BRANCH
    output reg [31:0] j0); //OUTPUT FOR PC_NEXT
	// CASE FOR MUX, 1->uno, 0->cero
   always @ (uno or cero or br) begin  
      case (br)  
         1'b0 : j0 <= cero;  
         1'b1 : j0 <= uno;   
      endcase  
   end 
endmodule

