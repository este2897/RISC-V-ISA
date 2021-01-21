`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:59:48 01/18/2021 
// Design Name: 
// Module Name:    DataMemory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Memoria de datos tipo ram
// modulo creado para almacenar los datos en las intrucciones load y store
//////////////////////////////////////////////////////////////////////////////////

module DataMemory( 
//ENTRADAS
    input [31:0] Address,
    input [31:0] WriteData,
    input MemW,
	 input CLK,
//SALIDA
    output reg [31:0] ReadData
    );
	 
	 parameter MEM_DEPTH = 1024;
	 parameter SIZE = 32;
	 
	 reg [SIZE-1:0] ram [MEM_DEPTH-1:0]; //INICIALIZACION DE MEMORIA
	 
	 initial	$readmemb("/home/ise/PROYECTO/Verilog/DataMem.mem", ram); //VALORES INICIALES

		always @(posedge CLK)
			begin 
				if (MemW) ram[Address]<= WriteData; //ESCRIBIR
			ReadData = ram[Address]; //LEER	
			end
endmodule
