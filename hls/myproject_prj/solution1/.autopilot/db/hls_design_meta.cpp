#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("data_in_V_address0", 4, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("data_in_V_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("data_in_V_q0", 35, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("data_in_V_address1", 4, hls_out, 0, "ap_memory", "MemPortADDR2", 1),
	Port_Property("data_in_V_ce1", 1, hls_out, 0, "ap_memory", "MemPortCE2", 1),
	Port_Property("data_in_V_q1", 35, hls_in, 0, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("data_out_V_address0", 3, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("data_out_V_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("data_out_V_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("data_out_V_d0", 35, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("data_out_V_address1", 3, hls_out, 1, "ap_memory", "MemPortADDR2", 1),
	Port_Property("data_out_V_ce1", 1, hls_out, 1, "ap_memory", "MemPortCE2", 1),
	Port_Property("data_out_V_we1", 1, hls_out, 1, "ap_memory", "MemPortWE2", 1),
	Port_Property("data_out_V_d1", 35, hls_out, 1, "ap_memory", "MemPortDIN2", 1),
	Port_Property("const_size_in_1", 16, hls_out, 2, "ap_vld", "out_data", 1),
	Port_Property("const_size_in_1_ap_vld", 1, hls_out, 2, "ap_vld", "out_vld", 1),
	Port_Property("const_size_out_1", 16, hls_out, 3, "ap_vld", "out_data", 1),
	Port_Property("const_size_out_1_ap_vld", 1, hls_out, 3, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "myproject";