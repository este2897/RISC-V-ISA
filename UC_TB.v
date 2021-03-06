`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:29:19 01/22/2021
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
	reg [2:0] funct3;

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
	wire byte_cnt;

	// Instantiate the Unit Under Test (UUT)
	UC uut (
		.opcode(opcode), 
		.funct3(funct3), 
		.ImmSel(ImmSel), 
		.branch(branch), 
		.jump(jump), 
		.jumplink(jumplink), 
		.memtoreg(memtoreg), 
		.MemW(MemW), 
		.ALUsrc(ALUsrc), 
		.RegW(RegW), 
		.LUItoReg(LUItoReg), 
		.byte_cnt(byte_cnt)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;
		funct3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		opcode = 19;
		funct3 = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		opcode = 19;
		funct3 = 7;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		opcode = 51;
		funct3 = 0;

		
	end
      
endmodule

