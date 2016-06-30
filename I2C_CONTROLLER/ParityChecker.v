`timescale 1ns / 1ps

module ParityChecker(
		input [7:0] scanCodeForCheck,
		input 		  parityCheckBit,
		output 		validationSignal
    );
  
	assign validationStrobe = ((
					DATA_INPUT_CHECKER[0] ^
					DATA_INPUT_CHECKER[1] ^
					DATA_INPUT_CHECKER[2] ^
					DATA_INPUT_CHECKER[3] ^
					DATA_INPUT_CHECKER[4] ^ 
					DATA_INPUT_CHECKER[5] ^
					DATA_INPUT_CHECKER[6] ^
					DATA_INPUT_CHECKER[7] == 
					PARITY_CHECK_BIT))
				 ?(1):(0);

endmodule
