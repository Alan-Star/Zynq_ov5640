//****************************************Copyright (c)***********************************//
//技术支持：www.openedv.com
//淘宝店铺：http://openedv.taobao.com
//关注微信公众平台微信号："正点原子"，免费获取FPGA & STM32资料。
//版权所有，盗版必究。
//Copyright(C) 正点原子 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           vip
// Last modified Date:  2019/03/22 16:33:40
// Last Version:        V1.0
// Descriptions:        数字图像处理模块封装层
//----------------------------------------------------------------------------------------
// Created by:          正点原子
// Created date:        2019/03/22 16:33:56
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

module Vip(
    //module clock
    input           clk            ,    // 时钟信号
    input           rst_n          ,    // 复位信号（低有效）

    //图像处理前的数据接口
    input           pre_frame_vsync,
    input           per_frame_href,
    input           per_frame_clken   ,
    input    [23:0] per_frame_data        ,

    //图像处理后的数据接口
    output          post_frame_vsync,   // 场同步信号
    output          post_frame_href ,   // 行同步信号
    output          post_frame_clken,   // 数据输入使能
    output   [23:0] post_frame_data     // RGB888颜色数据
);

parameter  SOBEL_THRESHOLD = 128; //sobel阈值

wire                  ycbcb_vsync;
wire                  ycbcbr_clken;
wire                  ycbcr_valid;
wire   [ 7:0]         gray_data;

wire                  post_img_bit;
//*****************************************************
//**                    main code
//*****************************************************

assign  post_frame_data = {24{~post_img_bit}};

//RGB转YCbCr模块
//rgb转ycbcr模块
rgb2ycbcr  u_rgb2ycbcr(
    .clk          (clk),
    .rst_n        (rst_n),
                  
    .rgb_vsync    (pre_frame_vsync),
    .rgb_clken    (per_frame_clken),
    .rgb_valid    (per_frame_href),
    .rgb_data     (per_frame_data),
                  
                  
    .ycbcb_vsync  (ycbcb_vsync),
    .ycbcbr_clken (ycbcbr_clken),
    .ycbcr_valid  (ycbcr_valid),
    .gray_data    (gray_data)
);

vip_sobel_edge_detector
    #(
    .SOBEL_THRESHOLD  (SOBEL_THRESHOLD)    //sobel阈值
    )
u_vip_sobel_edge_detector(
    .clk   (clk),
    .rst_n (rst_n),
    
    //处理前数据
    .per_frame_vsync (ycbcb_vsync ),     //处理前帧有效信号
    .per_frame_href  (ycbcr_valid ),     //处理前行有效信号
    .per_frame_clken (ycbcbr_clken),     //处理前图像使能信号
    .per_img_y       (gray_data   ),     //处理前输入灰度数据
    
    //处理后的数据
    .post_frame_vsync (post_frame_vsync),    //处理后帧有效信号
    .post_frame_href  (post_frame_href ),    //处理后行有效信号
    .post_frame_clken (post_frame_clken),    //输出使能信号
    .post_img_bit     (post_img_bit    )     //输出像素
        
);
endmodule
