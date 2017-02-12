`timescale 1ns / 1ps



module multiplier_tb;

	// Inputs
	reg clk;
	reg start;
	reg [7:0] mc;
	reg [7:0] mp;

	// Outputs
	wire busy;
	wire [15:0] prod;

	// Instantiate the Unit Under Test (UUT)
	multiplier uut (
		.clk(clk), 
		.start(start), 
		.mc(mc), 
		.mp(mp), 
		.busy(busy), 
		.prod(prod)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		start = 0;
		mc = 0;
		mp = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		start = 1;
		//mc = 8'b 0000_0101;
		mc = -7;
		//mp = 8'b 0000_0011;
		mp = 3;
		
		# 10;
		start = 0;
		//if(busy==0)
		#170;
			$stop;

	end
      
	always #10 clk = ~clk;
	
endmodule

