`timescale 1ns / 1ps

module DataValidCheckerWithOutRegFull(
		input 							  FAST_CLOCK,
		input 	  		 		  PARITY_CHECK_BIT,
		input  			[7:0]	DATA_INPUT_CHECKER,
		output reg 			  		  	  DATA_VALID
    );

		// Pro tip: Posedge ori Negedge
		//				Niciodata impreuna
		always @ (posedge FAST_CLOCK) begin
					DATA_VALID <= (DATA_INPUT_CHECKER[0] ^
						DATA_INPUT_CHECKER[1] ^
						DATA_INPUT_CHECKER[2] ^
						DATA_INPUT_CHECKER[3] ^
						DATA_INPUT_CHECKER[4] ^ 
						DATA_INPUT_CHECKER[5] ^
						DATA_INPUT_CHECKER[6] ^
						DATA_INPUT_CHECKER[7] == 
						PARITY_CHECK_BIT);
			if (DATA_VALID == 1) DATA_VALID <= 0;
		end
endmodule
