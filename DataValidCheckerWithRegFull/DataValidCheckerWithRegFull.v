`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:28:02 06/30/2016 
// Design Name: 
// Module Name:    DataValidCheckerWithRegFull 
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
module DataValidCheckerWithOutRegFull(
		input 	  		 		  PARITY_CHECK_BIT,
		input  			[7:0]	DATA_INPUT_CHECKER,
		output reg 			  		  	  DATA_VALID
    );

		// Pro tip: Posedge ori Negedge
		//				Niciodata impreuna
		
		always@(DATA_INPUT_CHECKER)
				if(DATA_INPUT_CHECKER[0] ^
					DATA_INPUT_CHECKER[1] ^
					DATA_INPUT_CHECKER[2] ^
					DATA_INPUT_CHECKER[3] ^
					DATA_INPUT_CHECKER[4] ^ 
					DATA_INPUT_CHECKER[5] ^
					DATA_INPUT_CHECKER[6] ^
					DATA_INPUT_CHECKER[7] == 
					PARITY_CHECK_BIT
					) begin
						DATA_VALID <= 1;
					  end
				else begin
						DATA_VALID <= 0;
						end

endmodule
