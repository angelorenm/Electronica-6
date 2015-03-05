`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:16 07/28/2013 
// Design Name: 
// Module Name:    project0_demo 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module project0_demo(
    output [7:0] Led,
	 output [7:0] seg,
	 output [3:0] an,
    input clk
    );
	 
	 reg [21:0] counter = 22'b0000000000000000000000; 
	 reg divclk = 1'b0;
	 reg [2:0] caseCounter = 3'b000;
	 reg [7:0] LedReg;
	 reg [7:0] SegReg;

////clock divider////	 
	 always @(posedge clk)
		if(counter == 22'b1111111111111111111111) begin
			counter = 22'b0000000000000000000000;
			divclk = ~divclk;
		end
		
		else begin
			counter = counter + 1'b1;
		end
		
	always @(posedge divclk) 
		if(caseCounter == 3'b111) begin
			caseCounter = 3'b000;
		end
		else begin
			caseCounter = caseCounter + 1'b1;
		end
		
	always @(posedge divclk)	
   case (caseCounter)
      3'b000 : begin
						LedReg = 8'b11111110;
						SegReg = 8'b11111110;
               end
      3'b001 : begin
                  LedReg = 8'b11111101;
						SegReg = 8'b11111101;
               end
      3'b010 : begin
                  LedReg = 8'b11111011;
						SegReg = 8'b11111011;
               end
      3'b011 : begin
                  LedReg = 8'b11110111;
						SegReg = 8'b11110111;
               end
      3'b100 : begin
                  LedReg = 8'b11101111; 
						SegReg = 8'b11101111; 
               end
      3'b101 : begin
                  LedReg = 8'b11011111;
						SegReg = 8'b11011111;
               end
      3'b110 : begin
                  LedReg = 8'b10111111;
						SegReg = 8'b10111111; 
               end
      3'b111 : begin
                  LedReg = 8'b01111111;
						SegReg = 8'b01111111;
               end
      default: begin
                 
               end
   endcase
	
assign Led = LedReg;	
assign an = 4'h0;
assign seg = SegReg;

endmodule
