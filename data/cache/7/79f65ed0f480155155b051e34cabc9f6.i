a:24:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"mm 添加参数";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:87:"
ifdef ES83_ONE_MIC
LOCAL_CFLAGS += -DSURPORT_ONE_MIC
endif

mm -B -j12 DEX_FLAG:=true
";i:1;s:4:"bash";i:2;N;}i:2;i:34;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:136;}i:5;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:28:"Android.mk传宏进c++文件";i:1;i:2;i:2;i:136;}i:2;i:136;}i:6;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:136;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:136;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"在Boardconfig.mk中添加一个";}i:2;i:177;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:209;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:18:"
	IS_FLAG := true
";i:1;N;i:2;N;}i:2;i:216;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:216;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:111:"由于Boardconfig.mk和各目录的Android.mk是相互关联的,所以我们可以在Android.mk 中添加一个";}i:2;i:244;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:355;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:48:"
	ifdef IS_FLAG
		LOCAL_CFLAGS += -DHHHH
	endif
";i:1;N;i:2;N;}i:2;i:362;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:362;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:"在Android.mk中添加的这行相当于在 该目录下的文件中定义了一个宏";}i:2;i:420;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:506;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:15:"
	#define HHHH
";i:1;N;i:2;N;}i:2;i:513;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:513;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"也可以通过 mm  IS_FLAG := true -B 添加对应的宏定义";}i:2;i:538;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:601;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:602;}i:23;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:602;}}