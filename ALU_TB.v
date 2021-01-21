`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:54:49 01/20/2021
// Design Name:   ALU
// Module Name:   D:/TEC/Microcontroladores/Proyecto/RISCV/ALU_TB.v
// Project Name:  RISCV
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TB;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [2:0] alu_control;

	// Outputs
	wire [31:0] result;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.alu_control(alu_control), 
		.result(result), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		alu_control = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// suma
		a = 2;
		b = 3;
		alu_control = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// resta
		a = 5;
		b = 12;
		alu_control = 3'b001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// or
		a = 32'b00000000000000001111111111111111;
		b = 32'b00000000000011111111111111111111;
		alu_control = 3'b110;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// and
		a = 32'b00000000000000001111111111111111;
		b = 32'b00000000000011111111111111111111;
		alu_control = 3'b101;

		// Wait 100 ns for global reset to finish
		#100;
        
		// >>>
		a = 32'b11111111111111111111000000000000;
		b = 4;
		alu_control = 3'b010;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// >>
		a = 32'b11111111111111111111000000000000;
		b = 4;
		alu_control = 3'b100;		
	end
      
endmodule

