`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:03:56 01/21/2021 
// Design Name: 
// Module Name:    Imm_plus_PC 
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
module Imm_plus_PC(
    input [31:0] imm,
    input [31:0] pc,
    output reg [31:0] hik
    );

always
	hik = imm + pc;

endmodule
