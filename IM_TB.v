`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:06:25 01/14/2021
// Design Name:   mem_instr
// Module Name:   /home/ise/RISC-V_ISA/IM_TB.v
// Project Name:  RISC-V_ISA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mem_instr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IM_TB;

	// Inputs
	reg [5:0] Address;
	reg CLK;

	// Outputs
	wire [31:0] Instr;

	// Instantiate the Unit Under Test (UUT)
	mem_instr uut (
		.Address(Address), 
		.CLK(CLK), 
		.Instr(Instr)
	);

	initial begin
		// Initialize Inputs
		Address = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Address = 0;
		CLK = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		Address = 1;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Address = 1;
		CLK = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		Address = 2;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Address = 2;
		CLK = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

