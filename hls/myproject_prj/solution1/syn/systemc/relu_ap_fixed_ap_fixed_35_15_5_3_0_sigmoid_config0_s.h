// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _relu_ap_fixed_ap_fixed_35_15_5_3_0_sigmoid_config0_s_HH_
#define _relu_ap_fixed_ap_fixed_35_15_5_3_0_sigmoid_config0_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct relu_ap_fixed_ap_fixed_35_15_5_3_0_sigmoid_config0_s : public sc_module {
    // Port declarations 99
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<35> > data_0_0_V_read;
    sc_in< sc_lv<35> > data_0_1_V_read;
    sc_in< sc_lv<35> > data_1_0_V_read;
    sc_in< sc_lv<35> > data_1_1_V_read;
    sc_in< sc_lv<35> > data_2_0_V_read;
    sc_in< sc_lv<35> > data_2_1_V_read;
    sc_in< sc_lv<35> > data_3_0_V_read;
    sc_in< sc_lv<35> > data_3_1_V_read;
    sc_in< sc_lv<35> > data_4_0_V_read;
    sc_in< sc_lv<35> > data_4_1_V_read;
    sc_in< sc_lv<35> > data_5_0_V_read;
    sc_in< sc_lv<35> > data_5_1_V_read;
    sc_in< sc_lv<35> > data_6_0_V_read;
    sc_in< sc_lv<35> > data_6_1_V_read;
    sc_in< sc_lv<35> > data_7_0_V_read;
    sc_in< sc_lv<35> > data_7_1_V_read;
    sc_in< sc_lv<35> > data_8_0_V_read;
    sc_in< sc_lv<35> > data_8_1_V_read;
    sc_in< sc_lv<35> > data_9_0_V_read;
    sc_in< sc_lv<35> > data_9_1_V_read;
    sc_in< sc_lv<35> > data_10_0_V_read;
    sc_in< sc_lv<35> > data_10_1_V_read;
    sc_in< sc_lv<35> > data_11_0_V_read;
    sc_in< sc_lv<35> > data_11_1_V_read;
    sc_in< sc_lv<35> > data_12_0_V_read;
    sc_in< sc_lv<35> > data_12_1_V_read;
    sc_in< sc_lv<35> > data_13_0_V_read;
    sc_in< sc_lv<35> > data_13_1_V_read;
    sc_in< sc_lv<35> > data_14_0_V_read;
    sc_in< sc_lv<35> > data_14_1_V_read;
    sc_in< sc_lv<35> > data_15_0_V_read;
    sc_in< sc_lv<35> > data_15_1_V_read;
    sc_in< sc_lv<1> > data_V_offset;
    sc_in< sc_lv<35> > res_0_0_V_read;
    sc_in< sc_lv<35> > res_0_1_V_read;
    sc_in< sc_lv<35> > res_1_0_V_read;
    sc_in< sc_lv<35> > res_1_1_V_read;
    sc_in< sc_lv<35> > res_2_0_V_read;
    sc_in< sc_lv<35> > res_2_1_V_read;
    sc_in< sc_lv<35> > res_3_0_V_read;
    sc_in< sc_lv<35> > res_3_1_V_read;
    sc_in< sc_lv<35> > res_4_0_V_read;
    sc_in< sc_lv<35> > res_4_1_V_read;
    sc_in< sc_lv<35> > res_5_0_V_read;
    sc_in< sc_lv<35> > res_5_1_V_read;
    sc_in< sc_lv<35> > res_6_0_V_read;
    sc_in< sc_lv<35> > res_6_1_V_read;
    sc_in< sc_lv<35> > res_7_0_V_read;
    sc_in< sc_lv<35> > res_7_1_V_read;
    sc_in< sc_lv<35> > res_8_0_V_read;
    sc_in< sc_lv<35> > res_8_1_V_read;
    sc_in< sc_lv<35> > res_9_0_V_read;
    sc_in< sc_lv<35> > res_9_1_V_read;
    sc_in< sc_lv<35> > res_10_0_V_read;
    sc_in< sc_lv<35> > res_10_1_V_read;
    sc_in< sc_lv<35> > res_11_0_V_read;
    sc_in< sc_lv<35> > res_11_1_V_read;
    sc_in< sc_lv<35> > res_12_0_V_read;
    sc_in< sc_lv<35> > res_12_1_V_read;
    sc_in< sc_lv<35> > res_13_0_V_read;
    sc_in< sc_lv<35> > res_13_1_V_read;
    sc_in< sc_lv<35> > res_14_0_V_read;
    sc_in< sc_lv<35> > res_14_1_V_read;
    sc_in< sc_lv<35> > res_15_0_V_read;
    sc_in< sc_lv<35> > res_15_1_V_read;
    sc_in< sc_lv<1> > res_V_offset;
    sc_out< sc_lv<35> > ap_return_0;
    sc_out< sc_lv<35> > ap_return_1;
    sc_out< sc_lv<35> > ap_return_2;
    sc_out< sc_lv<35> > ap_return_3;
    sc_out< sc_lv<35> > ap_return_4;
    sc_out< sc_lv<35> > ap_return_5;
    sc_out< sc_lv<35> > ap_return_6;
    sc_out< sc_lv<35> > ap_return_7;
    sc_out< sc_lv<35> > ap_return_8;
    sc_out< sc_lv<35> > ap_return_9;
    sc_out< sc_lv<35> > ap_return_10;
    sc_out< sc_lv<35> > ap_return_11;
    sc_out< sc_lv<35> > ap_return_12;
    sc_out< sc_lv<35> > ap_return_13;
    sc_out< sc_lv<35> > ap_return_14;
    sc_out< sc_lv<35> > ap_return_15;
    sc_out< sc_lv<35> > ap_return_16;
    sc_out< sc_lv<35> > ap_return_17;
    sc_out< sc_lv<35> > ap_return_18;
    sc_out< sc_lv<35> > ap_return_19;
    sc_out< sc_lv<35> > ap_return_20;
    sc_out< sc_lv<35> > ap_return_21;
    sc_out< sc_lv<35> > ap_return_22;
    sc_out< sc_lv<35> > ap_return_23;
    sc_out< sc_lv<35> > ap_return_24;
    sc_out< sc_lv<35> > ap_return_25;
    sc_out< sc_lv<35> > ap_return_26;
    sc_out< sc_lv<35> > ap_return_27;
    sc_out< sc_lv<35> > ap_return_28;
    sc_out< sc_lv<35> > ap_return_29;
    sc_out< sc_lv<35> > ap_return_30;
    sc_out< sc_lv<35> > ap_return_31;


    // Module declarations
    relu_ap_fixed_ap_fixed_35_15_5_3_0_sigmoid_config0_s(sc_module_name name);
    SC_HAS_PROCESS(relu_ap_fixed_ap_fixed_35_15_5_3_0_sigmoid_config0_s);

    ~relu_ap_fixed_ap_fixed_35_15_5_3_0_sigmoid_config0_s();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<35> > select_ln203_fu_554_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_fu_566_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_fu_562_p1;
    sc_signal< sc_lv<34> > select_ln85_fu_572_p3;
    sc_signal< sc_lv<35> > select_ln203_51_fu_584_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_1_fu_596_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_32_fu_592_p1;
    sc_signal< sc_lv<34> > select_ln85_32_fu_602_p3;
    sc_signal< sc_lv<35> > select_ln203_52_fu_614_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_2_fu_626_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_33_fu_622_p1;
    sc_signal< sc_lv<34> > select_ln85_33_fu_632_p3;
    sc_signal< sc_lv<35> > select_ln203_53_fu_644_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_3_fu_656_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_34_fu_652_p1;
    sc_signal< sc_lv<34> > select_ln85_34_fu_662_p3;
    sc_signal< sc_lv<35> > select_ln203_54_fu_674_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_4_fu_686_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_35_fu_682_p1;
    sc_signal< sc_lv<34> > select_ln85_35_fu_692_p3;
    sc_signal< sc_lv<35> > select_ln203_55_fu_704_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_5_fu_716_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_36_fu_712_p1;
    sc_signal< sc_lv<34> > select_ln85_36_fu_722_p3;
    sc_signal< sc_lv<35> > select_ln203_56_fu_734_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_6_fu_746_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_37_fu_742_p1;
    sc_signal< sc_lv<34> > select_ln85_37_fu_752_p3;
    sc_signal< sc_lv<35> > select_ln203_57_fu_764_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_7_fu_776_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_38_fu_772_p1;
    sc_signal< sc_lv<34> > select_ln85_38_fu_782_p3;
    sc_signal< sc_lv<35> > select_ln203_58_fu_794_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_8_fu_806_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_39_fu_802_p1;
    sc_signal< sc_lv<34> > select_ln85_39_fu_812_p3;
    sc_signal< sc_lv<35> > select_ln203_59_fu_824_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_9_fu_836_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_40_fu_832_p1;
    sc_signal< sc_lv<34> > select_ln85_40_fu_842_p3;
    sc_signal< sc_lv<35> > select_ln203_60_fu_854_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_10_fu_866_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_41_fu_862_p1;
    sc_signal< sc_lv<34> > select_ln85_41_fu_872_p3;
    sc_signal< sc_lv<35> > select_ln203_61_fu_884_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_11_fu_896_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_42_fu_892_p1;
    sc_signal< sc_lv<34> > select_ln85_42_fu_902_p3;
    sc_signal< sc_lv<35> > select_ln203_62_fu_914_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_12_fu_926_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_43_fu_922_p1;
    sc_signal< sc_lv<34> > select_ln85_43_fu_932_p3;
    sc_signal< sc_lv<35> > select_ln203_63_fu_944_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_13_fu_956_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_44_fu_952_p1;
    sc_signal< sc_lv<34> > select_ln85_44_fu_962_p3;
    sc_signal< sc_lv<35> > select_ln203_64_fu_974_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_14_fu_986_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_45_fu_982_p1;
    sc_signal< sc_lv<34> > select_ln85_45_fu_992_p3;
    sc_signal< sc_lv<35> > select_ln203_65_fu_1004_p3;
    sc_signal< sc_lv<1> > icmp_ln1494_15_fu_1016_p2;
    sc_signal< sc_lv<34> > trunc_ln1494_46_fu_1012_p1;
    sc_signal< sc_lv<34> > select_ln85_46_fu_1022_p3;
    sc_signal< sc_lv<35> > zext_ln85_46_fu_1030_p1;
    sc_signal< sc_lv<35> > zext_ln85_fu_580_p1;
    sc_signal< sc_lv<35> > zext_ln85_32_fu_610_p1;
    sc_signal< sc_lv<35> > zext_ln85_33_fu_640_p1;
    sc_signal< sc_lv<35> > zext_ln85_34_fu_670_p1;
    sc_signal< sc_lv<35> > zext_ln85_35_fu_700_p1;
    sc_signal< sc_lv<35> > zext_ln85_36_fu_730_p1;
    sc_signal< sc_lv<35> > zext_ln85_37_fu_760_p1;
    sc_signal< sc_lv<35> > zext_ln85_38_fu_790_p1;
    sc_signal< sc_lv<35> > zext_ln85_39_fu_820_p1;
    sc_signal< sc_lv<35> > zext_ln85_40_fu_850_p1;
    sc_signal< sc_lv<35> > zext_ln85_41_fu_880_p1;
    sc_signal< sc_lv<35> > zext_ln85_42_fu_910_p1;
    sc_signal< sc_lv<35> > zext_ln85_43_fu_940_p1;
    sc_signal< sc_lv<35> > zext_ln85_44_fu_970_p1;
    sc_signal< sc_lv<35> > zext_ln85_45_fu_1000_p1;
    sc_signal< sc_lv<35> > select_ln88_fu_1050_p3;
    sc_signal< sc_lv<35> > select_ln88_62_fu_1058_p3;
    sc_signal< sc_lv<35> > select_ln88_63_fu_1066_p3;
    sc_signal< sc_lv<35> > select_ln88_64_fu_1074_p3;
    sc_signal< sc_lv<35> > select_ln88_65_fu_1082_p3;
    sc_signal< sc_lv<35> > select_ln88_66_fu_1090_p3;
    sc_signal< sc_lv<35> > select_ln88_67_fu_1098_p3;
    sc_signal< sc_lv<35> > select_ln88_68_fu_1106_p3;
    sc_signal< sc_lv<35> > select_ln88_69_fu_1114_p3;
    sc_signal< sc_lv<35> > select_ln88_70_fu_1122_p3;
    sc_signal< sc_lv<35> > select_ln88_71_fu_1130_p3;
    sc_signal< sc_lv<35> > select_ln88_72_fu_1138_p3;
    sc_signal< sc_lv<35> > select_ln88_73_fu_1146_p3;
    sc_signal< sc_lv<35> > select_ln88_74_fu_1154_p3;
    sc_signal< sc_lv<35> > select_ln88_75_fu_1162_p3;
    sc_signal< sc_lv<35> > select_ln88_76_fu_1170_p3;
    sc_signal< sc_lv<35> > select_ln88_77_fu_1178_p3;
    sc_signal< sc_lv<35> > select_ln88_78_fu_1186_p3;
    sc_signal< sc_lv<35> > select_ln88_79_fu_1194_p3;
    sc_signal< sc_lv<35> > select_ln88_80_fu_1202_p3;
    sc_signal< sc_lv<35> > select_ln88_81_fu_1210_p3;
    sc_signal< sc_lv<35> > select_ln88_82_fu_1218_p3;
    sc_signal< sc_lv<35> > select_ln88_83_fu_1226_p3;
    sc_signal< sc_lv<35> > select_ln88_84_fu_1234_p3;
    sc_signal< sc_lv<35> > select_ln88_85_fu_1242_p3;
    sc_signal< sc_lv<35> > select_ln88_86_fu_1250_p3;
    sc_signal< sc_lv<35> > select_ln88_87_fu_1258_p3;
    sc_signal< sc_lv<35> > select_ln88_88_fu_1266_p3;
    sc_signal< sc_lv<35> > select_ln88_89_fu_1274_p3;
    sc_signal< sc_lv<35> > select_ln88_90_fu_1282_p3;
    sc_signal< sc_lv<35> > select_ln203_66_fu_1034_p3;
    sc_signal< sc_lv<35> > select_ln203_67_fu_1042_p3;
    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const sc_lv<35> ap_const_lv35_0;
    static const sc_lv<34> ap_const_lv34_0;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_10();
    void thread_ap_return_11();
    void thread_ap_return_12();
    void thread_ap_return_13();
    void thread_ap_return_14();
    void thread_ap_return_15();
    void thread_ap_return_16();
    void thread_ap_return_17();
    void thread_ap_return_18();
    void thread_ap_return_19();
    void thread_ap_return_2();
    void thread_ap_return_20();
    void thread_ap_return_21();
    void thread_ap_return_22();
    void thread_ap_return_23();
    void thread_ap_return_24();
    void thread_ap_return_25();
    void thread_ap_return_26();
    void thread_ap_return_27();
    void thread_ap_return_28();
    void thread_ap_return_29();
    void thread_ap_return_3();
    void thread_ap_return_30();
    void thread_ap_return_31();
    void thread_ap_return_4();
    void thread_ap_return_5();
    void thread_ap_return_6();
    void thread_ap_return_7();
    void thread_ap_return_8();
    void thread_ap_return_9();
    void thread_icmp_ln1494_10_fu_866_p2();
    void thread_icmp_ln1494_11_fu_896_p2();
    void thread_icmp_ln1494_12_fu_926_p2();
    void thread_icmp_ln1494_13_fu_956_p2();
    void thread_icmp_ln1494_14_fu_986_p2();
    void thread_icmp_ln1494_15_fu_1016_p2();
    void thread_icmp_ln1494_1_fu_596_p2();
    void thread_icmp_ln1494_2_fu_626_p2();
    void thread_icmp_ln1494_3_fu_656_p2();
    void thread_icmp_ln1494_4_fu_686_p2();
    void thread_icmp_ln1494_5_fu_716_p2();
    void thread_icmp_ln1494_6_fu_746_p2();
    void thread_icmp_ln1494_7_fu_776_p2();
    void thread_icmp_ln1494_8_fu_806_p2();
    void thread_icmp_ln1494_9_fu_836_p2();
    void thread_icmp_ln1494_fu_566_p2();
    void thread_select_ln203_51_fu_584_p3();
    void thread_select_ln203_52_fu_614_p3();
    void thread_select_ln203_53_fu_644_p3();
    void thread_select_ln203_54_fu_674_p3();
    void thread_select_ln203_55_fu_704_p3();
    void thread_select_ln203_56_fu_734_p3();
    void thread_select_ln203_57_fu_764_p3();
    void thread_select_ln203_58_fu_794_p3();
    void thread_select_ln203_59_fu_824_p3();
    void thread_select_ln203_60_fu_854_p3();
    void thread_select_ln203_61_fu_884_p3();
    void thread_select_ln203_62_fu_914_p3();
    void thread_select_ln203_63_fu_944_p3();
    void thread_select_ln203_64_fu_974_p3();
    void thread_select_ln203_65_fu_1004_p3();
    void thread_select_ln203_66_fu_1034_p3();
    void thread_select_ln203_67_fu_1042_p3();
    void thread_select_ln203_fu_554_p3();
    void thread_select_ln85_32_fu_602_p3();
    void thread_select_ln85_33_fu_632_p3();
    void thread_select_ln85_34_fu_662_p3();
    void thread_select_ln85_35_fu_692_p3();
    void thread_select_ln85_36_fu_722_p3();
    void thread_select_ln85_37_fu_752_p3();
    void thread_select_ln85_38_fu_782_p3();
    void thread_select_ln85_39_fu_812_p3();
    void thread_select_ln85_40_fu_842_p3();
    void thread_select_ln85_41_fu_872_p3();
    void thread_select_ln85_42_fu_902_p3();
    void thread_select_ln85_43_fu_932_p3();
    void thread_select_ln85_44_fu_962_p3();
    void thread_select_ln85_45_fu_992_p3();
    void thread_select_ln85_46_fu_1022_p3();
    void thread_select_ln85_fu_572_p3();
    void thread_select_ln88_62_fu_1058_p3();
    void thread_select_ln88_63_fu_1066_p3();
    void thread_select_ln88_64_fu_1074_p3();
    void thread_select_ln88_65_fu_1082_p3();
    void thread_select_ln88_66_fu_1090_p3();
    void thread_select_ln88_67_fu_1098_p3();
    void thread_select_ln88_68_fu_1106_p3();
    void thread_select_ln88_69_fu_1114_p3();
    void thread_select_ln88_70_fu_1122_p3();
    void thread_select_ln88_71_fu_1130_p3();
    void thread_select_ln88_72_fu_1138_p3();
    void thread_select_ln88_73_fu_1146_p3();
    void thread_select_ln88_74_fu_1154_p3();
    void thread_select_ln88_75_fu_1162_p3();
    void thread_select_ln88_76_fu_1170_p3();
    void thread_select_ln88_77_fu_1178_p3();
    void thread_select_ln88_78_fu_1186_p3();
    void thread_select_ln88_79_fu_1194_p3();
    void thread_select_ln88_80_fu_1202_p3();
    void thread_select_ln88_81_fu_1210_p3();
    void thread_select_ln88_82_fu_1218_p3();
    void thread_select_ln88_83_fu_1226_p3();
    void thread_select_ln88_84_fu_1234_p3();
    void thread_select_ln88_85_fu_1242_p3();
    void thread_select_ln88_86_fu_1250_p3();
    void thread_select_ln88_87_fu_1258_p3();
    void thread_select_ln88_88_fu_1266_p3();
    void thread_select_ln88_89_fu_1274_p3();
    void thread_select_ln88_90_fu_1282_p3();
    void thread_select_ln88_fu_1050_p3();
    void thread_trunc_ln1494_32_fu_592_p1();
    void thread_trunc_ln1494_33_fu_622_p1();
    void thread_trunc_ln1494_34_fu_652_p1();
    void thread_trunc_ln1494_35_fu_682_p1();
    void thread_trunc_ln1494_36_fu_712_p1();
    void thread_trunc_ln1494_37_fu_742_p1();
    void thread_trunc_ln1494_38_fu_772_p1();
    void thread_trunc_ln1494_39_fu_802_p1();
    void thread_trunc_ln1494_40_fu_832_p1();
    void thread_trunc_ln1494_41_fu_862_p1();
    void thread_trunc_ln1494_42_fu_892_p1();
    void thread_trunc_ln1494_43_fu_922_p1();
    void thread_trunc_ln1494_44_fu_952_p1();
    void thread_trunc_ln1494_45_fu_982_p1();
    void thread_trunc_ln1494_46_fu_1012_p1();
    void thread_trunc_ln1494_fu_562_p1();
    void thread_zext_ln85_32_fu_610_p1();
    void thread_zext_ln85_33_fu_640_p1();
    void thread_zext_ln85_34_fu_670_p1();
    void thread_zext_ln85_35_fu_700_p1();
    void thread_zext_ln85_36_fu_730_p1();
    void thread_zext_ln85_37_fu_760_p1();
    void thread_zext_ln85_38_fu_790_p1();
    void thread_zext_ln85_39_fu_820_p1();
    void thread_zext_ln85_40_fu_850_p1();
    void thread_zext_ln85_41_fu_880_p1();
    void thread_zext_ln85_42_fu_910_p1();
    void thread_zext_ln85_43_fu_940_p1();
    void thread_zext_ln85_44_fu_970_p1();
    void thread_zext_ln85_45_fu_1000_p1();
    void thread_zext_ln85_46_fu_1030_p1();
    void thread_zext_ln85_fu_580_p1();
};

}

using namespace ap_rtl;

#endif