`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:06:41 01/20/2021 
// Design Name: 
// Module Name:    MUX_JL 
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
module MUX_JL(


	// MUX 2:1 FOR WD3 SOURCE
    input [31:0] xt, // FROM MUX MEMTOREG OUTPUT
    input [31:0] lm, // FROM PC+4
	 input JL, // FROM CU
	output reg [31:0] ok); //OUTPUT TO LUItoreg MUX
	 
	 	// CASE FOR MUX, 1->lm, 0->xt
   always @ (xt or lm or JL) begin  
      case (JL)  
         1'b0 : ok <= xt;  
         1'b1 : ok <= lm;   
      endcase  
   end 

endmodule
