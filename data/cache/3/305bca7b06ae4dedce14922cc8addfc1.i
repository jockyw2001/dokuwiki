a:52:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"录像存在竖条纹";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:39;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"现象：";i:1;i:2;i:2;i:39;}i:2;i:39;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:39;}i:6;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:60;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:60;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:60;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:" 全志平台采用YUYV格式USB摄像头 ";}i:2;i:64;}i:10;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:106;}i:11;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:106;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:106;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:106;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:" 预览拍照均正常";}i:2;i:110;}i:15;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:132;}i:16;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:132;}i:17;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:132;}i:18;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:132;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:" 录像画面静止时正常，运动时存在竖条纹，且运动越快，竖条纹越多";}i:2;i:136;}i:20;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:227;}i:21;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:227;}i:22;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:227;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:230;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"原因分析：";i:1;i:2;i:2;i:230;}i:2;i:230;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:230;}i:26;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:258;}i:27;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:258;}i:28;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:258;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:255:" 摄像头原始格式为YUYV，需转换为NV21格式才能进行正常编码预览，转换时，操作ION内存，但是未对内存进行刷新，导致内存数据未得到及时更新，所用导致传输给编码的数据出错，生成竖条纹。";}i:2;i:262;}i:30;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:517;}i:31;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:517;}i:32;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:517;}i:33;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:520;}i:34;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"解决方案：";i:1;i:2;i:2;i:520;}i:2;i:520;}i:35;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:520;}i:36;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:548;}i:37;a:3:{i:0;s:13:"listitem_open";i:1;a:2:{i:0;i:1;i:1;i:1;}i:2;i:548;}i:38;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:548;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:" 调用ion_flush_cache刷新ION内存，更新内存，具体如下";}i:2;i:552;}i:40;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:619;}i:41;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:619;}i:42;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:2;}i:2;i:619;}i:43;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:619;}i:44;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:735:"
	if (mVideoFormat != V4L2_PIX_FMT_YUYV
		&& mCaptureFormat == V4L2_PIX_FMT_YUYV)
	{
#ifdef USE_MP_CONVERT
            YUYVToYUV420C((void*)buf.m.offset, 
                      (void*)(mVideoBuffer.buf_phy_addr[buf.index] | 0x40000000),
                      mFrameWidth, 
                      mFrameHeight);
            ion_flush_cache((void*)mVideoBuffer.buf_vir_addr[buf.index], mFrameWidth * mFrameHeight * 2);
#else
            YUYVToNV21(mMapMem.mem[buf.index], 
                       (void*)mVideoBuffer.buf_vir_addr[buf.index], 
                       mFrameWidth, 
                       mFrameHeight);
            ion_flush_cache((void*)mVideoBuffer.buf_vir_addr[buf.index], mFrameWidth * mFrameHeight * 2);
#endif
	}
     ";i:1;s:3:"cpp";i:2;N;}i:2;i:630;}i:45;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1377;}i:46;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1377;}i:47;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:1377;}i:48;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1377;}i:49;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1377;}i:50;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1377;}i:51;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1377;}}