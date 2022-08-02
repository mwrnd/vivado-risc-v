set files [list \
  [file normalize "../../ethernet/verilog-ethernet/rtl/eth_mac_10g.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/eth_mac_10g_fifo.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/eth_phy_10g.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/eth_phy_10g_rx.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/eth_phy_10g_tx.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/eth_phy_10g_rx_if.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/eth_phy_10g_tx_if.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/eth_phy_10g_rx_ber_mon.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/eth_phy_10g_rx_frame_sync.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/eth_phy_10g_rx_watchdog.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/axis_xgmii_rx_32.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/axis_xgmii_rx_64.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/axis_xgmii_tx_32.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/axis_xgmii_tx_64.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/xgmii_baser_dec_64.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/xgmii_baser_enc_64.v"] \
  [file normalize "../../ethernet/verilog-ethernet/lib/axis/rtl/sync_reset.v"] \
  [file normalize "../../ethernet/verilog-ethernet/lib/axis/rtl/axis_adapter.v"] \
  [file normalize "../../ethernet/verilog-ethernet/lib/axis/rtl/axis_async_fifo.v"] \
  [file normalize "../../ethernet/verilog-ethernet/lib/axis/rtl/axis_async_fifo_adapter.v"] \
  [file normalize "../../ethernet/verilog-ethernet/rtl/lfsr.v"] \
  [file normalize "../../ethernet/ethernet.v"] \
]
add_files -norecurse -fileset $source_fileset $files

if { [string match "Rocket*m4" $rocket_module_name] } {
  # Four channel memory interface
  set block_design_tcl "m4/riscv-[version -short].tcl"
  set files [list \
    [file normalize "../../board/${vivado_board_name}/m4/riscv_wrapper.v"] \
  ]
  add_files -norecurse -fileset $source_fileset $files
} elseif { [string match "Rocket*m2" $rocket_module_name] } {
  # Two channel memory interface
  set block_design_tcl "m2/riscv-[version -short].tcl"
  set files [list \
    [file normalize "../../board/${vivado_board_name}/m2/riscv_wrapper.v"] \
  ]
  add_files -norecurse -fileset $source_fileset $files
} else {
  set files [list \
    [file normalize "../../board/${vivado_board_name}/riscv_wrapper.v"] \
  ]
  add_files -norecurse -fileset $source_fileset $files
}

set files [list \
  [file normalize ../../board/${vivado_board_name}/ethernet.xdc] \
  [file normalize ../../ethernet/verilog-ethernet/lib/axis/syn/vivado/sync_reset.tcl] \
  [file normalize ../../ethernet/verilog-ethernet/lib/axis/syn/vivado/axis_async_fifo.tcl] \
  [file normalize ../../ethernet/verilog-ethernet/syn/vivado/eth_mac_fifo.tcl] \
]
add_files -norecurse -fileset $constraint_fileset $files

