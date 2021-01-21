`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:17:30 01/21/2021 
// Design Name: 
// Module Name:    PC_next 
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
module PC_next(
    input CLK,
	 input reset,
    input [31:0] pc_next,
    output reg [31:0] pc_actual
    );
	 
	 initial pc_actual = 0;
	 
	 always @(posedge CLK)	 
	 	if (!reset)
			pc_actual = pc_next;
		else
			pc_actual = 0;
endmodule
