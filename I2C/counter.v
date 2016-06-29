`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:10 06/29/2016 
// Design Name: 
// Module Name:    counter 
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
module counter(
    input clk,
    input fclk,
    output reg isfull
    );
reg [3:0] size = 0;

always @ (negedge fclk) begin
	if ((!clk)&(size!=4'b1011)) size <= size + 1;
	if (size == 4'b1011) begin
		size <= 0;
		isfull <= 1;
	end
	else isfull <= 0;
	
	end
endmodule
