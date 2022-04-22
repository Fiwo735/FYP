-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_ce : IN STD_LOGIC;
    data_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    data_V_ce0 : OUT STD_LOGIC;
    data_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    data_V_address1 : OUT STD_LOGIC_VECTOR (2 downto 0);
    data_V_ce1 : OUT STD_LOGIC;
    data_V_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    data_V_offset : IN STD_LOGIC_VECTOR (0 downto 0);
    data_V_offset1 : IN STD_LOGIC_VECTOR (0 downto 0);
    res_V_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    res_V_ce0 : OUT STD_LOGIC;
    res_V_we0 : OUT STD_LOGIC;
    res_V_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    res_V_address1 : OUT STD_LOGIC_VECTOR (2 downto 0);
    res_V_ce1 : OUT STD_LOGIC;
    res_V_we1 : OUT STD_LOGIC;
    res_V_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    res_V_offset : IN STD_LOGIC_VECTOR (0 downto 0);
    res_V_offset3 : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv61_0 : STD_LOGIC_VECTOR (60 downto 0) := "0000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal exp_table13_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal exp_table13_ce0 : STD_LOGIC;
    signal exp_table13_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal exp_table13_address1 : STD_LOGIC_VECTOR (11 downto 0);
    signal exp_table13_ce1 : STD_LOGIC;
    signal exp_table13_q1 : STD_LOGIC_VECTOR (15 downto 0);
    signal invert_table15_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal invert_table15_ce0 : STD_LOGIC;
    signal invert_table15_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal res_V_offset3_read_reg_291 : STD_LOGIC_VECTOR (0 downto 0);
    signal res_V_offset3_read_reg_291_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal res_V_offset3_read_reg_291_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal res_V_offset_read_reg_296 : STD_LOGIC_VECTOR (0 downto 0);
    signal res_V_offset_read_reg_296_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal res_V_offset_read_reg_296_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal exp_res_0_V_reg_321 : STD_LOGIC_VECTOR (15 downto 0);
    signal exp_res_1_V_reg_326 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal zext_ln306_fu_168_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_fu_179_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln307_fu_198_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln307_1_fu_213_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln319_fu_234_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln203_fu_247_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_fu_258_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal mul_ln1118_fu_277_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln1118_1_fu_284_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_158_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln306_fu_173_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal y_V_fu_188_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal y_V_6_fu_203_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal exp_sum_V_fu_218_p0 : STD_LOGIC_VECTOR (15 downto 0);
    signal exp_sum_V_fu_218_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal exp_sum_V_fu_218_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal y_V_7_fu_224_p4 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_fu_239_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln203_fu_252_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal mul_ln1118_fu_277_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln1118_fu_267_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln1118_1_fu_284_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to2 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component myproject_mul_mul_16s_16s_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s_exbkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (11 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        address1 : IN STD_LOGIC_VECTOR (11 downto 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s_incud IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (11 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    exp_table13_U : component softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s_exbkb
    generic map (
        DataWidth => 16,
        AddressRange => 4096,
        AddressWidth => 12)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => exp_table13_address0,
        ce0 => exp_table13_ce0,
        q0 => exp_table13_q0,
        address1 => exp_table13_address1,
        ce1 => exp_table13_ce1,
        q1 => exp_table13_q1);

    invert_table15_U : component softmax_latency_ap_fixed_ap_fixed_sa_softmax_config0_s_incud
    generic map (
        DataWidth => 16,
        AddressRange => 4096,
        AddressWidth => 12)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => invert_table15_address0,
        ce0 => invert_table15_ce0,
        q0 => invert_table15_q0);

    myproject_mul_mul_16s_16s_32_1_1_U410 : component myproject_mul_mul_16s_16s_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 32)
    port map (
        din0 => exp_res_0_V_reg_321,
        din1 => mul_ln1118_fu_277_p1,
        dout => mul_ln1118_fu_277_p2);

    myproject_mul_mul_16s_16s_32_1_1_U411 : component myproject_mul_mul_16s_16s_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 32)
    port map (
        din0 => exp_res_1_V_reg_326,
        din1 => mul_ln1118_1_fu_284_p1,
        dout => mul_ln1118_1_fu_284_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
                exp_res_0_V_reg_321 <= exp_table13_q0;
                exp_res_1_V_reg_326 <= exp_table13_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                res_V_offset3_read_reg_291 <= res_V_offset3;
                res_V_offset3_read_reg_291_pp0_iter1_reg <= res_V_offset3_read_reg_291;
                res_V_offset_read_reg_296 <= res_V_offset;
                res_V_offset_read_reg_296_pp0_iter1_reg <= res_V_offset_read_reg_296;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                res_V_offset3_read_reg_291_pp0_iter2_reg <= res_V_offset3_read_reg_291_pp0_iter1_reg;
                res_V_offset_read_reg_296_pp0_iter2_reg <= res_V_offset_read_reg_296_pp0_iter1_reg;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_start)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_start = ap_const_logic_0) and (ap_start = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_ce)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_const_logic_0 = ap_ce) or ((ap_start = ap_const_logic_0) and (ap_start = ap_const_logic_1)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to2_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0_0to2 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to2)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to2 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    data_V_address0 <= zext_ln306_fu_168_p1(3 - 1 downto 0);
    data_V_address1 <= tmp_3_fu_179_p3(3 - 1 downto 0);

    data_V_ce0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_ce0 <= ap_const_logic_1;
        else 
            data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    data_V_ce1_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            data_V_ce1 <= ap_const_logic_1;
        else 
            data_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    exp_sum_V_fu_218_p0 <= exp_table13_q1;
    exp_sum_V_fu_218_p1 <= exp_table13_q0;
    exp_sum_V_fu_218_p2 <= std_logic_vector(signed(exp_sum_V_fu_218_p0) + signed(exp_sum_V_fu_218_p1));
    exp_table13_address0 <= zext_ln307_fu_198_p1(12 - 1 downto 0);
    exp_table13_address1 <= zext_ln307_1_fu_213_p1(12 - 1 downto 0);

    exp_table13_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            exp_table13_ce0 <= ap_const_logic_1;
        else 
            exp_table13_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    exp_table13_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            exp_table13_ce1 <= ap_const_logic_1;
        else 
            exp_table13_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    invert_table15_address0 <= zext_ln319_fu_234_p1(12 - 1 downto 0);

    invert_table15_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            invert_table15_ce0 <= ap_const_logic_1;
        else 
            invert_table15_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    mul_ln1118_1_fu_284_p1 <= sext_ln1118_fu_267_p1(16 - 1 downto 0);
    mul_ln1118_fu_277_p1 <= sext_ln1118_fu_267_p1(16 - 1 downto 0);
    or_ln203_fu_252_p2 <= (tmp_fu_239_p4 or ap_const_lv3_1);
    or_ln306_fu_173_p2 <= (tmp_2_fu_158_p4 or ap_const_lv3_1);
    res_V_address0 <= zext_ln203_fu_247_p1(3 - 1 downto 0);
    res_V_address1 <= tmp_1_fu_258_p3(3 - 1 downto 0);

    res_V_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            res_V_ce0 <= ap_const_logic_1;
        else 
            res_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    res_V_ce1_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            res_V_ce1 <= ap_const_logic_1;
        else 
            res_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    res_V_d0 <= mul_ln1118_fu_277_p2;
    res_V_d1 <= mul_ln1118_1_fu_284_p2;

    res_V_we0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            res_V_we0 <= ap_const_logic_1;
        else 
            res_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    res_V_we1_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001, ap_ce)
    begin
        if (((ap_const_logic_1 = ap_ce) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            res_V_we1 <= ap_const_logic_1;
        else 
            res_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

        sext_ln1118_fu_267_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(invert_table15_q0),32));

    tmp_1_fu_258_p3 <= (ap_const_lv61_0 & or_ln203_fu_252_p2);
    tmp_2_fu_158_p4 <= ((data_V_offset & data_V_offset1) & ap_const_lv1_0);
    tmp_3_fu_179_p3 <= (ap_const_lv61_0 & or_ln306_fu_173_p2);
    tmp_fu_239_p4 <= ((res_V_offset_read_reg_296_pp0_iter2_reg & res_V_offset3_read_reg_291_pp0_iter2_reg) & ap_const_lv1_0);
    y_V_6_fu_203_p4 <= data_V_q1(15 downto 4);
    y_V_7_fu_224_p4 <= exp_sum_V_fu_218_p2(15 downto 4);
    y_V_fu_188_p4 <= data_V_q0(15 downto 4);
    zext_ln203_fu_247_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_239_p4),64));
    zext_ln306_fu_168_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_158_p4),64));
    zext_ln307_1_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(y_V_6_fu_203_p4),64));
    zext_ln307_fu_198_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(y_V_fu_188_p4),64));
    zext_ln319_fu_234_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(y_V_7_fu_224_p4),64));
end behav;