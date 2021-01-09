`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: MT-7003
// Engineer: E. SALAZAR
// 
// Create Date:    21:09:50 01/08/2021 
// Design Name: 
// Module Name:    MUXsrcALU 
// Project Name: 		RISC-V-ISA
// Target Devices: 
// Tool versions: 
// Description: mux module for ALU source
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module MUXsrcALU(
	// MUX 2:1 FOR ALU SOURCE
    input [31:0] RD2, // REG 2 FROM REG FILE 
    input [31:0] ImmGEN, // IMMEDIATE 
	 input ALUsrc, //FROM CU
    output reg [31:0] ALU2); //OUTPUT FOR ALU SOURCE 2
	// CASE FOR MUX, 1->IMM, 0->RD2
   always @ (RD2 or ImmGEN or ALUsrc) begin  
      case (ALUsrc)  
         1'b0 : ALU2 <= RD2;  
         1'b1 : ALU2 <= ImmGEN;   
      endcase  
   end  

endmodule