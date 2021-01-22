`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:13:31 01/22/2021
// Design Name:   PCplus4
// Module Name:   D:/TEC/Microcontroladores/Proyecto/RISCV/PCplus4_TB.v
// Project Name:  RISCV
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCplus4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PCplus4_TB;

	// Inputs
	reg [31:0] pc_actual;

	// Outputs
	wire [31:0] pc_next;

	// Instantiate the Unit Under Test (UUT)
	PCplus4 uut (
		.pc_actual(pc_actual), 
		.pc_next(pc_next)
	);

	initial begin
		// Initialize Inputs
		pc_actual = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		pc_actual = 1;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		pc_actual = 4;

	end
      
endmodule

