module hannfilter(
  input wire clk,reset,ready,
  input wire signed [7:0] x,
  output reg signed [27:0] y
);

	reg signed[27:0]accumulator = 0;
	reg [11:0]offset = 0;
	reg signed [7:0] sample [400:0];
	reg [11:0]index = 0;
	reg [12:0]counter = 0;
	wire signed [9:0]coeff;
	
	hanncoeffs4000 coeffs(.index(index),.coeff(coeff));
	
	always @(posedge clk) 
		begin
		if (ready)
			begin
			offset <= offset + 1;
			sample[offset] <= x;
			accumulator <= 0;
			index <= 0;
			counter <= 0;
			end
		else if (counter < 4000)
			begin
			accumulator <= accumulator + coeff*sample[offset-index];
			index <= index + 1;
			counter <= counter + 1;
			end
		else if (counter == 4000) y <= accumulator;
		end

endmodule
