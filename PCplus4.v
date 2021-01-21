`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: E.SALAZAR / E.MONTERO
// 
// Create Date:    05:17:30 01/21/2021 
// Design Name: 
// Module Name:    PCplus4
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: MODULO QUE SUMA +4 AL PC ACTUAL
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////



module PCplus4(



input wire [31:0] pc_actual,

output wire	[31:0] pc_next);


assign pc_next = pc_actual + 4;

endmodule
