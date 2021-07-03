#ifndef IP_DESIGN_1_AXI_NOC_2_1_H_
#define IP_DESIGN_1_AXI_NOC_2_1_H_

// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#ifndef XTLM
#include "xtlm.h"
#endif
#ifndef SYSTEMC_INCLUDED
#include <systemc>
#endif

#if defined(_MSC_VER)
#define DllExport __declspec(dllexport)
#elif defined(__GNUC__)
#define DllExport __attribute__ ((visibility("default")))
#else
#define DllExport
#endif

#include "design_1_axi_noc_2_1_sc.h"




#ifdef XILINX_SIMULATOR
class DllExport design_1_axi_noc_2_1 : public design_1_axi_noc_2_1_sc
{
public:

  design_1_axi_noc_2_1(const sc_core::sc_module_name& nm);
  virtual ~design_1_axi_noc_2_1();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<1> > S00_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S01_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S02_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S03_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk0_clk_p;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk0_clk_n;
  sc_core::sc_out< sc_dt::sc_bv<72> > CH0_DDR4_0_dq;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_0_dqs_t;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_0_dqs_c;
  sc_core::sc_out< sc_dt::sc_bv<17> > CH0_DDR4_0_adr;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ba;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_bg;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_0_act_n;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_0_reset_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ck_t;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ck_c;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_cke;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_cs_n;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_0_dm_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_odt;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk1_clk_p;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk1_clk_n;
  sc_core::sc_out< sc_dt::sc_bv<72> > CH0_DDR4_1_dq;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_1_dqs_t;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_1_dqs_c;
  sc_core::sc_out< sc_dt::sc_bv<17> > CH0_DDR4_1_adr;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ba;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_bg;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_1_act_n;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_1_reset_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ck_t;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ck_c;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_cke;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_cs_n;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_1_dm_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_odt;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:


};
#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
class DllExport design_1_axi_noc_2_1 : public design_1_axi_noc_2_1_sc
{
public:

  design_1_axi_noc_2_1(const sc_core::sc_module_name& nm);
  virtual ~design_1_axi_noc_2_1();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<1> > S00_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S01_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S02_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S03_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk0_clk_p;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk0_clk_n;
  sc_core::sc_inout< sc_dt::sc_bv<72> > CH0_DDR4_0_dq;
  sc_core::sc_inout< sc_dt::sc_bv<9> > CH0_DDR4_0_dqs_t;
  sc_core::sc_inout< sc_dt::sc_bv<9> > CH0_DDR4_0_dqs_c;
  sc_core::sc_out< sc_dt::sc_bv<17> > CH0_DDR4_0_adr;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ba;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_bg;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_0_act_n;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_0_reset_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ck_t;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ck_c;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_cke;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_cs_n;
  sc_core::sc_inout< sc_dt::sc_bv<9> > CH0_DDR4_0_dm_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_odt;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk1_clk_p;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk1_clk_n;
  sc_core::sc_inout< sc_dt::sc_bv<72> > CH0_DDR4_1_dq;
  sc_core::sc_inout< sc_dt::sc_bv<9> > CH0_DDR4_1_dqs_t;
  sc_core::sc_inout< sc_dt::sc_bv<9> > CH0_DDR4_1_dqs_c;
  sc_core::sc_out< sc_dt::sc_bv<17> > CH0_DDR4_1_adr;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ba;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_bg;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_1_act_n;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_1_reset_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ck_t;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ck_c;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_cke;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_cs_n;
  sc_core::sc_inout< sc_dt::sc_bv<9> > CH0_DDR4_1_dm_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_odt;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:


};
#endif // XM_SYSTEMC




#ifdef RIVIERA
class DllExport design_1_axi_noc_2_1 : public design_1_axi_noc_2_1_sc
{
public:

  design_1_axi_noc_2_1(const sc_core::sc_module_name& nm);
  virtual ~design_1_axi_noc_2_1();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<1> > S00_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S01_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S02_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S03_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk0_clk_p;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk0_clk_n;
  sc_core::sc_out< sc_dt::sc_bv<72> > CH0_DDR4_0_dq;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_0_dqs_t;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_0_dqs_c;
  sc_core::sc_out< sc_dt::sc_bv<17> > CH0_DDR4_0_adr;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ba;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_bg;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_0_act_n;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_0_reset_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ck_t;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ck_c;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_cke;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_cs_n;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_0_dm_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_odt;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk1_clk_p;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk1_clk_n;
  sc_core::sc_out< sc_dt::sc_bv<72> > CH0_DDR4_1_dq;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_1_dqs_t;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_1_dqs_c;
  sc_core::sc_out< sc_dt::sc_bv<17> > CH0_DDR4_1_adr;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ba;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_bg;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_1_act_n;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_1_reset_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ck_t;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ck_c;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_cke;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_cs_n;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_1_dm_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_odt;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:


};
#endif // RIVIERA




#ifdef VCSSYSTEMC
class DllExport design_1_axi_noc_2_1 : public design_1_axi_noc_2_1_sc
{
public:

  design_1_axi_noc_2_1(const sc_core::sc_module_name& nm);
  virtual ~design_1_axi_noc_2_1();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<1> > S00_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S01_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S02_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S03_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk0_clk_p;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk0_clk_n;
  sc_core::sc_out< sc_dt::sc_bv<72> > CH0_DDR4_0_dq;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_0_dqs_t;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_0_dqs_c;
  sc_core::sc_out< sc_dt::sc_bv<17> > CH0_DDR4_0_adr;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ba;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_bg;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_0_act_n;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_0_reset_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ck_t;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ck_c;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_cke;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_cs_n;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_0_dm_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_odt;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk1_clk_p;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk1_clk_n;
  sc_core::sc_out< sc_dt::sc_bv<72> > CH0_DDR4_1_dq;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_1_dqs_t;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_1_dqs_c;
  sc_core::sc_out< sc_dt::sc_bv<17> > CH0_DDR4_1_adr;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ba;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_bg;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_1_act_n;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_1_reset_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ck_t;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ck_c;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_cke;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_cs_n;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_1_dm_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_odt;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:


  // Transactor stubs

  // Socket stubs

};
#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
class DllExport design_1_axi_noc_2_1 : public design_1_axi_noc_2_1_sc
{
public:

  design_1_axi_noc_2_1(const sc_core::sc_module_name& nm);
  virtual ~design_1_axi_noc_2_1();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<1> > S00_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S01_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S02_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > S03_INI_internoc;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk0_clk_p;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk0_clk_n;
  sc_core::sc_out< sc_dt::sc_bv<72> > CH0_DDR4_0_dq;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_0_dqs_t;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_0_dqs_c;
  sc_core::sc_out< sc_dt::sc_bv<17> > CH0_DDR4_0_adr;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ba;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_bg;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_0_act_n;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_0_reset_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ck_t;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_ck_c;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_cke;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_cs_n;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_0_dm_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_0_odt;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk1_clk_p;
  sc_core::sc_in< sc_dt::sc_bv<1> > sys_clk1_clk_n;
  sc_core::sc_out< sc_dt::sc_bv<72> > CH0_DDR4_1_dq;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_1_dqs_t;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_1_dqs_c;
  sc_core::sc_out< sc_dt::sc_bv<17> > CH0_DDR4_1_adr;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ba;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_bg;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_1_act_n;
  sc_core::sc_out< sc_dt::sc_bv<1> > CH0_DDR4_1_reset_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ck_t;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_ck_c;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_cke;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_cs_n;
  sc_core::sc_out< sc_dt::sc_bv<9> > CH0_DDR4_1_dm_n;
  sc_core::sc_out< sc_dt::sc_bv<2> > CH0_DDR4_1_odt;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:


  // Transactor stubs

  // Socket stubs

};
#endif // MTI_SYSTEMC
#endif // IP_DESIGN_1_AXI_NOC_2_1_H_
