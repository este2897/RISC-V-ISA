`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: MT-7003
// Engineer: E.SALAZAR / E.MONTERO
// 
// Create Date:    00:36:30 01/14/2021 
// Design Name: 
// Module Name:    mem_instr 
// Project Name: RISC-V
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Memoria de instrucciones
// Modulo creado para almacenar y extraer las instrucciones por ejecutar 
//////////////////////////////////////////////////////////////////////////////////
module InstrMemory(
//ENTRADAS
    input [31:0] Address,
    input CLK,
	 
//SALIDA
    output reg [31:0] Instr
    );
	 
//DEFINICION DE MEMORIA
	 reg [31:0] rom[1023:0];
	 
//CARGA VALORES INICIALES 
	initial
		$readmemb("/home/ise/PROYECTO/Verilog/IM_BasicOps.mem", rom);
	 
		always @(negedge CLK)
			begin
		Instr = rom[(Address>>>2)]; //INSTRUCCION A LA CUAL APUNTA LA DIRECCION
			end
			
endmodule
