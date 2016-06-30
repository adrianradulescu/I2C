`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:11 06/29/2016 
// Design Name: 
// Module Name:    REGFULL 
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
/module REGFULL(
	input clk,
	input fclk,
	output counter_check
    );
	 reg enabler;
	 reg[3:0] count_comp;
	 
always @ (negedge fclk) begin
	if (!clk) enabler <= 1;
	else enabler <= 0;
end

always @ (posedge fclk) begin
if (count_comp == 11 && enabler) count_comp <= 0;
else if (enabler) count_comp <= count_comp + 1;

end
//regfull counter (.clk(flck), .ce(enabler), .q(count_comp));

assign counter_check = (11==count_comp);

endmodule
