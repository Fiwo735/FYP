set moduleName self_attention
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {self_attention}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 35 regular {array 32 { 1 3 } 1 1 }  }
	{ res_V int 35 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 35, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 5 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 35 signal 0 } 
	{ res_V_address0 sc_out sc_lv 5 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 35 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "30", "33", "34", "35", "36", "37", "38"],
		"CDFG" : "self_attention",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1837161", "EstimateLatencyMax" : "1837161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_init_invert_table_ap_fixed_sa_softmax_config0_s_fu_1266"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s_fu_1271"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_fill_n_a_ap_fixed_unsigned_long_double_s_fu_1276"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s_fu_1288"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s_fu_1297"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.exp_table_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.invert_table_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.qkv_in_el_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.qkv_out_el_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.qkv_reshaped_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.queries_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.keys_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.values_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.queries_outer_transposed_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.keys_outer_transposed_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.keys_transposed_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.energy_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.energy_scaled_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.energy_scaled_red_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_3_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.attention_flat_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.values_transposed_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scaled_attention_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scaled_attention_transposed_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scaled_attention_reshaped_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_out_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_out_flat_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_1202", "Parent" : "0",
		"CDFG" : "dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "24",
		"VariableLatency" : "0", "ExactLatency" : "32", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_1258", "Parent" : "0",
		"CDFG" : "dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "16", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_init_invert_table_ap_fixed_sa_softmax_config0_s_fu_1266", "Parent" : "0", "Child" : ["28", "29"],
		"CDFG" : "init_invert_table_ap_fixed_sa_softmax_config0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "458753", "EstimateLatencyMax" : "458753",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "table_out_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_init_invert_table_ap_fixed_sa_softmax_config0_s_fu_1266.myproject_fdiv_32ns_32ns_32_9_1_U66", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_init_invert_table_ap_fixed_sa_softmax_config0_s_fu_1266.myproject_fpext_32ns_64_2_1_U67", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s_fu_1271", "Parent" : "0", "Child" : ["31", "32"],
		"CDFG" : "init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "425985", "EstimateLatencyMax" : "425985",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "table_out_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s_fu_1271.myproject_fpext_32ns_64_2_1_U61", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s_fu_1271.myproject_fexp_32ns_32ns_32_8_full_dsp_1_U62", "Parent" : "30"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_fill_n_a_ap_fixed_unsigned_long_double_s_fu_1276", "Parent" : "0",
		"CDFG" : "p_fill_n_a_ap_fixed_unsigned_long_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : []},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_transpose_2d_ap_fixed_sa_transpose_config0_s_fu_1280", "Parent" : "0",
		"CDFG" : "transpose_2d_ap_fixed_sa_transpose_config0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s_fu_1288", "Parent" : "0",
		"CDFG" : "matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s_fu_1297", "Parent" : "0",
		"CDFG" : "matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133", "EstimateLatencyMax" : "133",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_mul_mul_16s_16s_32_1_1_U77", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_mul_mul_16s_16s_32_1_1_U78", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	self_attention {
		data_V {Type I LastRead 23 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 25}}
	dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1 {
		data_V {Type I LastRead 8 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 9}
		p_read {Type I LastRead 4 FirstWrite -1}
		p_read1 {Type I LastRead 4 FirstWrite -1}
		p_read2 {Type I LastRead 4 FirstWrite -1}
		p_read3 {Type I LastRead 4 FirstWrite -1}
		p_read4 {Type I LastRead 4 FirstWrite -1}
		p_read5 {Type I LastRead 4 FirstWrite -1}
		p_read6 {Type I LastRead 4 FirstWrite -1}
		p_read7 {Type I LastRead 4 FirstWrite -1}
		p_read8 {Type I LastRead 4 FirstWrite -1}
		p_read9 {Type I LastRead 4 FirstWrite -1}
		p_read10 {Type I LastRead 4 FirstWrite -1}
		p_read11 {Type I LastRead 4 FirstWrite -1}
		p_read12 {Type I LastRead 4 FirstWrite -1}
		p_read13 {Type I LastRead 4 FirstWrite -1}
		p_read14 {Type I LastRead 4 FirstWrite -1}
		p_read15 {Type I LastRead 4 FirstWrite -1}
		p_read16 {Type I LastRead 4 FirstWrite -1}
		p_read17 {Type I LastRead 4 FirstWrite -1}
		p_read18 {Type I LastRead 4 FirstWrite -1}
		p_read19 {Type I LastRead 4 FirstWrite -1}
		p_read20 {Type I LastRead 4 FirstWrite -1}
		p_read21 {Type I LastRead 4 FirstWrite -1}
		p_read22 {Type I LastRead 4 FirstWrite -1}
		p_read23 {Type I LastRead 4 FirstWrite -1}
		p_read24 {Type I LastRead 4 FirstWrite -1}
		p_read25 {Type I LastRead 4 FirstWrite -1}
		p_read26 {Type I LastRead 4 FirstWrite -1}
		p_read27 {Type I LastRead 4 FirstWrite -1}
		p_read28 {Type I LastRead 4 FirstWrite -1}
		p_read29 {Type I LastRead 4 FirstWrite -1}
		p_read30 {Type I LastRead 4 FirstWrite -1}
		p_read31 {Type I LastRead 4 FirstWrite -1}
		p_read32 {Type I LastRead 4 FirstWrite -1}
		p_read33 {Type I LastRead 4 FirstWrite -1}
		p_read34 {Type I LastRead 4 FirstWrite -1}
		p_read35 {Type I LastRead 4 FirstWrite -1}
		p_read36 {Type I LastRead 4 FirstWrite -1}
		p_read37 {Type I LastRead 4 FirstWrite -1}
		p_read38 {Type I LastRead 4 FirstWrite -1}
		p_read39 {Type I LastRead 4 FirstWrite -1}
		p_read40 {Type I LastRead 4 FirstWrite -1}
		p_read41 {Type I LastRead 4 FirstWrite -1}
		p_read42 {Type I LastRead 4 FirstWrite -1}
		p_read43 {Type I LastRead 4 FirstWrite -1}
		p_read44 {Type I LastRead 4 FirstWrite -1}
		p_read45 {Type I LastRead 4 FirstWrite -1}
		p_read46 {Type I LastRead 4 FirstWrite -1}
		p_read47 {Type I LastRead 4 FirstWrite -1}}
	dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1 {
		data_V {Type I LastRead 8 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 9}}
	init_invert_table_ap_fixed_sa_softmax_config0_s {
		table_out_V {Type O LastRead -1 FirstWrite 14}}
	init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s {
		table_out_V {Type O LastRead -1 FirstWrite 13}}
	p_fill_n_a_ap_fixed_unsigned_long_double_s {}
	transpose_2d_ap_fixed_sa_transpose_config0_s {
		data_V {Type I LastRead 8 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		data_t_V {Type O LastRead -1 FirstWrite 1}}
	matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s {
		a_V {Type I LastRead 3 FirstWrite -1}
		a_V_offset {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type IO LastRead 4 FirstWrite 5}}
	matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s {
		a_V {Type I LastRead 3 FirstWrite -1}
		a_V_offset {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type IO LastRead 4 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1837161", "Max" : "1837161"}
	, {"Name" : "Interval", "Min" : "1837161", "Max" : "1837161"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 5 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 35 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 5 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 35 } } }
}
set moduleName self_attention
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {self_attention}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 35 regular {array 32 { 1 3 } 1 1 }  }
	{ res_V int 35 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 35, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 5 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 35 signal 0 } 
	{ res_V_address0 sc_out sc_lv 5 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 35 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "30", "33", "34", "35", "36", "37", "38"],
		"CDFG" : "self_attention",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1837161", "EstimateLatencyMax" : "1837161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_init_invert_table_ap_fixed_sa_softmax_config0_s_fu_1266"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s_fu_1271"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_fill_n_a_ap_fixed_unsigned_long_double_s_fu_1276"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s_fu_1288"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s_fu_1297"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.exp_table_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.invert_table_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.qkv_in_el_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.qkv_out_el_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.qkv_reshaped_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.queries_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.keys_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.values_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.queries_outer_transposed_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.keys_outer_transposed_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.keys_transposed_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.energy_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.energy_scaled_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.energy_scaled_red_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_3_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.attention_flat_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.values_transposed_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scaled_attention_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scaled_attention_transposed_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scaled_attention_reshaped_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_out_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_out_flat_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_1202", "Parent" : "0",
		"CDFG" : "dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "24",
		"VariableLatency" : "0", "ExactLatency" : "32", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_1258", "Parent" : "0",
		"CDFG" : "dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "16", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_init_invert_table_ap_fixed_sa_softmax_config0_s_fu_1266", "Parent" : "0", "Child" : ["28", "29"],
		"CDFG" : "init_invert_table_ap_fixed_sa_softmax_config0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "458753", "EstimateLatencyMax" : "458753",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "table_out_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_init_invert_table_ap_fixed_sa_softmax_config0_s_fu_1266.myproject_fdiv_32ns_32ns_32_9_1_U66", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_init_invert_table_ap_fixed_sa_softmax_config0_s_fu_1266.myproject_fpext_32ns_64_2_1_U67", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s_fu_1271", "Parent" : "0", "Child" : ["31", "32"],
		"CDFG" : "init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "425985", "EstimateLatencyMax" : "425985",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "table_out_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s_fu_1271.myproject_fpext_32ns_64_2_1_U61", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s_fu_1271.myproject_fexp_32ns_32ns_32_8_full_dsp_1_U62", "Parent" : "30"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_fill_n_a_ap_fixed_unsigned_long_double_s_fu_1276", "Parent" : "0",
		"CDFG" : "p_fill_n_a_ap_fixed_unsigned_long_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : []},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_transpose_2d_ap_fixed_sa_transpose_config0_s_fu_1280", "Parent" : "0",
		"CDFG" : "transpose_2d_ap_fixed_sa_transpose_config0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s_fu_1288", "Parent" : "0",
		"CDFG" : "matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s_fu_1297", "Parent" : "0",
		"CDFG" : "matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133", "EstimateLatencyMax" : "133",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_mul_mul_16s_16s_32_1_1_U77", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_mul_mul_16s_16s_32_1_1_U78", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	self_attention {
		data_V {Type I LastRead 23 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 25}}
	dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1 {
		data_V {Type I LastRead 8 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 9}
		p_read {Type I LastRead 4 FirstWrite -1}
		p_read1 {Type I LastRead 4 FirstWrite -1}
		p_read2 {Type I LastRead 4 FirstWrite -1}
		p_read3 {Type I LastRead 4 FirstWrite -1}
		p_read4 {Type I LastRead 4 FirstWrite -1}
		p_read5 {Type I LastRead 4 FirstWrite -1}
		p_read6 {Type I LastRead 4 FirstWrite -1}
		p_read7 {Type I LastRead 4 FirstWrite -1}
		p_read8 {Type I LastRead 4 FirstWrite -1}
		p_read9 {Type I LastRead 4 FirstWrite -1}
		p_read10 {Type I LastRead 4 FirstWrite -1}
		p_read11 {Type I LastRead 4 FirstWrite -1}
		p_read12 {Type I LastRead 4 FirstWrite -1}
		p_read13 {Type I LastRead 4 FirstWrite -1}
		p_read14 {Type I LastRead 4 FirstWrite -1}
		p_read15 {Type I LastRead 4 FirstWrite -1}
		p_read16 {Type I LastRead 4 FirstWrite -1}
		p_read17 {Type I LastRead 4 FirstWrite -1}
		p_read18 {Type I LastRead 4 FirstWrite -1}
		p_read19 {Type I LastRead 4 FirstWrite -1}
		p_read20 {Type I LastRead 4 FirstWrite -1}
		p_read21 {Type I LastRead 4 FirstWrite -1}
		p_read22 {Type I LastRead 4 FirstWrite -1}
		p_read23 {Type I LastRead 4 FirstWrite -1}
		p_read24 {Type I LastRead 4 FirstWrite -1}
		p_read25 {Type I LastRead 4 FirstWrite -1}
		p_read26 {Type I LastRead 4 FirstWrite -1}
		p_read27 {Type I LastRead 4 FirstWrite -1}
		p_read28 {Type I LastRead 4 FirstWrite -1}
		p_read29 {Type I LastRead 4 FirstWrite -1}
		p_read30 {Type I LastRead 4 FirstWrite -1}
		p_read31 {Type I LastRead 4 FirstWrite -1}
		p_read32 {Type I LastRead 4 FirstWrite -1}
		p_read33 {Type I LastRead 4 FirstWrite -1}
		p_read34 {Type I LastRead 4 FirstWrite -1}
		p_read35 {Type I LastRead 4 FirstWrite -1}
		p_read36 {Type I LastRead 4 FirstWrite -1}
		p_read37 {Type I LastRead 4 FirstWrite -1}
		p_read38 {Type I LastRead 4 FirstWrite -1}
		p_read39 {Type I LastRead 4 FirstWrite -1}
		p_read40 {Type I LastRead 4 FirstWrite -1}
		p_read41 {Type I LastRead 4 FirstWrite -1}
		p_read42 {Type I LastRead 4 FirstWrite -1}
		p_read43 {Type I LastRead 4 FirstWrite -1}
		p_read44 {Type I LastRead 4 FirstWrite -1}
		p_read45 {Type I LastRead 4 FirstWrite -1}
		p_read46 {Type I LastRead 4 FirstWrite -1}
		p_read47 {Type I LastRead 4 FirstWrite -1}}
	dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1 {
		data_V {Type I LastRead 8 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 9}}
	init_invert_table_ap_fixed_sa_softmax_config0_s {
		table_out_V {Type O LastRead -1 FirstWrite 14}}
	init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s {
		table_out_V {Type O LastRead -1 FirstWrite 13}}
	p_fill_n_a_ap_fixed_unsigned_long_double_s {}
	transpose_2d_ap_fixed_sa_transpose_config0_s {
		data_V {Type I LastRead 8 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		data_t_V {Type O LastRead -1 FirstWrite 1}}
	matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s {
		a_V {Type I LastRead 3 FirstWrite -1}
		a_V_offset {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type IO LastRead 4 FirstWrite 5}}
	matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s {
		a_V {Type I LastRead 3 FirstWrite -1}
		a_V_offset {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type IO LastRead 4 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1837161", "Max" : "1837161"}
	, {"Name" : "Interval", "Min" : "1837161", "Max" : "1837161"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 5 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 35 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 5 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 35 } } }
}
set moduleName self_attention
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {self_attention}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V int 35 regular {array 32 { 1 3 } 1 1 }  }
	{ res_V int 35 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V", "interface" : "memory", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "res_V", "interface" : "memory", "bitwidth" : 35, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_V_address0 sc_out sc_lv 5 signal 0 } 
	{ data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_V_q0 sc_in sc_lv 35 signal 0 } 
	{ res_V_address0 sc_out sc_lv 5 signal 1 } 
	{ res_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ res_V_we0 sc_out sc_logic 1 signal 1 } 
	{ res_V_d0 sc_out sc_lv 35 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_V", "role": "address0" }} , 
 	{ "name": "data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V", "role": "ce0" }} , 
 	{ "name": "data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_V", "role": "q0" }} , 
 	{ "name": "res_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "res_V", "role": "address0" }} , 
 	{ "name": "res_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "ce0" }} , 
 	{ "name": "res_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V", "role": "we0" }} , 
 	{ "name": "res_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "res_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "30", "33", "34", "35", "36", "37", "38"],
		"CDFG" : "self_attention",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1837161", "EstimateLatencyMax" : "1837161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_init_invert_table_ap_fixed_sa_softmax_config0_s_fu_1266"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s_fu_1271"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_fill_n_a_ap_fixed_unsigned_long_double_s_fu_1276"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s_fu_1288"},
			{"State" : "ap_ST_fsm_state115", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s_fu_1297"}],
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.exp_table_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.invert_table_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.qkv_in_el_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.qkv_out_el_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.qkv_reshaped_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.queries_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.keys_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.values_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.queries_outer_transposed_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.keys_outer_transposed_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.keys_transposed_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.energy_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.energy_scaled_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.energy_scaled_red_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.res_V_assign_2_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.attention_flat_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.values_transposed_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scaled_attention_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scaled_attention_transposed_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scaled_attention_reshaped_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.result_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_out_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_out_flat_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_1202", "Parent" : "0",
		"CDFG" : "dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "24",
		"VariableLatency" : "0", "ExactLatency" : "32", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_1258", "Parent" : "0",
		"CDFG" : "dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "16", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_init_invert_table_ap_fixed_sa_softmax_config0_s_fu_1266", "Parent" : "0", "Child" : ["28", "29"],
		"CDFG" : "init_invert_table_ap_fixed_sa_softmax_config0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "458753", "EstimateLatencyMax" : "458753",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "table_out_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_init_invert_table_ap_fixed_sa_softmax_config0_s_fu_1266.myproject_fdiv_32ns_32ns_32_9_1_U66", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_init_invert_table_ap_fixed_sa_softmax_config0_s_fu_1266.myproject_fpext_32ns_64_2_1_U67", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s_fu_1271", "Parent" : "0", "Child" : ["31", "32"],
		"CDFG" : "init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "425985", "EstimateLatencyMax" : "425985",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "table_out_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s_fu_1271.myproject_fpext_32ns_64_2_1_U61", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s_fu_1271.myproject_fexp_32ns_32ns_32_8_full_dsp_1_U62", "Parent" : "30"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_fill_n_a_ap_fixed_unsigned_long_double_s_fu_1276", "Parent" : "0",
		"CDFG" : "p_fill_n_a_ap_fixed_unsigned_long_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : []},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_transpose_2d_ap_fixed_sa_transpose_config0_s_fu_1280", "Parent" : "0",
		"CDFG" : "transpose_2d_ap_fixed_sa_transpose_config0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s_fu_1288", "Parent" : "0",
		"CDFG" : "matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "145",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s_fu_1297", "Parent" : "0",
		"CDFG" : "matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133", "EstimateLatencyMax" : "133",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_mul_mul_16s_16s_32_1_1_U77", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_mul_mul_16s_16s_32_1_1_U78", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	self_attention {
		data_V {Type I LastRead 23 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 25}}
	dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1 {
		data_V {Type I LastRead 8 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 9}
		p_read {Type I LastRead 4 FirstWrite -1}
		p_read1 {Type I LastRead 4 FirstWrite -1}
		p_read2 {Type I LastRead 4 FirstWrite -1}
		p_read3 {Type I LastRead 4 FirstWrite -1}
		p_read4 {Type I LastRead 4 FirstWrite -1}
		p_read5 {Type I LastRead 4 FirstWrite -1}
		p_read6 {Type I LastRead 4 FirstWrite -1}
		p_read7 {Type I LastRead 4 FirstWrite -1}
		p_read8 {Type I LastRead 4 FirstWrite -1}
		p_read9 {Type I LastRead 4 FirstWrite -1}
		p_read10 {Type I LastRead 4 FirstWrite -1}
		p_read11 {Type I LastRead 4 FirstWrite -1}
		p_read12 {Type I LastRead 4 FirstWrite -1}
		p_read13 {Type I LastRead 4 FirstWrite -1}
		p_read14 {Type I LastRead 4 FirstWrite -1}
		p_read15 {Type I LastRead 4 FirstWrite -1}
		p_read16 {Type I LastRead 4 FirstWrite -1}
		p_read17 {Type I LastRead 4 FirstWrite -1}
		p_read18 {Type I LastRead 4 FirstWrite -1}
		p_read19 {Type I LastRead 4 FirstWrite -1}
		p_read20 {Type I LastRead 4 FirstWrite -1}
		p_read21 {Type I LastRead 4 FirstWrite -1}
		p_read22 {Type I LastRead 4 FirstWrite -1}
		p_read23 {Type I LastRead 4 FirstWrite -1}
		p_read24 {Type I LastRead 4 FirstWrite -1}
		p_read25 {Type I LastRead 4 FirstWrite -1}
		p_read26 {Type I LastRead 4 FirstWrite -1}
		p_read27 {Type I LastRead 4 FirstWrite -1}
		p_read28 {Type I LastRead 4 FirstWrite -1}
		p_read29 {Type I LastRead 4 FirstWrite -1}
		p_read30 {Type I LastRead 4 FirstWrite -1}
		p_read31 {Type I LastRead 4 FirstWrite -1}
		p_read32 {Type I LastRead 4 FirstWrite -1}
		p_read33 {Type I LastRead 4 FirstWrite -1}
		p_read34 {Type I LastRead 4 FirstWrite -1}
		p_read35 {Type I LastRead 4 FirstWrite -1}
		p_read36 {Type I LastRead 4 FirstWrite -1}
		p_read37 {Type I LastRead 4 FirstWrite -1}
		p_read38 {Type I LastRead 4 FirstWrite -1}
		p_read39 {Type I LastRead 4 FirstWrite -1}
		p_read40 {Type I LastRead 4 FirstWrite -1}
		p_read41 {Type I LastRead 4 FirstWrite -1}
		p_read42 {Type I LastRead 4 FirstWrite -1}
		p_read43 {Type I LastRead 4 FirstWrite -1}
		p_read44 {Type I LastRead 4 FirstWrite -1}
		p_read45 {Type I LastRead 4 FirstWrite -1}
		p_read46 {Type I LastRead 4 FirstWrite -1}
		p_read47 {Type I LastRead 4 FirstWrite -1}}
	dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1 {
		data_V {Type I LastRead 8 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 9}}
	init_invert_table_ap_fixed_sa_softmax_config0_s {
		table_out_V {Type O LastRead -1 FirstWrite 14}}
	init_exp_table_ap_fixed_16_6_5_3_0_sa_softmax_config0_s {
		table_out_V {Type O LastRead -1 FirstWrite 13}}
	p_fill_n_a_ap_fixed_unsigned_long_double_s {}
	transpose_2d_ap_fixed_sa_transpose_config0_s {
		data_V {Type I LastRead 8 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		data_t_V {Type O LastRead -1 FirstWrite 1}}
	matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s {
		a_V {Type I LastRead 3 FirstWrite -1}
		a_V_offset {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type IO LastRead 4 FirstWrite 5}}
	matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s {
		a_V {Type I LastRead 3 FirstWrite -1}
		a_V_offset {Type I LastRead 0 FirstWrite -1}
		b_V {Type I LastRead 3 FirstWrite -1}
		res_V {Type IO LastRead 4 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1837161", "Max" : "1837161"}
	, {"Name" : "Interval", "Min" : "1837161", "Max" : "1837161"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_V { ap_memory {  { data_V_address0 mem_address 1 5 }  { data_V_ce0 mem_ce 1 1 }  { data_V_q0 mem_dout 0 35 } } }
	res_V { ap_memory {  { res_V_address0 mem_address 1 5 }  { res_V_ce0 mem_ce 1 1 }  { res_V_we0 mem_we 1 1 }  { res_V_d0 mem_din 1 35 } } }
}
set moduleName self_attention
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {self_attention}
set C_modelType { int 1120 }
set C_modelArgList {
	{ data_1_V_read int 35 regular  }
	{ data_3_V_read int 35 regular  }
	{ data_5_V_read int 35 regular  }
	{ data_7_V_read int 35 regular  }
	{ data_9_V_read int 35 regular  }
	{ data_11_V_read int 35 regular  }
	{ data_13_V_read int 35 regular  }
	{ data_15_V_read int 35 regular  }
	{ data_17_V_read int 35 regular  }
	{ data_19_V_read int 35 regular  }
	{ data_21_V_read int 35 regular  }
	{ data_23_V_read int 35 regular  }
	{ data_25_V_read int 35 regular  }
	{ data_27_V_read int 35 regular  }
	{ data_29_V_read int 35 regular  }
	{ data_31_V_read int 35 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_1_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_3_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_5_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_7_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_9_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_11_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_13_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_15_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_17_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_19_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_21_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_23_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_25_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_27_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_29_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "data_31_V_read", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1120} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_1_V_read sc_in sc_lv 35 signal 0 } 
	{ data_3_V_read sc_in sc_lv 35 signal 1 } 
	{ data_5_V_read sc_in sc_lv 35 signal 2 } 
	{ data_7_V_read sc_in sc_lv 35 signal 3 } 
	{ data_9_V_read sc_in sc_lv 35 signal 4 } 
	{ data_11_V_read sc_in sc_lv 35 signal 5 } 
	{ data_13_V_read sc_in sc_lv 35 signal 6 } 
	{ data_15_V_read sc_in sc_lv 35 signal 7 } 
	{ data_17_V_read sc_in sc_lv 35 signal 8 } 
	{ data_19_V_read sc_in sc_lv 35 signal 9 } 
	{ data_21_V_read sc_in sc_lv 35 signal 10 } 
	{ data_23_V_read sc_in sc_lv 35 signal 11 } 
	{ data_25_V_read sc_in sc_lv 35 signal 12 } 
	{ data_27_V_read sc_in sc_lv 35 signal 13 } 
	{ data_29_V_read sc_in sc_lv 35 signal 14 } 
	{ data_31_V_read sc_in sc_lv 35 signal 15 } 
	{ ap_return_0 sc_out sc_lv 35 signal -1 } 
	{ ap_return_1 sc_out sc_lv 35 signal -1 } 
	{ ap_return_2 sc_out sc_lv 35 signal -1 } 
	{ ap_return_3 sc_out sc_lv 35 signal -1 } 
	{ ap_return_4 sc_out sc_lv 35 signal -1 } 
	{ ap_return_5 sc_out sc_lv 35 signal -1 } 
	{ ap_return_6 sc_out sc_lv 35 signal -1 } 
	{ ap_return_7 sc_out sc_lv 35 signal -1 } 
	{ ap_return_8 sc_out sc_lv 35 signal -1 } 
	{ ap_return_9 sc_out sc_lv 35 signal -1 } 
	{ ap_return_10 sc_out sc_lv 35 signal -1 } 
	{ ap_return_11 sc_out sc_lv 35 signal -1 } 
	{ ap_return_12 sc_out sc_lv 35 signal -1 } 
	{ ap_return_13 sc_out sc_lv 35 signal -1 } 
	{ ap_return_14 sc_out sc_lv 35 signal -1 } 
	{ ap_return_15 sc_out sc_lv 35 signal -1 } 
	{ ap_return_16 sc_out sc_lv 35 signal -1 } 
	{ ap_return_17 sc_out sc_lv 35 signal -1 } 
	{ ap_return_18 sc_out sc_lv 35 signal -1 } 
	{ ap_return_19 sc_out sc_lv 35 signal -1 } 
	{ ap_return_20 sc_out sc_lv 35 signal -1 } 
	{ ap_return_21 sc_out sc_lv 35 signal -1 } 
	{ ap_return_22 sc_out sc_lv 35 signal -1 } 
	{ ap_return_23 sc_out sc_lv 35 signal -1 } 
	{ ap_return_24 sc_out sc_lv 35 signal -1 } 
	{ ap_return_25 sc_out sc_lv 35 signal -1 } 
	{ ap_return_26 sc_out sc_lv 35 signal -1 } 
	{ ap_return_27 sc_out sc_lv 35 signal -1 } 
	{ ap_return_28 sc_out sc_lv 35 signal -1 } 
	{ ap_return_29 sc_out sc_lv 35 signal -1 } 
	{ ap_return_30 sc_out sc_lv 35 signal -1 } 
	{ ap_return_31 sc_out sc_lv 35 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_1_V_read", "role": "default" }} , 
 	{ "name": "data_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_3_V_read", "role": "default" }} , 
 	{ "name": "data_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_5_V_read", "role": "default" }} , 
 	{ "name": "data_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_7_V_read", "role": "default" }} , 
 	{ "name": "data_9_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_9_V_read", "role": "default" }} , 
 	{ "name": "data_11_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_11_V_read", "role": "default" }} , 
 	{ "name": "data_13_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_13_V_read", "role": "default" }} , 
 	{ "name": "data_15_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_15_V_read", "role": "default" }} , 
 	{ "name": "data_17_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_17_V_read", "role": "default" }} , 
 	{ "name": "data_19_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_19_V_read", "role": "default" }} , 
 	{ "name": "data_21_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_21_V_read", "role": "default" }} , 
 	{ "name": "data_23_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_23_V_read", "role": "default" }} , 
 	{ "name": "data_25_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_25_V_read", "role": "default" }} , 
 	{ "name": "data_27_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_27_V_read", "role": "default" }} , 
 	{ "name": "data_29_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_29_V_read", "role": "default" }} , 
 	{ "name": "data_31_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "data_31_V_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "self_attention",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "174", "EstimateLatencyMax" : "174",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_fill_n_a_ap_fixed_unsigned_long_double_s_fu_2001"}],
		"Port" : [
			{"Name" : "data_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_17_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_19_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_21_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_23_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_25_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_27_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_29_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_31_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "exp_table13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s_fu_2286", "Port" : "exp_table13"}]},
			{"Name" : "invert_table15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s_fu_2286", "Port" : "invert_table15"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.qkv_out_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.energy_scaled_red_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.attention_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_1323", "Parent" : "0",
		"CDFG" : "dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read66", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read68", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read69", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read70", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read71", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read72", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read73", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read74", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read75", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read76", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read77", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read78", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read79", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read80", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read81", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read82", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read83", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read84", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read85", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read86", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read87", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read88", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read89", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read90", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read91", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read92", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read93", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read94", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read95", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read96", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read97", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read98", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read99", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read100", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read101", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read102", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read103", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read104", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read105", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read106", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read107", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read108", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read109", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read110", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read111", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read112", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read113", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read114", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read115", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read116", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read117", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read118", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read119", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read120", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read121", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read122", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read123", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read124", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read125", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read126", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read127", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read318", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read319", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read320", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read321", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read322", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read323", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read324", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read325", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read326", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read327", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read328", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read329", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read330", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read331", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read332", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read333", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read334", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read335", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read336", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read337", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read338", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read339", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read340", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read341", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read342", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read343", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read344", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read345", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read346", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read347", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read348", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read349", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read350", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read351", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read352", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read353", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read354", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read355", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read356", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read357", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read358", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read359", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read360", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read361", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read362", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read363", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read364", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read365", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_1605", "Parent" : "0",
		"CDFG" : "dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s_fu_1711", "Parent" : "0",
		"CDFG" : "matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_0_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_0_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_4_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_4_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_5_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_5_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_6_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_6_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_7_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_7_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_8_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_8_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_9_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_9_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_10_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_10_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_11_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_11_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_12_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_12_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_13_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_13_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_14_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_14_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_15_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_15_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_0_0_V_read_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_0_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_0_1_V_read_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_0_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_1_0_V_read_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_1_1_V_read_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_2_0_V_read_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_2_1_V_read_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_3_0_V_read_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_3_1_V_read_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_4_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_4_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_4_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_4_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_5_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_5_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_5_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_5_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_6_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_6_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_6_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_6_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_7_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_7_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_7_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_7_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_8_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_8_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_8_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_8_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_9_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_9_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_9_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_9_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_10_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_10_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_10_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_10_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_11_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_11_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_11_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_11_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_12_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_12_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_12_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_12_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_13_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_13_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_13_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_13_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_14_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_14_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_14_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_14_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_15_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_15_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_15_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_15_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s_fu_1892", "Parent" : "0",
		"CDFG" : "matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_0_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_0_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_4_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_4_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_5_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_5_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_6_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_6_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_7_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_7_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_8_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_8_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_9_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_9_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_10_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_10_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_11_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_11_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_12_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_12_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_13_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_13_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_14_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_14_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_15_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_15_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_4_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_4_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_5_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_5_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_6_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_6_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_7_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_7_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_8_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_8_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_9_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_9_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_10_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_10_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_11_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_11_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_12_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_12_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_13_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_13_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_14_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_14_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_15_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_15_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_0_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_0_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_0_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_0_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_1_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_1_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_2_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_2_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_3_0_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_3_1_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_fill_n_a_ap_fixed_unsigned_long_double_s_fu_2001", "Parent" : "0",
		"CDFG" : "p_fill_n_a_ap_fixed_unsigned_long_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : []},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret2_transpose_2d_ap_fixed_sa_transpose_config0_s_fu_2005", "Parent" : "0",
		"CDFG" : "transpose_2d_ap_fixed_sa_transpose_config0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_0_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_12_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_12_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_0_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_0_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_4_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_4_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_5_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_5_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_6_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_6_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_7_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_7_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_8_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_8_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_9_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_9_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_10_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_10_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_11_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_11_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_12_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_12_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_13_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_13_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_14_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_14_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_15_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_15_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret_transpose_2d_ap_fixed_sa_transpose_config0_s_fu_2111", "Parent" : "0",
		"CDFG" : "transpose_2d_ap_fixed_sa_transpose_config0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_0_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_12_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_12_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_0_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_0_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_4_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_4_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_5_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_5_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_6_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_6_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_7_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_7_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_8_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_8_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_9_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_9_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_10_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_10_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_11_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_11_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_12_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_12_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_13_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_13_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_14_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_14_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_15_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_15_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_t_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_join_equally_ap_fixed_35_15_5_3_0_2ul_48ul_s_fu_2185", "Parent" : "0",
		"CDFG" : "join_equally_ap_fixed_35_15_5_3_0_2ul_48ul_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "48",
		"VariableLatency" : "0", "ExactLatency" : "47", "EstimateLatencyMin" : "47", "EstimateLatencyMax" : "47",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_0_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_12_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_12_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_16_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_16_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_17_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_17_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_18_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_18_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_19_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_19_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_20_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_20_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_21_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_21_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_22_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_22_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_23_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_23_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_24_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_24_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_25_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_25_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_26_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_26_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_27_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_27_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_28_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_28_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_29_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_29_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_30_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_30_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_31_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_31_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_32_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_32_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_33_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_33_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_34_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_34_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_35_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_35_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_36_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_36_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_37_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_37_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_38_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_38_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_39_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_39_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_40_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_40_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_41_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_41_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_42_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_42_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_43_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_43_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_44_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_44_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_45_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_45_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_46_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_46_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_47_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_47_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s_fu_2286", "Parent" : "0", "Child" : ["13", "14", "15", "16"],
		"CDFG" : "softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_V_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "res_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_V_offset3", "Type" : "None", "Direction" : "I"},
			{"Name" : "exp_table13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "invert_table15", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s_fu_2286.exp_table13_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s_fu_2286.invert_table15_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s_fu_2286.myproject_mul_mul_16s_16s_32_1_1_U410", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s_fu_2286.myproject_mul_mul_16s_16s_32_1_1_U411", "Parent" : "12"}]}


set ArgLastReadFirstWriteLatency {
	self_attention {
		data_1_V_read {Type I LastRead 1 FirstWrite -1}
		data_3_V_read {Type I LastRead 1 FirstWrite -1}
		data_5_V_read {Type I LastRead 1 FirstWrite -1}
		data_7_V_read {Type I LastRead 1 FirstWrite -1}
		data_9_V_read {Type I LastRead 1 FirstWrite -1}
		data_11_V_read {Type I LastRead 1 FirstWrite -1}
		data_13_V_read {Type I LastRead 1 FirstWrite -1}
		data_15_V_read {Type I LastRead 1 FirstWrite -1}
		data_17_V_read {Type I LastRead 1 FirstWrite -1}
		data_19_V_read {Type I LastRead 1 FirstWrite -1}
		data_21_V_read {Type I LastRead 1 FirstWrite -1}
		data_23_V_read {Type I LastRead 1 FirstWrite -1}
		data_25_V_read {Type I LastRead 1 FirstWrite -1}
		data_27_V_read {Type I LastRead 1 FirstWrite -1}
		data_29_V_read {Type I LastRead 1 FirstWrite -1}
		data_31_V_read {Type I LastRead 1 FirstWrite -1}
		exp_table13 {Type I LastRead -1 FirstWrite -1}
		invert_table15 {Type I LastRead -1 FirstWrite -1}}
	dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1 {
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		p_read64 {Type I LastRead 0 FirstWrite -1}
		p_read65 {Type I LastRead 0 FirstWrite -1}
		p_read66 {Type I LastRead 0 FirstWrite -1}
		p_read67 {Type I LastRead 0 FirstWrite -1}
		p_read68 {Type I LastRead 0 FirstWrite -1}
		p_read69 {Type I LastRead 0 FirstWrite -1}
		p_read70 {Type I LastRead 0 FirstWrite -1}
		p_read71 {Type I LastRead 0 FirstWrite -1}
		p_read72 {Type I LastRead 0 FirstWrite -1}
		p_read73 {Type I LastRead 0 FirstWrite -1}
		p_read74 {Type I LastRead 0 FirstWrite -1}
		p_read75 {Type I LastRead 0 FirstWrite -1}
		p_read76 {Type I LastRead 0 FirstWrite -1}
		p_read77 {Type I LastRead 0 FirstWrite -1}
		p_read78 {Type I LastRead 0 FirstWrite -1}
		p_read79 {Type I LastRead 0 FirstWrite -1}
		p_read80 {Type I LastRead 0 FirstWrite -1}
		p_read81 {Type I LastRead 0 FirstWrite -1}
		p_read82 {Type I LastRead 0 FirstWrite -1}
		p_read83 {Type I LastRead 0 FirstWrite -1}
		p_read84 {Type I LastRead 0 FirstWrite -1}
		p_read85 {Type I LastRead 0 FirstWrite -1}
		p_read86 {Type I LastRead 0 FirstWrite -1}
		p_read87 {Type I LastRead 0 FirstWrite -1}
		p_read88 {Type I LastRead 0 FirstWrite -1}
		p_read89 {Type I LastRead 0 FirstWrite -1}
		p_read90 {Type I LastRead 0 FirstWrite -1}
		p_read91 {Type I LastRead 0 FirstWrite -1}
		p_read92 {Type I LastRead 0 FirstWrite -1}
		p_read93 {Type I LastRead 0 FirstWrite -1}
		p_read94 {Type I LastRead 0 FirstWrite -1}
		p_read95 {Type I LastRead 0 FirstWrite -1}
		p_read96 {Type I LastRead 0 FirstWrite -1}
		p_read97 {Type I LastRead 0 FirstWrite -1}
		p_read98 {Type I LastRead 0 FirstWrite -1}
		p_read99 {Type I LastRead 0 FirstWrite -1}
		p_read100 {Type I LastRead 0 FirstWrite -1}
		p_read101 {Type I LastRead 0 FirstWrite -1}
		p_read102 {Type I LastRead 0 FirstWrite -1}
		p_read103 {Type I LastRead 0 FirstWrite -1}
		p_read104 {Type I LastRead 0 FirstWrite -1}
		p_read105 {Type I LastRead 0 FirstWrite -1}
		p_read106 {Type I LastRead 0 FirstWrite -1}
		p_read107 {Type I LastRead 0 FirstWrite -1}
		p_read108 {Type I LastRead 0 FirstWrite -1}
		p_read109 {Type I LastRead 0 FirstWrite -1}
		p_read110 {Type I LastRead 0 FirstWrite -1}
		p_read111 {Type I LastRead 0 FirstWrite -1}
		p_read112 {Type I LastRead 0 FirstWrite -1}
		p_read113 {Type I LastRead 0 FirstWrite -1}
		p_read114 {Type I LastRead 0 FirstWrite -1}
		p_read115 {Type I LastRead 0 FirstWrite -1}
		p_read116 {Type I LastRead 0 FirstWrite -1}
		p_read117 {Type I LastRead 0 FirstWrite -1}
		p_read118 {Type I LastRead 0 FirstWrite -1}
		p_read119 {Type I LastRead 0 FirstWrite -1}
		p_read120 {Type I LastRead 0 FirstWrite -1}
		p_read121 {Type I LastRead 0 FirstWrite -1}
		p_read122 {Type I LastRead 0 FirstWrite -1}
		p_read123 {Type I LastRead 0 FirstWrite -1}
		p_read124 {Type I LastRead 0 FirstWrite -1}
		p_read125 {Type I LastRead 0 FirstWrite -1}
		p_read126 {Type I LastRead 0 FirstWrite -1}
		p_read127 {Type I LastRead 0 FirstWrite -1}
		res_V_offset {Type I LastRead 0 FirstWrite -1}
		p_read318 {Type I LastRead 0 FirstWrite -1}
		p_read319 {Type I LastRead 0 FirstWrite -1}
		p_read320 {Type I LastRead 0 FirstWrite -1}
		p_read321 {Type I LastRead 0 FirstWrite -1}
		p_read322 {Type I LastRead 0 FirstWrite -1}
		p_read323 {Type I LastRead 0 FirstWrite -1}
		p_read324 {Type I LastRead 0 FirstWrite -1}
		p_read325 {Type I LastRead 0 FirstWrite -1}
		p_read326 {Type I LastRead 0 FirstWrite -1}
		p_read327 {Type I LastRead 0 FirstWrite -1}
		p_read328 {Type I LastRead 0 FirstWrite -1}
		p_read329 {Type I LastRead 0 FirstWrite -1}
		p_read330 {Type I LastRead 0 FirstWrite -1}
		p_read331 {Type I LastRead 0 FirstWrite -1}
		p_read332 {Type I LastRead 0 FirstWrite -1}
		p_read333 {Type I LastRead 0 FirstWrite -1}
		p_read334 {Type I LastRead 0 FirstWrite -1}
		p_read335 {Type I LastRead 0 FirstWrite -1}
		p_read336 {Type I LastRead 0 FirstWrite -1}
		p_read337 {Type I LastRead 0 FirstWrite -1}
		p_read338 {Type I LastRead 0 FirstWrite -1}
		p_read339 {Type I LastRead 0 FirstWrite -1}
		p_read340 {Type I LastRead 0 FirstWrite -1}
		p_read341 {Type I LastRead 0 FirstWrite -1}
		p_read342 {Type I LastRead 0 FirstWrite -1}
		p_read343 {Type I LastRead 0 FirstWrite -1}
		p_read344 {Type I LastRead 0 FirstWrite -1}
		p_read345 {Type I LastRead 0 FirstWrite -1}
		p_read346 {Type I LastRead 0 FirstWrite -1}
		p_read347 {Type I LastRead 0 FirstWrite -1}
		p_read348 {Type I LastRead 0 FirstWrite -1}
		p_read349 {Type I LastRead 0 FirstWrite -1}
		p_read350 {Type I LastRead 0 FirstWrite -1}
		p_read351 {Type I LastRead 0 FirstWrite -1}
		p_read352 {Type I LastRead 0 FirstWrite -1}
		p_read353 {Type I LastRead 0 FirstWrite -1}
		p_read354 {Type I LastRead 0 FirstWrite -1}
		p_read355 {Type I LastRead 0 FirstWrite -1}
		p_read356 {Type I LastRead 0 FirstWrite -1}
		p_read357 {Type I LastRead 0 FirstWrite -1}
		p_read358 {Type I LastRead 0 FirstWrite -1}
		p_read359 {Type I LastRead 0 FirstWrite -1}
		p_read360 {Type I LastRead 0 FirstWrite -1}
		p_read361 {Type I LastRead 0 FirstWrite -1}
		p_read362 {Type I LastRead 0 FirstWrite -1}
		p_read363 {Type I LastRead 0 FirstWrite -1}
		p_read364 {Type I LastRead 0 FirstWrite -1}
		p_read365 {Type I LastRead 0 FirstWrite -1}}
	dense_latency_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		res_V_offset {Type I LastRead 0 FirstWrite -1}}
	matmul_ap_fixed_ap_fixed_2ul_2ul_2ul_8ul_s {
		a_0_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_0_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_1_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_1_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_2_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_2_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_3_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_3_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_V_offset {Type I LastRead 0 FirstWrite -1}
		b_0_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_0_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_1_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_1_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_2_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_2_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_3_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_3_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_4_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_4_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_5_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_5_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_6_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_6_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_7_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_7_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_8_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_8_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_9_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_9_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_10_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_10_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_11_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_11_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_12_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_12_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_13_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_13_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_14_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_14_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_15_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_15_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_V_offset {Type I LastRead 0 FirstWrite -1}
		res_0_0_V_read_4 {Type I LastRead 0 FirstWrite -1}
		res_0_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_0_1_V_read_4 {Type I LastRead 0 FirstWrite -1}
		res_0_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_1_0_V_read_4 {Type I LastRead 0 FirstWrite -1}
		res_1_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_1_1_V_read_4 {Type I LastRead 0 FirstWrite -1}
		res_1_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_2_0_V_read_4 {Type I LastRead 0 FirstWrite -1}
		res_2_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_2_1_V_read_4 {Type I LastRead 0 FirstWrite -1}
		res_2_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_3_0_V_read_4 {Type I LastRead 0 FirstWrite -1}
		res_3_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_3_1_V_read_4 {Type I LastRead 0 FirstWrite -1}
		res_3_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_4_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_4_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_4_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_4_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_5_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_5_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_5_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_5_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_6_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_6_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_6_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_6_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_7_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_7_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_7_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_7_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_8_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_8_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_8_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_8_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_9_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_9_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_9_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_9_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_10_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_10_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_10_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_10_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_11_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_11_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_11_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_11_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_12_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_12_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_12_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_12_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_13_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_13_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_13_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_13_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_14_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_14_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_14_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_14_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_15_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_15_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_15_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_15_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_V_offset {Type I LastRead 0 FirstWrite -1}}
	matmul_ap_fixed_ap_fixed_2ul_8ul_8ul_2ul_s {
		a_0_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_0_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_1_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_1_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_2_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_2_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_3_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_3_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_4_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_4_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_5_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_5_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_6_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_6_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_7_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_7_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_8_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_8_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_9_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_9_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_10_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_10_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_11_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_11_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_12_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_12_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_13_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_13_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_14_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_14_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_15_0_V_read {Type I LastRead 0 FirstWrite -1}
		a_15_1_V_read {Type I LastRead 0 FirstWrite -1}
		a_V_offset {Type I LastRead 0 FirstWrite -1}
		b_0_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_0_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_1_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_1_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_2_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_2_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_3_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_3_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_4_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_4_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_5_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_5_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_6_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_6_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_7_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_7_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_8_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_8_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_9_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_9_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_10_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_10_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_11_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_11_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_12_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_12_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_13_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_13_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_14_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_14_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_15_0_V_read {Type I LastRead 0 FirstWrite -1}
		b_15_1_V_read {Type I LastRead 0 FirstWrite -1}
		b_V_offset {Type I LastRead 0 FirstWrite -1}
		res_0_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_0_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_0_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_0_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_1_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_1_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_1_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_1_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_2_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_2_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_2_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_2_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_3_0_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_3_0_V_read {Type I LastRead 0 FirstWrite -1}
		res_3_1_V_read_2 {Type I LastRead 0 FirstWrite -1}
		res_3_1_V_read {Type I LastRead 0 FirstWrite -1}
		res_V_offset {Type I LastRead 0 FirstWrite -1}}
	p_fill_n_a_ap_fixed_unsigned_long_double_s {}
	transpose_2d_ap_fixed_sa_transpose_config0_s {
		data_0_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_0_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_1_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_1_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_2_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_2_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_3_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_3_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_4_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_4_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_5_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_5_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_6_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_6_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_7_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_7_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_8_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_8_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_9_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_9_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_10_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_10_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_11_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_11_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_12_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_12_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_13_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_13_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_14_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_14_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_15_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_15_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		data_t_0_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_0_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_1_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_1_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_2_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_2_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_3_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_3_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_4_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_4_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_5_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_5_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_6_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_6_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_7_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_7_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_8_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_8_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_9_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_9_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_10_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_10_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_11_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_11_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_12_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_12_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_13_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_13_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_14_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_14_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_15_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_15_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_V_offset {Type I LastRead 0 FirstWrite -1}}
	transpose_2d_ap_fixed_sa_transpose_config0_s {
		data_0_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_0_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_1_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_1_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_2_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_2_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_3_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_3_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_4_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_4_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_5_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_5_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_6_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_6_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_7_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_7_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_8_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_8_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_9_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_9_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_10_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_10_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_11_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_11_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_12_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_12_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_13_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_13_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_14_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_14_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_15_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_15_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		data_t_0_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_0_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_1_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_1_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_2_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_2_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_3_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_3_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_4_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_4_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_5_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_5_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_6_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_6_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_7_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_7_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_8_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_8_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_9_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_9_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_10_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_10_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_11_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_11_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_12_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_12_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_13_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_13_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_14_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_14_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_15_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_15_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_t_V_offset {Type I LastRead 0 FirstWrite -1}}
	join_equally_ap_fixed_35_15_5_3_0_2ul_48ul_s {
		data_0_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_0_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_1_0_V_read {Type I LastRead 1 FirstWrite -1}
		data_1_1_V_read {Type I LastRead 1 FirstWrite -1}
		data_2_0_V_read {Type I LastRead 2 FirstWrite -1}
		data_2_1_V_read {Type I LastRead 2 FirstWrite -1}
		data_3_0_V_read {Type I LastRead 3 FirstWrite -1}
		data_3_1_V_read {Type I LastRead 3 FirstWrite -1}
		data_4_0_V_read {Type I LastRead 4 FirstWrite -1}
		data_4_1_V_read {Type I LastRead 4 FirstWrite -1}
		data_5_0_V_read {Type I LastRead 5 FirstWrite -1}
		data_5_1_V_read {Type I LastRead 5 FirstWrite -1}
		data_6_0_V_read {Type I LastRead 6 FirstWrite -1}
		data_6_1_V_read {Type I LastRead 6 FirstWrite -1}
		data_7_0_V_read {Type I LastRead 7 FirstWrite -1}
		data_7_1_V_read {Type I LastRead 7 FirstWrite -1}
		data_8_0_V_read {Type I LastRead 8 FirstWrite -1}
		data_8_1_V_read {Type I LastRead 8 FirstWrite -1}
		data_9_0_V_read {Type I LastRead 9 FirstWrite -1}
		data_9_1_V_read {Type I LastRead 9 FirstWrite -1}
		data_10_0_V_read {Type I LastRead 10 FirstWrite -1}
		data_10_1_V_read {Type I LastRead 10 FirstWrite -1}
		data_11_0_V_read {Type I LastRead 11 FirstWrite -1}
		data_11_1_V_read {Type I LastRead 11 FirstWrite -1}
		data_12_0_V_read {Type I LastRead 12 FirstWrite -1}
		data_12_1_V_read {Type I LastRead 12 FirstWrite -1}
		data_13_0_V_read {Type I LastRead 13 FirstWrite -1}
		data_13_1_V_read {Type I LastRead 13 FirstWrite -1}
		data_14_0_V_read {Type I LastRead 14 FirstWrite -1}
		data_14_1_V_read {Type I LastRead 14 FirstWrite -1}
		data_15_0_V_read {Type I LastRead 15 FirstWrite -1}
		data_15_1_V_read {Type I LastRead 15 FirstWrite -1}
		data_16_0_V_read {Type I LastRead 16 FirstWrite -1}
		data_16_1_V_read {Type I LastRead 16 FirstWrite -1}
		data_17_0_V_read {Type I LastRead 17 FirstWrite -1}
		data_17_1_V_read {Type I LastRead 17 FirstWrite -1}
		data_18_0_V_read {Type I LastRead 18 FirstWrite -1}
		data_18_1_V_read {Type I LastRead 18 FirstWrite -1}
		data_19_0_V_read {Type I LastRead 19 FirstWrite -1}
		data_19_1_V_read {Type I LastRead 19 FirstWrite -1}
		data_20_0_V_read {Type I LastRead 20 FirstWrite -1}
		data_20_1_V_read {Type I LastRead 20 FirstWrite -1}
		data_21_0_V_read {Type I LastRead 21 FirstWrite -1}
		data_21_1_V_read {Type I LastRead 21 FirstWrite -1}
		data_22_0_V_read {Type I LastRead 22 FirstWrite -1}
		data_22_1_V_read {Type I LastRead 22 FirstWrite -1}
		data_23_0_V_read {Type I LastRead 23 FirstWrite -1}
		data_23_1_V_read {Type I LastRead 23 FirstWrite -1}
		data_24_0_V_read {Type I LastRead 24 FirstWrite -1}
		data_24_1_V_read {Type I LastRead 24 FirstWrite -1}
		data_25_0_V_read {Type I LastRead 25 FirstWrite -1}
		data_25_1_V_read {Type I LastRead 25 FirstWrite -1}
		data_26_0_V_read {Type I LastRead 26 FirstWrite -1}
		data_26_1_V_read {Type I LastRead 26 FirstWrite -1}
		data_27_0_V_read {Type I LastRead 27 FirstWrite -1}
		data_27_1_V_read {Type I LastRead 27 FirstWrite -1}
		data_28_0_V_read {Type I LastRead 28 FirstWrite -1}
		data_28_1_V_read {Type I LastRead 28 FirstWrite -1}
		data_29_0_V_read {Type I LastRead 29 FirstWrite -1}
		data_29_1_V_read {Type I LastRead 29 FirstWrite -1}
		data_30_0_V_read {Type I LastRead 30 FirstWrite -1}
		data_30_1_V_read {Type I LastRead 30 FirstWrite -1}
		data_31_0_V_read {Type I LastRead 31 FirstWrite -1}
		data_31_1_V_read {Type I LastRead 31 FirstWrite -1}
		data_32_0_V_read {Type I LastRead 32 FirstWrite -1}
		data_32_1_V_read {Type I LastRead 32 FirstWrite -1}
		data_33_0_V_read {Type I LastRead 33 FirstWrite -1}
		data_33_1_V_read {Type I LastRead 33 FirstWrite -1}
		data_34_0_V_read {Type I LastRead 34 FirstWrite -1}
		data_34_1_V_read {Type I LastRead 34 FirstWrite -1}
		data_35_0_V_read {Type I LastRead 35 FirstWrite -1}
		data_35_1_V_read {Type I LastRead 35 FirstWrite -1}
		data_36_0_V_read {Type I LastRead 36 FirstWrite -1}
		data_36_1_V_read {Type I LastRead 36 FirstWrite -1}
		data_37_0_V_read {Type I LastRead 37 FirstWrite -1}
		data_37_1_V_read {Type I LastRead 37 FirstWrite -1}
		data_38_0_V_read {Type I LastRead 38 FirstWrite -1}
		data_38_1_V_read {Type I LastRead 38 FirstWrite -1}
		data_39_0_V_read {Type I LastRead 39 FirstWrite -1}
		data_39_1_V_read {Type I LastRead 39 FirstWrite -1}
		data_40_0_V_read {Type I LastRead 40 FirstWrite -1}
		data_40_1_V_read {Type I LastRead 40 FirstWrite -1}
		data_41_0_V_read {Type I LastRead 41 FirstWrite -1}
		data_41_1_V_read {Type I LastRead 41 FirstWrite -1}
		data_42_0_V_read {Type I LastRead 42 FirstWrite -1}
		data_42_1_V_read {Type I LastRead 42 FirstWrite -1}
		data_43_0_V_read {Type I LastRead 43 FirstWrite -1}
		data_43_1_V_read {Type I LastRead 43 FirstWrite -1}
		data_44_0_V_read {Type I LastRead 44 FirstWrite -1}
		data_44_1_V_read {Type I LastRead 44 FirstWrite -1}
		data_45_0_V_read {Type I LastRead 45 FirstWrite -1}
		data_45_1_V_read {Type I LastRead 45 FirstWrite -1}
		data_46_0_V_read {Type I LastRead 46 FirstWrite -1}
		data_46_1_V_read {Type I LastRead 46 FirstWrite -1}
		data_47_0_V_read {Type I LastRead 47 FirstWrite -1}
		data_47_1_V_read {Type I LastRead 47 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 0}}
	softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s {
		data_V {Type I LastRead 1 FirstWrite -1}
		data_V_offset {Type I LastRead 0 FirstWrite -1}
		data_V_offset1 {Type I LastRead 0 FirstWrite -1}
		res_V {Type O LastRead -1 FirstWrite 3}
		res_V_offset {Type I LastRead 0 FirstWrite -1}
		res_V_offset3 {Type I LastRead 0 FirstWrite -1}
		exp_table13 {Type I LastRead -1 FirstWrite -1}
		invert_table15 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "174", "Max" : "174"}
	, {"Name" : "Interval", "Min" : "174", "Max" : "174"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_1_V_read { ap_none {  { data_1_V_read in_data 0 35 } } }
	data_3_V_read { ap_none {  { data_3_V_read in_data 0 35 } } }
	data_5_V_read { ap_none {  { data_5_V_read in_data 0 35 } } }
	data_7_V_read { ap_none {  { data_7_V_read in_data 0 35 } } }
	data_9_V_read { ap_none {  { data_9_V_read in_data 0 35 } } }
	data_11_V_read { ap_none {  { data_11_V_read in_data 0 35 } } }
	data_13_V_read { ap_none {  { data_13_V_read in_data 0 35 } } }
	data_15_V_read { ap_none {  { data_15_V_read in_data 0 35 } } }
	data_17_V_read { ap_none {  { data_17_V_read in_data 0 35 } } }
	data_19_V_read { ap_none {  { data_19_V_read in_data 0 35 } } }
	data_21_V_read { ap_none {  { data_21_V_read in_data 0 35 } } }
	data_23_V_read { ap_none {  { data_23_V_read in_data 0 35 } } }
	data_25_V_read { ap_none {  { data_25_V_read in_data 0 35 } } }
	data_27_V_read { ap_none {  { data_27_V_read in_data 0 35 } } }
	data_29_V_read { ap_none {  { data_29_V_read in_data 0 35 } } }
	data_31_V_read { ap_none {  { data_31_V_read in_data 0 35 } } }
}