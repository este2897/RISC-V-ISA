`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:21:51 01/22/2021
// Design Name:   OR_gate
// Module Name:   D:/TEC/Microcontroladores/Proyecto/RISCV/OR_gate_TB.v
// Project Name:  RISCV
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: OR_gate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module OR_gate_TB;

	// Inputs
	reg j;
	reg k;

	// Outputs
	wire l;

	// Instantiate the Unit Under Test (UUT)
	OR_gate uut (
		.j(j), 
		.k(k), 
		.l(l)
	);

	initial begin
		// Initialize Inputs
		j = 0;
		k = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		j = 0;
		k = 1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		j = 1;
		k = 1;
				
		
	end
      
endmodule

