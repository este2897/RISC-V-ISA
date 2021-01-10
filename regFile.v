`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: MT-7003
// Engineer: E.SALAZAR
// 
// Create Date:    18:29:56 01/10/2021 
// Design Name: 
// Module Name:    regFile 
// Project Name: RISC-V-ISA
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

module regFile(

		//INPUTS
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD3,
    input WE,
    input CLK,
	 
		//OUTPUTS
    output wire [31:0] RD1,
    output wire [31:0] RD2
    );
	 
	 reg[31:0] RF [31:0]; // REG FILE 32x32
	 assign RD1 = RF[A1]; // OUTPUT ASSIGN 1
	 assign RD2 = RF[A2]; // OUTPUT ASSIGN 2
	 
//	 initial 
//	 $readmemb("archivobinario.mem",RF); // VALORES INICIALES
	 
	 always begin
	 
	 @(posedge CLK) if (WE) RF[A3]<= WD3; // ESCRITURA EN REGISTRO DE DESTINO
	 
	 end
	

endmodule
