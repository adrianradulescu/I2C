`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: N/A
// Engineer: Berbec Marius 
// 
// Create Date:    20:33:46 06/29/2016 
// Design Name:	 I2C paralellization 
// Module Name:    AsyncDebounceWithShiftRegister 
// Project Name: 	 I2C controller
// Target Devices: Nexys 2 Board
// Tool versions:  Xilinx ISE
// Description: 	 Synchronization and serialization module
//
// Dependencies: 	 Needs a parity check circuit
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module AsyncDebounceWithShiftRegister(
<<<<<<< HEAD
			input 								   data,
			input 		 						    clk,
			input							 		   fclk,
			input					 	 confirmSendData,
			output 				     parityCheckBit,
			output 	[1:0]commInitBitsforChecking,
			output	[7:0]		  			  scanCode
    );
	 
			wire						slowClock;
			wire					   fastClock;
			wire 				dataForShifting;
			wire		 slowClockForShifting;
			wire				 dataValidation;
			
			assign slowClock = clk;
			assign fastClock = fclk;
=======
			input 								   DATA,
			input 		 						    CLK,
			input							 		   FCLK,
			output 				   PARITY_CHECK_BIT,
			output	[7:0]		  DATA_OUTPUT_CHECK,
			output 	[3:0]			  COUNT_REGISTER,
			output	[7:0]		  			 SCAN_CODE
    );
	 
			wire						SLOW_CLOCK = CLK;
		// pentru un anume motiv pe care nu il
		// inteleg, nu merge sa folosesc SLOW_CLK
		// in loc de CLK pentru circuitul de debounce
		// si sincronizare
			wire					  FAST_CLOCK = FCLK;
			wire 						  DEBOUNCED_DATA;
			wire				  DEBOUNCED_SLOW_CLOCK;
>>>>>>> a23024b6dd3298260bb29c551e9c1fd91fcf8772
			
	 SynchronizationAndDebounce mySyncAndDebounceData(
			.inputData(data),
			.fastClock(fastClock),
			.outputData(dataForShifting)
		);
	
	 SynchronizationAndDebounce mySyncAndDebounceClock(
			.inputData(slowClock),
			.fastClock(fastClock),
			.outputData(slowClockForShifting)
		);
<<<<<<< HEAD

	 ShiftRegister #(11)	myShiftRegister(
			.controlClock(slowClock),
			.confirmSendData(confirmSendData),
			.debouncedData(dataForShifting),
			.parallelDataOutput(scanCode),
			.parityCheckBit(parityCheckBit),
			.commInitBits(commInitBitsForChecking),
=======
		
	 ShiftRegister #(11)					  myShiftRegister(
			.FCLK 						 (FAST_CLOCK),
			.DEBOUNCED_DATA		(DEBOUNCED_DATA),
			.CONTROL_CLOCK				 (SLOW_CLOCK),
			.PARALLEL_DATA_OUTPUT	  (SCAN_CODE),
			.OUTPUT_COUNTER_REGISTER(COUNT_REGISTER),
			.PARITY_CHECK_BIT	 (PARITY_CHECK_BIT)
>>>>>>> a23024b6dd3298260bb29c551e9c1fd91fcf8772
		);

endmodule
