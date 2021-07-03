
// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
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

#ifndef __PS_PMC_TLM_H__
#define __PS_PMC_TLM_H__

#include "systemc.h"
#include "xtlm.h"
#include "xtlm_adaptors/xaximm_xtlm2tlm.h"
#include "xtlm_adaptors/xaximm_tlm2xtlm.h"
#include "tlm_utils/simple_initiator_socket.h"
#include "tlm_utils/simple_target_socket.h"
#include <vector>
#include "genattr.h"
#include "xilinx_versal.h"
#include <stdlib.h>
#include "xtlm_simple_interconnect_model.h"
#include "RdWrTCPSocket.h"
#include "rwd_tlmmodel.h"
#include<thread>
#include "sim_qdma.h"
#include "b_transport_converter.h"

/***************************************************************************************
*
* A Simple Converter which converts Remote-port's simplae_intiator_sockets<32>->b_transport()
* calls to xTLM sockets bn_transport_x() calls..
*
* This is Only specific to remote-port so not creating seperate header for it.
*
***************************************************************************************/
template <int IN_WIDTH, int OUT_WIDTH>
class rptlm2xtlm_converter : public sc_module {
  public:
    sc_core::sc_in<bool> clk;
    tlm::tlm_target_socket<IN_WIDTH> target_socket;
    xtlm::xtlm_aximm_initiator_socket wr_socket;
    xtlm::xtlm_aximm_initiator_socket rd_socket;
    rptlm2xtlm_converter<IN_WIDTH, OUT_WIDTH>(sc_module_name name);//:sc_module(name)
    void registerUserExtensionHandlerCallback(
			void (*callback)(xtlm::aximm_payload*,
				const tlm::tlm_generic_payload*));

    private:
    b_transport_converter<IN_WIDTH, OUT_WIDTH> m_btrans_conv;
    xtlm::xaximm_tlm2xtlm_t<OUT_WIDTH> xtlm_bridge;
    void before_end_of_elaboration();
};

/***************************************************************************************
*   Global method, get registered with tlm2xtlm bridge
*   This function is called when tlm2xtlm bridge convert tlm payload to xtlm payload.
*
*   caller:     tlm2xtlm bridge
*   purpose:    To get master id and other parameters out of genattr_extension
*               and use master id to AxUSER PIN of xtlm payload.
*
*
***************************************************************************************/
extern void get_extensions_from_tlm(xtlm::aximm_payload* xtlm_pay, const tlm::tlm_generic_payload* gp);

/***************************************************************************************
*   Global method, get registered with xtlm2tlm bridge
*   This function is called when xtlm2tlm bridge convert xtlm payload to tlm payload.
*
*   caller:     xtlm2tlm bridge
*   purpose:    To create and add master id and other parameters to genattr_extension.
*               Master id red from AxID PIN of xtlm payload.
*
*
***************************************************************************************/
extern void add_extensions_to_tlm(const xtlm::aximm_payload* xtlm_pay, tlm::tlm_generic_payload* gp);

////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                    //
// File:        versal_cips_v2_1_tlm.h                                                                //
//                                                                                                    //
// Description: versal_cips_v2_1_3_tlm class is a sc_module, act as intermediate layer between          //
//              xilinx_zynqmp qemu wrapper and Vivado generated systemc simulation ip wrapper.        //
//              it's basically created for supporting tlm based xilinx_zynqmp from xtlm based vivado  //
//              generated systemc wrapper. this wrapper is live only when SELECTED_SIM_MODEL is set   //
//              to tlm. it's also act as bridge between vivado wrapper and xilinx_zynqmp wrapper.     //
//              it fill the the gap between input/output ports of vivado generated wrapper to         //
//              xilinx_zynqmp wrapper signals. This wrapper is auto generated by ttcl scripts         //
//              based on IP configuration in vivado.                                                  //
//                                                                                                    //
//                                                                                                    //
////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
template<int INIT_WIDTH, int TARGET_WIDTH>
class tlm_width_conversion;
class versal_cips_v2_1_3_tlm : public sc_core::sc_module   {

  public:
    // Non-AXI ports are declared here
    sc_core::sc_out<bool> fpd_cci_noc_axi0_clk;
    sc_core::sc_out<bool> fpd_cci_noc_axi1_clk;
    sc_core::sc_out<bool> fpd_cci_noc_axi2_clk;
    sc_core::sc_out<bool> fpd_cci_noc_axi3_clk;
    sc_core::sc_out<bool> fpd_axi_noc_axi0_clk;
    sc_core::sc_out<bool> cpm_pcie_noc_axi0_clk;
    sc_core::sc_out<bool> cpm_pcie_noc_axi1_clk;
    sc_core::sc_out<bool> lpd_axi_noc_clk;
    sc_core::sc_out<bool> pmc_axi_noc_axi0_clk;
    sc_core::sc_out<sc_dt::sc_bv<94> >  gem0_tsu_timer_cnt;
    sc_core::sc_out<bool> pcie0_user_clk;
    sc_core::sc_out<bool> pcie1_user_clk;
    sc_core::sc_out<bool> dma0_axi_aresetn;
    sc_core::sc_in<bool> dma0_soft_resetn;
    sc_core::sc_out<bool> pcie1_user_reset;
    sc_core::sc_out<bool> cpm_cor_irq;
    sc_core::sc_in<bool> cpm_irq0;
    sc_core::sc_in<bool> cpm_irq1;
    sc_core::sc_out<bool> cpm_misc_irq;
    sc_core::sc_out<bool> cpm_uncor_irq;
    sc_core::sc_out<bool> dma0_irq;
    sc_core::sc_out<bool> pcie0_user_lnk_up;
    sc_core::sc_out<bool> pcie1_user_lnk_up;
    sc_core::sc_in<sc_dt::sc_bv<4> >  pcie1_cfg_interrupt_int;
    sc_core::sc_out<bool> pcie1_cfg_interrupt_sent;
    sc_core::sc_in<sc_dt::sc_bv<4> >  pcie1_cfg_interrupt_pending;
    sc_core::sc_in<sc_dt::sc_bv<1> >  xdma0_usr_irq_req;
    sc_core::sc_out<sc_dt::sc_bv<1> >  xdma0_usr_irq_ack;
    sc_core::sc_out<sc_dt::sc_bv<4> >  pcie1_cfg_msi_enable;
    sc_core::sc_out<sc_dt::sc_bv<12> >  pcie1_cfg_msi_mmenable;
    sc_core::sc_out<sc_dt::sc_bv<32> >  pcie1_cfg_msi_data;
    sc_core::sc_in<sc_dt::sc_bv<3> >  pcie1_cfg_msi_attr;
    sc_core::sc_in<sc_dt::sc_bv<8> >  pcie1_cfg_msi_function_number;
    sc_core::sc_in<sc_dt::sc_bv<32> >  pcie1_cfg_msi_int_vector;
    sc_core::sc_in<sc_dt::sc_bv<32> >  pcie1_cfg_msi_pending_status;
    sc_core::sc_in<bool> pcie1_cfg_msi_pending_status_data_enable;
    sc_core::sc_in<sc_dt::sc_bv<2> >  pcie1_cfg_msi_pending_status_function_number;
    sc_core::sc_in<sc_dt::sc_bv<2> >  pcie1_cfg_msi_select;
    sc_core::sc_in<bool> pcie1_cfg_msi_tph_present;
    sc_core::sc_in<sc_dt::sc_bv<8> >  pcie1_cfg_msi_tph_st_tag;
    sc_core::sc_in<sc_dt::sc_bv<2> >  pcie1_cfg_msi_tph_type;
    sc_core::sc_in<sc_dt::sc_bv<8> >  pcie0_gt_rxn;
    sc_core::sc_in<sc_dt::sc_bv<8> >  pcie0_gt_rxp;
    sc_core::sc_out<sc_dt::sc_bv<8> >  pcie0_gt_txn;
    sc_core::sc_out<sc_dt::sc_bv<8> >  pcie0_gt_txp;
    sc_core::sc_in<sc_dt::sc_bv<8> >  pcie1_gt_rxn;
    sc_core::sc_in<sc_dt::sc_bv<8> >  pcie1_gt_rxp;
    sc_core::sc_out<sc_dt::sc_bv<8> >  pcie1_gt_txn;
    sc_core::sc_out<sc_dt::sc_bv<8> >  pcie1_gt_txp;
    sc_core::sc_in<bool> gt_refclk0_n;
    sc_core::sc_in<bool> gt_refclk0_p;
    sc_core::sc_in<bool> gt_refclk1_n;
    sc_core::sc_in<bool> gt_refclk1_p;

    // Xtlm aximm slave sockets are delcared here. these XTLM sockets will hierachically bound with
    // slave sockets defined in vivado generated wrapper.

    // Xtlm aximm master socket/s is/are delcared here. these XTLM sockets will hierachically bound with
    // master sockets defined in vivado generated wrapper.
    xtlm::xtlm_aximm_initiator_socket*      FPD_CCI_NOC_0_wr_socket;
    xtlm::xtlm_aximm_initiator_socket*      FPD_CCI_NOC_0_rd_socket;
    xtlm::xtlm_aximm_initiator_socket*      FPD_CCI_NOC_1_wr_socket;
    xtlm::xtlm_aximm_initiator_socket*      FPD_CCI_NOC_1_rd_socket;
    xtlm::xtlm_aximm_initiator_socket*      FPD_CCI_NOC_2_wr_socket;
    xtlm::xtlm_aximm_initiator_socket*      FPD_CCI_NOC_2_rd_socket;
    xtlm::xtlm_aximm_initiator_socket*      FPD_CCI_NOC_3_wr_socket;
    xtlm::xtlm_aximm_initiator_socket*      FPD_CCI_NOC_3_rd_socket;
    xtlm::xtlm_aximm_initiator_socket*      FPD_AXI_NOC_0_wr_socket;
    xtlm::xtlm_aximm_initiator_socket*      FPD_AXI_NOC_0_rd_socket;
    xtlm::xtlm_aximm_initiator_socket*      CPM_PCIE_NOC_0_wr_socket;
    xtlm::xtlm_aximm_initiator_socket*      CPM_PCIE_NOC_0_rd_socket;
    xtlm::xtlm_aximm_initiator_socket*      CPM_PCIE_NOC_1_wr_socket;
    xtlm::xtlm_aximm_initiator_socket*      CPM_PCIE_NOC_1_rd_socket;
    xtlm::xtlm_aximm_initiator_socket*      NOC_LPD_AXI_0_wr_socket;
    xtlm::xtlm_aximm_initiator_socket*      NOC_LPD_AXI_0_rd_socket;
    xtlm::xtlm_aximm_initiator_socket*      PMC_NOC_AXI_0_wr_socket;
    xtlm::xtlm_aximm_initiator_socket*      PMC_NOC_AXI_0_rd_socket;
    xtlm::xtlm_axis_target_socket* pcie1_s_axis_rq_socket;
    xtlm::xtlm_axis_target_socket* pcie1_s_axis_cc_socket;
    xtlm::xtlm_axis_target_socket_util* pcie1_s_axis_rq_util;
    xtlm::xtlm_axis_target_socket_util* pcie1_s_axis_cc_util;
    xtlm::xtlm_axis_initiator_socket* pcie1_m_axis_cq_socket;
    xtlm::xtlm_axis_initiator_socket* pcie1_m_axis_rc_socket;
    xtlm::xtlm_axis_initiator_socket_util* pcie1_m_axis_cq_util;
    xtlm::xtlm_axis_initiator_socket_util* pcie1_m_axis_rc_util;
    xtlm::xtlm_axis_initiator_socket* dma0_st_rx_msg_socket;
    xtlm::xtlm_axis_initiator_socket_util* dma0_st_rx_msg_util;

    //constructor having three paramters
    // 1. module name in sc_module_name objec,
    // 2. reference to map object of name and integer value pairs
    // 3. reference to map object of name and string value pairs
    // All the model parameters (integer and string) which are configuration parameters
    // of ZynqUltraScale+ IP propogated from Vivado
    versal_cips_v2_1_3_tlm (sc_core::sc_module_name name,
      xsc::common_cpp::properties model_param_props);
    ~versal_cips_v2_1_3_tlm();
    SC_HAS_PROCESS(versal_cips_v2_1_3_tlm);

  private:

    //zynqmp tlm wrapper provided by Edgar
    //module with interfaces of standard tlm
    //and input/output ports at signal level
    xilinx_versal* m_zynq3_tlm_model;

    // Array of Xtlm2tlm Bridges
    // Converts Xtlm transactions to tlm transactions
    // Bridge's Xtlm wr/rd target sockets binds with
    // xtlm initiator sockets of zynq_ultra_ps_e_tlm and tlm simple initiator
    // socket with xilinx_zynqmp's target socket
    // Array of size 11
    xtlm::xaximm_xtlm2tlm **m_xtlm2tlm;

    // Array of tlm2xtlm Bridges
    // Converts tlm transactions to xtlm transactions
    // Bridge's tlm simple target socket binds with
    // simple initiator socket of xilinx_zynqmp and xtlm
    // socket with xilinx_zynqmp's simple target socket
    // Array of size 12

    rptlm2xtlm_converter<32,128 > m_rp_bridge_FPD_CCI_NOC_0;
    rptlm2xtlm_converter<32,128 > m_rp_bridge_FPD_CCI_NOC_1;
    rptlm2xtlm_converter<32,128 > m_rp_bridge_FPD_CCI_NOC_2;
    rptlm2xtlm_converter<32,128 > m_rp_bridge_FPD_CCI_NOC_3;
    rptlm2xtlm_converter<32,128 > m_rp_bridge_FPD_AXI_NOC_0;
    rptlm2xtlm_converter<32,128 > m_rp_bridge_CPM_PCIE_NOC_1;
    rptlm2xtlm_converter<32,128 > m_rp_bridge_NOC_LPD_AXI_0;
    rptlm2xtlm_converter<32,128 > m_rp_bridge_PMC_NOC_AXI_0;

    // sc_clocks for generating pl clocks
    // output pins pl0_ref_clk..3 are drived by these clocks
    sc_core::sc_clock pmc_noc_clk;


    void trigger_ps_pmc_noc_axi0_clk_pin();
    void trigger_ps_noc_pcie_axi0_clk_pin();
    void trigger_ps_noc_cci_axi0_clk_pin();
    void trigger_ps_noc_cci_axi1_clk_pin();
    void trigger_ps_noc_cci_axi2_clk_pin();
    void trigger_ps_noc_cci_axi3_clk_pin();
    void trigger_ps_noc_nci_axi0_clk_pin();
    void trigger_ps_noc_rpu_axi0_clk_pin();
    void pl_ps_irq_method();

    sc_signal<bool> qemu_rst;
    void start_of_simulation();
    void rwd_tlmmodule_init();
    rwd_tlmmodel* m_rwd_tlmmodel;
    RdWrTCPSocket* m_rdwrtcpsock;
    std::thread* m_rwd_thread;
    rptlm2xtlm_converter<32,128 >* rwd_tlm2xtlm_brdg;
    xtlm_simple_interconnect_model* rwd_pmc_interconnect;
    sim_qdma* m_sim_qdma_ptr;
    xtlm_simple_interconnect_model* sim_qdma_interconnect;
    sc_core::sc_signal<bool> dummy_noc_pcie_sig;

    void enable_sim_qdma();

    //for stubbing axis interfaces of pcie.. TODO: in future they bind to sim_qdma
    void pcie1_s_axis_rq_thread();
    void pcie1_s_axis_cc_thread();
    sc_signal<sc_bv<16> > dummy_usr_irq_req;
    sc_signal<sc_bv<16> > dummy_usr_irq_ack;


};
#endif
