// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jul 12 15:04:29 2023
// Host        : DESKTOP-HFJ50FN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Desktop/2/soble/VIP_sobel_edge_detector/src/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19728)
`pragma protect data_block
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
p1WoZjtq
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
