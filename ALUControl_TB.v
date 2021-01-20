`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:24:20 01/20/2021
// Design Name:   ALUControl
// Module Name:   D:/TEC/Microcontroladores/Proyecto/RISCV/ALUControl_TB.v
// Project Name:  RISCV
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUControl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUControl_TB;

	// Inputs
	reg [6:0] Opcode;
	reg [2:0] funct3;
	reg [6:0] funct7;

	// Outputs
	wire [2:0] ALU_Cnt;

	// Instantiate the Unit Under Test (UUT)
	ALUControl uut (
		.Opcode(Opcode), 
		.funct3(funct3), 
		.funct7(funct7), 
		.ALU_Cnt(ALU_Cnt)
	);

	initial begin
		// Initialize Inputs
		Opcode = 0;
		funct3 = 0;
		funct7 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Opcode = 19;
		funct3 = 0;
		funct7 = 126;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Opcode = 19;
		funct3 = 1;
		funct7 = 0000001;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Opcode = 51;
		funct3 = 0;
		funct7 = 32;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Opcode = 99;
		funct3 = 1;
		funct7 = 0110011;
	end
      
endmodule

