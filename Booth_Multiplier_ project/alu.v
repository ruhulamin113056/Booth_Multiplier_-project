`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//The following is an alu. 
//It is an adder, but capable of subtraction: 
//Recall that subtraction means adding the two's complement-- 
//a - b = a + (-b) = a + (inverted b + 1) 
//The 1 will be coming in as cin (carry-in)  
//
//////////////////////////////////////////////////////////////////////////////////

module alu
	(
		output wire [7:0] out,
		input wire [7:0] a, b,
		input wire cin
    );

 assign out = a + b + cin;
 
endmodule





