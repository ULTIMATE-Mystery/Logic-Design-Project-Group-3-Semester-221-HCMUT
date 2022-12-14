-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity a0_Sobel_Loop_2_proc38 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_dst_matx_rows_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_dst_matx_rows_read_empty_n : IN STD_LOGIC;
    p_dst_matx_rows_read_read : OUT STD_LOGIC;
    p_dst_matx_cols_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_dst_matx_cols_read_empty_n : IN STD_LOGIC;
    p_dst_matx_cols_read_read : OUT STD_LOGIC;
    p_dstx_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    p_dstx_V_V_empty_n : IN STD_LOGIC;
    p_dstx_V_V_read : OUT STD_LOGIC;
    p_dst_matx_data_V_address0 : OUT STD_LOGIC_VECTOR (18 downto 0);
    p_dst_matx_data_V_ce0 : OUT STD_LOGIC;
    p_dst_matx_data_V_we0 : OUT STD_LOGIC;
    p_dst_matx_data_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    p_dst_maty_cols_read_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_dst_maty_cols_read_empty_n : IN STD_LOGIC;
    p_dst_maty_cols_read_read : OUT STD_LOGIC;
    p_dsty_V_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    p_dsty_V_V_empty_n : IN STD_LOGIC;
    p_dsty_V_V_read : OUT STD_LOGIC;
    p_dst_maty_data_V_address0 : OUT STD_LOGIC_VECTOR (18 downto 0);
    p_dst_maty_data_V_ce0 : OUT STD_LOGIC;
    p_dst_maty_data_V_we0 : OUT STD_LOGIC;
    p_dst_maty_data_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of a0_Sobel_Loop_2_proc38 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_dst_matx_rows_read_blk_n : STD_LOGIC;
    signal p_dst_matx_cols_read_blk_n : STD_LOGIC;
    signal p_dstx_V_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_22_i_reg_251 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_dst_maty_cols_read_blk_n : STD_LOGIC;
    signal p_dsty_V_V_blk_n : STD_LOGIC;
    signal j2_i_reg_121 : STD_LOGIC_VECTOR (30 downto 0);
    signal p_dst_matx_rows_read_1_reg_206 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal p_dst_matx_cols_read_1_reg_211 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_132_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_reg_216 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_10_fu_136_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_10_reg_221 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_20_i_fu_148_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_fu_153_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reg_230 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_23_i_fu_159_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_23_i_reg_235 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_24_i_fu_164_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_24_i_reg_240 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_12_fu_173_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal tmp_12_reg_245 : STD_LOGIC_VECTOR (19 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal tmp_22_i_fu_177_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_fu_182_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal i1_i_reg_110 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal p_sum_cast_i_fu_192_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_sum2_cast_i_fu_201_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i1_cast_i_fu_140_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_11_fu_144_p1 : STD_LOGIC_VECTOR (19 downto 0);
    signal j2_cast_i_fu_169_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_sum_i_fu_188_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal p_sum2_i_fu_197_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_20_i_fu_148_p2 = ap_const_lv1_0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((tmp_20_i_fu_148_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((tmp_20_i_fu_148_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i1_i_reg_110_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i1_i_reg_110 <= i_reg_230;
            elsif ((not(((ap_start = ap_const_logic_0) or (p_dst_maty_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_rows_read_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i1_i_reg_110 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    j2_i_reg_121_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_22_i_fu_177_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                j2_i_reg_121 <= j_fu_182_p2;
            elsif (((tmp_20_i_fu_148_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j2_i_reg_121 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_230 <= i_fu_153_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (p_dst_maty_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_rows_read_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                p_dst_matx_cols_read_1_reg_211 <= p_dst_matx_cols_read_dout;
                p_dst_matx_rows_read_1_reg_206 <= p_dst_matx_rows_read_dout;
                tmp_10_reg_221 <= tmp_10_fu_136_p1;
                tmp_reg_216 <= tmp_fu_132_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp_12_reg_245 <= tmp_12_fu_173_p1;
                tmp_22_i_reg_251 <= tmp_22_i_fu_177_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_20_i_fu_148_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_23_i_reg_235 <= tmp_23_i_fu_159_p2;
                tmp_24_i_reg_240 <= tmp_24_i_fu_164_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, p_dst_matx_rows_read_empty_n, p_dst_matx_cols_read_empty_n, p_dst_maty_cols_read_empty_n, tmp_20_i_fu_148_p2, ap_CS_fsm_state2, tmp_22_i_fu_177_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (p_dst_maty_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_rows_read_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_20_i_fu_148_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (tmp_22_i_fu_177_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (tmp_22_i_fu_177_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(p_dstx_V_V_empty_n, p_dsty_V_V_empty_n, ap_enable_reg_pp0_iter1, tmp_22_i_reg_251)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((tmp_22_i_reg_251 = ap_const_lv1_1) and (p_dsty_V_V_empty_n = ap_const_logic_0)) or ((tmp_22_i_reg_251 = ap_const_lv1_1) and (p_dstx_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(p_dstx_V_V_empty_n, p_dsty_V_V_empty_n, ap_enable_reg_pp0_iter1, tmp_22_i_reg_251)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((tmp_22_i_reg_251 = ap_const_lv1_1) and (p_dsty_V_V_empty_n = ap_const_logic_0)) or ((tmp_22_i_reg_251 = ap_const_lv1_1) and (p_dstx_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, p_dst_matx_rows_read_empty_n, p_dst_matx_cols_read_empty_n, p_dst_maty_cols_read_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (p_dst_maty_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_rows_read_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_pp0_stage0_iter1_assign_proc : process(p_dstx_V_V_empty_n, p_dsty_V_V_empty_n, tmp_22_i_reg_251)
    begin
                ap_block_state4_pp0_stage0_iter1 <= (((tmp_22_i_reg_251 = ap_const_lv1_1) and (p_dsty_V_V_empty_n = ap_const_logic_0)) or ((tmp_22_i_reg_251 = ap_const_lv1_1) and (p_dstx_V_V_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(tmp_22_i_fu_177_p2)
    begin
        if ((tmp_22_i_fu_177_p2 = ap_const_lv1_0)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, tmp_20_i_fu_148_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_20_i_fu_148_p2 = ap_const_lv1_0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(tmp_20_i_fu_148_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_20_i_fu_148_p2 = ap_const_lv1_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i1_cast_i_fu_140_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i1_i_reg_110),32));
    i_fu_153_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(i1_i_reg_110));
    j2_cast_i_fu_169_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j2_i_reg_121),32));
    j_fu_182_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(j2_i_reg_121));

    p_dst_matx_cols_read_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_dst_matx_cols_read_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_matx_cols_read_blk_n <= p_dst_matx_cols_read_empty_n;
        else 
            p_dst_matx_cols_read_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_dst_matx_cols_read_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_dst_matx_rows_read_empty_n, p_dst_matx_cols_read_empty_n, p_dst_maty_cols_read_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (p_dst_maty_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_rows_read_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_matx_cols_read_read <= ap_const_logic_1;
        else 
            p_dst_matx_cols_read_read <= ap_const_logic_0;
        end if; 
    end process;

    p_dst_matx_data_V_address0 <= p_sum_cast_i_fu_192_p1(19 - 1 downto 0);

    p_dst_matx_data_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            p_dst_matx_data_V_ce0 <= ap_const_logic_1;
        else 
            p_dst_matx_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_dst_matx_data_V_d0 <= p_dstx_V_V_dout;

    p_dst_matx_data_V_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_22_i_reg_251, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_22_i_reg_251 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            p_dst_matx_data_V_we0 <= ap_const_logic_1;
        else 
            p_dst_matx_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    p_dst_matx_rows_read_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_dst_matx_rows_read_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_matx_rows_read_blk_n <= p_dst_matx_rows_read_empty_n;
        else 
            p_dst_matx_rows_read_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_dst_matx_rows_read_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_dst_matx_rows_read_empty_n, p_dst_matx_cols_read_empty_n, p_dst_maty_cols_read_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (p_dst_maty_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_rows_read_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_matx_rows_read_read <= ap_const_logic_1;
        else 
            p_dst_matx_rows_read_read <= ap_const_logic_0;
        end if; 
    end process;


    p_dst_maty_cols_read_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_dst_maty_cols_read_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_maty_cols_read_blk_n <= p_dst_maty_cols_read_empty_n;
        else 
            p_dst_maty_cols_read_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_dst_maty_cols_read_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_dst_matx_rows_read_empty_n, p_dst_matx_cols_read_empty_n, p_dst_maty_cols_read_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (p_dst_maty_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_cols_read_empty_n = ap_const_logic_0) or (p_dst_matx_rows_read_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            p_dst_maty_cols_read_read <= ap_const_logic_1;
        else 
            p_dst_maty_cols_read_read <= ap_const_logic_0;
        end if; 
    end process;

    p_dst_maty_data_V_address0 <= p_sum2_cast_i_fu_201_p1(19 - 1 downto 0);

    p_dst_maty_data_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            p_dst_maty_data_V_ce0 <= ap_const_logic_1;
        else 
            p_dst_maty_data_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_dst_maty_data_V_d0 <= p_dsty_V_V_dout;

    p_dst_maty_data_V_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_22_i_reg_251, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_22_i_reg_251 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            p_dst_maty_data_V_we0 <= ap_const_logic_1;
        else 
            p_dst_maty_data_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    p_dstx_V_V_blk_n_assign_proc : process(p_dstx_V_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_22_i_reg_251)
    begin
        if (((tmp_22_i_reg_251 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_dstx_V_V_blk_n <= p_dstx_V_V_empty_n;
        else 
            p_dstx_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_dstx_V_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_22_i_reg_251, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_22_i_reg_251 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            p_dstx_V_V_read <= ap_const_logic_1;
        else 
            p_dstx_V_V_read <= ap_const_logic_0;
        end if; 
    end process;


    p_dsty_V_V_blk_n_assign_proc : process(p_dsty_V_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, tmp_22_i_reg_251)
    begin
        if (((tmp_22_i_reg_251 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_dsty_V_V_blk_n <= p_dsty_V_V_empty_n;
        else 
            p_dsty_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_dsty_V_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_22_i_reg_251, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_22_i_reg_251 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            p_dsty_V_V_read <= ap_const_logic_1;
        else 
            p_dsty_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    p_sum2_cast_i_fu_201_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_sum2_i_fu_197_p2),32));
    p_sum2_i_fu_197_p2 <= std_logic_vector(unsigned(tmp_24_i_reg_240) + unsigned(tmp_12_reg_245));
    p_sum_cast_i_fu_192_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_sum_i_fu_188_p2),32));
    p_sum_i_fu_188_p2 <= std_logic_vector(unsigned(tmp_23_i_reg_235) + unsigned(tmp_12_reg_245));
    tmp_10_fu_136_p1 <= p_dst_maty_cols_read_dout(20 - 1 downto 0);
    tmp_11_fu_144_p1 <= i1_i_reg_110(20 - 1 downto 0);
    tmp_12_fu_173_p1 <= j2_i_reg_121(20 - 1 downto 0);
    tmp_20_i_fu_148_p2 <= "1" when (signed(i1_cast_i_fu_140_p1) < signed(p_dst_matx_rows_read_1_reg_206)) else "0";
    tmp_22_i_fu_177_p2 <= "1" when (signed(j2_cast_i_fu_169_p1) < signed(p_dst_matx_cols_read_1_reg_211)) else "0";
    tmp_23_i_fu_159_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(tmp_reg_216) * signed(tmp_11_fu_144_p1))), 20));
    tmp_24_i_fu_164_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(tmp_10_reg_221) * signed(tmp_11_fu_144_p1))), 20));
    tmp_fu_132_p1 <= p_dst_matx_cols_read_dout(20 - 1 downto 0);
end behav;
