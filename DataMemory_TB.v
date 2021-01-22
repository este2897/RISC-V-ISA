`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:52:23 01/22/2021
// Design Name:   DataMemory
// Module Name:   D:/TEC/Microcontroladores/Proyecto/RISCV/DataMemory_TB.v
// Project Name:  RISCV
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DataMemory_TB;

	// Inputs
	reg [31:0] Address;
	reg [31:0] WriteData;
	reg MemW;
	reg CLK;
	reg [2:0] funct3;

	// Outputs
	wire [31:0] ReadData;

	// Instantiate the Unit Under Test (UUT)
	DataMemory uut (
		.Address(Address), 
		.WriteData(WriteData), 
		.MemW(MemW), 
		.CLK(CLK), 
		.funct3(funct3), 
		.ReadData(ReadData)
	);

	initial begin
		// Initialize Inputs
		Address = 0;
		WriteData = 0;
		MemW = 0;
		CLK = 0;
		funct3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Address = 8;
		WriteData = 32'b1111111011111011111;
		MemW = 0;
		CLK = 1;
		funct3 = 0;
	end
      
endmodule

