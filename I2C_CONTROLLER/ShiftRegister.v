`timescale 1ns / 1ps
module ShiftRegister	
  #(parameter REGISTER_SIZE = 11)
	(	input 							  controlClock,
		input							  confirmSendData,
		input 							 debouncedData,
		output reg [7 : 0]	  parallelDataOutput,
		output reg					   parityCheckBit,
		output reg [1 : 0]			  commInitBits
    );

		reg [REGISTER_SIZE - 1 : 0] shiftRegister;
		
		always@(posedge controlClock) 
			shiftRegister <= {shiftRegister[REGISTER_SIZE - 1 : 0], 
									debouncedData};
		always@(posedge controlClock) begin
			if(confirmSendData) begin
				parallelDataOutput <= shiftRegister[9:2];
				parityCheckBit 	 <= shiftRegister	 [1];
				commInitBit			 <= {shiftRegister[0],
											  shiftRegister[10]};
			end
		end
		
endmodule
