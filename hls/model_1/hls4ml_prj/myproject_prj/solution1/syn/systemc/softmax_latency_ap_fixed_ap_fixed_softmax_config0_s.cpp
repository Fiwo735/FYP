// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "softmax_latency_ap_fixed_ap_fixed_softmax_config0_s.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::ap_ST_fsm_pp0_stage0 = "1";
const bool softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::ap_const_boolean_1 = true;
const sc_lv<32> softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::ap_const_boolean_0 = false;
const sc_lv<32> softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::ap_const_lv32_4 = "100";
const sc_lv<32> softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::ap_const_lv32_F = "1111";
const sc_lv<32> softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::ap_const_lv32_A = "1010";
const sc_lv<32> softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::ap_const_lv32_19 = "11001";

softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::softmax_latency_ap_fixed_ap_fixed_softmax_config0_s(sc_module_name name) : sc_module(name), mVcdFile(0) {
    exp_table3_U = new softmax_latency_ap_fixed_ap_fixed_softmax_config0_s_exp_tdEe("exp_table3_U");
    exp_table3_U->clk(ap_clk);
    exp_table3_U->reset(ap_rst);
    exp_table3_U->address0(exp_table3_address0);
    exp_table3_U->ce0(exp_table3_ce0);
    exp_table3_U->q0(exp_table3_q0);
    exp_table3_U->address1(exp_table3_address1);
    exp_table3_U->ce1(exp_table3_ce1);
    exp_table3_U->q1(exp_table3_q1);
    exp_table3_U->address2(exp_table3_address2);
    exp_table3_U->ce2(exp_table3_ce2);
    exp_table3_U->q2(exp_table3_q2);
    exp_table3_U->address3(exp_table3_address3);
    exp_table3_U->ce3(exp_table3_ce3);
    exp_table3_U->q3(exp_table3_q3);
    exp_table3_U->address4(exp_table3_address4);
    exp_table3_U->ce4(exp_table3_ce4);
    exp_table3_U->q4(exp_table3_q4);
    invert_table4_U = new softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s_incud("invert_table4_U");
    invert_table4_U->clk(ap_clk);
    invert_table4_U->reset(ap_rst);
    invert_table4_U->address0(invert_table4_address0);
    invert_table4_U->ce0(invert_table4_ce0);
    invert_table4_U->q0(invert_table4_q0);
    myproject_mul_mul_16s_16s_26_1_1_U1028 = new myproject_mul_mul_16s_16s_26_1_1<1,1,16,16,26>("myproject_mul_mul_16s_16s_26_1_1_U1028");
    myproject_mul_mul_16s_16s_26_1_1_U1028->din0(mul_ln1118_fu_354_p0);
    myproject_mul_mul_16s_16s_26_1_1_U1028->din1(exp_res_0_V_reg_414);
    myproject_mul_mul_16s_16s_26_1_1_U1028->dout(mul_ln1118_fu_354_p2);
    myproject_mul_mul_16s_16s_26_1_1_U1029 = new myproject_mul_mul_16s_16s_26_1_1<1,1,16,16,26>("myproject_mul_mul_16s_16s_26_1_1_U1029");
    myproject_mul_mul_16s_16s_26_1_1_U1029->din0(mul_ln1118_1_fu_361_p0);
    myproject_mul_mul_16s_16s_26_1_1_U1029->din1(exp_res_1_V_reg_419);
    myproject_mul_mul_16s_16s_26_1_1_U1029->dout(mul_ln1118_1_fu_361_p2);
    myproject_mul_mul_16s_16s_26_1_1_U1030 = new myproject_mul_mul_16s_16s_26_1_1<1,1,16,16,26>("myproject_mul_mul_16s_16s_26_1_1_U1030");
    myproject_mul_mul_16s_16s_26_1_1_U1030->din0(mul_ln1118_2_fu_368_p0);
    myproject_mul_mul_16s_16s_26_1_1_U1030->din1(exp_res_2_V_reg_424);
    myproject_mul_mul_16s_16s_26_1_1_U1030->dout(mul_ln1118_2_fu_368_p2);
    myproject_mul_mul_16s_16s_26_1_1_U1031 = new myproject_mul_mul_16s_16s_26_1_1<1,1,16,16,26>("myproject_mul_mul_16s_16s_26_1_1_U1031");
    myproject_mul_mul_16s_16s_26_1_1_U1031->din0(mul_ln1118_3_fu_375_p0);
    myproject_mul_mul_16s_16s_26_1_1_U1031->din1(exp_res_3_V_reg_429);
    myproject_mul_mul_16s_16s_26_1_1_U1031->dout(mul_ln1118_3_fu_375_p2);
    myproject_mul_mul_16s_16s_26_1_1_U1032 = new myproject_mul_mul_16s_16s_26_1_1<1,1,16,16,26>("myproject_mul_mul_16s_16s_26_1_1_U1032");
    myproject_mul_mul_16s_16s_26_1_1_U1032->din0(mul_ln1118_4_fu_382_p0);
    myproject_mul_mul_16s_16s_26_1_1_U1032->din1(exp_res_4_V_reg_434);
    myproject_mul_mul_16s_16s_26_1_1_U1032->dout(mul_ln1118_4_fu_382_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln703_32_fu_227_p0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exp_table3_q2 );

    SC_METHOD(thread_add_ln703_32_fu_227_p1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exp_table3_q4 );

    SC_METHOD(thread_add_ln703_32_fu_227_p2);
    sensitive << ( add_ln703_32_fu_227_p0 );
    sensitive << ( add_ln703_32_fu_227_p1 );

    SC_METHOD(thread_add_ln703_33_fu_233_p1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exp_table3_q3 );

    SC_METHOD(thread_add_ln703_33_fu_233_p2);
    sensitive << ( add_ln703_32_fu_227_p2 );
    sensitive << ( add_ln703_33_fu_233_p1 );

    SC_METHOD(thread_add_ln703_fu_221_p0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exp_table3_q0 );

    SC_METHOD(thread_add_ln703_fu_221_p1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( exp_table3_q1 );

    SC_METHOD(thread_add_ln703_fu_221_p2);
    sensitive << ( add_ln703_fu_221_p0 );
    sensitive << ( add_ln703_fu_221_p1 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_block_state1_pp0_stage0_iter0);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter2);

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_enable_reg_pp0_iter0);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_ap_idle_pp0_0to1);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_ap_reset_idle_pp0);
    sensitive << ( ap_start );
    sensitive << ( ap_idle_pp0_0to1 );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( mul_ln1118_fu_354_p2 );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( mul_ln1118_1_fu_361_p2 );

    SC_METHOD(thread_ap_return_2);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( mul_ln1118_2_fu_368_p2 );

    SC_METHOD(thread_ap_return_3);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( mul_ln1118_3_fu_375_p2 );

    SC_METHOD(thread_ap_return_4);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( mul_ln1118_4_fu_382_p2 );

    SC_METHOD(thread_exp_sum_V_fu_239_p2);
    sensitive << ( add_ln703_33_fu_233_p2 );
    sensitive << ( add_ln703_fu_221_p2 );

    SC_METHOD(thread_exp_table3_address0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( zext_ln307_fu_156_p1 );

    SC_METHOD(thread_exp_table3_address1);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( zext_ln307_1_fu_171_p1 );

    SC_METHOD(thread_exp_table3_address2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( zext_ln307_2_fu_186_p1 );

    SC_METHOD(thread_exp_table3_address3);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( zext_ln307_3_fu_201_p1 );

    SC_METHOD(thread_exp_table3_address4);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( zext_ln307_4_fu_216_p1 );

    SC_METHOD(thread_exp_table3_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_exp_table3_ce1);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_exp_table3_ce2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_exp_table3_ce3);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_exp_table3_ce4);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_invert_table4_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( zext_ln319_fu_255_p1 );

    SC_METHOD(thread_invert_table4_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_mul_ln1118_1_fu_361_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( sext_ln1116_fu_260_p1 );

    SC_METHOD(thread_mul_ln1118_2_fu_368_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( sext_ln1116_fu_260_p1 );

    SC_METHOD(thread_mul_ln1118_3_fu_375_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( sext_ln1116_fu_260_p1 );

    SC_METHOD(thread_mul_ln1118_4_fu_382_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( sext_ln1116_fu_260_p1 );

    SC_METHOD(thread_mul_ln1118_fu_354_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( sext_ln1116_fu_260_p1 );

    SC_METHOD(thread_sext_ln1116_fu_260_p1);
    sensitive << ( invert_table4_q0 );

    SC_METHOD(thread_y_V_1_fu_161_p4);
    sensitive << ( data_1_V_read );

    SC_METHOD(thread_y_V_2_fu_176_p4);
    sensitive << ( data_2_V_read );

    SC_METHOD(thread_y_V_3_fu_191_p4);
    sensitive << ( data_3_V_read );

    SC_METHOD(thread_y_V_4_fu_206_p4);
    sensitive << ( data_4_V_read );

    SC_METHOD(thread_y_V_5_fu_245_p4);
    sensitive << ( exp_sum_V_fu_239_p2 );

    SC_METHOD(thread_y_V_fu_146_p4);
    sensitive << ( data_0_V_read );

    SC_METHOD(thread_zext_ln307_1_fu_171_p1);
    sensitive << ( y_V_1_fu_161_p4 );

    SC_METHOD(thread_zext_ln307_2_fu_186_p1);
    sensitive << ( y_V_2_fu_176_p4 );

    SC_METHOD(thread_zext_ln307_3_fu_201_p1);
    sensitive << ( y_V_3_fu_191_p4 );

    SC_METHOD(thread_zext_ln307_4_fu_216_p1);
    sensitive << ( y_V_4_fu_206_p4 );

    SC_METHOD(thread_zext_ln307_fu_156_p1);
    sensitive << ( y_V_fu_146_p4 );

    SC_METHOD(thread_zext_ln319_fu_255_p1);
    sensitive << ( y_V_5_fu_245_p4 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_block_pp0_stage0_subdone );
    sensitive << ( ap_reset_idle_pp0 );

    ap_CS_fsm = "1";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "softmax_latency_ap_fixed_ap_fixed_softmax_config0_s_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, data_0_V_read, "(port)data_0_V_read");
    sc_trace(mVcdFile, data_1_V_read, "(port)data_1_V_read");
    sc_trace(mVcdFile, data_2_V_read, "(port)data_2_V_read");
    sc_trace(mVcdFile, data_3_V_read, "(port)data_3_V_read");
    sc_trace(mVcdFile, data_4_V_read, "(port)data_4_V_read");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
    sc_trace(mVcdFile, ap_return_2, "(port)ap_return_2");
    sc_trace(mVcdFile, ap_return_3, "(port)ap_return_3");
    sc_trace(mVcdFile, ap_return_4, "(port)ap_return_4");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_block_state1_pp0_stage0_iter0, "ap_block_state1_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter1, "ap_block_state2_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter2, "ap_block_state3_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, exp_table3_address0, "exp_table3_address0");
    sc_trace(mVcdFile, exp_table3_ce0, "exp_table3_ce0");
    sc_trace(mVcdFile, exp_table3_q0, "exp_table3_q0");
    sc_trace(mVcdFile, exp_table3_address1, "exp_table3_address1");
    sc_trace(mVcdFile, exp_table3_ce1, "exp_table3_ce1");
    sc_trace(mVcdFile, exp_table3_q1, "exp_table3_q1");
    sc_trace(mVcdFile, exp_table3_address2, "exp_table3_address2");
    sc_trace(mVcdFile, exp_table3_ce2, "exp_table3_ce2");
    sc_trace(mVcdFile, exp_table3_q2, "exp_table3_q2");
    sc_trace(mVcdFile, exp_table3_address3, "exp_table3_address3");
    sc_trace(mVcdFile, exp_table3_ce3, "exp_table3_ce3");
    sc_trace(mVcdFile, exp_table3_q3, "exp_table3_q3");
    sc_trace(mVcdFile, exp_table3_address4, "exp_table3_address4");
    sc_trace(mVcdFile, exp_table3_ce4, "exp_table3_ce4");
    sc_trace(mVcdFile, exp_table3_q4, "exp_table3_q4");
    sc_trace(mVcdFile, invert_table4_address0, "invert_table4_address0");
    sc_trace(mVcdFile, invert_table4_ce0, "invert_table4_ce0");
    sc_trace(mVcdFile, invert_table4_q0, "invert_table4_q0");
    sc_trace(mVcdFile, exp_res_0_V_reg_414, "exp_res_0_V_reg_414");
    sc_trace(mVcdFile, exp_res_1_V_reg_419, "exp_res_1_V_reg_419");
    sc_trace(mVcdFile, exp_res_2_V_reg_424, "exp_res_2_V_reg_424");
    sc_trace(mVcdFile, exp_res_3_V_reg_429, "exp_res_3_V_reg_429");
    sc_trace(mVcdFile, exp_res_4_V_reg_434, "exp_res_4_V_reg_434");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, zext_ln307_fu_156_p1, "zext_ln307_fu_156_p1");
    sc_trace(mVcdFile, zext_ln307_1_fu_171_p1, "zext_ln307_1_fu_171_p1");
    sc_trace(mVcdFile, zext_ln307_2_fu_186_p1, "zext_ln307_2_fu_186_p1");
    sc_trace(mVcdFile, zext_ln307_3_fu_201_p1, "zext_ln307_3_fu_201_p1");
    sc_trace(mVcdFile, zext_ln307_4_fu_216_p1, "zext_ln307_4_fu_216_p1");
    sc_trace(mVcdFile, zext_ln319_fu_255_p1, "zext_ln319_fu_255_p1");
    sc_trace(mVcdFile, y_V_fu_146_p4, "y_V_fu_146_p4");
    sc_trace(mVcdFile, y_V_1_fu_161_p4, "y_V_1_fu_161_p4");
    sc_trace(mVcdFile, y_V_2_fu_176_p4, "y_V_2_fu_176_p4");
    sc_trace(mVcdFile, y_V_3_fu_191_p4, "y_V_3_fu_191_p4");
    sc_trace(mVcdFile, y_V_4_fu_206_p4, "y_V_4_fu_206_p4");
    sc_trace(mVcdFile, add_ln703_fu_221_p0, "add_ln703_fu_221_p0");
    sc_trace(mVcdFile, add_ln703_fu_221_p1, "add_ln703_fu_221_p1");
    sc_trace(mVcdFile, add_ln703_32_fu_227_p0, "add_ln703_32_fu_227_p0");
    sc_trace(mVcdFile, add_ln703_32_fu_227_p1, "add_ln703_32_fu_227_p1");
    sc_trace(mVcdFile, add_ln703_32_fu_227_p2, "add_ln703_32_fu_227_p2");
    sc_trace(mVcdFile, add_ln703_33_fu_233_p1, "add_ln703_33_fu_233_p1");
    sc_trace(mVcdFile, add_ln703_33_fu_233_p2, "add_ln703_33_fu_233_p2");
    sc_trace(mVcdFile, add_ln703_fu_221_p2, "add_ln703_fu_221_p2");
    sc_trace(mVcdFile, exp_sum_V_fu_239_p2, "exp_sum_V_fu_239_p2");
    sc_trace(mVcdFile, y_V_5_fu_245_p4, "y_V_5_fu_245_p4");
    sc_trace(mVcdFile, mul_ln1118_fu_354_p2, "mul_ln1118_fu_354_p2");
    sc_trace(mVcdFile, mul_ln1118_1_fu_361_p2, "mul_ln1118_1_fu_361_p2");
    sc_trace(mVcdFile, mul_ln1118_2_fu_368_p2, "mul_ln1118_2_fu_368_p2");
    sc_trace(mVcdFile, mul_ln1118_3_fu_375_p2, "mul_ln1118_3_fu_375_p2");
    sc_trace(mVcdFile, mul_ln1118_4_fu_382_p2, "mul_ln1118_4_fu_382_p2");
    sc_trace(mVcdFile, mul_ln1118_fu_354_p0, "mul_ln1118_fu_354_p0");
    sc_trace(mVcdFile, sext_ln1116_fu_260_p1, "sext_ln1116_fu_260_p1");
    sc_trace(mVcdFile, mul_ln1118_1_fu_361_p0, "mul_ln1118_1_fu_361_p0");
    sc_trace(mVcdFile, mul_ln1118_2_fu_368_p0, "mul_ln1118_2_fu_368_p0");
    sc_trace(mVcdFile, mul_ln1118_3_fu_375_p0, "mul_ln1118_3_fu_375_p0");
    sc_trace(mVcdFile, mul_ln1118_4_fu_382_p0, "mul_ln1118_4_fu_382_p0");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0_0to1, "ap_idle_pp0_0to1");
    sc_trace(mVcdFile, ap_reset_idle_pp0, "ap_reset_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::~softmax_latency_ap_fixed_ap_fixed_softmax_config0_s() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete exp_table3_U;
    delete invert_table4_U;
    delete myproject_mul_mul_16s_16s_26_1_1_U1028;
    delete myproject_mul_mul_16s_16s_26_1_1_U1029;
    delete myproject_mul_mul_16s_16s_26_1_1_U1030;
    delete myproject_mul_mul_16s_16s_26_1_1_U1031;
    delete myproject_mul_mul_16s_16s_26_1_1_U1032;
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_pp0_stage0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0))) {
            ap_enable_reg_pp0_iter1 = ap_start.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        exp_res_0_V_reg_414 = exp_table3_q0.read();
        exp_res_1_V_reg_419 = exp_table3_q1.read();
        exp_res_2_V_reg_424 = exp_table3_q2.read();
        exp_res_3_V_reg_429 = exp_table3_q3.read();
        exp_res_4_V_reg_434 = exp_table3_q4.read();
    }
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_add_ln703_32_fu_227_p0() {
    add_ln703_32_fu_227_p0 = exp_table3_q2.read();
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_add_ln703_32_fu_227_p1() {
    add_ln703_32_fu_227_p1 = exp_table3_q4.read();
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_add_ln703_32_fu_227_p2() {
    add_ln703_32_fu_227_p2 = (!add_ln703_32_fu_227_p0.read().is_01() || !add_ln703_32_fu_227_p1.read().is_01())? sc_lv<16>(): (sc_bigint<16>(add_ln703_32_fu_227_p0.read()) + sc_bigint<16>(add_ln703_32_fu_227_p1.read()));
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_add_ln703_33_fu_233_p1() {
    add_ln703_33_fu_233_p1 = exp_table3_q3.read();
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_add_ln703_33_fu_233_p2() {
    add_ln703_33_fu_233_p2 = (!add_ln703_32_fu_227_p2.read().is_01() || !add_ln703_33_fu_233_p1.read().is_01())? sc_lv<16>(): (sc_biguint<16>(add_ln703_32_fu_227_p2.read()) + sc_bigint<16>(add_ln703_33_fu_233_p1.read()));
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_add_ln703_fu_221_p0() {
    add_ln703_fu_221_p0 = exp_table3_q0.read();
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_add_ln703_fu_221_p1() {
    add_ln703_fu_221_p1 = exp_table3_q1.read();
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_add_ln703_fu_221_p2() {
    add_ln703_fu_221_p2 = (!add_ln703_fu_221_p0.read().is_01() || !add_ln703_fu_221_p1.read().is_01())? sc_lv<16>(): (sc_bigint<16>(add_ln703_fu_221_p0.read()) + sc_bigint<16>(add_ln703_fu_221_p1.read()));
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[0];
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()));
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()));
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_block_state1_pp0_stage0_iter0() {
    ap_block_state1_pp0_stage0_iter0 = esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_block_state2_pp0_stage0_iter1() {
    ap_block_state2_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_block_state3_pp0_stage0_iter2() {
    ap_block_state3_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0)) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_enable_reg_pp0_iter0() {
    ap_enable_reg_pp0_iter0 = ap_start.read();
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_idle_pp0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_idle_pp0_0to1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0_0to1 = ap_const_logic_1;
    } else {
        ap_idle_pp0_0to1 = ap_const_logic_0;
    }
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_reset_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_idle_pp0_0to1.read()))) {
        ap_reset_idle_pp0 = ap_const_logic_1;
    } else {
        ap_reset_idle_pp0 = ap_const_logic_0;
    }
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_return_0() {
    ap_return_0 = mul_ln1118_fu_354_p2.read().range(25, 10);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_return_1() {
    ap_return_1 = mul_ln1118_1_fu_361_p2.read().range(25, 10);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_return_2() {
    ap_return_2 = mul_ln1118_2_fu_368_p2.read().range(25, 10);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_return_3() {
    ap_return_3 = mul_ln1118_3_fu_375_p2.read().range(25, 10);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_return_4() {
    ap_return_4 = mul_ln1118_4_fu_382_p2.read().range(25, 10);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_exp_sum_V_fu_239_p2() {
    exp_sum_V_fu_239_p2 = (!add_ln703_33_fu_233_p2.read().is_01() || !add_ln703_fu_221_p2.read().is_01())? sc_lv<16>(): (sc_biguint<16>(add_ln703_33_fu_233_p2.read()) + sc_biguint<16>(add_ln703_fu_221_p2.read()));
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_exp_table3_address0() {
    exp_table3_address0 =  (sc_lv<12>) (zext_ln307_fu_156_p1.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_exp_table3_address1() {
    exp_table3_address1 =  (sc_lv<12>) (zext_ln307_1_fu_171_p1.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_exp_table3_address2() {
    exp_table3_address2 =  (sc_lv<12>) (zext_ln307_2_fu_186_p1.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_exp_table3_address3() {
    exp_table3_address3 =  (sc_lv<12>) (zext_ln307_3_fu_201_p1.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_exp_table3_address4() {
    exp_table3_address4 =  (sc_lv<12>) (zext_ln307_4_fu_216_p1.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_exp_table3_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        exp_table3_ce0 = ap_const_logic_1;
    } else {
        exp_table3_ce0 = ap_const_logic_0;
    }
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_exp_table3_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        exp_table3_ce1 = ap_const_logic_1;
    } else {
        exp_table3_ce1 = ap_const_logic_0;
    }
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_exp_table3_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        exp_table3_ce2 = ap_const_logic_1;
    } else {
        exp_table3_ce2 = ap_const_logic_0;
    }
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_exp_table3_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        exp_table3_ce3 = ap_const_logic_1;
    } else {
        exp_table3_ce3 = ap_const_logic_0;
    }
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_exp_table3_ce4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        exp_table3_ce4 = ap_const_logic_1;
    } else {
        exp_table3_ce4 = ap_const_logic_0;
    }
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_invert_table4_address0() {
    invert_table4_address0 =  (sc_lv<12>) (zext_ln319_fu_255_p1.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_invert_table4_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        invert_table4_ce0 = ap_const_logic_1;
    } else {
        invert_table4_ce0 = ap_const_logic_0;
    }
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_mul_ln1118_1_fu_361_p0() {
    mul_ln1118_1_fu_361_p0 =  (sc_lv<16>) (sext_ln1116_fu_260_p1.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_mul_ln1118_2_fu_368_p0() {
    mul_ln1118_2_fu_368_p0 =  (sc_lv<16>) (sext_ln1116_fu_260_p1.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_mul_ln1118_3_fu_375_p0() {
    mul_ln1118_3_fu_375_p0 =  (sc_lv<16>) (sext_ln1116_fu_260_p1.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_mul_ln1118_4_fu_382_p0() {
    mul_ln1118_4_fu_382_p0 =  (sc_lv<16>) (sext_ln1116_fu_260_p1.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_mul_ln1118_fu_354_p0() {
    mul_ln1118_fu_354_p0 =  (sc_lv<16>) (sext_ln1116_fu_260_p1.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_sext_ln1116_fu_260_p1() {
    sext_ln1116_fu_260_p1 = esl_sext<26,16>(invert_table4_q0.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_y_V_1_fu_161_p4() {
    y_V_1_fu_161_p4 = data_1_V_read.read().range(15, 4);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_y_V_2_fu_176_p4() {
    y_V_2_fu_176_p4 = data_2_V_read.read().range(15, 4);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_y_V_3_fu_191_p4() {
    y_V_3_fu_191_p4 = data_3_V_read.read().range(15, 4);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_y_V_4_fu_206_p4() {
    y_V_4_fu_206_p4 = data_4_V_read.read().range(15, 4);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_y_V_5_fu_245_p4() {
    y_V_5_fu_245_p4 = exp_sum_V_fu_239_p2.read().range(15, 4);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_y_V_fu_146_p4() {
    y_V_fu_146_p4 = data_0_V_read.read().range(15, 4);
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_zext_ln307_1_fu_171_p1() {
    zext_ln307_1_fu_171_p1 = esl_zext<64,12>(y_V_1_fu_161_p4.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_zext_ln307_2_fu_186_p1() {
    zext_ln307_2_fu_186_p1 = esl_zext<64,12>(y_V_2_fu_176_p4.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_zext_ln307_3_fu_201_p1() {
    zext_ln307_3_fu_201_p1 = esl_zext<64,12>(y_V_3_fu_191_p4.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_zext_ln307_4_fu_216_p1() {
    zext_ln307_4_fu_216_p1 = esl_zext<64,12>(y_V_4_fu_206_p4.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_zext_ln307_fu_156_p1() {
    zext_ln307_fu_156_p1 = esl_zext<64,12>(y_V_fu_146_p4.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_zext_ln319_fu_255_p1() {
    zext_ln319_fu_255_p1 = esl_zext<64,12>(y_V_5_fu_245_p4.read());
}

void softmax_latency_ap_fixed_ap_fixed_softmax_config0_s::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

}
