# UART

# Innova-2 Flex - LEDs - A6=D19, B6=D18
set_property PACKAGE_PIN B6 [get_ports TxD_0]

set_property IOSTANDARD LVCMOS33 [get_ports TxD_0]

# Only TxD is connected, copied the following from timing-constraints.tcl
set uart_clock [get_clocks -of_objects [get_pins -hier UART/clock]]
set uart_clock_period [get_property -min PERIOD $uart_clock]
set_max_delay -from $uart_clock -to [get_ports {TxD_0}] -datapath_only 100.0
set_max_delay -from $main_clock -to $uart_clock -datapath_only $uart_clock_period
set_max_delay -from $uart_clock -to $main_clock -datapath_only $main_clock_period
