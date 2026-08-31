////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.63c
//  \   \         Application: netgen
//  /   /         Filename: sin_gen_synthesis.v
// /___/   /\     Timestamp: Fri Jul 24 10:35:19 2026
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim sin_gen.ngc sin_gen_synthesis.v 
// Device	: xc6slx45t-3-fgg484
// Input file	: sin_gen.ngc
// Output file	: C:\Xilinx\Project\sin_gen\netgen\synthesis\sin_gen_synthesis.v
// # of Modules	: 1
// Design Name	: sin_gen
// Xilinx        : D:\Xilinx\12.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module sin_gen (
  clk, reset, adc_data_a, adc_data_b, control, out_clk_p, out_clk_n, takt_p, takt_n, adc_clk, led_ds4, adc_cs, uart_tx, signal_out
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input reset;
  input adc_data_a;
  input adc_data_b;
  output control;
  output out_clk_p;
  output out_clk_n;
  output takt_p;
  output takt_n;
  output adc_clk;
  output led_ds4;
  output adc_cs;
  output uart_tx;
  output [9 : 0] signal_out;
  
  // synthesis translate_off
  
  wire clk_BUFGP_0;
  wire reset_IBUF_1;
  wire adc_data_a_IBUF_2;
  wire adc_data_b_IBUF_3;
  wire \max5853_inst/dac_ctrl_14 ;
  wire \max5853_inst/dac_clk_15 ;
  wire \adc_receiver_inst/cs_48 ;
  wire \adc_receiver_inst/data_ready_49 ;
  wire \uart_inst/tx_pin_50 ;
  wire \uart_inst/tx_done_51 ;
  wire tx_start_52;
  wire tx_done_d_61;
  wire sclk_rise_en_62;
  wire state_FSM_FFd1_63;
  wire state_FSM_FFd2_64;
  wire out_takt_65;
  wire led_ds4_OBUF_106;
  wire out_clk_n_OBUF_107;
  wire _n0104;
  wire takt_n_OBUF_109;
  wire \byte_idx[1]_GND_1_o_add_16_OUT<1> ;
  wire \byte_idx[1]_GND_1_o_add_16_OUT<0> ;
  wire \byte_idx[1]_adc_b[15]_wide_mux_14_OUT<7> ;
  wire \byte_idx[1]_adc_b[15]_wide_mux_14_OUT<6> ;
  wire \byte_idx[1]_adc_b[15]_wide_mux_14_OUT<5> ;
  wire \byte_idx[1]_adc_b[15]_wide_mux_14_OUT<4> ;
  wire \byte_idx[1]_adc_b[15]_wide_mux_14_OUT<3> ;
  wire \byte_idx[1]_adc_b[15]_wide_mux_14_OUT<2> ;
  wire \byte_idx[1]_adc_b[15]_wide_mux_14_OUT<1> ;
  wire \byte_idx[1]_adc_b[15]_wide_mux_14_OUT<0> ;
  wire N0;
  wire N1;
  wire _n0126_inv_142;
  wire Reset_OR_DriverANDClockEnable;
  wire _n0130_inv;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \state_FSM_FFd2-In ;
  wire \state_FSM_FFd1-In ;
  wire \Maccum_phase_acc_lut[1] ;
  wire \Maccum_phase_acc_lut[3] ;
  wire \Maccum_phase_acc_lut[4] ;
  wire \Maccum_phase_acc_lut[5] ;
  wire \Maccum_phase_acc_lut[7] ;
  wire \Maccum_phase_acc_lut[9] ;
  wire \Maccum_phase_acc_lut[12] ;
  wire \Maccum_phase_acc_lut[13] ;
  wire \Maccum_phase_acc_lut[14] ;
  wire \Maccum_phase_acc_lut[15] ;
  wire N22;
  wire \max5853_inst/Result<3>_bdd0 ;
  wire \max5853_inst/Result<1>1 ;
  wire \max5853_inst/Result<0>1 ;
  wire \max5853_inst/_n0064_inv ;
  wire \max5853_inst/_n0061_inv ;
  wire \max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<0> ;
  wire \max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<1> ;
  wire \max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<2> ;
  wire \max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<3> ;
  wire \max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<4> ;
  wire \max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<5> ;
  wire \max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<6> ;
  wire \max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<7> ;
  wire \max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<8> ;
  wire \max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<9> ;
  wire \max5853_inst/run_mode_260 ;
  wire \adc_receiver_inst/Mcount_bit_count3 ;
  wire \adc_receiver_inst/Mcount_bit_count2 ;
  wire \adc_receiver_inst/Mcount_bit_count1 ;
  wire \adc_receiver_inst/Mcount_bit_count ;
  wire \adc_receiver_inst/_n0048_inv ;
  wire \adc_receiver_inst/bit_count[3]_PWR_5_o_equal_1_o ;
  wire \uart_inst/Mmux_bit_index[2]_tx_data_reg[7]_Mux_9_o_3_301 ;
  wire \uart_inst/Mmux_bit_index[2]_tx_data_reg[7]_Mux_9_o_4_302 ;
  wire \uart_inst/state_FSM_FFd1_311 ;
  wire \uart_inst/state_FSM_FFd2_312 ;
  wire \uart_inst/state_FSM_FFd1-In ;
  wire \uart_inst/state_FSM_FFd2-In_314 ;
  wire \uart_inst/_n0113_inv ;
  wire \uart_inst/GND_7_o_GND_7_o_equal_20_o ;
  wire \uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<0> ;
  wire \uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<1> ;
  wire \uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<2> ;
  wire \uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<3> ;
  wire \uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<4> ;
  wire \uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<5> ;
  wire \uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<6> ;
  wire \uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<7> ;
  wire N49;
  wire \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT82 ;
  wire N51;
  wire N53;
  wire N55;
  wire N57;
  wire \max5853_inst/dac_ctrl_glue_set_365 ;
  wire \max5853_inst/run_mode_glue_set_366 ;
  wire \Maccum_phase_acc_cy<2>_rt_367 ;
  wire \Maccum_phase_acc_cy<6>_rt_368 ;
  wire \Maccum_phase_acc_cy<8>_rt_369 ;
  wire \Maccum_phase_acc_cy<10>_rt_370 ;
  wire \Maccum_phase_acc_cy<11>_rt_371 ;
  wire \Maccum_phase_acc_cy<16>_rt_372 ;
  wire \Maccum_phase_acc_cy<17>_rt_373 ;
  wire \Maccum_phase_acc_cy<18>_rt_374 ;
  wire \Maccum_phase_acc_cy<19>_rt_375 ;
  wire \Maccum_phase_acc_cy<20>_rt_376 ;
  wire \Maccum_phase_acc_cy<21>_rt_377 ;
  wire \Maccum_phase_acc_cy<22>_rt_378 ;
  wire out_takt_rstpot_379;
  wire \uart_inst/tx_pin_rstpot_380 ;
  wire \uart_inst/tx_done_rstpot_381 ;
  wire sclk_rise_en_rstpot_382;
  wire N67;
  wire \uart_inst/bit_index_0_dpot_384 ;
  wire \uart_inst/bit_index_1_dpot_385 ;
  wire \uart_inst/bit_index_2_dpot_386 ;
  wire N71;
  wire N73;
  wire N75;
  wire N80;
  wire N82;
  wire N84;
  wire N86;
  wire phase_acc_18_1_394;
  wire phase_acc_20_1_395;
  wire phase_acc_17_1_396;
  wire phase_acc_19_1_397;
  wire phase_acc_16_1_398;
  wire phase_acc_21_1_399;
  wire counter_1_rstpot_400;
  wire counter_0_rstpot_401;
  wire counter_2_rstpot_402;
  wire counter_3_rstpot_403;
  wire counter_4_rstpot_404;
  wire counter_5_rstpot_405;
  wire N88;
  wire N89;
  wire [9 : 0] \max5853_inst/dac_data ;
  wire [15 : 0] \adc_receiver_inst/data_out_a ;
  wire [15 : 0] \adc_receiver_inst/data_out_b ;
  wire [23 : 1] phase_acc;
  wire [7 : 0] uart_data;
  wire [15 : 0] adc_a;
  wire [15 : 0] adc_b;
  wire [9 : 0] sin_out;
  wire [9 : 0] cos_out;
  wire [23 : 1] Result;
  wire [1 : 0] byte_idx;
  wire [22 : 1] Maccum_phase_acc_cy;
  wire [5 : 0] counter;
  wire [5 : 0] \max5853_inst/control_counter ;
  wire [1 : 0] \max5853_inst/clk_div_cnt ;
  wire [5 : 0] \max5853_inst/Result ;
  wire [14 : 0] \adc_receiver_inst/shift_reg_b ;
  wire [14 : 0] \adc_receiver_inst/shift_reg_a ;
  wire [3 : 0] \adc_receiver_inst/bit_count ;
  wire [7 : 0] \uart_inst/clk_count ;
  wire [2 : 0] \uart_inst/bit_index ;
  wire [7 : 0] \uart_inst/tx_data_reg ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FDS   tx_done_d (
    .C(clk_BUFGP_0),
    .D(\uart_inst/tx_done_51 ),
    .S(reset_IBUF_1),
    .Q(tx_done_d_61)
  );
  FDRE   byte_idx_0 (
    .C(clk_BUFGP_0),
    .CE(_n0126_inv_142),
    .D(\byte_idx[1]_GND_1_o_add_16_OUT<0> ),
    .R(Reset_OR_DriverANDClockEnable),
    .Q(byte_idx[0])
  );
  FDRE   byte_idx_1 (
    .C(clk_BUFGP_0),
    .CE(_n0126_inv_142),
    .D(\byte_idx[1]_GND_1_o_add_16_OUT<1> ),
    .R(Reset_OR_DriverANDClockEnable),
    .Q(byte_idx[1])
  );
  FDRE   adc_b_0 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [0]),
    .R(reset_IBUF_1),
    .Q(adc_b[0])
  );
  FDRE   adc_b_1 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [1]),
    .R(reset_IBUF_1),
    .Q(adc_b[1])
  );
  FDRE   adc_b_2 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [2]),
    .R(reset_IBUF_1),
    .Q(adc_b[2])
  );
  FDRE   adc_b_3 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [3]),
    .R(reset_IBUF_1),
    .Q(adc_b[3])
  );
  FDRE   adc_b_4 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [4]),
    .R(reset_IBUF_1),
    .Q(adc_b[4])
  );
  FDRE   adc_b_5 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [5]),
    .R(reset_IBUF_1),
    .Q(adc_b[5])
  );
  FDRE   adc_b_6 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [6]),
    .R(reset_IBUF_1),
    .Q(adc_b[6])
  );
  FDRE   adc_b_7 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [7]),
    .R(reset_IBUF_1),
    .Q(adc_b[7])
  );
  FDRE   adc_b_8 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [8]),
    .R(reset_IBUF_1),
    .Q(adc_b[8])
  );
  FDRE   adc_b_9 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [9]),
    .R(reset_IBUF_1),
    .Q(adc_b[9])
  );
  FDRE   adc_b_10 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [10]),
    .R(reset_IBUF_1),
    .Q(adc_b[10])
  );
  FDRE   adc_b_11 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [11]),
    .R(reset_IBUF_1),
    .Q(adc_b[11])
  );
  FDRE   adc_b_12 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [12]),
    .R(reset_IBUF_1),
    .Q(adc_b[12])
  );
  FDRE   adc_b_13 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [13]),
    .R(reset_IBUF_1),
    .Q(adc_b[13])
  );
  FDRE   adc_b_14 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [14]),
    .R(reset_IBUF_1),
    .Q(adc_b[14])
  );
  FDRE   adc_b_15 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_b [15]),
    .R(reset_IBUF_1),
    .Q(adc_b[15])
  );
  FDRE   adc_a_0 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [0]),
    .R(reset_IBUF_1),
    .Q(adc_a[0])
  );
  FDRE   adc_a_1 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [1]),
    .R(reset_IBUF_1),
    .Q(adc_a[1])
  );
  FDRE   adc_a_2 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [2]),
    .R(reset_IBUF_1),
    .Q(adc_a[2])
  );
  FDRE   adc_a_3 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [3]),
    .R(reset_IBUF_1),
    .Q(adc_a[3])
  );
  FDRE   adc_a_4 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [4]),
    .R(reset_IBUF_1),
    .Q(adc_a[4])
  );
  FDRE   adc_a_5 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [5]),
    .R(reset_IBUF_1),
    .Q(adc_a[5])
  );
  FDRE   adc_a_6 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [6]),
    .R(reset_IBUF_1),
    .Q(adc_a[6])
  );
  FDRE   adc_a_7 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [7]),
    .R(reset_IBUF_1),
    .Q(adc_a[7])
  );
  FDRE   adc_a_8 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [8]),
    .R(reset_IBUF_1),
    .Q(adc_a[8])
  );
  FDRE   adc_a_9 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [9]),
    .R(reset_IBUF_1),
    .Q(adc_a[9])
  );
  FDRE   adc_a_10 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [10]),
    .R(reset_IBUF_1),
    .Q(adc_a[10])
  );
  FDRE   adc_a_11 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [11]),
    .R(reset_IBUF_1),
    .Q(adc_a[11])
  );
  FDRE   adc_a_12 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [12]),
    .R(reset_IBUF_1),
    .Q(adc_a[12])
  );
  FDRE   adc_a_13 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [13]),
    .R(reset_IBUF_1),
    .Q(adc_a[13])
  );
  FDRE   adc_a_14 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [14]),
    .R(reset_IBUF_1),
    .Q(adc_a[14])
  );
  FDRE   adc_a_15 (
    .C(clk_BUFGP_0),
    .CE(_n0130_inv),
    .D(\adc_receiver_inst/data_out_a [15]),
    .R(reset_IBUF_1),
    .Q(adc_a[15])
  );
  FDR   tx_start (
    .C(clk_BUFGP_0),
    .D(state_FSM_FFd2_64),
    .R(reset_IBUF_1),
    .Q(tx_start_52)
  );
  FDRE   uart_data_0 (
    .C(clk_BUFGP_0),
    .CE(_n0104),
    .D(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<0> ),
    .R(reset_IBUF_1),
    .Q(uart_data[0])
  );
  FDRE   uart_data_1 (
    .C(clk_BUFGP_0),
    .CE(_n0104),
    .D(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<1> ),
    .R(reset_IBUF_1),
    .Q(uart_data[1])
  );
  FDRE   uart_data_2 (
    .C(clk_BUFGP_0),
    .CE(_n0104),
    .D(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<2> ),
    .R(reset_IBUF_1),
    .Q(uart_data[2])
  );
  FDRE   uart_data_3 (
    .C(clk_BUFGP_0),
    .CE(_n0104),
    .D(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<3> ),
    .R(reset_IBUF_1),
    .Q(uart_data[3])
  );
  FDRE   uart_data_4 (
    .C(clk_BUFGP_0),
    .CE(_n0104),
    .D(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<4> ),
    .R(reset_IBUF_1),
    .Q(uart_data[4])
  );
  FDRE   uart_data_5 (
    .C(clk_BUFGP_0),
    .CE(_n0104),
    .D(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<5> ),
    .R(reset_IBUF_1),
    .Q(uart_data[5])
  );
  FDRE   uart_data_6 (
    .C(clk_BUFGP_0),
    .CE(_n0104),
    .D(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<6> ),
    .R(reset_IBUF_1),
    .Q(uart_data[6])
  );
  FDRE   uart_data_7 (
    .C(clk_BUFGP_0),
    .CE(_n0104),
    .D(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<7> ),
    .R(reset_IBUF_1),
    .Q(uart_data[7])
  );
  FDR   state_FSM_FFd2 (
    .C(clk_BUFGP_0),
    .D(\state_FSM_FFd2-In ),
    .R(reset_IBUF_1),
    .Q(state_FSM_FFd2_64)
  );
  FDR   state_FSM_FFd1 (
    .C(clk_BUFGP_0),
    .D(\state_FSM_FFd1-In ),
    .R(reset_IBUF_1),
    .Q(state_FSM_FFd1_63)
  );
  FDR   phase_acc_1 (
    .C(clk_BUFGP_0),
    .D(Result[1]),
    .R(reset_IBUF_1),
    .Q(phase_acc[1])
  );
  FDR   phase_acc_2 (
    .C(clk_BUFGP_0),
    .D(Result[2]),
    .R(reset_IBUF_1),
    .Q(phase_acc[2])
  );
  FDR   phase_acc_3 (
    .C(clk_BUFGP_0),
    .D(Result[3]),
    .R(reset_IBUF_1),
    .Q(phase_acc[3])
  );
  FDR   phase_acc_4 (
    .C(clk_BUFGP_0),
    .D(Result[4]),
    .R(reset_IBUF_1),
    .Q(phase_acc[4])
  );
  FDR   phase_acc_5 (
    .C(clk_BUFGP_0),
    .D(Result[5]),
    .R(reset_IBUF_1),
    .Q(phase_acc[5])
  );
  FDR   phase_acc_6 (
    .C(clk_BUFGP_0),
    .D(Result[6]),
    .R(reset_IBUF_1),
    .Q(phase_acc[6])
  );
  FDR   phase_acc_7 (
    .C(clk_BUFGP_0),
    .D(Result[7]),
    .R(reset_IBUF_1),
    .Q(phase_acc[7])
  );
  FDR   phase_acc_8 (
    .C(clk_BUFGP_0),
    .D(Result[8]),
    .R(reset_IBUF_1),
    .Q(phase_acc[8])
  );
  FDR   phase_acc_9 (
    .C(clk_BUFGP_0),
    .D(Result[9]),
    .R(reset_IBUF_1),
    .Q(phase_acc[9])
  );
  FDR   phase_acc_10 (
    .C(clk_BUFGP_0),
    .D(Result[10]),
    .R(reset_IBUF_1),
    .Q(phase_acc[10])
  );
  FDR   phase_acc_11 (
    .C(clk_BUFGP_0),
    .D(Result[11]),
    .R(reset_IBUF_1),
    .Q(phase_acc[11])
  );
  FDR   phase_acc_12 (
    .C(clk_BUFGP_0),
    .D(Result[12]),
    .R(reset_IBUF_1),
    .Q(phase_acc[12])
  );
  FDR   phase_acc_13 (
    .C(clk_BUFGP_0),
    .D(Result[13]),
    .R(reset_IBUF_1),
    .Q(phase_acc[13])
  );
  FDR   phase_acc_14 (
    .C(clk_BUFGP_0),
    .D(Result[14]),
    .R(reset_IBUF_1),
    .Q(phase_acc[14])
  );
  FDR   phase_acc_15 (
    .C(clk_BUFGP_0),
    .D(Result[15]),
    .R(reset_IBUF_1),
    .Q(phase_acc[15])
  );
  FDR   phase_acc_16 (
    .C(clk_BUFGP_0),
    .D(Result[16]),
    .R(reset_IBUF_1),
    .Q(phase_acc[16])
  );
  FDR   phase_acc_17 (
    .C(clk_BUFGP_0),
    .D(Result[17]),
    .R(reset_IBUF_1),
    .Q(phase_acc[17])
  );
  FDR   phase_acc_18 (
    .C(clk_BUFGP_0),
    .D(Result[18]),
    .R(reset_IBUF_1),
    .Q(phase_acc[18])
  );
  FDR   phase_acc_19 (
    .C(clk_BUFGP_0),
    .D(Result[19]),
    .R(reset_IBUF_1),
    .Q(phase_acc[19])
  );
  FDR   phase_acc_20 (
    .C(clk_BUFGP_0),
    .D(Result[20]),
    .R(reset_IBUF_1),
    .Q(phase_acc[20])
  );
  FDR   phase_acc_21 (
    .C(clk_BUFGP_0),
    .D(Result[21]),
    .R(reset_IBUF_1),
    .Q(phase_acc[21])
  );
  FDR   phase_acc_22 (
    .C(clk_BUFGP_0),
    .D(Result[22]),
    .R(reset_IBUF_1),
    .Q(phase_acc[22])
  );
  FDR   phase_acc_23 (
    .C(clk_BUFGP_0),
    .D(Result[23]),
    .R(reset_IBUF_1),
    .Q(phase_acc[23])
  );
  MUXCY   \Maccum_phase_acc_cy<1>  (
    .CI(N1),
    .DI(N0),
    .S(\Maccum_phase_acc_lut[1] ),
    .O(Maccum_phase_acc_cy[1])
  );
  XORCY   \Maccum_phase_acc_xor<1>  (
    .CI(N1),
    .LI(\Maccum_phase_acc_lut[1] ),
    .O(Result[1])
  );
  MUXCY   \Maccum_phase_acc_cy<2>  (
    .CI(Maccum_phase_acc_cy[1]),
    .DI(N1),
    .S(\Maccum_phase_acc_cy<2>_rt_367 ),
    .O(Maccum_phase_acc_cy[2])
  );
  XORCY   \Maccum_phase_acc_xor<2>  (
    .CI(Maccum_phase_acc_cy[1]),
    .LI(\Maccum_phase_acc_cy<2>_rt_367 ),
    .O(Result[2])
  );
  MUXCY   \Maccum_phase_acc_cy<3>  (
    .CI(Maccum_phase_acc_cy[2]),
    .DI(N0),
    .S(\Maccum_phase_acc_lut[3] ),
    .O(Maccum_phase_acc_cy[3])
  );
  XORCY   \Maccum_phase_acc_xor<3>  (
    .CI(Maccum_phase_acc_cy[2]),
    .LI(\Maccum_phase_acc_lut[3] ),
    .O(Result[3])
  );
  MUXCY   \Maccum_phase_acc_cy<4>  (
    .CI(Maccum_phase_acc_cy[3]),
    .DI(N0),
    .S(\Maccum_phase_acc_lut[4] ),
    .O(Maccum_phase_acc_cy[4])
  );
  XORCY   \Maccum_phase_acc_xor<4>  (
    .CI(Maccum_phase_acc_cy[3]),
    .LI(\Maccum_phase_acc_lut[4] ),
    .O(Result[4])
  );
  MUXCY   \Maccum_phase_acc_cy<5>  (
    .CI(Maccum_phase_acc_cy[4]),
    .DI(N0),
    .S(\Maccum_phase_acc_lut[5] ),
    .O(Maccum_phase_acc_cy[5])
  );
  XORCY   \Maccum_phase_acc_xor<5>  (
    .CI(Maccum_phase_acc_cy[4]),
    .LI(\Maccum_phase_acc_lut[5] ),
    .O(Result[5])
  );
  MUXCY   \Maccum_phase_acc_cy<6>  (
    .CI(Maccum_phase_acc_cy[5]),
    .DI(N1),
    .S(\Maccum_phase_acc_cy<6>_rt_368 ),
    .O(Maccum_phase_acc_cy[6])
  );
  XORCY   \Maccum_phase_acc_xor<6>  (
    .CI(Maccum_phase_acc_cy[5]),
    .LI(\Maccum_phase_acc_cy<6>_rt_368 ),
    .O(Result[6])
  );
  MUXCY   \Maccum_phase_acc_cy<7>  (
    .CI(Maccum_phase_acc_cy[6]),
    .DI(N0),
    .S(\Maccum_phase_acc_lut[7] ),
    .O(Maccum_phase_acc_cy[7])
  );
  XORCY   \Maccum_phase_acc_xor<7>  (
    .CI(Maccum_phase_acc_cy[6]),
    .LI(\Maccum_phase_acc_lut[7] ),
    .O(Result[7])
  );
  MUXCY   \Maccum_phase_acc_cy<8>  (
    .CI(Maccum_phase_acc_cy[7]),
    .DI(N1),
    .S(\Maccum_phase_acc_cy<8>_rt_369 ),
    .O(Maccum_phase_acc_cy[8])
  );
  XORCY   \Maccum_phase_acc_xor<8>  (
    .CI(Maccum_phase_acc_cy[7]),
    .LI(\Maccum_phase_acc_cy<8>_rt_369 ),
    .O(Result[8])
  );
  MUXCY   \Maccum_phase_acc_cy<9>  (
    .CI(Maccum_phase_acc_cy[8]),
    .DI(N0),
    .S(\Maccum_phase_acc_lut[9] ),
    .O(Maccum_phase_acc_cy[9])
  );
  XORCY   \Maccum_phase_acc_xor<9>  (
    .CI(Maccum_phase_acc_cy[8]),
    .LI(\Maccum_phase_acc_lut[9] ),
    .O(Result[9])
  );
  MUXCY   \Maccum_phase_acc_cy<10>  (
    .CI(Maccum_phase_acc_cy[9]),
    .DI(N1),
    .S(\Maccum_phase_acc_cy<10>_rt_370 ),
    .O(Maccum_phase_acc_cy[10])
  );
  XORCY   \Maccum_phase_acc_xor<10>  (
    .CI(Maccum_phase_acc_cy[9]),
    .LI(\Maccum_phase_acc_cy<10>_rt_370 ),
    .O(Result[10])
  );
  MUXCY   \Maccum_phase_acc_cy<11>  (
    .CI(Maccum_phase_acc_cy[10]),
    .DI(N1),
    .S(\Maccum_phase_acc_cy<11>_rt_371 ),
    .O(Maccum_phase_acc_cy[11])
  );
  XORCY   \Maccum_phase_acc_xor<11>  (
    .CI(Maccum_phase_acc_cy[10]),
    .LI(\Maccum_phase_acc_cy<11>_rt_371 ),
    .O(Result[11])
  );
  MUXCY   \Maccum_phase_acc_cy<12>  (
    .CI(Maccum_phase_acc_cy[11]),
    .DI(N0),
    .S(\Maccum_phase_acc_lut[12] ),
    .O(Maccum_phase_acc_cy[12])
  );
  XORCY   \Maccum_phase_acc_xor<12>  (
    .CI(Maccum_phase_acc_cy[11]),
    .LI(\Maccum_phase_acc_lut[12] ),
    .O(Result[12])
  );
  MUXCY   \Maccum_phase_acc_cy<13>  (
    .CI(Maccum_phase_acc_cy[12]),
    .DI(N0),
    .S(\Maccum_phase_acc_lut[13] ),
    .O(Maccum_phase_acc_cy[13])
  );
  XORCY   \Maccum_phase_acc_xor<13>  (
    .CI(Maccum_phase_acc_cy[12]),
    .LI(\Maccum_phase_acc_lut[13] ),
    .O(Result[13])
  );
  MUXCY   \Maccum_phase_acc_cy<14>  (
    .CI(Maccum_phase_acc_cy[13]),
    .DI(N0),
    .S(\Maccum_phase_acc_lut[14] ),
    .O(Maccum_phase_acc_cy[14])
  );
  XORCY   \Maccum_phase_acc_xor<14>  (
    .CI(Maccum_phase_acc_cy[13]),
    .LI(\Maccum_phase_acc_lut[14] ),
    .O(Result[14])
  );
  MUXCY   \Maccum_phase_acc_cy<15>  (
    .CI(Maccum_phase_acc_cy[14]),
    .DI(N0),
    .S(\Maccum_phase_acc_lut[15] ),
    .O(Maccum_phase_acc_cy[15])
  );
  XORCY   \Maccum_phase_acc_xor<15>  (
    .CI(Maccum_phase_acc_cy[14]),
    .LI(\Maccum_phase_acc_lut[15] ),
    .O(Result[15])
  );
  MUXCY   \Maccum_phase_acc_cy<16>  (
    .CI(Maccum_phase_acc_cy[15]),
    .DI(N1),
    .S(\Maccum_phase_acc_cy<16>_rt_372 ),
    .O(Maccum_phase_acc_cy[16])
  );
  XORCY   \Maccum_phase_acc_xor<16>  (
    .CI(Maccum_phase_acc_cy[15]),
    .LI(\Maccum_phase_acc_cy<16>_rt_372 ),
    .O(Result[16])
  );
  MUXCY   \Maccum_phase_acc_cy<17>  (
    .CI(Maccum_phase_acc_cy[16]),
    .DI(N1),
    .S(\Maccum_phase_acc_cy<17>_rt_373 ),
    .O(Maccum_phase_acc_cy[17])
  );
  XORCY   \Maccum_phase_acc_xor<17>  (
    .CI(Maccum_phase_acc_cy[16]),
    .LI(\Maccum_phase_acc_cy<17>_rt_373 ),
    .O(Result[17])
  );
  MUXCY   \Maccum_phase_acc_cy<18>  (
    .CI(Maccum_phase_acc_cy[17]),
    .DI(N1),
    .S(\Maccum_phase_acc_cy<18>_rt_374 ),
    .O(Maccum_phase_acc_cy[18])
  );
  XORCY   \Maccum_phase_acc_xor<18>  (
    .CI(Maccum_phase_acc_cy[17]),
    .LI(\Maccum_phase_acc_cy<18>_rt_374 ),
    .O(Result[18])
  );
  MUXCY   \Maccum_phase_acc_cy<19>  (
    .CI(Maccum_phase_acc_cy[18]),
    .DI(N1),
    .S(\Maccum_phase_acc_cy<19>_rt_375 ),
    .O(Maccum_phase_acc_cy[19])
  );
  XORCY   \Maccum_phase_acc_xor<19>  (
    .CI(Maccum_phase_acc_cy[18]),
    .LI(\Maccum_phase_acc_cy<19>_rt_375 ),
    .O(Result[19])
  );
  MUXCY   \Maccum_phase_acc_cy<20>  (
    .CI(Maccum_phase_acc_cy[19]),
    .DI(N1),
    .S(\Maccum_phase_acc_cy<20>_rt_376 ),
    .O(Maccum_phase_acc_cy[20])
  );
  XORCY   \Maccum_phase_acc_xor<20>  (
    .CI(Maccum_phase_acc_cy[19]),
    .LI(\Maccum_phase_acc_cy<20>_rt_376 ),
    .O(Result[20])
  );
  MUXCY   \Maccum_phase_acc_cy<21>  (
    .CI(Maccum_phase_acc_cy[20]),
    .DI(N1),
    .S(\Maccum_phase_acc_cy<21>_rt_377 ),
    .O(Maccum_phase_acc_cy[21])
  );
  XORCY   \Maccum_phase_acc_xor<21>  (
    .CI(Maccum_phase_acc_cy[20]),
    .LI(\Maccum_phase_acc_cy<21>_rt_377 ),
    .O(Result[21])
  );
  MUXCY   \Maccum_phase_acc_cy<22>  (
    .CI(Maccum_phase_acc_cy[21]),
    .DI(N1),
    .S(\Maccum_phase_acc_cy<22>_rt_378 ),
    .O(Maccum_phase_acc_cy[22])
  );
  XORCY   \Maccum_phase_acc_xor<22>  (
    .CI(Maccum_phase_acc_cy[21]),
    .LI(\Maccum_phase_acc_cy<22>_rt_378 ),
    .O(Result[22])
  );
  XORCY   \Maccum_phase_acc_xor<23>  (
    .CI(Maccum_phase_acc_cy[22]),
    .LI(phase_acc[23]),
    .O(Result[23])
  );
  FDR   \max5853_inst/clk_div_cnt_1  (
    .C(clk_BUFGP_0),
    .D(\max5853_inst/Result [1]),
    .R(reset_IBUF_1),
    .Q(\max5853_inst/clk_div_cnt [1])
  );
  FDR   \max5853_inst/clk_div_cnt_0  (
    .C(clk_BUFGP_0),
    .D(\max5853_inst/Result [0]),
    .R(reset_IBUF_1),
    .Q(\max5853_inst/clk_div_cnt [0])
  );
  FDRE   \max5853_inst/control_counter_5  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0064_inv ),
    .D(\max5853_inst/Result [5]),
    .R(reset_IBUF_1),
    .Q(\max5853_inst/control_counter [5])
  );
  FDRE   \max5853_inst/control_counter_4  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0064_inv ),
    .D(\max5853_inst/Result [4]),
    .R(reset_IBUF_1),
    .Q(\max5853_inst/control_counter [4])
  );
  FDRE   \max5853_inst/control_counter_3  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0064_inv ),
    .D(\max5853_inst/Result [3]),
    .R(reset_IBUF_1),
    .Q(\max5853_inst/control_counter [3])
  );
  FDRE   \max5853_inst/control_counter_2  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0064_inv ),
    .D(\max5853_inst/Result [2]),
    .R(reset_IBUF_1),
    .Q(\max5853_inst/control_counter [2])
  );
  FDRE   \max5853_inst/control_counter_1  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0064_inv ),
    .D(\max5853_inst/Result<1>1 ),
    .R(reset_IBUF_1),
    .Q(\max5853_inst/control_counter [1])
  );
  FDRE   \max5853_inst/control_counter_0  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0064_inv ),
    .D(\max5853_inst/Result<0>1 ),
    .R(reset_IBUF_1),
    .Q(\max5853_inst/control_counter [0])
  );
  FDE   \max5853_inst/dac_data_9  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0061_inv ),
    .D(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<9> ),
    .Q(\max5853_inst/dac_data [9])
  );
  FDE   \max5853_inst/dac_data_8  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0061_inv ),
    .D(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<8> ),
    .Q(\max5853_inst/dac_data [8])
  );
  FDE   \max5853_inst/dac_data_7  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0061_inv ),
    .D(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<7> ),
    .Q(\max5853_inst/dac_data [7])
  );
  FDE   \max5853_inst/dac_data_6  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0061_inv ),
    .D(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<6> ),
    .Q(\max5853_inst/dac_data [6])
  );
  FDE   \max5853_inst/dac_data_5  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0061_inv ),
    .D(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<5> ),
    .Q(\max5853_inst/dac_data [5])
  );
  FDE   \max5853_inst/dac_data_4  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0061_inv ),
    .D(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<4> ),
    .Q(\max5853_inst/dac_data [4])
  );
  FDE   \max5853_inst/dac_data_3  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0061_inv ),
    .D(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<3> ),
    .Q(\max5853_inst/dac_data [3])
  );
  FDE   \max5853_inst/dac_data_2  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0061_inv ),
    .D(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<2> ),
    .Q(\max5853_inst/dac_data [2])
  );
  FDE   \max5853_inst/dac_data_1  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0061_inv ),
    .D(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<1> ),
    .Q(\max5853_inst/dac_data [1])
  );
  FDE   \max5853_inst/dac_data_0  (
    .C(clk_BUFGP_0),
    .CE(\max5853_inst/_n0061_inv ),
    .D(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<0> ),
    .Q(\max5853_inst/dac_data [0])
  );
  FDR   \max5853_inst/dac_clk  (
    .C(clk_BUFGP_0),
    .D(\max5853_inst/clk_div_cnt [1]),
    .R(reset_IBUF_1),
    .Q(\max5853_inst/dac_clk_15 )
  );
  FDCE   \adc_receiver_inst/bit_count_3  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/Mcount_bit_count3 ),
    .Q(\adc_receiver_inst/bit_count [3])
  );
  FDCE   \adc_receiver_inst/bit_count_2  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/Mcount_bit_count2 ),
    .Q(\adc_receiver_inst/bit_count [2])
  );
  FDCE   \adc_receiver_inst/bit_count_1  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/Mcount_bit_count1 ),
    .Q(\adc_receiver_inst/bit_count [1])
  );
  FDCE   \adc_receiver_inst/bit_count_0  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/Mcount_bit_count ),
    .Q(\adc_receiver_inst/bit_count [0])
  );
  FDCE   \adc_receiver_inst/data_out_b_15  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [14]),
    .Q(\adc_receiver_inst/data_out_b [15])
  );
  FDCE   \adc_receiver_inst/data_out_b_14  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [13]),
    .Q(\adc_receiver_inst/data_out_b [14])
  );
  FDCE   \adc_receiver_inst/data_out_b_13  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [12]),
    .Q(\adc_receiver_inst/data_out_b [13])
  );
  FDCE   \adc_receiver_inst/data_out_b_12  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [11]),
    .Q(\adc_receiver_inst/data_out_b [12])
  );
  FDCE   \adc_receiver_inst/data_out_b_11  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [10]),
    .Q(\adc_receiver_inst/data_out_b [11])
  );
  FDCE   \adc_receiver_inst/data_out_b_10  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [9]),
    .Q(\adc_receiver_inst/data_out_b [10])
  );
  FDCE   \adc_receiver_inst/data_out_b_9  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [8]),
    .Q(\adc_receiver_inst/data_out_b [9])
  );
  FDCE   \adc_receiver_inst/data_out_b_8  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [7]),
    .Q(\adc_receiver_inst/data_out_b [8])
  );
  FDCE   \adc_receiver_inst/data_out_b_7  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [6]),
    .Q(\adc_receiver_inst/data_out_b [7])
  );
  FDCE   \adc_receiver_inst/data_out_b_6  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [5]),
    .Q(\adc_receiver_inst/data_out_b [6])
  );
  FDCE   \adc_receiver_inst/data_out_b_5  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [4]),
    .Q(\adc_receiver_inst/data_out_b [5])
  );
  FDCE   \adc_receiver_inst/data_out_b_4  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [3]),
    .Q(\adc_receiver_inst/data_out_b [4])
  );
  FDCE   \adc_receiver_inst/data_out_b_3  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [2]),
    .Q(\adc_receiver_inst/data_out_b [3])
  );
  FDCE   \adc_receiver_inst/data_out_b_2  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [1]),
    .Q(\adc_receiver_inst/data_out_b [2])
  );
  FDCE   \adc_receiver_inst/data_out_b_1  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [0]),
    .Q(\adc_receiver_inst/data_out_b [1])
  );
  FDCE   \adc_receiver_inst/data_out_b_0  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(adc_data_b_IBUF_3),
    .Q(\adc_receiver_inst/data_out_b [0])
  );
  FDCE   \adc_receiver_inst/data_out_a_15  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [14]),
    .Q(\adc_receiver_inst/data_out_a [15])
  );
  FDCE   \adc_receiver_inst/data_out_a_14  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [13]),
    .Q(\adc_receiver_inst/data_out_a [14])
  );
  FDCE   \adc_receiver_inst/data_out_a_13  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [12]),
    .Q(\adc_receiver_inst/data_out_a [13])
  );
  FDCE   \adc_receiver_inst/data_out_a_12  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [11]),
    .Q(\adc_receiver_inst/data_out_a [12])
  );
  FDCE   \adc_receiver_inst/data_out_a_11  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [10]),
    .Q(\adc_receiver_inst/data_out_a [11])
  );
  FDCE   \adc_receiver_inst/data_out_a_10  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [9]),
    .Q(\adc_receiver_inst/data_out_a [10])
  );
  FDCE   \adc_receiver_inst/data_out_a_9  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [8]),
    .Q(\adc_receiver_inst/data_out_a [9])
  );
  FDCE   \adc_receiver_inst/data_out_a_8  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [7]),
    .Q(\adc_receiver_inst/data_out_a [8])
  );
  FDCE   \adc_receiver_inst/data_out_a_7  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [6]),
    .Q(\adc_receiver_inst/data_out_a [7])
  );
  FDCE   \adc_receiver_inst/data_out_a_6  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [5]),
    .Q(\adc_receiver_inst/data_out_a [6])
  );
  FDCE   \adc_receiver_inst/data_out_a_5  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [4]),
    .Q(\adc_receiver_inst/data_out_a [5])
  );
  FDCE   \adc_receiver_inst/data_out_a_4  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [3]),
    .Q(\adc_receiver_inst/data_out_a [4])
  );
  FDCE   \adc_receiver_inst/data_out_a_3  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [2]),
    .Q(\adc_receiver_inst/data_out_a [3])
  );
  FDCE   \adc_receiver_inst/data_out_a_2  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [1]),
    .Q(\adc_receiver_inst/data_out_a [2])
  );
  FDCE   \adc_receiver_inst/data_out_a_1  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [0]),
    .Q(\adc_receiver_inst/data_out_a [1])
  );
  FDCE   \adc_receiver_inst/data_out_a_0  (
    .C(clk_BUFGP_0),
    .CE(\adc_receiver_inst/_n0048_inv ),
    .CLR(reset_IBUF_1),
    .D(adc_data_a_IBUF_2),
    .Q(\adc_receiver_inst/data_out_a [0])
  );
  FDCE   \adc_receiver_inst/data_ready  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/bit_count[3]_PWR_5_o_equal_1_o ),
    .Q(\adc_receiver_inst/data_ready_49 )
  );
  FDCE   \adc_receiver_inst/shift_reg_b_14  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [13]),
    .Q(\adc_receiver_inst/shift_reg_b [14])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_13  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [12]),
    .Q(\adc_receiver_inst/shift_reg_b [13])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_12  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [11]),
    .Q(\adc_receiver_inst/shift_reg_b [12])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_11  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [10]),
    .Q(\adc_receiver_inst/shift_reg_b [11])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_10  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [9]),
    .Q(\adc_receiver_inst/shift_reg_b [10])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_9  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [8]),
    .Q(\adc_receiver_inst/shift_reg_b [9])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_8  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [7]),
    .Q(\adc_receiver_inst/shift_reg_b [8])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_7  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [6]),
    .Q(\adc_receiver_inst/shift_reg_b [7])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_6  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [5]),
    .Q(\adc_receiver_inst/shift_reg_b [6])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_5  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [4]),
    .Q(\adc_receiver_inst/shift_reg_b [5])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_4  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [3]),
    .Q(\adc_receiver_inst/shift_reg_b [4])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_3  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [2]),
    .Q(\adc_receiver_inst/shift_reg_b [3])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_2  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [1]),
    .Q(\adc_receiver_inst/shift_reg_b [2])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_1  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_b [0]),
    .Q(\adc_receiver_inst/shift_reg_b [1])
  );
  FDCE   \adc_receiver_inst/shift_reg_b_0  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(adc_data_b_IBUF_3),
    .Q(\adc_receiver_inst/shift_reg_b [0])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_14  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [13]),
    .Q(\adc_receiver_inst/shift_reg_a [14])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_13  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [12]),
    .Q(\adc_receiver_inst/shift_reg_a [13])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_12  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [11]),
    .Q(\adc_receiver_inst/shift_reg_a [12])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_11  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [10]),
    .Q(\adc_receiver_inst/shift_reg_a [11])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_10  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [9]),
    .Q(\adc_receiver_inst/shift_reg_a [10])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_9  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [8]),
    .Q(\adc_receiver_inst/shift_reg_a [9])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_8  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [7]),
    .Q(\adc_receiver_inst/shift_reg_a [8])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_7  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [6]),
    .Q(\adc_receiver_inst/shift_reg_a [7])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_6  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [5]),
    .Q(\adc_receiver_inst/shift_reg_a [6])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_5  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [4]),
    .Q(\adc_receiver_inst/shift_reg_a [5])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_4  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [3]),
    .Q(\adc_receiver_inst/shift_reg_a [4])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_3  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [2]),
    .Q(\adc_receiver_inst/shift_reg_a [3])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_2  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [1]),
    .Q(\adc_receiver_inst/shift_reg_a [2])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_1  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(\adc_receiver_inst/shift_reg_a [0]),
    .Q(\adc_receiver_inst/shift_reg_a [1])
  );
  FDCE   \adc_receiver_inst/shift_reg_a_0  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .CLR(reset_IBUF_1),
    .D(adc_data_a_IBUF_2),
    .Q(\adc_receiver_inst/shift_reg_a [0])
  );
  FDPE   \adc_receiver_inst/cs  (
    .C(clk_BUFGP_0),
    .CE(sclk_rise_en_62),
    .D(N1),
    .PRE(reset_IBUF_1),
    .Q(\adc_receiver_inst/cs_48 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \uart_inst/Mmux_bit_index[2]_tx_data_reg[7]_Mux_9_o_3  (
    .I0(\uart_inst/bit_index [1]),
    .I1(\uart_inst/bit_index [0]),
    .I2(\uart_inst/tx_data_reg [6]),
    .I3(\uart_inst/tx_data_reg [7]),
    .I4(\uart_inst/tx_data_reg [5]),
    .I5(\uart_inst/tx_data_reg [4]),
    .O(\uart_inst/Mmux_bit_index[2]_tx_data_reg[7]_Mux_9_o_3_301 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \uart_inst/Mmux_bit_index[2]_tx_data_reg[7]_Mux_9_o_4  (
    .I0(\uart_inst/bit_index [1]),
    .I1(\uart_inst/bit_index [0]),
    .I2(\uart_inst/tx_data_reg [2]),
    .I3(\uart_inst/tx_data_reg [3]),
    .I4(\uart_inst/tx_data_reg [1]),
    .I5(\uart_inst/tx_data_reg [0]),
    .O(\uart_inst/Mmux_bit_index[2]_tx_data_reg[7]_Mux_9_o_4_302 )
  );
  FDRE   \uart_inst/bit_index_2  (
    .C(clk_BUFGP_0),
    .CE(\uart_inst/GND_7_o_GND_7_o_equal_20_o ),
    .D(\uart_inst/bit_index_2_dpot_386 ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/bit_index [2])
  );
  FDRE   \uart_inst/bit_index_1  (
    .C(clk_BUFGP_0),
    .CE(\uart_inst/GND_7_o_GND_7_o_equal_20_o ),
    .D(\uart_inst/bit_index_1_dpot_385 ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/bit_index [1])
  );
  FDRE   \uart_inst/bit_index_0  (
    .C(clk_BUFGP_0),
    .CE(\uart_inst/GND_7_o_GND_7_o_equal_20_o ),
    .D(\uart_inst/bit_index_0_dpot_384 ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/bit_index [0])
  );
  FDR   \uart_inst/state_FSM_FFd1  (
    .C(clk_BUFGP_0),
    .D(\uart_inst/state_FSM_FFd1-In ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/state_FSM_FFd1_311 )
  );
  FDR   \uart_inst/state_FSM_FFd2  (
    .C(clk_BUFGP_0),
    .D(\uart_inst/state_FSM_FFd2-In_314 ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/state_FSM_FFd2_312 )
  );
  FDR   \uart_inst/clk_count_7  (
    .C(clk_BUFGP_0),
    .D(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<7> ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/clk_count [7])
  );
  FDR   \uart_inst/clk_count_6  (
    .C(clk_BUFGP_0),
    .D(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<6> ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/clk_count [6])
  );
  FDR   \uart_inst/clk_count_5  (
    .C(clk_BUFGP_0),
    .D(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<5> ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/clk_count [5])
  );
  FDR   \uart_inst/clk_count_4  (
    .C(clk_BUFGP_0),
    .D(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<4> ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/clk_count [4])
  );
  FDR   \uart_inst/clk_count_3  (
    .C(clk_BUFGP_0),
    .D(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<3> ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/clk_count [3])
  );
  FDR   \uart_inst/clk_count_2  (
    .C(clk_BUFGP_0),
    .D(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<2> ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/clk_count [2])
  );
  FDR   \uart_inst/clk_count_1  (
    .C(clk_BUFGP_0),
    .D(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<1> ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/clk_count [1])
  );
  FDR   \uart_inst/clk_count_0  (
    .C(clk_BUFGP_0),
    .D(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<0> ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/clk_count [0])
  );
  FDRE   \uart_inst/tx_data_reg_7  (
    .C(clk_BUFGP_0),
    .CE(\uart_inst/_n0113_inv ),
    .D(uart_data[7]),
    .R(reset_IBUF_1),
    .Q(\uart_inst/tx_data_reg [7])
  );
  FDRE   \uart_inst/tx_data_reg_6  (
    .C(clk_BUFGP_0),
    .CE(\uart_inst/_n0113_inv ),
    .D(uart_data[6]),
    .R(reset_IBUF_1),
    .Q(\uart_inst/tx_data_reg [6])
  );
  FDRE   \uart_inst/tx_data_reg_5  (
    .C(clk_BUFGP_0),
    .CE(\uart_inst/_n0113_inv ),
    .D(uart_data[5]),
    .R(reset_IBUF_1),
    .Q(\uart_inst/tx_data_reg [5])
  );
  FDRE   \uart_inst/tx_data_reg_4  (
    .C(clk_BUFGP_0),
    .CE(\uart_inst/_n0113_inv ),
    .D(uart_data[4]),
    .R(reset_IBUF_1),
    .Q(\uart_inst/tx_data_reg [4])
  );
  FDRE   \uart_inst/tx_data_reg_3  (
    .C(clk_BUFGP_0),
    .CE(\uart_inst/_n0113_inv ),
    .D(uart_data[3]),
    .R(reset_IBUF_1),
    .Q(\uart_inst/tx_data_reg [3])
  );
  FDRE   \uart_inst/tx_data_reg_2  (
    .C(clk_BUFGP_0),
    .CE(\uart_inst/_n0113_inv ),
    .D(uart_data[2]),
    .R(reset_IBUF_1),
    .Q(\uart_inst/tx_data_reg [2])
  );
  FDRE   \uart_inst/tx_data_reg_1  (
    .C(clk_BUFGP_0),
    .CE(\uart_inst/_n0113_inv ),
    .D(uart_data[1]),
    .R(reset_IBUF_1),
    .Q(\uart_inst/tx_data_reg [1])
  );
  FDRE   \uart_inst/tx_data_reg_0  (
    .C(clk_BUFGP_0),
    .CE(\uart_inst/_n0113_inv ),
    .D(uart_data[0]),
    .R(reset_IBUF_1),
    .Q(\uart_inst/tx_data_reg [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \_n0104<1>1  (
    .I0(state_FSM_FFd1_63),
    .I1(state_FSM_FFd2_64),
    .O(_n0104)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  _n0130_inv1 (
    .I0(\adc_receiver_inst/data_ready_49 ),
    .I1(state_FSM_FFd1_63),
    .I2(state_FSM_FFd2_64),
    .O(_n0130_inv)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Madd_byte_idx[1]_GND_1_o_add_16_OUT_xor<1>11  (
    .I0(byte_idx[1]),
    .I1(byte_idx[0]),
    .O(\byte_idx[1]_GND_1_o_add_16_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_counter_xor<1>11  (
    .I0(counter[1]),
    .I1(counter[0]),
    .O(\Result<1>1 )
  );
  LUT6 #(
    .INIT ( 64'h0000040000000000 ))
  Mcount_counter_val11 (
    .I0(counter[5]),
    .I1(counter[4]),
    .I2(counter[3]),
    .I3(counter[2]),
    .I4(counter[1]),
    .I5(counter[0]),
    .O(N22)
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \state_FSM_FFd1-In1  (
    .I0(state_FSM_FFd1_63),
    .I1(tx_done_d_61),
    .I2(\uart_inst/tx_done_51 ),
    .I3(state_FSM_FFd2_64),
    .O(\state_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Mcount_counter_xor<2>11  (
    .I0(counter[2]),
    .I1(counter[0]),
    .I2(counter[1]),
    .O(\Result<2>1 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_byte_idx[1]_adc_b[15]_wide_mux_14_OUT11  (
    .I0(byte_idx[0]),
    .I1(byte_idx[1]),
    .I2(adc_a[8]),
    .I3(adc_b[8]),
    .I4(adc_b[0]),
    .I5(adc_a[0]),
    .O(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_byte_idx[1]_adc_b[15]_wide_mux_14_OUT21  (
    .I0(byte_idx[0]),
    .I1(byte_idx[1]),
    .I2(adc_a[9]),
    .I3(adc_b[9]),
    .I4(adc_b[1]),
    .I5(adc_a[1]),
    .O(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_byte_idx[1]_adc_b[15]_wide_mux_14_OUT31  (
    .I0(byte_idx[0]),
    .I1(byte_idx[1]),
    .I2(adc_a[10]),
    .I3(adc_b[10]),
    .I4(adc_b[2]),
    .I5(adc_a[2]),
    .O(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_byte_idx[1]_adc_b[15]_wide_mux_14_OUT41  (
    .I0(byte_idx[0]),
    .I1(byte_idx[1]),
    .I2(adc_a[11]),
    .I3(adc_b[11]),
    .I4(adc_b[3]),
    .I5(adc_a[3]),
    .O(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_byte_idx[1]_adc_b[15]_wide_mux_14_OUT51  (
    .I0(byte_idx[0]),
    .I1(byte_idx[1]),
    .I2(adc_a[12]),
    .I3(adc_b[12]),
    .I4(adc_b[4]),
    .I5(adc_a[4]),
    .O(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_byte_idx[1]_adc_b[15]_wide_mux_14_OUT61  (
    .I0(byte_idx[0]),
    .I1(byte_idx[1]),
    .I2(adc_a[13]),
    .I3(adc_b[13]),
    .I4(adc_b[5]),
    .I5(adc_a[5]),
    .O(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_byte_idx[1]_adc_b[15]_wide_mux_14_OUT71  (
    .I0(byte_idx[0]),
    .I1(byte_idx[1]),
    .I2(adc_a[14]),
    .I3(adc_b[14]),
    .I4(adc_b[6]),
    .I5(adc_a[6]),
    .O(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \Mmux_byte_idx[1]_adc_b[15]_wide_mux_14_OUT81  (
    .I0(byte_idx[0]),
    .I1(byte_idx[1]),
    .I2(adc_a[15]),
    .I3(adc_b[15]),
    .I4(adc_b[7]),
    .I5(adc_a[7]),
    .O(\byte_idx[1]_adc_b[15]_wide_mux_14_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00080808 ))
  \state_FSM_FFd2-In1  (
    .I0(state_FSM_FFd1_63),
    .I1(\uart_inst/tx_done_51 ),
    .I2(tx_done_d_61),
    .I3(byte_idx[0]),
    .I4(byte_idx[1]),
    .I5(_n0130_inv),
    .O(\state_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Mcount_counter_xor<3>11  (
    .I0(counter[3]),
    .I1(counter[0]),
    .I2(counter[1]),
    .I3(counter[2]),
    .O(\Result<3>1 )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \Mcount_counter_xor<5>11  (
    .I0(counter[5]),
    .I1(counter[0]),
    .I2(counter[1]),
    .I3(counter[2]),
    .I4(counter[3]),
    .I5(counter[4]),
    .O(\Result<5>1 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \Mcount_counter_xor<4>11  (
    .I0(counter[4]),
    .I1(counter[0]),
    .I2(counter[1]),
    .I3(counter[2]),
    .I4(counter[3]),
    .O(\Result<4>1 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \max5853_inst/Result<3>11  (
    .I0(\max5853_inst/control_counter [2]),
    .I1(\max5853_inst/control_counter [1]),
    .I2(\max5853_inst/control_counter [0]),
    .O(\max5853_inst/Result<3>_bdd0 )
  );
  LUT5 #(
    .INIT ( 32'h33331333 ))
  \max5853_inst/_n0064_inv11  (
    .I0(\max5853_inst/control_counter [5]),
    .I1(\max5853_inst/run_mode_260 ),
    .I2(\max5853_inst/control_counter [4]),
    .I3(\max5853_inst/control_counter [3]),
    .I4(\max5853_inst/Result<3>_bdd0 ),
    .O(\max5853_inst/_n0064_inv )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \max5853_inst/Mcount_control_counter_xor<2>11  (
    .I0(\max5853_inst/control_counter [2]),
    .I1(\max5853_inst/control_counter [0]),
    .I2(\max5853_inst/control_counter [1]),
    .O(\max5853_inst/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \max5853_inst/Mmux_dac_data[9]_GND_4_o_mux_11_OUT11  (
    .I0(reset_IBUF_1),
    .I1(\max5853_inst/clk_div_cnt [1]),
    .I2(sin_out[0]),
    .I3(cos_out[0]),
    .O(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \max5853_inst/Mmux_dac_data[9]_GND_4_o_mux_11_OUT21  (
    .I0(reset_IBUF_1),
    .I1(\max5853_inst/clk_div_cnt [1]),
    .I2(cos_out[1]),
    .I3(sin_out[1]),
    .O(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \max5853_inst/Mmux_dac_data[9]_GND_4_o_mux_11_OUT31  (
    .I0(reset_IBUF_1),
    .I1(\max5853_inst/clk_div_cnt [1]),
    .I2(sin_out[2]),
    .I3(cos_out[2]),
    .O(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \max5853_inst/Mmux_dac_data[9]_GND_4_o_mux_11_OUT41  (
    .I0(reset_IBUF_1),
    .I1(\max5853_inst/clk_div_cnt [1]),
    .I2(sin_out[3]),
    .I3(cos_out[3]),
    .O(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \max5853_inst/Mmux_dac_data[9]_GND_4_o_mux_11_OUT51  (
    .I0(reset_IBUF_1),
    .I1(\max5853_inst/clk_div_cnt [1]),
    .I2(sin_out[4]),
    .I3(cos_out[4]),
    .O(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \max5853_inst/Mmux_dac_data[9]_GND_4_o_mux_11_OUT61  (
    .I0(reset_IBUF_1),
    .I1(\max5853_inst/clk_div_cnt [1]),
    .I2(sin_out[5]),
    .I3(cos_out[5]),
    .O(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'h5410 ))
  \max5853_inst/Mmux_dac_data[9]_GND_4_o_mux_11_OUT71  (
    .I0(reset_IBUF_1),
    .I1(\max5853_inst/clk_div_cnt [1]),
    .I2(sin_out[6]),
    .I3(cos_out[6]),
    .O(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \max5853_inst/Mmux_dac_data[9]_GND_4_o_mux_11_OUT101  (
    .I0(reset_IBUF_1),
    .I1(\max5853_inst/clk_div_cnt [1]),
    .I2(cos_out[9]),
    .I3(sin_out[9]),
    .O(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<9> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \max5853_inst/Mcount_control_counter_xor<1>11  (
    .I0(\max5853_inst/control_counter [1]),
    .I1(\max5853_inst/control_counter [0]),
    .O(\max5853_inst/Result<1>1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \max5853_inst/Mcount_clk_div_cnt_xor<1>11  (
    .I0(\max5853_inst/clk_div_cnt [1]),
    .I1(\max5853_inst/clk_div_cnt [0]),
    .O(\max5853_inst/Result [1])
  );
  LUT4 #(
    .INIT ( 16'hFEBA ))
  \max5853_inst/Mmux_dac_data[9]_GND_4_o_mux_11_OUT81  (
    .I0(reset_IBUF_1),
    .I1(\max5853_inst/clk_div_cnt [1]),
    .I2(sin_out[7]),
    .I3(cos_out[7]),
    .O(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hFEBA ))
  \max5853_inst/Mmux_dac_data[9]_GND_4_o_mux_11_OUT91  (
    .I0(reset_IBUF_1),
    .I1(\max5853_inst/clk_div_cnt [1]),
    .I2(sin_out[8]),
    .I3(cos_out[8]),
    .O(\max5853_inst/dac_data[9]_GND_4_o_mux_11_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \max5853_inst/_n0061_inv1  (
    .I0(\max5853_inst/run_mode_260 ),
    .I1(\max5853_inst/clk_div_cnt [0]),
    .I2(reset_IBUF_1),
    .O(\max5853_inst/_n0061_inv )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \adc_receiver_inst/_n0048_inv11  (
    .I0(\adc_receiver_inst/bit_count [3]),
    .I1(\adc_receiver_inst/bit_count [0]),
    .I2(\adc_receiver_inst/bit_count [1]),
    .I3(\adc_receiver_inst/bit_count [2]),
    .I4(sclk_rise_en_62),
    .O(\adc_receiver_inst/_n0048_inv )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \adc_receiver_inst/Mcount_bit_count31  (
    .I0(\adc_receiver_inst/bit_count [3]),
    .I1(\adc_receiver_inst/bit_count [0]),
    .I2(\adc_receiver_inst/bit_count [1]),
    .I3(\adc_receiver_inst/bit_count [2]),
    .O(\adc_receiver_inst/Mcount_bit_count3 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \adc_receiver_inst/bit_count[3]_PWR_5_o_equal_1_o1  (
    .I0(\adc_receiver_inst/bit_count [3]),
    .I1(\adc_receiver_inst/bit_count [0]),
    .I2(\adc_receiver_inst/bit_count [1]),
    .I3(\adc_receiver_inst/bit_count [2]),
    .O(\adc_receiver_inst/bit_count[3]_PWR_5_o_equal_1_o )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \adc_receiver_inst/Mcount_bit_count_xor<2>11  (
    .I0(\adc_receiver_inst/bit_count [2]),
    .I1(\adc_receiver_inst/bit_count [0]),
    .I2(\adc_receiver_inst/bit_count [1]),
    .O(\adc_receiver_inst/Mcount_bit_count2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \adc_receiver_inst/Mcount_bit_count_xor<1>11  (
    .I0(\adc_receiver_inst/bit_count [0]),
    .I1(\adc_receiver_inst/bit_count [1]),
    .O(\adc_receiver_inst/Mcount_bit_count1 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \uart_inst/_n0113_inv1  (
    .I0(tx_start_52),
    .I1(\uart_inst/state_FSM_FFd1_311 ),
    .I2(\uart_inst/state_FSM_FFd2_312 ),
    .O(\uart_inst/_n0113_inv )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uart_inst/state_FSM_FFd2-In_SW0  (
    .I0(\uart_inst/bit_index [1]),
    .I1(\uart_inst/bit_index [0]),
    .O(N51)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT4_SW0  (
    .I0(\uart_inst/clk_count [2]),
    .I1(\uart_inst/clk_count [1]),
    .I2(\uart_inst/clk_count [0]),
    .O(N53)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \uart_inst/GND_7_o_GND_7_o_equal_20_o<7>_SW0  (
    .I0(\uart_inst/clk_count [7]),
    .I1(\uart_inst/clk_count [3]),
    .I2(\uart_inst/clk_count [0]),
    .O(N57)
  );
  LUT6 #(
    .INIT ( 64'h0000000800000000 ))
  \uart_inst/GND_7_o_GND_7_o_equal_20_o<7>  (
    .I0(\uart_inst/clk_count [6]),
    .I1(\uart_inst/clk_count [5]),
    .I2(\uart_inst/clk_count [4]),
    .I3(\uart_inst/clk_count [1]),
    .I4(\uart_inst/clk_count [2]),
    .I5(N57),
    .O(\uart_inst/GND_7_o_GND_7_o_equal_20_o )
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  IBUF   adc_data_a_IBUF (
    .I(adc_data_a),
    .O(adc_data_a_IBUF_2)
  );
  IBUF   adc_data_b_IBUF (
    .I(adc_data_b),
    .O(adc_data_b_IBUF_3)
  );
  OBUF   signal_out_9_OBUF (
    .I(\max5853_inst/dac_data [9]),
    .O(signal_out[9])
  );
  OBUF   signal_out_8_OBUF (
    .I(\max5853_inst/dac_data [8]),
    .O(signal_out[8])
  );
  OBUF   signal_out_7_OBUF (
    .I(\max5853_inst/dac_data [7]),
    .O(signal_out[7])
  );
  OBUF   signal_out_6_OBUF (
    .I(\max5853_inst/dac_data [6]),
    .O(signal_out[6])
  );
  OBUF   signal_out_5_OBUF (
    .I(\max5853_inst/dac_data [5]),
    .O(signal_out[5])
  );
  OBUF   signal_out_4_OBUF (
    .I(\max5853_inst/dac_data [4]),
    .O(signal_out[4])
  );
  OBUF   signal_out_3_OBUF (
    .I(\max5853_inst/dac_data [3]),
    .O(signal_out[3])
  );
  OBUF   signal_out_2_OBUF (
    .I(\max5853_inst/dac_data [2]),
    .O(signal_out[2])
  );
  OBUF   signal_out_1_OBUF (
    .I(\max5853_inst/dac_data [1]),
    .O(signal_out[1])
  );
  OBUF   signal_out_0_OBUF (
    .I(\max5853_inst/dac_data [0]),
    .O(signal_out[0])
  );
  OBUF   control_OBUF (
    .I(\max5853_inst/dac_ctrl_14 ),
    .O(control)
  );
  OBUF   out_clk_p_OBUF (
    .I(\max5853_inst/dac_clk_15 ),
    .O(out_clk_p)
  );
  OBUF   out_clk_n_OBUF (
    .I(out_clk_n_OBUF_107),
    .O(out_clk_n)
  );
  OBUF   takt_p_OBUF (
    .I(out_takt_65),
    .O(takt_p)
  );
  OBUF   takt_n_OBUF (
    .I(takt_n_OBUF_109),
    .O(takt_n)
  );
  OBUF   adc_clk_OBUF (
    .I(out_takt_65),
    .O(adc_clk)
  );
  OBUF   led_ds4_OBUF (
    .I(led_ds4_OBUF_106),
    .O(led_ds4)
  );
  OBUF   adc_cs_OBUF (
    .I(\adc_receiver_inst/cs_48 ),
    .O(adc_cs)
  );
  OBUF   uart_tx_OBUF (
    .I(\uart_inst/tx_pin_50 ),
    .O(uart_tx)
  );
  FDR   \max5853_inst/dac_ctrl  (
    .C(clk_BUFGP_0),
    .D(\max5853_inst/dac_ctrl_glue_set_365 ),
    .R(reset_IBUF_1),
    .Q(\max5853_inst/dac_ctrl_14 )
  );
  FDR   \max5853_inst/run_mode  (
    .C(clk_BUFGP_0),
    .D(\max5853_inst/run_mode_glue_set_366 ),
    .R(reset_IBUF_1),
    .Q(\max5853_inst/run_mode_260 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_phase_acc_cy<2>_rt  (
    .I0(phase_acc[2]),
    .O(\Maccum_phase_acc_cy<2>_rt_367 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_phase_acc_cy<6>_rt  (
    .I0(phase_acc[6]),
    .O(\Maccum_phase_acc_cy<6>_rt_368 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_phase_acc_cy<8>_rt  (
    .I0(phase_acc[8]),
    .O(\Maccum_phase_acc_cy<8>_rt_369 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_phase_acc_cy<10>_rt  (
    .I0(phase_acc[10]),
    .O(\Maccum_phase_acc_cy<10>_rt_370 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_phase_acc_cy<11>_rt  (
    .I0(phase_acc[11]),
    .O(\Maccum_phase_acc_cy<11>_rt_371 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_phase_acc_cy<16>_rt  (
    .I0(phase_acc[16]),
    .O(\Maccum_phase_acc_cy<16>_rt_372 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_phase_acc_cy<17>_rt  (
    .I0(phase_acc[17]),
    .O(\Maccum_phase_acc_cy<17>_rt_373 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_phase_acc_cy<18>_rt  (
    .I0(phase_acc[18]),
    .O(\Maccum_phase_acc_cy<18>_rt_374 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_phase_acc_cy<19>_rt  (
    .I0(phase_acc[19]),
    .O(\Maccum_phase_acc_cy<19>_rt_375 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_phase_acc_cy<20>_rt  (
    .I0(phase_acc[20]),
    .O(\Maccum_phase_acc_cy<20>_rt_376 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_phase_acc_cy<21>_rt  (
    .I0(phase_acc[21]),
    .O(\Maccum_phase_acc_cy<21>_rt_377 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_phase_acc_cy<22>_rt  (
    .I0(phase_acc[22]),
    .O(\Maccum_phase_acc_cy<22>_rt_378 )
  );
  FDR   out_takt (
    .C(clk_BUFGP_0),
    .D(out_takt_rstpot_379),
    .R(reset_IBUF_1),
    .Q(out_takt_65)
  );
  FDS   \uart_inst/tx_pin  (
    .C(clk_BUFGP_0),
    .D(\uart_inst/tx_pin_rstpot_380 ),
    .S(reset_IBUF_1),
    .Q(\uart_inst/tx_pin_50 )
  );
  FDR   \uart_inst/tx_done  (
    .C(clk_BUFGP_0),
    .D(\uart_inst/tx_done_rstpot_381 ),
    .R(reset_IBUF_1),
    .Q(\uart_inst/tx_done_51 )
  );
  FD   sclk_rise_en (
    .C(clk_BUFGP_0),
    .D(sclk_rise_en_rstpot_382),
    .Q(sclk_rise_en_62)
  );
  LUT6 #(
    .INIT ( 64'h0A020A02AAA25552 ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT7  (
    .I0(\uart_inst/clk_count [6]),
    .I1(tx_start_52),
    .I2(\uart_inst/state_FSM_FFd2_312 ),
    .I3(\uart_inst/state_FSM_FFd1_311 ),
    .I4(N49),
    .I5(\uart_inst/GND_7_o_GND_7_o_equal_20_o ),
    .O(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'h0A020A025552AAA2 ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT4  (
    .I0(\uart_inst/clk_count [3]),
    .I1(tx_start_52),
    .I2(\uart_inst/state_FSM_FFd2_312 ),
    .I3(\uart_inst/state_FSM_FFd1_311 ),
    .I4(N53),
    .I5(\uart_inst/GND_7_o_GND_7_o_equal_20_o ),
    .O(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h0A020A02AAA25552 ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT6  (
    .I0(\uart_inst/clk_count [5]),
    .I1(tx_start_52),
    .I2(\uart_inst/state_FSM_FFd2_312 ),
    .I3(\uart_inst/state_FSM_FFd1_311 ),
    .I4(N55),
    .I5(\uart_inst/GND_7_o_GND_7_o_equal_20_o ),
    .O(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFFF200A2FFF20002 ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT84  (
    .I0(\uart_inst/clk_count [7]),
    .I1(tx_start_52),
    .I2(\uart_inst/state_FSM_FFd1_311 ),
    .I3(\uart_inst/state_FSM_FFd2_312 ),
    .I4(\uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT82 ),
    .I5(\uart_inst/GND_7_o_GND_7_o_equal_20_o ),
    .O(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT83_SW0  (
    .I0(\uart_inst/clk_count [6]),
    .I1(\uart_inst/clk_count [5]),
    .I2(\uart_inst/clk_count [0]),
    .O(N67)
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAA2AAAAAAAA ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT83  (
    .I0(\uart_inst/clk_count [7]),
    .I1(\uart_inst/clk_count [3]),
    .I2(\uart_inst/clk_count [4]),
    .I3(\uart_inst/clk_count [2]),
    .I4(\uart_inst/clk_count [1]),
    .I5(N67),
    .O(\uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT82 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF0080 ))
  \max5853_inst/run_mode_glue_set  (
    .I0(\max5853_inst/control_counter [3]),
    .I1(\max5853_inst/control_counter [4]),
    .I2(\max5853_inst/control_counter [5]),
    .I3(\max5853_inst/Result<3>_bdd0 ),
    .I4(\max5853_inst/run_mode_260 ),
    .O(\max5853_inst/run_mode_glue_set_366 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00000080 ))
  \max5853_inst/dac_ctrl_glue_set  (
    .I0(\max5853_inst/control_counter [3]),
    .I1(\max5853_inst/control_counter [4]),
    .I2(\max5853_inst/control_counter [5]),
    .I3(\max5853_inst/run_mode_260 ),
    .I4(\max5853_inst/Result<3>_bdd0 ),
    .I5(\max5853_inst/dac_ctrl_14 ),
    .O(\max5853_inst/dac_ctrl_glue_set_365 )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFF ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT6_SW0  (
    .I0(\uart_inst/clk_count [2]),
    .I1(\uart_inst/clk_count [0]),
    .I2(\uart_inst/clk_count [1]),
    .I3(\uart_inst/clk_count [3]),
    .I4(\uart_inst/clk_count [4]),
    .O(N55)
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT7_SW0  (
    .I0(\uart_inst/clk_count [4]),
    .I1(\uart_inst/clk_count [5]),
    .I2(\uart_inst/clk_count [2]),
    .I3(\uart_inst/clk_count [0]),
    .I4(\uart_inst/clk_count [1]),
    .I5(\uart_inst/clk_count [3]),
    .O(N49)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \uart_inst/GND_7_o_GND_7_o_equal_20_o<7>_SW1  (
    .I0(\uart_inst/clk_count [4]),
    .I1(\uart_inst/clk_count [2]),
    .I2(\uart_inst/clk_count [1]),
    .O(N71)
  );
  LUT6 #(
    .INIT ( 64'hBAAAAAAA8AAAAAAA ))
  \uart_inst/state_FSM_FFd1-In1  (
    .I0(\uart_inst/state_FSM_FFd1_311 ),
    .I1(N71),
    .I2(\uart_inst/clk_count [5]),
    .I3(\uart_inst/clk_count [6]),
    .I4(N57),
    .I5(\uart_inst/state_FSM_FFd2_312 ),
    .O(\uart_inst/state_FSM_FFd1-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFF7F ))
  \uart_inst/GND_7_o_GND_7_o_equal_20_o<7>_SW2  (
    .I0(\uart_inst/bit_index [2]),
    .I1(\uart_inst/clk_count [6]),
    .I2(\uart_inst/clk_count [5]),
    .I3(\uart_inst/clk_count [4]),
    .I4(\uart_inst/clk_count [2]),
    .I5(\uart_inst/clk_count [1]),
    .O(N73)
  );
  LUT6 #(
    .INIT ( 64'hF2F2F2F232F2F2F2 ))
  \uart_inst/state_FSM_FFd2-In  (
    .I0(tx_start_52),
    .I1(\uart_inst/state_FSM_FFd1_311 ),
    .I2(\uart_inst/state_FSM_FFd2_312 ),
    .I3(N51),
    .I4(N57),
    .I5(N73),
    .O(\uart_inst/state_FSM_FFd2-In_314 )
  );
  LUT5 #(
    .INIT ( 32'hFFFDFFFF ))
  \uart_inst/GND_7_o_GND_7_o_equal_20_o<7>_SW3  (
    .I0(\uart_inst/clk_count [6]),
    .I1(\uart_inst/clk_count [1]),
    .I2(\uart_inst/clk_count [4]),
    .I3(\uart_inst/clk_count [2]),
    .I4(\uart_inst/clk_count [5]),
    .O(N75)
  );
  LUT6 #(
    .INIT ( 64'h5454745456567656 ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT11  (
    .I0(\uart_inst/clk_count [0]),
    .I1(\uart_inst/state_FSM_FFd2_312 ),
    .I2(\uart_inst/state_FSM_FFd1_311 ),
    .I3(N57),
    .I4(N75),
    .I5(tx_start_52),
    .O(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \uart_inst/GND_7_o_GND_7_o_equal_20_o<7>_SW6  (
    .I0(\uart_inst/clk_count [5]),
    .I1(\uart_inst/clk_count [4]),
    .I2(\uart_inst/clk_count [2]),
    .I3(\uart_inst/clk_count [1]),
    .O(N80)
  );
  LUT6 #(
    .INIT ( 64'hACA8A8A8A8A8A8A8 ))
  \uart_inst/tx_done_rstpot  (
    .I0(\uart_inst/tx_done_51 ),
    .I1(\uart_inst/state_FSM_FFd1_311 ),
    .I2(\uart_inst/state_FSM_FFd2_312 ),
    .I3(N57),
    .I4(\uart_inst/clk_count [6]),
    .I5(N80),
    .O(\uart_inst/tx_done_rstpot_381 )
  );
  LUT4 #(
    .INIT ( 16'hAAAE ))
  Reset_OR_DriverANDClockEnable1 (
    .I0(reset_IBUF_1),
    .I1(\adc_receiver_inst/data_ready_49 ),
    .I2(state_FSM_FFd1_63),
    .I3(state_FSM_FFd2_64),
    .O(Reset_OR_DriverANDClockEnable)
  );
  LUT6 #(
    .INIT ( 64'hA820FFFFA820AAAA ))
  \uart_inst/tx_pin_rstpot  (
    .I0(\uart_inst/state_FSM_FFd1_311 ),
    .I1(\uart_inst/bit_index [2]),
    .I2(\uart_inst/Mmux_bit_index[2]_tx_data_reg[7]_Mux_9_o_4_302 ),
    .I3(\uart_inst/Mmux_bit_index[2]_tx_data_reg[7]_Mux_9_o_3_301 ),
    .I4(\uart_inst/state_FSM_FFd2_312 ),
    .I5(\uart_inst/tx_pin_50 ),
    .O(\uart_inst/tx_pin_rstpot_380 )
  );
  LUT6 #(
    .INIT ( 64'h5AAA48885AAA6AAA ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT31  (
    .I0(\uart_inst/clk_count [2]),
    .I1(\uart_inst/state_FSM_FFd1_311 ),
    .I2(\uart_inst/clk_count [0]),
    .I3(\uart_inst/clk_count [1]),
    .I4(\uart_inst/state_FSM_FFd2_312 ),
    .I5(tx_start_52),
    .O(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT51_SW2  (
    .I0(\uart_inst/clk_count [3]),
    .I1(\uart_inst/clk_count [1]),
    .I2(\uart_inst/clk_count [2]),
    .O(N82)
  );
  LUT6 #(
    .INIT ( 64'hAAA06660AAAA666A ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT51  (
    .I0(\uart_inst/clk_count [4]),
    .I1(\uart_inst/clk_count [0]),
    .I2(\uart_inst/state_FSM_FFd2_312 ),
    .I3(\uart_inst/state_FSM_FFd1_311 ),
    .I4(N82),
    .I5(tx_start_52),
    .O(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h0008000000000000 ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT21_SW2  (
    .I0(\uart_inst/clk_count [3]),
    .I1(\uart_inst/clk_count [7]),
    .I2(\uart_inst/clk_count [2]),
    .I3(\uart_inst/clk_count [4]),
    .I4(\uart_inst/clk_count [5]),
    .I5(\uart_inst/clk_count [6]),
    .O(N84)
  );
  LUT6 #(
    .INIT ( 64'h2220222A6660666A ))
  \uart_inst/Mmux_state[1]_clk_count[7]_wide_mux_26_OUT21  (
    .I0(\uart_inst/clk_count [1]),
    .I1(\uart_inst/clk_count [0]),
    .I2(\uart_inst/state_FSM_FFd2_312 ),
    .I3(\uart_inst/state_FSM_FFd1_311 ),
    .I4(tx_start_52),
    .I5(N84),
    .O(\uart_inst/state[1]_clk_count[7]_wide_mux_26_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  sclk_rise_en_rstpot_SW0 (
    .I0(counter[5]),
    .I1(out_takt_65),
    .I2(reset_IBUF_1),
    .O(N86)
  );
  LUT6 #(
    .INIT ( 64'h0000000002000000 ))
  sclk_rise_en_rstpot (
    .I0(counter[2]),
    .I1(counter[1]),
    .I2(counter[3]),
    .I3(counter[0]),
    .I4(counter[4]),
    .I5(N86),
    .O(sclk_rise_en_rstpot_382)
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \max5853_inst/Result<3>2  (
    .I0(\max5853_inst/control_counter [3]),
    .I1(\max5853_inst/control_counter [0]),
    .I2(\max5853_inst/control_counter [1]),
    .I3(\max5853_inst/control_counter [2]),
    .O(\max5853_inst/Result [3])
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \max5853_inst/Result<4>1  (
    .I0(\max5853_inst/control_counter [4]),
    .I1(\max5853_inst/control_counter [3]),
    .I2(\max5853_inst/control_counter [0]),
    .I3(\max5853_inst/control_counter [1]),
    .I4(\max5853_inst/control_counter [2]),
    .O(\max5853_inst/Result [4])
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \max5853_inst/Result<5>1  (
    .I0(\max5853_inst/control_counter [5]),
    .I1(\max5853_inst/control_counter [4]),
    .I2(\max5853_inst/control_counter [0]),
    .I3(\max5853_inst/control_counter [1]),
    .I4(\max5853_inst/control_counter [2]),
    .I5(\max5853_inst/control_counter [3]),
    .O(\max5853_inst/Result [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  out_takt_rstpot (
    .I0(N22),
    .I1(out_takt_65),
    .O(out_takt_rstpot_379)
  );
  LUT5 #(
    .INIT ( 32'hA828CCCC ))
  \uart_inst/bit_index_1_dpot  (
    .I0(\uart_inst/state_FSM_FFd1_311 ),
    .I1(\uart_inst/bit_index [1]),
    .I2(\uart_inst/bit_index [0]),
    .I3(\uart_inst/bit_index [2]),
    .I4(\uart_inst/state_FSM_FFd2_312 ),
    .O(\uart_inst/bit_index_1_dpot_385 )
  );
  LUT5 #(
    .INIT ( 32'hD500AAAA ))
  \uart_inst/bit_index_0_dpot  (
    .I0(\uart_inst/bit_index [0]),
    .I1(\uart_inst/bit_index [2]),
    .I2(\uart_inst/bit_index [1]),
    .I3(\uart_inst/state_FSM_FFd1_311 ),
    .I4(\uart_inst/state_FSM_FFd2_312 ),
    .O(\uart_inst/bit_index_0_dpot_384 )
  );
  LUT5 #(
    .INIT ( 32'hAAFF8000 ))
  \uart_inst/bit_index_2_dpot  (
    .I0(\uart_inst/state_FSM_FFd1_311 ),
    .I1(\uart_inst/bit_index [1]),
    .I2(\uart_inst/bit_index [0]),
    .I3(\uart_inst/state_FSM_FFd2_312 ),
    .I4(\uart_inst/bit_index [2]),
    .O(\uart_inst/bit_index_2_dpot_386 )
  );
  FDR   phase_acc_18_1 (
    .C(clk_BUFGP_0),
    .D(Result[18]),
    .R(reset_IBUF_1),
    .Q(phase_acc_18_1_394)
  );
  FDR   phase_acc_20_1 (
    .C(clk_BUFGP_0),
    .D(Result[20]),
    .R(reset_IBUF_1),
    .Q(phase_acc_20_1_395)
  );
  FDR   phase_acc_17_1 (
    .C(clk_BUFGP_0),
    .D(Result[17]),
    .R(reset_IBUF_1),
    .Q(phase_acc_17_1_396)
  );
  FDR   phase_acc_19_1 (
    .C(clk_BUFGP_0),
    .D(Result[19]),
    .R(reset_IBUF_1),
    .Q(phase_acc_19_1_397)
  );
  FDR   phase_acc_16_1 (
    .C(clk_BUFGP_0),
    .D(Result[16]),
    .R(reset_IBUF_1),
    .Q(phase_acc_16_1_398)
  );
  FDR   phase_acc_21_1 (
    .C(clk_BUFGP_0),
    .D(Result[21]),
    .R(reset_IBUF_1),
    .Q(phase_acc_21_1_399)
  );
  FD   counter_1 (
    .C(clk_BUFGP_0),
    .D(counter_1_rstpot_400),
    .Q(counter[1])
  );
  FD   counter_0 (
    .C(clk_BUFGP_0),
    .D(counter_0_rstpot_401),
    .Q(counter[0])
  );
  FD   counter_2 (
    .C(clk_BUFGP_0),
    .D(counter_2_rstpot_402),
    .Q(counter[2])
  );
  FD   counter_3 (
    .C(clk_BUFGP_0),
    .D(counter_3_rstpot_403),
    .Q(counter[3])
  );
  FD   counter_4 (
    .C(clk_BUFGP_0),
    .D(counter_4_rstpot_404),
    .Q(counter[4])
  );
  FD   counter_5 (
    .C(clk_BUFGP_0),
    .D(counter_5_rstpot_405),
    .Q(counter[5])
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  counter_1_rstpot (
    .I0(\Result<1>1 ),
    .I1(reset_IBUF_1),
    .I2(N22),
    .O(counter_1_rstpot_400)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  counter_2_rstpot (
    .I0(\Result<2>1 ),
    .I1(reset_IBUF_1),
    .I2(N22),
    .O(counter_2_rstpot_402)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  counter_3_rstpot (
    .I0(\Result<3>1 ),
    .I1(reset_IBUF_1),
    .I2(N22),
    .O(counter_3_rstpot_403)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  counter_4_rstpot (
    .I0(\Result<4>1 ),
    .I1(reset_IBUF_1),
    .I2(N22),
    .O(counter_4_rstpot_404)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  counter_5_rstpot (
    .I0(\Result<5>1 ),
    .I1(reset_IBUF_1),
    .I2(N22),
    .O(counter_5_rstpot_405)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  counter_0_rstpot (
    .I0(reset_IBUF_1),
    .I1(N22),
    .I2(counter[0]),
    .O(counter_0_rstpot_401)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \Maccum_phase_acc_lut<1>_INV_0  (
    .I(phase_acc[1]),
    .O(\Maccum_phase_acc_lut[1] )
  );
  INV   \Maccum_phase_acc_lut<3>_INV_0  (
    .I(phase_acc[3]),
    .O(\Maccum_phase_acc_lut[3] )
  );
  INV   \Maccum_phase_acc_lut<4>_INV_0  (
    .I(phase_acc[4]),
    .O(\Maccum_phase_acc_lut[4] )
  );
  INV   \Maccum_phase_acc_lut<5>_INV_0  (
    .I(phase_acc[5]),
    .O(\Maccum_phase_acc_lut[5] )
  );
  INV   \Maccum_phase_acc_lut<7>_INV_0  (
    .I(phase_acc[7]),
    .O(\Maccum_phase_acc_lut[7] )
  );
  INV   \Maccum_phase_acc_lut<9>_INV_0  (
    .I(phase_acc[9]),
    .O(\Maccum_phase_acc_lut[9] )
  );
  INV   \Maccum_phase_acc_lut<12>_INV_0  (
    .I(phase_acc[12]),
    .O(\Maccum_phase_acc_lut[12] )
  );
  INV   \Maccum_phase_acc_lut<13>_INV_0  (
    .I(phase_acc[13]),
    .O(\Maccum_phase_acc_lut[13] )
  );
  INV   \Maccum_phase_acc_lut<14>_INV_0  (
    .I(phase_acc[14]),
    .O(\Maccum_phase_acc_lut[14] )
  );
  INV   \Maccum_phase_acc_lut<15>_INV_0  (
    .I(phase_acc[15]),
    .O(\Maccum_phase_acc_lut[15] )
  );
  INV   led_ds41_INV_0 (
    .I(reset_IBUF_1),
    .O(led_ds4_OBUF_106)
  );
  INV   out_clk_n1_INV_0 (
    .I(\max5853_inst/dac_clk_15 ),
    .O(out_clk_n_OBUF_107)
  );
  INV   takt_n1_INV_0 (
    .I(out_takt_65),
    .O(takt_n_OBUF_109)
  );
  INV   \Madd_byte_idx[1]_GND_1_o_add_16_OUT_xor<0>11_INV_0  (
    .I(byte_idx[0]),
    .O(\byte_idx[1]_GND_1_o_add_16_OUT<0> )
  );
  INV   \max5853_inst/Mcount_control_counter_xor<0>11_INV_0  (
    .I(\max5853_inst/control_counter [0]),
    .O(\max5853_inst/Result<0>1 )
  );
  INV   \max5853_inst/Mcount_clk_div_cnt_xor<0>11_INV_0  (
    .I(\max5853_inst/clk_div_cnt [0]),
    .O(\max5853_inst/Result [0])
  );
  INV   \adc_receiver_inst/Mcount_bit_count_xor<0>11_INV_0  (
    .I(\adc_receiver_inst/bit_count [0]),
    .O(\adc_receiver_inst/Mcount_bit_count )
  );
  MUXF7   _n0126_inv (
    .I0(N88),
    .I1(N89),
    .S(\uart_inst/tx_done_51 ),
    .O(_n0126_inv_142)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  _n0126_inv_F (
    .I0(\adc_receiver_inst/data_ready_49 ),
    .I1(state_FSM_FFd1_63),
    .I2(state_FSM_FFd2_64),
    .O(N88)
  );
  LUT6 #(
    .INIT ( 64'h1115151500040404 ))
  _n0126_inv_G (
    .I0(state_FSM_FFd2_64),
    .I1(state_FSM_FFd1_63),
    .I2(tx_done_d_61),
    .I3(byte_idx[0]),
    .I4(byte_idx[1]),
    .I5(\adc_receiver_inst/data_ready_49 ),
    .O(N89)
  );
  sine_lut   sine_lut_inst (
    .a({phase_acc[23], phase_acc[22], phase_acc[21], phase_acc_20_1_395, phase_acc[19], phase_acc_18_1_394, phase_acc_17_1_396, phase_acc[16]}),
    .spo({sin_out[9], sin_out[8], sin_out[7], sin_out[6], sin_out[5], sin_out[4], sin_out[3], sin_out[2], sin_out[1], sin_out[0]})
  );
  cose_lut   cose_lut_inst (
    .a({phase_acc[23], phase_acc[22], phase_acc_21_1_399, phase_acc[20], phase_acc_19_1_397, phase_acc[18], phase_acc[17], phase_acc_16_1_398}),
    .spo({cos_out[9], cos_out[8], cos_out[7], cos_out[6], cos_out[5], cos_out[4], cos_out[3], cos_out[2], cos_out[1], cos_out[0]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
