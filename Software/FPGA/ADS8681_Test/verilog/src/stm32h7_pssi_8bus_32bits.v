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
  output pssi_de_o,
  input pssi_rdy_i,
  inout [7:0] pssi_data_io,
  input clk_i,
  output [31:0] fpga_data_o
  );

  always @(posedge clk_i) begin
    pssi_clk_o <= clk_i;
  end
  

endmodule
