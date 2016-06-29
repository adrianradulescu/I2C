`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:05 06/29/2016 
// Design Name: 
// Module Name:    test_REGFULL 
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
module test_REGFULL();
	reg clk;
	reg fclk;
	wire counter_check;
	
	REGFULL mymodule (.clk(clk), .fclk(fclk), .counter_check(counter_check));
	
	initial begin
	fclk = 0;
	forever #5 fclk = ~fclk;
	end
	
	initial begin
	clk = 0;
	forever #20 clk = ~clk;
	end


endmodule
