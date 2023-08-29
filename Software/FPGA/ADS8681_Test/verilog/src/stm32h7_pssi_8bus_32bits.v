`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:17:33 08/27/2023 
// Design Name: 
// Module Name:    stm32h7_pssi_8bus_32bits 
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
module stm32h7_pssi_8bus_32bits(
  output pssi_clk_o,
  inout pssi_de_io,
  inout [7:0] pssi_data_io,
  input clk_i,
  output reg [31:0] fpga_data_o
  );

  reg [31:0] pssi_data_reg;
  reg [3:0]	data_state_reg = 4'd0;
  reg [7:0] data_reg;
  
  clk_div4 div_pss_clk(
    .clk_in(clk_i),
	 .clk_out(pssi_clk_o)
	 );
  
  
  always @(posedge clk_i) begin
	 if (!pssi_de_io) begin
	   data_reg <= pssi_data_io;
	   data_state_reg <= data_state_reg + 1'b1;
		if(data_state_reg == 4'd4) begin
		  data_state_reg <= 4'd0;
	   end
	 end
  end
  
   
  always @(posedge clk_i) begin
   case (data_state_reg)
	  0: fpga_data_o[31:24] <= data_reg[7:0];
	  1: fpga_data_o[23:16] <= data_reg[7:0];
	  2: fpga_data_o[15:8] <= data_reg[7:0];
	  3: fpga_data_o[7:0] <= data_reg[7:0];
	endcase
  end
  

endmodule
