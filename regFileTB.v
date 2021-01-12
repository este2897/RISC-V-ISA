`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:54:26 01/12/2021
// Design Name:   regFile
// Module Name:   /home/ise/RISC-V_ISA/regFileTB.v
// Project Name:  RISC-V_ISA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: regFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regFileTB;

	// Inputs
	reg [4:0] A1;
	reg [4:0] A2;
	reg [4:0] A3;
	reg [31:0] WD3;
	reg WE;
	reg CLK;

	// Outputs
	wire [31:0] RD1;
	wire [31:0] RD2;

	// Instantiate the Unit Under Test (UUT)
	regFile uut (
		.A1(A1), 
		.A2(A2), 
		.A3(A3), 
		.WD3(WD3), 
		.WE(WE), 
		.CLK(CLK), 
		.RD1(RD1), 
		.RD2(RD2)
	);

	initial begin
		// Initialize Inputs
		A1 = 0;
		A2 = 0;
		A3 = 0;
		WD3 = 0;
		WE = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		A1 = 1;
		A2 = 2;
		A3 = 3;
		WD3 = {32{1'b1}};
		WE = 1;
		CLK = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		A1 = 1;
		A2 = 2;
		A3 = 3;
		WD3 = {32{1'b1}};
		WE = 0;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		A1 = 3;
		A2 = 4;
		A3 = 5;
		WD3 = {32{1'b1}};
		WE = 0;
		CLK = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		A1 = 5;
		A2 = 0;
		A3 = 1;
		WD3 = {32{1'b1}};
		WE = 1;
		CLK = 1;
		
		// Wait 100 ns for global reset to finish
		#100;

	end
      
endmodule

