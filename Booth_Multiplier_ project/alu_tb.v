`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:34:57 09/20/2016
// Design Name:   alu
// Module Name:   D:/8th semister project/Booth_Multiplier/alu_tb.v
// Project Name:  Booth_Multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cin;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		
		a = 8'b 10101010;
		b = 8'b 01001011;
		cin = 0;
		
		#10;
		
		a = 8'b 00000101;
		b = 8'b 11111000;
		cin = 1;
		
		#100;
		$stop;
	end
      
endmodule

