--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
--Date        : Mon Jan 27 21:18:57 2025
--Host        : archlinux running 64-bit unknown
--Command     : generate_target ads8681_block_1_wrapper.bd
--Design      : ads8681_block_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ads8681_block_1_wrapper is
  port (
    clk_100MHz : in STD_LOGIC;
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_n : in STD_LOGIC;
    rx : in STD_LOGIC;
    spi0_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi0_miso : in STD_LOGIC;
    spi0_mosi : out STD_LOGIC;
    spi0_sck : out STD_LOGIC;
    tx : out STD_LOGIC
  );
end ads8681_block_1_wrapper;

architecture STRUCTURE of ads8681_block_1_wrapper is
  component ads8681_block_1 is
  port (
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_n : in STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC;
    spi0_mosi : out STD_LOGIC;
    spi0_miso : in STD_LOGIC;
    spi0_sck : out STD_LOGIC;
    spi0_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ads8681_block_1;
begin
ads8681_block_1_i: component ads8681_block_1
     port map (
      clk_100MHz => clk_100MHz,
      gpio_rtl_0_tri_o(3 downto 0) => gpio_rtl_0_tri_o(3 downto 0),
      reset_n => reset_n,
      rx => rx,
      spi0_cs_n(0) => spi0_cs_n(0),
      spi0_miso => spi0_miso,
      spi0_mosi => spi0_mosi,
      spi0_sck => spi0_sck,
      tx => tx
    );
end STRUCTURE;
