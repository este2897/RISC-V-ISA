`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: MT7003
// Engineer: E.SALAZAR / E.MONTERO
// 
// Create Date:    02:09:13 01/18/2021 
// Design Name: 
// Module Name:    TOP_Processor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Modulo principal para realizar todas las conexiones del DATAPATH
//
//////////////////////////////////////////////////////////////////////////////////
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
