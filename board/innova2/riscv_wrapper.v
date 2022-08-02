//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Fri Jul 29 00:23:14 2022
//Host        : comp running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target riscv_wrapper.bd
//Design      : riscv_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module riscv_wrapper
   (LED0,
    TxD_0,
    ddr4_rtl_0_act_n,
    ddr4_rtl_0_adr,
    ddr4_rtl_0_ba,
    ddr4_rtl_0_bg,
    ddr4_rtl_0_ck_c,
    ddr4_rtl_0_ck_t,
    ddr4_rtl_0_cke,
    ddr4_rtl_0_cs_n,
    ddr4_rtl_0_dm_n,
    ddr4_rtl_0_dq,
    ddr4_rtl_0_dqs_c,
    ddr4_rtl_0_dqs_t,
    ddr4_rtl_0_odt,
    ddr4_rtl_0_reset_n,
    diff_clock_rtl_0_clk_n,
    diff_clock_rtl_0_clk_p,
    iic_opencapi_scl_io,
    iic_opencapi_sda_io,
    pcie_0_rxn,
    pcie_0_rxp,
    pcie_0_txn,
    pcie_0_txp,
    pcie_perstn,
    pcie_refclk_clk_n,
    pcie_refclk_clk_p);
  output LED0;
  output TxD_0;
  output ddr4_rtl_0_act_n;
  output [16:0]ddr4_rtl_0_adr;
  output [1:0]ddr4_rtl_0_ba;
  output [1:0]ddr4_rtl_0_bg;
  output [0:0]ddr4_rtl_0_ck_c;
  output [0:0]ddr4_rtl_0_ck_t;
  output [0:0]ddr4_rtl_0_cke;
  output [0:0]ddr4_rtl_0_cs_n;
  inout [7:0]ddr4_rtl_0_dm_n;
  inout [63:0]ddr4_rtl_0_dq;
  inout [7:0]ddr4_rtl_0_dqs_c;
  inout [7:0]ddr4_rtl_0_dqs_t;
  output [0:0]ddr4_rtl_0_odt;
  output ddr4_rtl_0_reset_n;
  input diff_clock_rtl_0_clk_n;
  input diff_clock_rtl_0_clk_p;
  inout iic_opencapi_scl_io;
  inout iic_opencapi_sda_io;
  input [7:0]pcie_0_rxn;
  input [7:0]pcie_0_rxp;
  output [7:0]pcie_0_txn;
  output [7:0]pcie_0_txp;
  input pcie_perstn;
  input [0:0]pcie_refclk_clk_n;
  input [0:0]pcie_refclk_clk_p;

  wire LED0;
  wire TxD_0;
  wire ddr4_rtl_0_act_n;
  wire [16:0]ddr4_rtl_0_adr;
  wire [1:0]ddr4_rtl_0_ba;
  wire [1:0]ddr4_rtl_0_bg;
  wire [0:0]ddr4_rtl_0_ck_c;
  wire [0:0]ddr4_rtl_0_ck_t;
  wire [0:0]ddr4_rtl_0_cke;
  wire [0:0]ddr4_rtl_0_cs_n;
  wire [7:0]ddr4_rtl_0_dm_n;
  wire [63:0]ddr4_rtl_0_dq;
  wire [7:0]ddr4_rtl_0_dqs_c;
  wire [7:0]ddr4_rtl_0_dqs_t;
  wire [0:0]ddr4_rtl_0_odt;
  wire ddr4_rtl_0_reset_n;
  wire diff_clock_rtl_0_clk_n;
  wire diff_clock_rtl_0_clk_p;
  wire iic_opencapi_scl_i;
  wire iic_opencapi_scl_io;
  wire iic_opencapi_scl_o;
  wire iic_opencapi_scl_t;
  wire iic_opencapi_sda_i;
  wire iic_opencapi_sda_io;
  wire iic_opencapi_sda_o;
  wire iic_opencapi_sda_t;
  wire [7:0]pcie_0_rxn;
  wire [7:0]pcie_0_rxp;
  wire [7:0]pcie_0_txn;
  wire [7:0]pcie_0_txp;
  wire pcie_perstn;
  wire [0:0]pcie_refclk_clk_n;
  wire [0:0]pcie_refclk_clk_p;

  IOBUF iic_opencapi_scl_iobuf
       (.I(iic_opencapi_scl_o),
        .IO(iic_opencapi_scl_io),
        .O(iic_opencapi_scl_i),
        .T(iic_opencapi_scl_t));
  IOBUF iic_opencapi_sda_iobuf
       (.I(iic_opencapi_sda_o),
        .IO(iic_opencapi_sda_io),
        .O(iic_opencapi_sda_i),
        .T(iic_opencapi_sda_t));
  riscv riscv_i
       (.LED0(LED0),
        .TxD_0(TxD_0),
        .ddr4_rtl_0_act_n(ddr4_rtl_0_act_n),
        .ddr4_rtl_0_adr(ddr4_rtl_0_adr),
        .ddr4_rtl_0_ba(ddr4_rtl_0_ba),
        .ddr4_rtl_0_bg(ddr4_rtl_0_bg),
        .ddr4_rtl_0_ck_c(ddr4_rtl_0_ck_c),
        .ddr4_rtl_0_ck_t(ddr4_rtl_0_ck_t),
        .ddr4_rtl_0_cke(ddr4_rtl_0_cke),
        .ddr4_rtl_0_cs_n(ddr4_rtl_0_cs_n),
        .ddr4_rtl_0_dm_n(ddr4_rtl_0_dm_n),
        .ddr4_rtl_0_dq(ddr4_rtl_0_dq),
        .ddr4_rtl_0_dqs_c(ddr4_rtl_0_dqs_c),
        .ddr4_rtl_0_dqs_t(ddr4_rtl_0_dqs_t),
        .ddr4_rtl_0_odt(ddr4_rtl_0_odt),
        .ddr4_rtl_0_reset_n(ddr4_rtl_0_reset_n),
        .diff_clock_rtl_0_clk_n(diff_clock_rtl_0_clk_n),
        .diff_clock_rtl_0_clk_p(diff_clock_rtl_0_clk_p),
        .iic_opencapi_scl_i(iic_opencapi_scl_i),
        .iic_opencapi_scl_o(iic_opencapi_scl_o),
        .iic_opencapi_scl_t(iic_opencapi_scl_t),
        .iic_opencapi_sda_i(iic_opencapi_sda_i),
        .iic_opencapi_sda_o(iic_opencapi_sda_o),
        .iic_opencapi_sda_t(iic_opencapi_sda_t),
        .pcie_0_rxn(pcie_0_rxn),
        .pcie_0_rxp(pcie_0_rxp),
        .pcie_0_txn(pcie_0_txn),
        .pcie_0_txp(pcie_0_txp),
        .pcie_perstn(pcie_perstn),
        .pcie_refclk_clk_n(pcie_refclk_clk_n),
        .pcie_refclk_clk_p(pcie_refclk_clk_p));
endmodule

