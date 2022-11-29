// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "a0_sobel_accel.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic a0_sobel_accel::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic a0_sobel_accel::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> a0_sobel_accel::ap_ST_fsm_state1 = "1";
const sc_lv<2> a0_sobel_accel::ap_ST_fsm_state2 = "10";
const sc_lv<32> a0_sobel_accel::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> a0_sobel_accel::ap_const_lv32_1 = "1";
const bool a0_sobel_accel::ap_const_boolean_0 = false;
const sc_lv<8> a0_sobel_accel::ap_const_lv8_0 = "00000000";
const bool a0_sobel_accel::ap_const_boolean_1 = true;

a0_sobel_accel::a0_sobel_accel(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_Sobel_fu_78 = new a0_Sobel("grp_Sobel_fu_78");
    grp_Sobel_fu_78->p_src_mat_rows_read(p_src_rows);
    grp_Sobel_fu_78->p_src_mat_cols_read(p_src_cols);
    grp_Sobel_fu_78->p_src_mat_data_V_address0(grp_Sobel_fu_78_p_src_mat_data_V_address0);
    grp_Sobel_fu_78->p_src_mat_data_V_ce0(grp_Sobel_fu_78_p_src_mat_data_V_ce0);
    grp_Sobel_fu_78->p_src_mat_data_V_d0(grp_Sobel_fu_78_p_src_mat_data_V_d0);
    grp_Sobel_fu_78->p_src_mat_data_V_q0(p_src_data_V_q0);
    grp_Sobel_fu_78->p_src_mat_data_V_we0(grp_Sobel_fu_78_p_src_mat_data_V_we0);
    grp_Sobel_fu_78->p_src_mat_data_V_address1(grp_Sobel_fu_78_p_src_mat_data_V_address1);
    grp_Sobel_fu_78->p_src_mat_data_V_ce1(grp_Sobel_fu_78_p_src_mat_data_V_ce1);
    grp_Sobel_fu_78->p_src_mat_data_V_d1(grp_Sobel_fu_78_p_src_mat_data_V_d1);
    grp_Sobel_fu_78->p_src_mat_data_V_q1(ap_var_for_const0);
    grp_Sobel_fu_78->p_src_mat_data_V_we1(grp_Sobel_fu_78_p_src_mat_data_V_we1);
    grp_Sobel_fu_78->p_dst_matx_rows_read(p_dstgx_rows);
    grp_Sobel_fu_78->p_dst_matx_cols_read(p_dstgx_cols);
    grp_Sobel_fu_78->p_dst_matx_data_V_address0(grp_Sobel_fu_78_p_dst_matx_data_V_address0);
    grp_Sobel_fu_78->p_dst_matx_data_V_ce0(grp_Sobel_fu_78_p_dst_matx_data_V_ce0);
    grp_Sobel_fu_78->p_dst_matx_data_V_d0(grp_Sobel_fu_78_p_dst_matx_data_V_d0);
    grp_Sobel_fu_78->p_dst_matx_data_V_q0(ap_var_for_const0);
    grp_Sobel_fu_78->p_dst_matx_data_V_we0(grp_Sobel_fu_78_p_dst_matx_data_V_we0);
    grp_Sobel_fu_78->p_dst_matx_data_V_address1(grp_Sobel_fu_78_p_dst_matx_data_V_address1);
    grp_Sobel_fu_78->p_dst_matx_data_V_ce1(grp_Sobel_fu_78_p_dst_matx_data_V_ce1);
    grp_Sobel_fu_78->p_dst_matx_data_V_d1(grp_Sobel_fu_78_p_dst_matx_data_V_d1);
    grp_Sobel_fu_78->p_dst_matx_data_V_q1(ap_var_for_const0);
    grp_Sobel_fu_78->p_dst_matx_data_V_we1(grp_Sobel_fu_78_p_dst_matx_data_V_we1);
    grp_Sobel_fu_78->p_dst_maty_cols_read(p_dstgy_cols);
    grp_Sobel_fu_78->p_dst_maty_data_V_address0(grp_Sobel_fu_78_p_dst_maty_data_V_address0);
    grp_Sobel_fu_78->p_dst_maty_data_V_ce0(grp_Sobel_fu_78_p_dst_maty_data_V_ce0);
    grp_Sobel_fu_78->p_dst_maty_data_V_d0(grp_Sobel_fu_78_p_dst_maty_data_V_d0);
    grp_Sobel_fu_78->p_dst_maty_data_V_q0(ap_var_for_const0);
    grp_Sobel_fu_78->p_dst_maty_data_V_we0(grp_Sobel_fu_78_p_dst_maty_data_V_we0);
    grp_Sobel_fu_78->p_dst_maty_data_V_address1(grp_Sobel_fu_78_p_dst_maty_data_V_address1);
    grp_Sobel_fu_78->p_dst_maty_data_V_ce1(grp_Sobel_fu_78_p_dst_maty_data_V_ce1);
    grp_Sobel_fu_78->p_dst_maty_data_V_d1(grp_Sobel_fu_78_p_dst_maty_data_V_d1);
    grp_Sobel_fu_78->p_dst_maty_data_V_q1(ap_var_for_const0);
    grp_Sobel_fu_78->p_dst_maty_data_V_we1(grp_Sobel_fu_78_p_dst_maty_data_V_we1);
    grp_Sobel_fu_78->ap_clk(ap_clk);
    grp_Sobel_fu_78->ap_rst(ap_rst_n_inv);
    grp_Sobel_fu_78->p_src_mat_rows_read_ap_vld(ap_var_for_const1);
    grp_Sobel_fu_78->p_src_mat_cols_read_ap_vld(ap_var_for_const1);
    grp_Sobel_fu_78->p_dst_matx_rows_read_ap_vld(ap_var_for_const1);
    grp_Sobel_fu_78->p_dst_matx_cols_read_ap_vld(ap_var_for_const1);
    grp_Sobel_fu_78->p_dst_maty_cols_read_ap_vld(ap_var_for_const1);
    grp_Sobel_fu_78->ap_done(grp_Sobel_fu_78_ap_done);
    grp_Sobel_fu_78->ap_start(grp_Sobel_fu_78_ap_start);
    grp_Sobel_fu_78->ap_ready(grp_Sobel_fu_78_ap_ready);
    grp_Sobel_fu_78->ap_idle(grp_Sobel_fu_78_ap_idle);
    grp_Sobel_fu_78->ap_continue(grp_Sobel_fu_78_ap_continue);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state2_on_subcall_done);
    sensitive << ( ap_sync_grp_Sobel_fu_78_ap_ready );
    sensitive << ( ap_sync_grp_Sobel_fu_78_ap_done );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_block_state2_on_subcall_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_block_state2_on_subcall_done );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sync_grp_Sobel_fu_78_ap_done);
    sensitive << ( grp_Sobel_fu_78_ap_done );
    sensitive << ( ap_sync_reg_grp_Sobel_fu_78_ap_done );

    SC_METHOD(thread_ap_sync_grp_Sobel_fu_78_ap_ready);
    sensitive << ( grp_Sobel_fu_78_ap_ready );
    sensitive << ( ap_sync_reg_grp_Sobel_fu_78_ap_ready );

    SC_METHOD(thread_grp_Sobel_fu_78_ap_continue);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_block_state2_on_subcall_done );

    SC_METHOD(thread_grp_Sobel_fu_78_ap_start);
    sensitive << ( grp_Sobel_fu_78_ap_start_reg );

    SC_METHOD(thread_p_dstgx_data_V_address0);
    sensitive << ( grp_Sobel_fu_78_p_dst_matx_data_V_address0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_p_dstgx_data_V_ce0);
    sensitive << ( grp_Sobel_fu_78_p_dst_matx_data_V_ce0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_p_dstgx_data_V_d0);
    sensitive << ( grp_Sobel_fu_78_p_dst_matx_data_V_d0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_p_dstgx_data_V_we0);
    sensitive << ( grp_Sobel_fu_78_p_dst_matx_data_V_we0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_p_dstgy_data_V_address0);
    sensitive << ( grp_Sobel_fu_78_p_dst_maty_data_V_address0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_p_dstgy_data_V_ce0);
    sensitive << ( grp_Sobel_fu_78_p_dst_maty_data_V_ce0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_p_dstgy_data_V_d0);
    sensitive << ( grp_Sobel_fu_78_p_dst_maty_data_V_d0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_p_dstgy_data_V_we0);
    sensitive << ( grp_Sobel_fu_78_p_dst_maty_data_V_we0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_p_src_data_V_address0);
    sensitive << ( grp_Sobel_fu_78_p_src_mat_data_V_address0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_p_src_data_V_ce0);
    sensitive << ( grp_Sobel_fu_78_p_src_mat_data_V_ce0 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_block_state2_on_subcall_done );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const1);

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "01";
    grp_Sobel_fu_78_ap_start_reg = SC_LOGIC_0;
    ap_sync_reg_grp_Sobel_fu_78_ap_ready = SC_LOGIC_0;
    ap_sync_reg_grp_Sobel_fu_78_ap_done = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "a0_sobel_accel_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, p_src_allocatedFlag, "(port)p_src_allocatedFlag");
    sc_trace(mVcdFile, p_src_rows, "(port)p_src_rows");
    sc_trace(mVcdFile, p_src_cols, "(port)p_src_cols");
    sc_trace(mVcdFile, p_src_size, "(port)p_src_size");
    sc_trace(mVcdFile, p_src_data_V_address0, "(port)p_src_data_V_address0");
    sc_trace(mVcdFile, p_src_data_V_ce0, "(port)p_src_data_V_ce0");
    sc_trace(mVcdFile, p_src_data_V_q0, "(port)p_src_data_V_q0");
    sc_trace(mVcdFile, p_dstgx_allocatedFlag, "(port)p_dstgx_allocatedFlag");
    sc_trace(mVcdFile, p_dstgx_rows, "(port)p_dstgx_rows");
    sc_trace(mVcdFile, p_dstgx_cols, "(port)p_dstgx_cols");
    sc_trace(mVcdFile, p_dstgx_size, "(port)p_dstgx_size");
    sc_trace(mVcdFile, p_dstgx_data_V_address0, "(port)p_dstgx_data_V_address0");
    sc_trace(mVcdFile, p_dstgx_data_V_ce0, "(port)p_dstgx_data_V_ce0");
    sc_trace(mVcdFile, p_dstgx_data_V_we0, "(port)p_dstgx_data_V_we0");
    sc_trace(mVcdFile, p_dstgx_data_V_d0, "(port)p_dstgx_data_V_d0");
    sc_trace(mVcdFile, p_dstgy_allocatedFlag, "(port)p_dstgy_allocatedFlag");
    sc_trace(mVcdFile, p_dstgy_rows, "(port)p_dstgy_rows");
    sc_trace(mVcdFile, p_dstgy_cols, "(port)p_dstgy_cols");
    sc_trace(mVcdFile, p_dstgy_size, "(port)p_dstgy_size");
    sc_trace(mVcdFile, p_dstgy_data_V_address0, "(port)p_dstgy_data_V_address0");
    sc_trace(mVcdFile, p_dstgy_data_V_ce0, "(port)p_dstgy_data_V_ce0");
    sc_trace(mVcdFile, p_dstgy_data_V_we0, "(port)p_dstgy_data_V_we0");
    sc_trace(mVcdFile, p_dstgy_data_V_d0, "(port)p_dstgy_data_V_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_src_mat_data_V_address0, "grp_Sobel_fu_78_p_src_mat_data_V_address0");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_src_mat_data_V_ce0, "grp_Sobel_fu_78_p_src_mat_data_V_ce0");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_src_mat_data_V_d0, "grp_Sobel_fu_78_p_src_mat_data_V_d0");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_src_mat_data_V_we0, "grp_Sobel_fu_78_p_src_mat_data_V_we0");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_src_mat_data_V_address1, "grp_Sobel_fu_78_p_src_mat_data_V_address1");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_src_mat_data_V_ce1, "grp_Sobel_fu_78_p_src_mat_data_V_ce1");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_src_mat_data_V_d1, "grp_Sobel_fu_78_p_src_mat_data_V_d1");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_src_mat_data_V_we1, "grp_Sobel_fu_78_p_src_mat_data_V_we1");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_matx_data_V_address0, "grp_Sobel_fu_78_p_dst_matx_data_V_address0");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_matx_data_V_ce0, "grp_Sobel_fu_78_p_dst_matx_data_V_ce0");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_matx_data_V_d0, "grp_Sobel_fu_78_p_dst_matx_data_V_d0");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_matx_data_V_we0, "grp_Sobel_fu_78_p_dst_matx_data_V_we0");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_matx_data_V_address1, "grp_Sobel_fu_78_p_dst_matx_data_V_address1");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_matx_data_V_ce1, "grp_Sobel_fu_78_p_dst_matx_data_V_ce1");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_matx_data_V_d1, "grp_Sobel_fu_78_p_dst_matx_data_V_d1");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_matx_data_V_we1, "grp_Sobel_fu_78_p_dst_matx_data_V_we1");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_maty_data_V_address0, "grp_Sobel_fu_78_p_dst_maty_data_V_address0");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_maty_data_V_ce0, "grp_Sobel_fu_78_p_dst_maty_data_V_ce0");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_maty_data_V_d0, "grp_Sobel_fu_78_p_dst_maty_data_V_d0");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_maty_data_V_we0, "grp_Sobel_fu_78_p_dst_maty_data_V_we0");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_maty_data_V_address1, "grp_Sobel_fu_78_p_dst_maty_data_V_address1");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_maty_data_V_ce1, "grp_Sobel_fu_78_p_dst_maty_data_V_ce1");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_maty_data_V_d1, "grp_Sobel_fu_78_p_dst_maty_data_V_d1");
    sc_trace(mVcdFile, grp_Sobel_fu_78_p_dst_maty_data_V_we1, "grp_Sobel_fu_78_p_dst_maty_data_V_we1");
    sc_trace(mVcdFile, grp_Sobel_fu_78_ap_done, "grp_Sobel_fu_78_ap_done");
    sc_trace(mVcdFile, grp_Sobel_fu_78_ap_start, "grp_Sobel_fu_78_ap_start");
    sc_trace(mVcdFile, grp_Sobel_fu_78_ap_ready, "grp_Sobel_fu_78_ap_ready");
    sc_trace(mVcdFile, grp_Sobel_fu_78_ap_idle, "grp_Sobel_fu_78_ap_idle");
    sc_trace(mVcdFile, grp_Sobel_fu_78_ap_continue, "grp_Sobel_fu_78_ap_continue");
    sc_trace(mVcdFile, grp_Sobel_fu_78_ap_start_reg, "grp_Sobel_fu_78_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, ap_sync_grp_Sobel_fu_78_ap_ready, "ap_sync_grp_Sobel_fu_78_ap_ready");
    sc_trace(mVcdFile, ap_sync_grp_Sobel_fu_78_ap_done, "ap_sync_grp_Sobel_fu_78_ap_done");
    sc_trace(mVcdFile, ap_block_state2_on_subcall_done, "ap_block_state2_on_subcall_done");
    sc_trace(mVcdFile, ap_sync_reg_grp_Sobel_fu_78_ap_ready, "ap_sync_reg_grp_Sobel_fu_78_ap_ready");
    sc_trace(mVcdFile, ap_sync_reg_grp_Sobel_fu_78_ap_done, "ap_sync_reg_grp_Sobel_fu_78_ap_done");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("a0_sobel_accel.hdltvin.dat");
    mHdltvoutHandle.open("a0_sobel_accel.hdltvout.dat");
}

a0_sobel_accel::~a0_sobel_accel() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete grp_Sobel_fu_78;
}

void a0_sobel_accel::thread_ap_var_for_const1() {
    ap_var_for_const1 = ap_const_logic_1;
}

void a0_sobel_accel::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_lv8_0;
}

void a0_sobel_accel::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_sync_reg_grp_Sobel_fu_78_ap_done = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
             esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_state2_on_subcall_done.read()))) {
            ap_sync_reg_grp_Sobel_fu_78_ap_done = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_Sobel_fu_78_ap_done.read())) {
            ap_sync_reg_grp_Sobel_fu_78_ap_done = ap_const_logic_1;
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_sync_reg_grp_Sobel_fu_78_ap_ready = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
             esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_state2_on_subcall_done.read()))) {
            ap_sync_reg_grp_Sobel_fu_78_ap_ready = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_Sobel_fu_78_ap_ready.read())) {
            ap_sync_reg_grp_Sobel_fu_78_ap_ready = ap_const_logic_1;
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        grp_Sobel_fu_78_ap_start_reg = ap_const_logic_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
              esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
             (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
              esl_seteq<1,1,1>(ap_const_logic_0, ap_sync_grp_Sobel_fu_78_ap_ready.read())))) {
            grp_Sobel_fu_78_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_Sobel_fu_78_ap_ready.read())) {
            grp_Sobel_fu_78_ap_start_reg = ap_const_logic_0;
        }
    }
}

void a0_sobel_accel::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void a0_sobel_accel::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void a0_sobel_accel::thread_ap_block_state2_on_subcall_done() {
    ap_block_state2_on_subcall_done = esl_seteq<1,1,1>(ap_const_logic_0, (ap_sync_grp_Sobel_fu_78_ap_ready.read() & ap_sync_grp_Sobel_fu_78_ap_done.read()));
}

void a0_sobel_accel::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_state2_on_subcall_done.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void a0_sobel_accel::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void a0_sobel_accel::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_state2_on_subcall_done.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void a0_sobel_accel::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void a0_sobel_accel::thread_ap_sync_grp_Sobel_fu_78_ap_done() {
    ap_sync_grp_Sobel_fu_78_ap_done = (grp_Sobel_fu_78_ap_done.read() | ap_sync_reg_grp_Sobel_fu_78_ap_done.read());
}

void a0_sobel_accel::thread_ap_sync_grp_Sobel_fu_78_ap_ready() {
    ap_sync_grp_Sobel_fu_78_ap_ready = (grp_Sobel_fu_78_ap_ready.read() | ap_sync_reg_grp_Sobel_fu_78_ap_ready.read());
}

void a0_sobel_accel::thread_grp_Sobel_fu_78_ap_continue() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_state2_on_subcall_done.read()))) {
        grp_Sobel_fu_78_ap_continue = ap_const_logic_1;
    } else {
        grp_Sobel_fu_78_ap_continue = ap_const_logic_0;
    }
}

void a0_sobel_accel::thread_grp_Sobel_fu_78_ap_start() {
    grp_Sobel_fu_78_ap_start = grp_Sobel_fu_78_ap_start_reg.read();
}

void a0_sobel_accel::thread_p_dstgx_data_V_address0() {
    p_dstgx_data_V_address0 = grp_Sobel_fu_78_p_dst_matx_data_V_address0.read();
}

void a0_sobel_accel::thread_p_dstgx_data_V_ce0() {
    p_dstgx_data_V_ce0 = grp_Sobel_fu_78_p_dst_matx_data_V_ce0.read();
}

void a0_sobel_accel::thread_p_dstgx_data_V_d0() {
    p_dstgx_data_V_d0 = grp_Sobel_fu_78_p_dst_matx_data_V_d0.read();
}

void a0_sobel_accel::thread_p_dstgx_data_V_we0() {
    p_dstgx_data_V_we0 = grp_Sobel_fu_78_p_dst_matx_data_V_we0.read();
}

void a0_sobel_accel::thread_p_dstgy_data_V_address0() {
    p_dstgy_data_V_address0 = grp_Sobel_fu_78_p_dst_maty_data_V_address0.read();
}

void a0_sobel_accel::thread_p_dstgy_data_V_ce0() {
    p_dstgy_data_V_ce0 = grp_Sobel_fu_78_p_dst_maty_data_V_ce0.read();
}

void a0_sobel_accel::thread_p_dstgy_data_V_d0() {
    p_dstgy_data_V_d0 = grp_Sobel_fu_78_p_dst_maty_data_V_d0.read();
}

void a0_sobel_accel::thread_p_dstgy_data_V_we0() {
    p_dstgy_data_V_we0 = grp_Sobel_fu_78_p_dst_maty_data_V_we0.read();
}

void a0_sobel_accel::thread_p_src_data_V_address0() {
    p_src_data_V_address0 = grp_Sobel_fu_78_p_src_mat_data_V_address0.read();
}

void a0_sobel_accel::thread_p_src_data_V_ce0() {
    p_src_data_V_ce0 = grp_Sobel_fu_78_p_src_mat_data_V_ce0.read();
}

void a0_sobel_accel::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_boolean_0, ap_block_state2_on_subcall_done.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

void a0_sobel_accel::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"p_src_allocatedFlag\" :  \"" << p_src_allocatedFlag.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"p_src_rows\" :  \"" << p_src_rows.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"p_src_cols\" :  \"" << p_src_cols.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"p_src_size\" :  \"" << p_src_size.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"p_src_data_V_address0\" :  \"" << p_src_data_V_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"p_src_data_V_ce0\" :  \"" << p_src_data_V_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"p_src_data_V_q0\" :  \"" << p_src_data_V_q0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"p_dstgx_allocatedFlag\" :  \"" << p_dstgx_allocatedFlag.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"p_dstgx_rows\" :  \"" << p_dstgx_rows.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"p_dstgx_cols\" :  \"" << p_dstgx_cols.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"p_dstgx_size\" :  \"" << p_dstgx_size.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"p_dstgx_data_V_address0\" :  \"" << p_dstgx_data_V_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"p_dstgx_data_V_ce0\" :  \"" << p_dstgx_data_V_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"p_dstgx_data_V_we0\" :  \"" << p_dstgx_data_V_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"p_dstgx_data_V_d0\" :  \"" << p_dstgx_data_V_d0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"p_dstgy_allocatedFlag\" :  \"" << p_dstgy_allocatedFlag.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"p_dstgy_rows\" :  \"" << p_dstgy_rows.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"p_dstgy_cols\" :  \"" << p_dstgy_cols.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"p_dstgy_size\" :  \"" << p_dstgy_size.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"p_dstgy_data_V_address0\" :  \"" << p_dstgy_data_V_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"p_dstgy_data_V_ce0\" :  \"" << p_dstgy_data_V_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"p_dstgy_data_V_we0\" :  \"" << p_dstgy_data_V_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"p_dstgy_data_V_d0\" :  \"" << p_dstgy_data_V_d0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
