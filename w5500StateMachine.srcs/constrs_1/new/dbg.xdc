

connect_debug_port u_ila_0/probe0 [get_nets [list {bsb[3]} {bsb[4]}]]
connect_debug_port u_ila_0/probe6 [get_nets [list rwb]]
connect_debug_port u_ila_0/probe9 [get_nets [list ss_OBUF]]
connect_debug_port u_ila_0/probe10 [get_nets [list tx_mode_IBUF]]

set_property MARK_DEBUG false [get_nets {tx_data[38]}]
set_property MARK_DEBUG false [get_nets {tx_data[34]}]
set_property MARK_DEBUG false [get_nets {tx_data[39]}]
set_property MARK_DEBUG false [get_nets {tx_data[40]}]
set_property MARK_DEBUG false [get_nets {tx_data[41]}]
set_property MARK_DEBUG false [get_nets {tx_data[42]}]
set_property MARK_DEBUG false [get_nets {tx_data[43]}]
set_property MARK_DEBUG false [get_nets {tx_data[44]}]
set_property MARK_DEBUG false [get_nets {tx_data[45]}]
set_property MARK_DEBUG true [get_nets {LED_OBUF[7]}]
set_property MARK_DEBUG true [get_nets {LED_OBUF[8]}]
set_property MARK_DEBUG true [get_nets {LED_OBUF[10]}]
set_property MARK_DEBUG true [get_nets {LED_OBUF[11]}]
set_property MARK_DEBUG true [get_nets {LED_OBUF[12]}]
set_property MARK_DEBUG true [get_nets {LED_OBUF[13]}]
set_property MARK_DEBUG true [get_nets {LED_OBUF[14]}]
set_property MARK_DEBUG true [get_nets {LED_OBUF[15]}]
set_property MARK_DEBUG true [get_nets {LED_OBUF[6]}]
set_property MARK_DEBUG true [get_nets {LED_OBUF[9]}]
connect_debug_port u_ila_0/probe2 [get_nets [list idle_mode_IBUF]]




create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 16 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {LED_OBUF[0]} {LED_OBUF[1]} {LED_OBUF[2]} {LED_OBUF[3]} {LED_OBUF[4]} {LED_OBUF[5]} {LED_OBUF[6]} {LED_OBUF[7]} {LED_OBUF[8]} {LED_OBUF[9]} {LED_OBUF[10]} {LED_OBUF[11]} {LED_OBUF[12]} {LED_OBUF[13]} {LED_OBUF[14]} {LED_OBUF[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list clk_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list miso_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list mosi_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list sclk_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list cs_OBUF]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]
