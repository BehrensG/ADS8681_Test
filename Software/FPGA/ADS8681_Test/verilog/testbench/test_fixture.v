`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:12:26 08/29/2023
// Design Name:   stm32h7_pssi_8bus_32bits
// Module Name:   /home/grzegorz/git/ADS8681_Test/Software/FPGA/ADS8681_Test/verilog/testbench/test_fixture.v
// Project Name:  ADS8681_Test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stm32h7_pssi_8bus_32bits
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_fixture;

	// Inputs
	reg clk_i;

	// Outputs
	wire pssi_clk_o;
	wire [31:0] fpga_data_o;

	// Bidirs
	wire pssi_de_io;
	wire [7:0] pssi_data_io ;
	
	reg wr;
	reg din;
	reg [7:0] datain;
	integer state = 0;

	// Instantiate the Unit Under Test (UUT)
	stm32h7_pssi_8bus_32bits uut (
		.pssi_clk_o(pssi_clk_o), 
		.pssi_de_io(pssi_de_io), 
		.pssi_data_io(pssi_data_io), 
		.clk_i(clk_i), 
		.fpga_data_o(fpga_data_o)
	);
	
   assign pssi_de_io = (wr==1) ? din : 1'bz;
	assign pssi_data_io[7:0] = (wr==1) ? datain[7:0] : 8'dz;
	
	initial begin
		// Initialize Inputs
		clk_i = 1;
		#10 wr = 1;


		// Wait 100 ns for global reset to finish
		#45 din = 1;
		 din = 0;
		
        
		// Add stimulus here

	end
	
	always begin
	#5 clk_i  <= ~clk_i;

	end
	
	always @(posedge pssi_clk_o) begin
	if(!din)begin
	case(state)
	  0: datain[7:0] = 8'h1A;
	  1: datain[7:0] = 8'h2B;
	  2: datain[7:0] = 8'h3C;
	  3: datain[7:0] = 8'h4D;
	  endcase
	  state = state + 1;
	  if(state == 4) begin
	  
		#20 din = 1;
	   end
		end
	end
	

		
endmodule

