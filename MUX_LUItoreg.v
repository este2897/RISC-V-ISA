`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:59:30 01/20/2021 
// Design Name: 
// Module Name:    MUX_LUItoreg 
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
module MUX_LUItoreg(
	// MUX 2:1 FOR WD3 SOURCE
    input [31:0] imms, // FROM IMM GENERATOR
    input [31:0] jls, // FROM MUX JL OUTPUT
	 input LUItoReg, // FROM CU
    output reg [31:0] to); //OUTPUT TO WD3 
	 	// CASE FOR MUX, 1->imms, 0->jls
   always @ (imms or jls or LUItoReg) begin  
      case (LUItoReg)  
         1'b0 : to <= jls;  
         1'b1 : to <= imms;   
      endcase  
   end 

endmodule
