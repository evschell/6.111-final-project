module Filterbank
    (input clk, reset, ready,
	 input signed [7:0]x,
	 output reg sixk_ready,
    output signed [7:0]band0,band1,band2,band3,band4);
	
	//initialize things
	reg [2:0]counter = 0;
	reg [7:0]data_in;
	wire signed [17:0]out0;
	wire signed [17:0]out1;
	wire signed [17:0]out2;
	wire signed [17:0]out3;
	wire signed [17:0]out4;
	
	//connect and scale outputs
	assign band0[7:0] = out0[17:10];
	assign band1[7:0] = out1[17:10];
	assign band2[7:0] = out2[17:10];
	assign band3[7:0] = out3[17:10];
	assign band4[7:0] = out4[17:10];
	
	BandpassFilter0 bpf0(.clock(clk),.reset(reset),.ready(sixk_ready),.x(data_in),.y(out0));
	BandpassFilter1 bpf1(.clock(clk),.reset(reset),.ready(sixk_ready),.x(data_in),.y(out1));
	BandpassFilter2 bpf2(.clock(clk),.reset(reset),.ready(sixk_ready),.x(data_in),.y(out2));
	BandpassFilter3 bpf3(.clock(clk),.reset(reset),.ready(sixk_ready),.x(data_in),.y(out3));
	BandpassFilter4 bpf4(.clock(clk),.reset(reset),.ready(sixk_ready),.x(data_in),.y(out4));

	always @(posedge clk)
		begin
		sixk_ready <= 0;
		if (ready)
			begin
			if (counter == 7)
				begin
				counter <= 0;
				data_in <= x;
				sixk_ready <= 1;
				end
			else 
				begin
				counter <= counter + 1;
				end
			end
		end
endmodule
