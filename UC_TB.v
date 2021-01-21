`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:07:56 01/20/2021
// Design Name:   UC
// Module Name:   D:/TEC/Microcontroladores/Proyecto/RISCV/UC_TB.v
// Project Name:  RISCV
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module UC_TB;

	// Inputs
	reg [6:0] opcode;

	// Outputs
	wire [2:0] ImmSel;
	wire branch;
	wire jump;
	wire jumplink;
	wire memtoreg;
	wire MemW;
	wire ALUsrc;
	wire RegW;
	wire LUItoReg;

	// Instantiate the Unit Under Test (UUT)
	UC uut (
		.opcode(opcode), 
		.ImmSel(ImmSel), 
		.branch(branch), 
		.jump(jump), 
		.jumplink(jumplink), 
		.memtoreg(memtoreg), 
		.MemW(MemW), 
		.ALUsrc(ALUsrc), 
		.RegW(RegW), 
		.LUItoReg(LUItoReg)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		opcode = 7'd19;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		opcode = 7'd35;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		opcode = 7'd111;
	end
      
endmodule

