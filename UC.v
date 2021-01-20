`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: MT-7003
// Engineer: E.SALAZAR / E.MONTERO
//
// Create Date:    22:35:28 01/08/2021
// Design Name:
// Module Name:    UC
// Project Name: RISC-V-ISA
// Target Devices:
// Tool versions:
// Description: Unidad de control
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module UC(
 input [5:0] opcode,
 input [2:0] funct3,
 input [5:0] funct7,

 output reg  [2:0] ImmSel //para generador de inmediato
 output reg branch, jump, jumplink, memtoreg, MemW, ALUsrc, RegW, LUItoReg
    );


always @(*)
begin
 case(opcode)
 6'b0001 0011:  begin  // 19 (tipo I)
     branch = 1'b0;
     jump = 1'b0;
     jumplink = 1'b0;
     memtoreg = 1'b0;
     MemW = 1'b0;
     ALUsrc = 1'b1;
     RegW = 1'b1;
     ImmSel = 3'b000;
     LUItoReg = 1'b0;
     end

 6'b0000 0011: begin // 3 (tipo I load)
     branch = 1'b0;
     jump = 1'b0;
     jumplink = 1'b0;
     memtoreg = 1'b1;
     MemW = 1'b0;
     ALUsrc = 1'b1;
     RegW = 1'b1;
     ImmSel = 3'b000;
     LUItoReg = 1'b0;
    end

 6'b0011 0011: begin // 51 (tipo R)
     branch = 1'b0;
     jump = 1'b0;
     jumplink = 1'b0;
     memtoreg = 1'b0;
     MemW = 1'b0;
     ALUsrc = 1'b0;
     RegW = 1'b1;
     ImmSel = 3'b000;
     LUItoReg = 1'b0;
     end

 6'b0110 1111: begin // 111 (tipo J) jal
     branch = 1'b0;
     jump = 1'b1;
     jumplink = 1'b1;
     memtoreg = 1'b0;
     MemW = 1'b0;
     ALUsrc = 1'bx;
     RegW = 1'b01;
     ImmSel = 3'b100;
     LUItoReg = 1'b0;
     end

 6'b0010 0011: begin // 35 (tipo S)
     branch = 1'b0;
     jump = 1'b0;
     jumplink = 1'b0;
     memtoreg = 1'b0;
     MemW = 1'b1;
     ALUsrc = 1'b1;
     RegW = 1'b0;
     ImmSel = 3'b001;
     LUItoReg = 1'b0;
     end

 6'b0011 0111: begin // 55 (tipo U) lui
     branch = 1'b0;
     jump = 1'b0;
     jumplink = 1'b0;
     memtoreg = 1'b0;
     MemW = 1'b0;
     ALUsrc = 1'b1;
     RegW = 1'b1;
     ImmSel = 3'b011;
     LUItoReg = 1'b1;
     end


 6'b0110 0011: begin // 99 (tipo B) bne
     branch = 1'b1;
     jump = 1'b0;
     jumplink = 1'b0;
     memtoreg = 1'b0;
     MemW = 1'b0;
     ALUsrc = 1'b0;
     RegW = 1'b0;
     ImmSel = 3'b010;
     LUItoReg = 1'b0;
     end

 endcase
end

endmodule
