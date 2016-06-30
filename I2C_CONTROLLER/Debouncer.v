module Debouncer
  #(parameter FILTER_WIDTH = 3)
   (input      fastClock,
    input      syncedSignal,
    output reg debounced
	 );

	// Circuitul se bazeaza pe un SR cu care compara
	// o fereastra, persistenta inseamna ca semnalul 
	// este stabil


	// Solutie propusa pe Doulos
	
  reg [FILTER_WIDTH : 0] shifter;
  
  always @ (posedge fastClock) begin
    if (shifter[FILTER_WIDTH:1] == 3'b000) begin
			debounced <= 0;
    end 
		else 
		if (shifter[FILTER_WIDTH:1] == 3'b111) begin
			debounced <= 1;
		end 
    shifter <= {shifter[FILTER_WIDTH-1 : 0], syncedSignal};
  end 
  
endmodule 
