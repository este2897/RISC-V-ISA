`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:36:30 01/14/2021 
// Design Name: 
// Module Name:    mem_instr 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mem_instr(
    input [5:0] Address,
    input CLK,
    output reg [31:0] Instr
    );
	 
	 reg [31:0] RAM[63:0];
	 
	initial
		$readmemb("/home/ise/PROYECTO/Verilog/IM.mem", RAM);
	 
		always @(negedge CLK)
			begin
		Instr = RAM[Address];
			end
			
endmodule
