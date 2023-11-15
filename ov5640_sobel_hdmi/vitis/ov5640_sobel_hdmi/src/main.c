#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "display_ctrl_hdmi/display_ctrl_hdmi.h"
#include "vdma_api/vdma_api.h"
#include "emio_sccb_cfg/emio_sccb_cfg.h"
#include "ov5640/ov5640_init.h"

#define VDMA_ID            XPAR_AXIVDMA_0_DEVICE_ID    //VDMA器件ID
#define DISP_VTC_ID        XPAR_VTC_0_DEVICE_ID        //VTC器件ID

//frame buffer的起始地址
unsigned int const frame_buffer_addr = (XPAR_PS7_DDR_0_S_AXI_BASEADDR
										+ 0x1000000);
//全局变量
XAxiVdma     vdma;
DisplayCtrl  dispCtrl;
VideoMode    vd_mode;

int main(void)
{
	u32 status;
	u16 cmos_h_pixel;   //ov5640 DVP 输出水平像素点数
	u16 cmos_v_pixel;   //ov5640 DVP 输出垂直像素点数
	u16 total_h_pixel;  //ov5640 水平总像素大小
	u16 total_v_pixel;  //ov5640 垂直总像素大小

	cmos_h_pixel = 1280;
	cmos_v_pixel = 720;
	total_h_pixel = 2570;
	total_v_pixel = 980;

	emio_init();                         //初始化EMIO
	status = ov5640_init( cmos_h_pixel,  //初始化ov5640
						  cmos_v_pixel,
						 total_h_pixel,
						 total_v_pixel);
	if(status == 0)
		xil_printf("OV5640 detected successful!\r\n");
	else
		xil_printf("OV5640 detected failed!\r\n");

	vd_mode = VMODE_1280x720;

	//配置VDMA
	run_vdma_frame_buffer(&vdma, VDMA_ID, vd_mode.width, vd_mode.height,
							frame_buffer_addr,0,0,BOTH);

	//初始化Display controller
	DisplayInitialize(&dispCtrl, DISP_VTC_ID);
    //设置VideoMode
	DisplaySetMode(&dispCtrl, &vd_mode);
	DisplayStart(&dispCtrl);

    return 0;
}

