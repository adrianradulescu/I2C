`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:13:54 06/29/2016 
// Design Name: 
// Module Name:    test_counter 
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

module test_counter();
	reg clk;
	reg fclk;
	wire counter_check;
	
	counter mymodule (.clk(clk), .fclk(fclk), .isfull(counter_check));
	
	initial begin
	fclk = 0;
	forever #5 fclk = ~fclk;
	end
	
	initial begin
	clk = 0;
	forever #20 clk = ~clk;
	end


endmodule

