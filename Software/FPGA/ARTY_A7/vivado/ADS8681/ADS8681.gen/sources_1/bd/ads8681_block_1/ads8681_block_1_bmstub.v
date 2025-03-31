// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module ads8681_block_1 (
  gpio_rtl_0_tri_o,
  reset_n,
  clk_100MHz,
  rx,
  tx,
  spi0_mosi,
  spi0_miso,
  spi0_sck,
  spi0_cs_n
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_rtl_0 TRI_O" *)
  (* X_INTERFACE_MODE = "master gpio_rtl_0" *)
  output [3:0]gpio_rtl_0_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_N RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET_N" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_N, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_100MHZ" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ads8681_block_1_clk_100MHz, INSERT_VIP 0" *)
  input clk_100MHz;
  (* X_INTERFACE_IGNORE = "true" *)
  input rx;
  (* X_INTERFACE_IGNORE = "true" *)
  output tx;
  (* X_INTERFACE_IGNORE = "true" *)
  output spi0_mosi;
  (* X_INTERFACE_IGNORE = "true" *)
  input spi0_miso;
  (* X_INTERFACE_IGNORE = "true" *)
  output spi0_sck;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]spi0_cs_n;

  // stub module has no contents

endmodule
