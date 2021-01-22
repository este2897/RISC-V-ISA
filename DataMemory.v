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
	 input byte_cnt,

//SALIDA
    output reg [31:0] ReadData
    );
	 
	 parameter MEM_DEPTH = 1024;
	 parameter SIZE = 32;
	 
	 reg [SIZE-1:0] ram [MEM_DEPTH-1:0]; //INICIALIZACION DE MEMORIA
	 
	 initial	$readmemb("D:/TEC/Microcontroladores/Proyecto/memfile.mem", ram); //VALORES INICIALES

		always @(posedge CLK) 
		begin
		if (byte_cnt) begin
			case (Address[1:0])
				1'b00: begin
					if (MemW) ram[Address]<= WriteData[7:0]; //ESCRIBIR SOLO PRIMER BYTE
				end
				1'b01: begin
					if (MemW) ram[Address][15:8]<= WriteData[15:8]; //ESCRIBIR SOLO SEGUNDO BYTE
				end
				1'b10: begin
					if (MemW) ram[Address][23:16]<= WriteData[23:16]; //ESCRIBIR SOLO TERCER BYTE
				end
				1'b11: begin
					if (MemW) ram[Address][31:24]<= WriteData[31:24]; //ESCRIBIR SOLO ULTIMO BYTE
				end
			endcase
		end else begin
			if (MemW) ram[Address]<= WriteData; //ESCRIBIR
			end
		end
		
		always @(Address) 
		begin
		if (byte_cnt) begin
			case (Address[1:0])
				1'b00: begin
					ReadData = { 24'b0, {ram[Address][7:0]}}; //LEER SOLO PRIMER BYTE
				end
				1'b01: begin
					ReadData = { 16'b0, {ram[Address][15:8]}, 8'b0}; //LEER SOLO SEGUNDO BYTE
				end
				1'b10: begin
					ReadData = { 8'b0, {ram[Address][23:16]}, 16'b0}; //LEER SOLO TERCER BYTE
				end
				1'b11: begin
					ReadData = {{ram[Address][31:24]}, 24'b0}; //LEER SOLO ULTIMO BYTE
				end
			endcase
		end else begin
			ReadData = ram[Address]; //LEER
		end
		end
endmodule
