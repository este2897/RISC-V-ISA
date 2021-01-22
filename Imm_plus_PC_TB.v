`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:17:41 01/22/2021
// Design Name:   Imm_plus_PC
// Module Name:   D:/TEC/Microcontroladores/Proyecto/RISCV/Imm_plus_PC_TB.v
// Project Name:  RISCV
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Imm_plus_PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Imm_plus_PC_TB;

	// Inputs
	reg [31:0] imm;
	reg [31:0] pc;

	// Outputs
	wire [31:0] hik;

	// Instantiate the Unit Under Test (UUT)
	Imm_plus_PC uut (
		.imm(imm), 
		.pc(pc), 
		.hik(hik)
	);

	initial begin
		// Initialize Inputs
		imm = 0;
		pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		imm = 4;
		pc = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		imm = -8;
		pc = 12;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		imm = 16;
		pc = 5;
		
	end
      
endmodule

