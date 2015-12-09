module BandpassFilter0(
  input wire clock,reset,ready,
  input wire signed [7:0] x,
  output reg signed [17:0] y
);

	reg signed[17:0]accumulator = 0;
	reg [5:0]offset = 0;
	reg signed [7:0] sample [61:0];
	reg [5:0]index = 0;
	reg [6:0]counter = 0;
	wire signed [9:0]coeff;
	
	band0coeffs coeffs(.index(index),.coeff(coeff));
	
	always @(posedge clock) 
		begin
		if (ready)
			begin
			offset <= offset + 1;
			sample[offset] <= x;
			accumulator <= 0;
			index <= 0;
			counter <= 0;
			end
		else if (counter < 61)
			begin
			accumulator <= accumulator + coeff*sample[offset-index];
			index <= index + 1;
			counter <= counter + 1;
			end
		else if (counter == 61) y <= accumulator;
		end

endmodule

module BandpassFilter1(
  input wire clock,reset,ready,
  input wire signed [7:0] x,
  output reg signed [17:0] y
);

	reg signed[17:0]accumulator = 0;
	reg [5:0]offset = 0;
	reg signed [7:0] sample [61:0];
	reg [5:0]index = 0;
	reg [6:0]counter = 0;
	wire signed [9:0]coeff;
	
	band1coeffs coeffs(.index(index),.coeff(coeff));
	
	always @(posedge clock) 
		begin
		if (ready)
			begin
			offset <= offset + 1;
			sample[offset] <= x;
			accumulator <= 0;
			index <= 0;
			counter <= 0;
			end
		else if (counter < 61)
			begin
			accumulator <= accumulator + coeff*sample[offset-index];
			index <= index + 1;
			counter <= counter + 1;
			end
		else if (counter == 61) y <= accumulator;
		end

endmodule

module BandpassFilter2(
  input wire clock,reset,ready,
  input wire signed [7:0] x,
  output reg signed [17:0] y
);

	reg signed[17:0]accumulator = 0;
	reg [5:0]offset = 0;
	reg signed [7:0] sample [61:0];
	reg [5:0]index = 0;
	reg [6:0]counter = 0;
	wire signed [9:0]coeff;
	
	band2coeffs coeffs(.index(index),.coeff(coeff));
	
	always @(posedge clock) 
		begin
		if (ready)
			begin
			offset <= offset + 1;
			sample[offset] <= x;
			accumulator <= 0;
			index <= 0;
			counter <= 0;
			end
		else if (counter < 61)
			begin
			accumulator <= accumulator + coeff*sample[offset-index];
			index <= index + 1;
			counter <= counter + 1;
			end
		else if (counter == 61) y <= accumulator;
		end

endmodule

module BandpassFilter3(
  input wire clock,reset,ready,
  input wire signed [7:0] x,
  output reg signed [17:0] y
);

	reg signed[17:0]accumulator = 0;
	reg [5:0]offset = 0;
	reg signed [7:0] sample [61:0];
	reg [5:0]index = 0;
	reg [6:0]counter = 0;
	wire signed [9:0]coeff;
	
	band3coeffs coeffs(.index(index),.coeff(coeff));
	
	always @(posedge clock) 
		begin
		if (ready)
			begin
			offset <= offset + 1;
			sample[offset] <= x;
			accumulator <= 0;
			index <= 0;
			counter <= 0;
			end
		else if (counter < 61)
			begin
			accumulator <= accumulator + coeff*sample[offset-index];
			index <= index + 1;
			counter <= counter + 1;
			end
		else if (counter == 61) y <= accumulator;
		end

endmodule

module BandpassFilter4(
  input wire clock,reset,ready,
  input wire signed [7:0] x,
  output reg signed [17:0] y
);

	reg signed[17:0]accumulator = 0;
	reg [5:0]offset = 0;
	reg signed [7:0] sample [61:0];
	reg [5:0]index = 0;
	reg [6:0]counter = 0;
	wire signed [9:0]coeff;
	
	band4coeffs coeffs(.index(index),.coeff(coeff));
	
	always @(posedge clock) 
		begin
		if (ready)
			begin
			offset <= offset + 1;
			sample[offset] <= x;
			accumulator <= 0;
			index <= 0;
			counter <= 0;
			end
		else if (counter < 61)
			begin
			accumulator <= accumulator + coeff*sample[offset-index];
			index <= index + 1;
			counter <= counter + 1;
			end
		else if (counter == 61) y <= accumulator;
		end

endmodule
