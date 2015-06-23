/////////////////////////////////////////////////////////////////////
////                                                             ////
////  Author: Eyal Hochberg                                      ////
////          eyal@provartec.com                                 ////
////                                                             ////
////  Downloaded from: http://www.opencores.org                  ////
/////////////////////////////////////////////////////////////////////
////                                                             ////
//// Copyright (C) 2010 Provartec LTD                            ////
//// www.provartec.com                                           ////
//// info@provartec.com                                          ////
////                                                             ////
//// This source file may be used and distributed without        ////
//// restriction provided that this copyright statement is not   ////
//// removed from the file and that any derivative work contains ////
//// the original copyright notice and the associated disclaimer.////
////                                                             ////
//// This source file is free software; you can redistribute it  ////
//// and/or modify it under the terms of the GNU Lesser General  ////
//// Public License as published by the Free Software Foundation.////
////                                                             ////
//// This source is distributed in the hope that it will be      ////
//// useful, but WITHOUT ANY WARRANTY; without even the implied  ////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR     ////
//// PURPOSE.  See the GNU Lesser General Public License for more////
//// details. http://www.gnu.org/licenses/lgpl.html              ////
////                                                             ////
/////////////////////////////////////////////////////////////////////
//---------------------------------------------------------
//-- File generated by RobustVerilog parser
//-- Version: 1.0
//-- Invoked Fri Mar 25 23:32:58 2011
//--
//-- Source file: dma.v
//---------------------------------------------------------


  
module dma_ahb64(clk,reset,scan_en,idle,INT,periph_tx_req,periph_tx_clr,periph_rx_req,periph_rx_clr,pclken,psel,penable,paddr,pwrite,pwdata,prdata,pslverr,pready,WHADDR0,WHBURST0,WHSIZE0,WHTRANS0,WHWDATA0,WHREADY0,WHRESP0,RHADDR0,RHBURST0,RHSIZE0,RHTRANS0,RHRDATA0,RHREADY0,RHRESP0);
`include "dma_ahb64_defines.v"
   
   input                                clk;
   input                 reset;
   input                 scan_en;

   output                 idle;
   output [1-1:0]                INT;
   
   input [31:1]             periph_tx_req;
   output [31:1]             periph_tx_clr;
   input [31:1]             periph_rx_req;
   output [31:1]             periph_rx_clr;

   input                                pclken;
   input                                psel;
   input                                penable;
   input [12:0]                         paddr;
   input                                pwrite;
   input [31:0]                         pwdata;
   output [31:0]                        prdata;
   output                               pslverr;
   output                               pready;
   
  
   output [32-1:0]              WHADDR0;
   output [2:0]                         WHBURST0;
   output [1:0]                         WHSIZE0;
   output [1:0]                         WHTRANS0;
   output [64-1:0]              WHWDATA0;
   input                                WHREADY0;
   input                                WHRESP0;
   output [32-1:0]              RHADDR0;
   output [2:0]                         RHBURST0;
   output [1:0]                         RHSIZE0;
   output [1:0]                         RHTRANS0;
   input [64-1:0]               RHRDATA0;
   input                                RHREADY0;
   input                                RHRESP0;


   
   wire                 rd_port_num0;
   wire                 wr_port_num0;
   wire                 rd_port_num1;
   wire                 wr_port_num1;
   wire                 slv_rd_port_num0;
   wire                 slv_wr_port_num0;
   wire                 slv_rd_port_num1;
   wire                 slv_wr_port_num1;
   
   wire [32-1:0]                WHADDR0;
   wire [2:0]                           WHBURST0;
   wire [1:0]                           WHSIZE0;
   wire [1:0]                           WHTRANS0;
   wire [64-1:0]                WHWDATA0;
   wire                                 WHREADY0;
   wire                                 WHRESP0;
   wire [32-1:0]                RHADDR0;
   wire [2:0]                           RHBURST0;
   wire [1:0]                           RHSIZE0;
   wire [1:0]                           RHTRANS0;
   wire [64-1:0]                RHRDATA0;
   wire                                 RHREADY0;
   wire                                 RHRESP0;
   wire                                 WHLAST0;
   wire                                 WHOLD0;
   wire                                 RHLAST0;
   wire                                 RHOLD0;

   wire [32-1:0]           M0_WHADDR;
   wire [2:0]                           M0_WHBURST;
   wire [1:0]                           M0_WHSIZE;
   wire [1:0]                           M0_WHTRANS;
   wire [64-1:0]           M0_WHWDATA;
   wire                                 M0_WHREADY;
   wire                                 M0_WHRESP;
   wire [32-1:0]           M0_RHADDR;
   wire [2:0]                           M0_RHBURST;
   wire [1:0]                           M0_RHSIZE;
   wire [1:0]                           M0_RHTRANS;
   wire [64-1:0]           M0_RHRDATA;
   wire                                 M0_RHREADY;
   wire                                 M0_RHRESP;
   wire                                 M0_WHLAST;
   wire                                 M0_WHOLD;
   wire                                 M0_RHLAST;
   wire                                 M0_RHOLD;
   wire [24-1:0]           M1_WHADDR;
   wire [2:0]                           M1_WHBURST;
   wire [1:0]                           M1_WHSIZE;
   wire [1:0]                           M1_WHTRANS;
   wire [32-1:0]           M1_WHWDATA;
   wire                                 M1_WHREADY;
   wire                                 M1_WHRESP;
   wire [24-1:0]           M1_RHADDR;
   wire [2:0]                           M1_RHBURST;
   wire [1:0]                           M1_RHSIZE;
   wire [1:0]                           M1_RHTRANS;
   wire [32-1:0]           M1_RHRDATA;
   wire                                 M1_RHREADY;
   wire                                 M1_RHRESP;
   wire                                 M1_WHLAST;
   wire                                 M1_WHOLD;
   wire                                 M1_RHLAST;
   wire                                 M1_RHOLD;
   
   

   wire [31:1]                 periph_tx_req;
   wire [31:1]                 periph_rx_req;
   wire [31:1]                 periph_tx_clr;
   wire [31:1]                 periph_rx_clr;

   
   

   
   
   assign                               WHADDR0   = M0_WHADDR;
   assign                               WHBURST0   = M0_WHBURST;
   assign                               WHSIZE0   = M0_WHSIZE;
   assign                               WHTRANS0   = M0_WHTRANS;
   assign                               WHWDATA0   = M0_WHWDATA;
   assign                               RHADDR0   = M0_RHADDR;
   assign                               RHBURST0   = M0_RHBURST;
   assign                               RHSIZE0   = M0_RHSIZE;
   assign                               RHTRANS0   = M0_RHTRANS;
   assign                               WHLAST0   = M0_WHLAST;
   assign                               RHLAST0   = M0_RHLAST;
   assign                               M0_WHREADY  = WHREADY0;
   assign                               M0_WHRESP  = WHRESP0;
   assign                               M0_RHRDATA  = RHRDATA0;
   assign                               M0_RHREADY  = RHREADY0;
   assign                               M0_RHRESP  = RHRESP0;
   assign                               M0_WHOLD  = WHOLD0;
   assign                               M0_RHOLD  = RHOLD0;
   
   assign                 RHOLD0 = 1'b0;
   assign                 WHOLD0 = 1'b0;

   
   
  

   
   dma_ahb64_dual_core
   dma_ahb64_dual_core (
             .clk(clk),
             .reset(reset),
             .scan_en(scan_en),

             .idle(idle),
             .INT(INT),
             .periph_tx_req(periph_tx_req),
             .periph_tx_clr(periph_tx_clr),
             .periph_rx_req(periph_rx_req),
             .periph_rx_clr(periph_rx_clr),
                     .pclken(pclken),
                     .psel(psel),
                     .penable(penable),
                     .paddr(paddr),
                     .pwrite(pwrite),
                     .pwdata(pwdata),
                     .prdata(prdata),
                     .pslverr(pslverr),
                     .pready(pready),
             
             .rd_port_num0(rd_port_num0),
             .wr_port_num0(wr_port_num0),
             .rd_port_num1(rd_port_num1),
             .wr_port_num1(wr_port_num1),

                     .M0_WHADDR(M0_WHADDR),
                     .M0_WHBURST(M0_WHBURST),
                     .M0_WHSIZE(M0_WHSIZE),
                     .M0_WHTRANS(M0_WHTRANS),
                     .M0_WHWDATA(M0_WHWDATA),
                     .M0_WHREADY(M0_WHREADY),
                     .M0_WHRESP(M0_WHRESP),
                     .M0_RHADDR(M0_RHADDR),
                     .M0_RHBURST(M0_RHBURST),
                     .M0_RHSIZE(M0_RHSIZE),
                     .M0_RHTRANS(M0_RHTRANS),
                     .M0_RHRDATA(M0_RHRDATA),
                     .M0_RHREADY(M0_RHREADY),
                     .M0_RHRESP(M0_RHRESP),
                     .M0_WHLAST(M0_WHLAST),
                     .M0_WHOLD(M0_WHOLD),
                     .M0_RHLAST(M0_RHLAST),
                     .M0_RHOLD(M0_RHOLD)
             );

   
   
endmodule




