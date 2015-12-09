module band0coeffs(
  input wire [5:0] index,
  output reg signed [9:0] coeff
);
  // lowpass 200 Hz
  // tools will turn this into a 61x10 ROM
  always @(index)
    case (index)
      5'd0:  coeff = 10'sd84;
      5'd1:  coeff = -10'sd9;
      5'd2:  coeff = -10'sd10;
      5'd3:  coeff = -10'sd11;
      5'd4:  coeff = -10'sd12;
      5'd5:  coeff = -10'sd14;
      5'd6:  coeff = -10'sd16;
      5'd7:  coeff = -10'sd18;
      5'd8:  coeff = -10'sd19;
      5'd9:  coeff = -10'sd21;
      5'd10: coeff = -10'sd21;
      5'd11: coeff = -10'sd21;
      5'd12: coeff = -10'sd20;
      5'd13: coeff = -10'sd18;
      5'd14: coeff = -10'sd15;
      5'd15: coeff = -10'sd11;
      5'd16: coeff = -10'sd6;
      5'd17: coeff = 10'sd0;
      5'd18: coeff = 10'sd6;
      5'd19: coeff = 10'sd13;
      5'd20: coeff = 10'sd21;
      5'd21: coeff = 10'sd29;
      5'd22: coeff = 10'sd37;
      5'd23: coeff = 10'sd45;
      5'd24: coeff = 10'sd52;
      5'd25: coeff = 10'sd59;
      5'd26: coeff = 10'sd65;
      5'd27: coeff = 10'sd70;
      5'd28: coeff = 10'sd73;
      5'd29: coeff = 10'sd75;
      5'd30: coeff = 10'sd76;
		5'd31: coeff = 10'sd75;
      5'd32: coeff = 10'sd73;
      5'd33: coeff = 10'sd70;
      5'd34: coeff = 10'sd65;
      5'd35: coeff = 10'sd59;
      5'd36: coeff = 10'sd52;
      5'd37: coeff = 10'sd45;
      5'd38: coeff = 10'sd37;
      5'd39: coeff = 10'sd29;
      5'd40: coeff = 10'sd21;
      5'd41: coeff = 10'sd13;
      5'd42: coeff = 10'sd6;
      5'd43: coeff = 10'sd0;
      5'd44: coeff = -10'sd6;
      5'd45: coeff = -10'sd11;
      5'd46: coeff = -10'sd15;
      5'd47: coeff = -10'sd18;
      5'd48: coeff = -10'sd20;
      5'd49: coeff = -10'sd21;
      5'd50: coeff = -10'sd21;
      5'd51: coeff = -10'sd21;
      5'd52: coeff = -10'sd19;
      5'd53: coeff = -10'sd18;
      5'd54: coeff = -10'sd16;
      5'd55: coeff = -10'sd14;
      5'd56: coeff = -10'sd12;
      5'd57: coeff = -10'sd11;
      5'd58: coeff = -10'sd10;
      5'd59: coeff = -10'sd9;
      5'd60: coeff = 10'sd84;
      default: coeff = 10'hXXX;
    endcase
endmodule


module band1coeffs(
  input wire [5:0] index,
  output reg signed [9:0] coeff
);
  // bandpass 200 to 400 Hz
  // tools will turn this into a 61x10 ROM
  always @(index)
    case (index)
      5'd0: coeff = 10'sd0;
      5'd1: coeff = -10'sd1;
      5'd2: coeff = -10'sd1;
      5'd3: coeff = -10'sd2;
      5'd4: coeff = -10'sd3;
      5'd5: coeff = -10'sd5;
      5'd6: coeff = -10'sd7;
      5'd7: coeff = -10'sd9;
      5'd8: coeff = -10'sd12;
      5'd9: coeff = -10'sd15;
      5'd10: coeff = -10'sd17;
      5'd11: coeff = -10'sd20;
      5'd12: coeff = -10'sd22;
      5'd13: coeff = -10'sd23;
      5'd14: coeff = -10'sd24;
      5'd15: coeff = -10'sd23;
      5'd16: coeff = -10'sd21;
      5'd17: coeff = -10'sd18;
      5'd18: coeff = -10'sd13;
      5'd19: coeff = -10'sd7;
      5'd20: coeff = 10'sd0;
      5'd21: coeff = 10'sd8;
      5'd22: coeff = 10'sd17;
      5'd23: coeff = 10'sd26;
      5'd24: coeff = 10'sd36;
      5'd25: coeff = 10'sd44;
      5'd26: coeff = 10'sd52;
      5'd27: coeff = 10'sd59;
      5'd28: coeff = 10'sd63;
      5'd29: coeff = 10'sd67;
      5'd30: coeff = 10'sd68;
		5'd31: coeff = 10'sd67;
      5'd32: coeff = 10'sd63;
      5'd33: coeff = 10'sd59;
      5'd34: coeff = 10'sd52;
      5'd35: coeff = 10'sd44;
      5'd36: coeff = 10'sd36;
      5'd37: coeff = 10'sd26;
      5'd38: coeff = 10'sd17;
      5'd39: coeff = 10'sd8;
      5'd40: coeff = 10'sd0;
      5'd41: coeff = -10'sd7;
      5'd42: coeff = -10'sd13;
      5'd43: coeff = -10'sd18;
      5'd44: coeff = -10'sd21;
      5'd45: coeff = -10'sd23;
      5'd46: coeff = -10'sd24;
      5'd47: coeff = -10'sd23;
      5'd48: coeff = -10'sd22;
      5'd49: coeff = -10'sd20;
      5'd50: coeff = -10'sd17;
      5'd51: coeff = -10'sd15;
      5'd52: coeff = -10'sd12;
      5'd53: coeff = -10'sd9;
      5'd54: coeff = -10'sd7;
      5'd55: coeff = -10'sd5;
      5'd56: coeff = -10'sd3;
      5'd57: coeff = -10'sd2;
      5'd58: coeff = -10'sd1;
      5'd59: coeff = -10'sd1;
      5'd60: coeff = 10'sd0;
		default: coeff = 10'hXXX;
	endcase
endmodule

module band2coeffs(
  input wire [5:0] index,
  output reg signed [9:0] coeff
);
  // bandpass 400 to 800 Hz
  // tools will turn this into a 61x10 ROM
  always @(index)
    case (index)
      5'd0: coeff = 10'sd0;
      5'd1: coeff = 10'sd0;
      5'd2: coeff = 10'sd0;
      5'd3: coeff = -10'sd1;
      5'd4: coeff = 10'sd0;
      5'd5: coeff = 10'sd0;
      5'd6: coeff = 10'sd1;
      5'd7: coeff = 10'sd3;
      5'd8: coeff = 10'sd5;
      5'd9: coeff = 10'sd8;
      5'd10: coeff = 10'sd10;
      5'd11: coeff = 10'sd12;
      5'd12: coeff = 10'sd13;
      5'd13: coeff = 10'sd12;
      5'd14: coeff = 10'sd7;
      5'd15: coeff = 10'sd0;
      5'd16: coeff = -10'sd10;
      5'd17: coeff = -10'sd22;
      5'd18: coeff = -10'sd34;
      5'd19: coeff = -10'sd44;
      5'd20: coeff = -10'sd52;
      5'd21: coeff = -10'sd54;
      5'd22: coeff = -10'sd49;
      5'd23: coeff = -10'sd38;
      5'd24: coeff = -10'sd21;
      5'd25: coeff = 10'sd0;
      5'd26: coeff = 10'sd23;
      5'd27: coeff = 10'sd46;
      5'd28: coeff = 10'sd64;
      5'd29: coeff = 10'sd77;
      5'd30: coeff = 10'sd81;
		5'd31: coeff = 10'sd77;
      5'd32: coeff = 10'sd64;
      5'd33: coeff = 10'sd46;
      5'd34: coeff = 10'sd23;
      5'd35: coeff = 10'sd0;
      5'd36: coeff = -10'sd21;
      5'd37: coeff = -10'sd38;
      5'd38: coeff = -10'sd49;
      5'd39: coeff = -10'sd54;
      5'd40: coeff = -10'sd52;
      5'd41: coeff = -10'sd44;
      5'd42: coeff = -10'sd34;
      5'd43: coeff = -10'sd22;
      5'd44: coeff = -10'sd10;
      5'd45: coeff = 10'sd0;
      5'd46: coeff = 10'sd7;
      5'd47: coeff = 10'sd12;
      5'd48: coeff = 10'sd13;
      5'd49: coeff = 10'sd12;
      5'd50: coeff = 10'sd10;
      5'd51: coeff = 10'sd8;
      5'd52: coeff = 10'sd5;
      5'd53: coeff = 10'sd3;
      5'd54: coeff = 10'sd1;
      5'd55: coeff = 10'sd0;
      5'd56: coeff = 10'sd0;
      5'd57: coeff = -10'sd1;
      5'd58: coeff = 10'sd0;
      5'd59: coeff = 10'sd0;
      5'd60: coeff = 10'sd0;
		default: coeff = 10'hXXX;
	endcase
endmodule

module band3coeffs(
  input wire [5:0] index,
  output reg signed [9:0] coeff
);
  // bandpass 800 to 1600 Hz
  // tools will turn this into a 61x10 ROM
  always @(index)
    case (index)
      5'd0: coeff = 10'sd0;
      5'd1: coeff = 10'sd0;
      5'd2: coeff = 10'sd0;
      5'd3: coeff = 10'sd0;
      5'd4: coeff = 10'sd2;
      5'd5: coeff = 10'sd3;
      5'd6: coeff = 10'sd3;
      5'd7: coeff = 10'sd2;
      5'd8: coeff = -10'sd2;
      5'd9: coeff = -10'sd6;
      5'd10: coeff = -10'sd9;
      5'd11: coeff = -10'sd7;
      5'd12: coeff = -10'sd3;
      5'd13: coeff = 10'sd2;
      5'd14: coeff = 10'sd3;
      5'd15: coeff = 10'sd0;
      5'd16: coeff = -10'sd5;
      5'd17: coeff = -10'sd4;
      5'd18: coeff = 10'sd7;
      5'd19: coeff = 10'sd26;
      5'd20: coeff = 10'sd43;
      5'd21: coeff = 10'sd45;
      5'd22: coeff = 10'sd21;
      5'd23: coeff = -10'sd25;
      5'd24: coeff = -10'sd76;
      5'd25: coeff = -10'sd106;
      5'd26: coeff = -10'sd94;
      5'd27: coeff = -10'sd38;
      5'd28: coeff = 10'sd40;
      5'd29: coeff = 10'sd109;
      5'd30: coeff = 10'sd136;
		5'd31: coeff = 10'sd109;
      5'd32: coeff = 10'sd40;
      5'd33: coeff = -10'sd38;
      5'd34: coeff = -10'sd94;
      5'd35: coeff = -10'sd106;
      5'd36: coeff = -10'sd76;
      5'd37: coeff = -10'sd25;
      5'd38: coeff = 10'sd21;
      5'd39: coeff = 10'sd45;
      5'd40: coeff = 10'sd43;
      5'd41: coeff = 10'sd26;
      5'd42: coeff = 10'sd7;
      5'd43: coeff = -10'sd4;
      5'd44: coeff = -10'sd5;
      5'd45: coeff = 10'sd0;
      5'd46: coeff = 10'sd3;
      5'd47: coeff = 10'sd2;
      5'd48: coeff = -10'sd3;
      5'd49: coeff = -10'sd7;
      5'd50: coeff = -10'sd9;
      5'd51: coeff = -10'sd6;
      5'd52: coeff = -10'sd2;
      5'd53: coeff = 10'sd2;
      5'd54: coeff = 10'sd3;
      5'd55: coeff = 10'sd3;
      5'd56: coeff = 10'sd2;
      5'd57: coeff = 10'sd0;
      5'd58: coeff = 10'sd0;
      5'd59: coeff = 10'sd0;
      5'd60: coeff = 10'sd0;
		default: coeff = 10'hXXX;
	endcase
endmodule

module band4coeffs(
  input wire [5:0] index,
  output reg signed [9:0] coeff
);
  // bandpass 1600 to 3200 Hz
  // tools will turn this into a 61x10 ROM
  always @(index)
    case (index)
      5'd0: coeff = 10'sd0;
      5'd1: coeff = 10'sd0;
      5'd2: coeff = 10'sd1;
      5'd3: coeff = 10'sd2;
      5'd4: coeff = -10'sd1;
      5'd5: coeff = -10'sd3;
      5'd6: coeff = -10'sd1;
      5'd7: coeff = 10'sd1;
      5'd8: coeff = -10'sd1;
      5'd9: coeff = 10'sd2;
      5'd10: coeff = 10'sd9;
      5'd11: coeff = 10'sd4;
      5'd12: coeff = -10'sd11;
      5'd13: coeff = -10'sd10;
      5'd14: coeff = 10'sd3;
      5'd15: coeff = 10'sd0;
      5'd16: coeff = -10'sd3;
      5'd17: coeff = 10'sd19;
      5'd18: coeff = 10'sd29;
      5'd19: coeff = -10'sd13;
      5'd20: coeff = -10'sd44;
      5'd21: coeff = -10'sd11;
      5'd22: coeff = 10'sd12;
      5'd23: coeff = -10'sd14;
      5'd24: coeff = 10'sd18;
      5'd25: coeff = 10'sd106;
      5'd26: coeff = 10'sd48;
      5'd27: coeff = -10'sd164;
      5'd28: coeff = -10'sd194;
      5'd29: coeff = 10'sd82;
      5'd30: coeff = 10'sd274;
		5'd31: coeff = 10'sd82;
      5'd32: coeff = -10'sd194;
      5'd33: coeff = -10'sd164;
      5'd34: coeff = 10'sd48;
      5'd35: coeff = 10'sd106;
      5'd36: coeff = 10'sd18;
      5'd37: coeff = -10'sd14;
      5'd38: coeff = 10'sd12;
      5'd39: coeff = -10'sd11;
      5'd40: coeff = -10'sd44;
      5'd41: coeff = -10'sd13;
      5'd42: coeff = 10'sd29;
      5'd43: coeff = 10'sd19;
      5'd44: coeff = -10'sd3;
      5'd45: coeff = 10'sd0;
      5'd46: coeff = 10'sd3;
      5'd47: coeff = -10'sd10;
      5'd48: coeff = -10'sd11;
      5'd49: coeff = 10'sd4;
      5'd50: coeff = 10'sd9;
      5'd51: coeff = 10'sd2;
      5'd52: coeff = -10'sd1;
      5'd53: coeff = 10'sd1;
      5'd54: coeff = -10'sd1;
      5'd55: coeff = -10'sd3;
      5'd56: coeff = -10'sd1;
      5'd57: coeff = 10'sd2;
      5'd58: coeff = 10'sd1;
      5'd59: coeff = 10'sd0;
      5'd60: coeff = 10'sd0;
		default: coeff = 10'hXXX;
	endcase
endmodule

//module band5coeffs(
//  input wire [4:0] index,
//  output reg signed [9:0] coeff
//);
//  // highpass 3200 Hz
//  // tools will turn this into a 31x10 ROM
//  always @(index)
//    case (index)
//      5'd0: coeff = 10'sd41;
//      5'd1: coeff = 10'sd76;
//      5'd2: coeff = -10'sd45;
//      5'd3: coeff = -10'sd4;
//      5'd4: coeff = 10'sd19;
//      5'd5: coeff = 10'sd18;
//      5'd6: coeff = -10'sd32;
//      5'd7: coeff = -10'sd16;
//      5'd8: coeff = 10'sd43;
//      5'd9: coeff = 10'sd17;
//      5'd10: coeff = -10'sd63;
//      5'd11: coeff = -10'sd17;
//      5'd12: coeff = 10'sd107;
//      5'd13: coeff = 10'sd17;
//      5'd14: coeff = -10'sd325;
//      5'd15: coeff = 10'sd495;
//      5'd16: coeff = -10'sd325;
//      5'd17: coeff = 10'sd17;
//      5'd18: coeff = 10'sd107;
//      5'd19: coeff = -10'sd17;
//      5'd20: coeff = -10'sd63;
//      5'd21: coeff = 10'sd17;
//      5'd22: coeff = 10'sd43;
//      5'd23: coeff = -10'sd16;
//      5'd24: coeff = -10'sd32;
//      5'd25: coeff = 10'sd18;
//      5'd26: coeff = 10'sd19;
//      5'd27: coeff = -10'sd4;
//      5'd28: coeff = -10'sd45;
//      5'd29: coeff = 10'sd76;
//      5'd30: coeff = 10'sd41;
//		default: coeff = 10'hXXX;
//	endcase
//endmodule
