`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:42:02 01/20/2021
// Design Name:   Imm_Gen
// Module Name:   D:/TEC/Microcontroladores/Proyecto/RISCV/Imm_Gen_TB.v
// Project Name:  RISCV
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Imm_Gen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Imm_Gen_TB;

	// Inputs
	reg [31:0] Instr;
	reg [2:0] ImmSel;

	// Outputs
	wire [31:0] ExtImm;

	// Instantiate the Unit Under Test (UUT)
	Imm_Gen uut (
		.Instr(Instr), 
		.ImmSel(ImmSel), 
		.ExtImm(ExtImm)
	);

	initial begin
		// Initialize Inputs
		Instr = 0;
		ImmSel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// addi	sp,sp,-48
		Instr = 32'b11111101000000010000000100010011;
		ImmSel = 3'b000;
		
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// jal	ra,10144 <restalocal>
		Instr = 32'b11111001100111111111000011101111;
		ImmSel = 3'b100;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// lui	a5,0xb
		Instr = 32'b00000000000000001011011110110111;
		ImmSel = 3'b011;
		
	end
      
endmodule

