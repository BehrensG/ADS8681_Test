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
  
  
  always @(posedge pssi_clk_o) begin
    if (pssi_de_io) data_state_reg <= 0;
	 if (!pssi_de_io) begin
	   case (data_state_reg)
		  0: begin
		       fpga_data_o[31:24] <= pssi_data_io[7:0];
			    data_state_reg <= 1;
			  end
		  1: begin
		       fpga_data_o[23:16] <= pssi_data_io[7:0];
			    data_state_reg <= 2;
			  end
		  2: begin
		       fpga_data_o[15:8] <= pssi_data_io[7:0];
			    data_state_reg <= 3;
			  end
		  3: begin
		       fpga_data_o[7:0] <= pssi_data_io[7:0];
			    data_state_reg <= 4;
			  end
	   endcase
	 end
  end

endmodule
