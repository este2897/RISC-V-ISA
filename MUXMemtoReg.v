`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: MT-7003
// Engineer: E.SALAZAR
// 
// Create Date:    22:35:28 01/08/2021 
// Design Name: 
// Module Name:    MUXMemtoReg 
// Project Name: RISC-V-ISA
// Target Devices: 
// Tool versions: 
// Description: MUX FOR ADRESS OR DATA ON ADRESS FROM DATA MEMORY TO REGISTER FILE
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////


module MUXMemtoReg(
	// MUX 2:1 FOR JL INPUT 0 SOURCE
    input [31:0] AD, // FROM ALU OUTPUT
    input [31:0] RD, // FROM DATA MEMORY OUTPUT
	 input MemtoReg, // FROM CU
    output reg [31:0] out); //OUTPUT TO JL MUX
	 
	 	// CASE FOR MUX, 1->RD, 0->AD
   always @ (RD or AD or MemtoReg) begin  
      case (MemtoReg)  
         1'b0 : out <= AD;  
         1'b1 : out <= RD;   
      endcase  
   end 
endmodule
