`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:26:56 08/31/2023 
// Design Name: 
// Module Name:    main 
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
module main(
      output wire pssi_clk_o,
		inout  wire pssi_de_io,
		inout wire [7:0] pssi_data_io,
		input wire clk_i,
		output reg [7:0] LEDs
		
    );
	
	wire [31:0] fpga_data_o;
	
	stm32h7_pssi_8bus_32bits uut (
		.pssi_clk_o(pssi_clk_o), 
		.pssi_de_io(pssi_de_io), 
		.pssi_data_io(pssi_data_io), 
		.clk_i(clk_i), 
		.fpga_data_o(fpga_data_o)
	);
	
	always @(posedge clk_i) begin
	  if(pssi_de_io) begin
	    LEDs <= fpga_data_o[7:0];
	  end
	end
	
	
endmodule
