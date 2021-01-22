`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:45:09 01/22/2021
// Design Name:   PC_next
// Module Name:   D:/TEC/Microcontroladores/Proyecto/RISCV/PC_next_TB.v
// Project Name:  RISCV
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC_next
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_next_TB;

	// Inputs
	reg CLK;
	reg reset;
	reg [31:0] pc_next;

	// Outputs
	wire [31:0] pc_actual;

	// Instantiate the Unit Under Test (UUT)
	PC_next uut (
		.CLK(CLK), 
		.reset(reset), 
		.pc_next(pc_next), 
		.pc_actual(pc_actual)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		reset = 0;
		pc_next = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		CLK = 1;
		reset = 0;
		pc_next = 1;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		CLK = 1;
		reset = 0;
		pc_next = 2;
		
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		CLK = 1;
		reset = 0;
		pc_next = 4;
		
	end
      
endmodule

