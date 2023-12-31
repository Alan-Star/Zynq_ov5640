//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com 
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           line_shift_RAM_8bit
// Last modified Date:  2019/7/19 10:55:56
// Last Version:        V1.0
// Descriptions:        line_shift_RAM_8bit
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2019/7/19 10:55:56
// Version:             V1.0
// Descriptions:        The original version
//		两个伪双端口RAM用于存储 旧两行的数据。
//		在新一行的数据到来时，在延迟打拍的时序下，
//		先将RAM中的旧一行数据读出，再将新一行数据写入到RAM。
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module line_shift_RAM_8bit(
	input clock,

	input          clken,
	input          per_frame_href,
	
	input   [7:0]  shiftin,  //当前行的数据
	output  [7:0]  taps0x,   //前一行的数据
	output  [7:0]  taps1x    //前前一行的数据
);

//reg define
reg  [2:0]  clken_dly;
reg  [9:0]  ram_rd_addr;
reg  [9:0]  ram_rd_addr_d0;
reg  [9:0]  ram_rd_addr_d1;
reg  [7:0]  shiftin_d0;
reg  [7:0]  shiftin_d1;
reg  [7:0]  shiftin_d2;
reg  [7:0]  taps0x_d0;

//*****************************************************
//**                    main code
//*****************************************************

//在数据到来时，RAM的读地址累加
always@(posedge clock)begin
	if(per_frame_href)
		if(clken)
			ram_rd_addr <= ram_rd_addr + 1 ;
		else
			ram_rd_addr <= ram_rd_addr ;
	else
		ram_rd_addr <= 0 ;
end

//对时钟延迟3拍
always@(posedge clock) begin
	clken_dly <= { clken_dly[1:0] , clken };
end

//将RAM地址延迟2拍
always@(posedge clock ) begin
	ram_rd_addr_d0 <= ram_rd_addr;
	ram_rd_addr_d1 <= ram_rd_addr_d0;
end

//输入数据延迟3拍送入RAM
always@(posedge clock)begin
	shiftin_d0 <= shiftin;
	shiftin_d1 <= shiftin_d0;
	shiftin_d2 <= shiftin_d1;
end

//用于存储前一行图像的RAM
blk_mem_gen_0  u_ram_1024x8_0(
  .clka   (clock),
  .wea    (clken_dly[2]),
  .addra  (ram_rd_addr_d1),     //在延迟的第三个时钟周期，当前行的数据写入RAM0
  .dina   (shiftin_d2),
  
  .clkb   (clock),
  .addrb  (ram_rd_addr),    
  .doutb  (taps0x)              //延迟一个时钟周期，输出RAM0中前一行图像的数据
);

//寄存前一行图像的数据
always@(posedge clock)begin
	taps0x_d0  <= taps0x;
end

//用于存储前前一行图像的RAM
blk_mem_gen_0  u_ram_1024x8_1(
	.clka   (clock),
	.wea    (clken_dly[1]),
	.addra  (ram_rd_addr_d0),
	.dina   (taps0x_d0),       //在延迟的第二个时钟周期，将前一行图像的数据写入RAM1

	.clkb   (clock),
	.addrb  (ram_rd_addr),
	.doutb  (taps1x)           //延迟一个时钟周期，输出RAM1中前前一行图像的数据
);

endmodule
