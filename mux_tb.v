`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:31:12 01/08/2021
// Design Name:   MUXMemtoReg
// Module Name:   /home/ise/RISC-V_ISA/mux_tb.v
// Project Name:  RISC-V_ISA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUXMemtoReg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxMemtoReg_tb;

	// Inputs
	reg [31:0] AD;
	reg [31:0] RD;
	reg MemtoReg;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	MUXMemtoReg uut (
		.AD(AD), 
		.RD(RD), 
		.MemtoReg(MemtoReg), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		AD = 0;
		RD = 1;
		MemtoReg = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		AD = 0;
		RD = 1;
		MemtoReg = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

