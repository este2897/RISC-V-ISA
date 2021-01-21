

module PCplus4(

input [31:0]	pc_actual,
output reg	[31:0] pc_next);

always
	pc_next = pc_actual + 4;
endmodule
