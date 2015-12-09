module Differentiator
    (input clk, reset, ready,
	 input signed [7:0]x,
    output reg signed [7:0]y);

	reg signed [7:0]buffer;
 
	always @(posedge clk) 
		begin
		if (ready)
			buffer <= x;
			y <= (x-buffer)*16;
		end 

endmodule
