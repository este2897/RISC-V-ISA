`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:15:07 01/21/2021
// Design Name:   TOP_Processor
// Module Name:   /home/ise/RISC-V_ISA/TOP_TB.v
// Project Name:  RISC-V_ISA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TOP_Processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TOP_TB;

	// Inputs
	reg CLK;
	reg RST;

integer i, dumpfile;

	// Instantiate the Unit Under Test (UUT)
	TOP_Processor uut (
		.CLK(CLK), 
		.RST(RST)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 10 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 1;
		RST = 0;

		// Wait 10 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 1;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 1;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 1;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 1;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 1;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 1;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 1;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 1;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 1;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 1;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		// Initialize Inputs
		CLK = 1;
		RST = 0;
        
		// Add stimulus here
		#300;
        dumpfile = $fopen("dump_file.hex","w");
        for (i=0;i<1024;i=i+1)
        begin
            $fwrite(dumpfile,"%b\n",uut.DataMemory.ReadData[i]);
        end
	end
      
endmodule




