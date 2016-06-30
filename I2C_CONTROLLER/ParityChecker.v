`timescale 1ns / 1ps

module ParityChecker(
		input [7:0] scanCodeForCheck,
		input 		  parityCheckBit,
		output 		validationSignal
    );
  
	assign validationStrobe = ((
					scanCodeForCheck[0] ^
					scanCodeForCheck[1] ^
					scanCodeForCheck[2] ^
					scanCodeForCheck[3] ^
					scanCodeForCheck[4] ^ 
					scanCodeForCheck[5] ^
					scanCodeForCheck[6] ^
					scanCodeForCheck[7] == 
					PARITY_CHECK_BIT))
				 ?(1):(0);

endmodule
