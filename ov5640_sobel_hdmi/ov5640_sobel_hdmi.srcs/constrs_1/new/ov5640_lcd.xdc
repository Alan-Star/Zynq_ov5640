#----------------------摄像头接口的时钟---------------------------
#72M
create_clock -period 13.888 -name cam_pclk [get_ports cam_pclk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cam_pclk_IBUF]

#HDMI
set_property -dict {PACKAGE_PIN B19 IOSTANDARD TMDS_33 } [get_ports {TMDS_0_tmds_data_p[2]}]
set_property -dict {PACKAGE_PIN C20 IOSTANDARD TMDS_33 } [get_ports {TMDS_0_tmds_data_p[1]}]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD TMDS_33 } [get_ports {TMDS_0_tmds_data_p[0]}]
set_property -dict {PACKAGE_PIN F19 IOSTANDARD TMDS_33 } [get_ports  TMDS_0_tmds_clk_p]

#----------------------摄像头接口---------------------------
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports cam_rst_n]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports cam_pwdn]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports {cam_data[0]}]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports {cam_data[1]}]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports {cam_data[2]}]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {cam_data[3]}]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {cam_data[4]}]
set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports {cam_data[5]}]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports {cam_data[6]}]
set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports {cam_data[7]}]
set_property -dict {PACKAGE_PIN L17 IOSTANDARD LVCMOS33} [get_ports cam_href]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports cam_pclk]
set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports cam_vsync]
#cam_scl:
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {emio_sccb_tri_io[0]}]
#cam_sda:
set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports {emio_sccb_tri_io[1]}]

set_property PULLUP true [get_ports {emio_sccb_tri_io[1]}]
