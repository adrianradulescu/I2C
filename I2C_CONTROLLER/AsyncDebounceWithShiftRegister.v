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

	 ShiftRegister #(11)	myShiftRegister(
			.controlClock(slowClock),
			.confirmSendData(confirmSendData),
			.debouncedData(dataForShifting),
			.parallelDataOutput(scanCode),
			.parityCheckBit(parityCheckBit),
			.commInitBits(commInitBitsForChecking),
		);

endmodule
