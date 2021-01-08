`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:50 01/08/2021 
// Design Name: 
// Module Name:    MUXsrcALU 
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
module MUXsrcALU(
    input [31:0] RD2,
    input [31:0] ImmGEN,
	 input ALUsrc,
    output reg [31:0] ALU2);
	
   always @ (RD2 or ImmGEN or ALUsrc) begin  
      case (ALUsrc)  
         1'b0 : ALU2 <= RD2;  
         1'b1 : ALU2 <= ImmGEN;   
      endcase  
   end  

endmodule
