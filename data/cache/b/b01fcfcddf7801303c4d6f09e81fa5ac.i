a:8:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"818工程下载编译";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:35;}i:4;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:3338:"<p>MSD6A818C编绎方法</p>

<h2>如何下载代码：</h2>

<p>1.在自己的家目录下建个ma818t的目录，cd 到ma818t目录下：
2.分别下载代码编译，最后整合：
svn co svn://192.168.1.252/ma818t/mboot
svn co svn://192.168.1.252/ma818t/3.1.10_Nike_TVOS
svn co svn://192.168.1.252/ma818t/jb42
svn co svn://192.168.1.252/ma818t/sn_nike
svn co svn://192.168.1.252/ma818t/stm32f103x8_proj
下载完代码，最好把代码的目录权限改成0777,自己的用户0755就行了
再按下面的步骤编译代码</p>

<h2>MBoot编绎:</h2>

<ol>
<li>cd /MBoot/sboot</li>
</ol>

<h6>#</h6>

<p>!!!第2步不用执行，.config修改过了
2. 高清：cp .config.nike.android.049b.emmc  .config
   4k2k: cp .config.nike.android.049b.4k2k.emmc  .config</p>

<h6>#</h6>

<p>执行svn update 升级mboot/sboot下的.config
3. make menuconfig
打开介面后,直接退出保存
4. make clean
5. make</p>

<h2>Kernel编绎:</h2>

<p>注:下载完kernel代码后，要把kernel目录下的.svn目录重命名一下
cd到3.1.10_Nike_TVOS目录下mv .svn svn.bak 再make,否则最终生成的升级包会导致开机系统就死机，很多service都启动不了，正常情况如果没有改动kernel,不需重新编译kernel。
1. cd /3.1.10/
2. ./genlink.sh</p>

<h6>#</h6>

<p>!!!第3步不用执行，.config修改过了
3. cp .config.nike_quad_core.android.emmc .config</p>

<h6>#</h6>

<ol>
<li>make menuconfig</li>
<li>输入y 回车 在打开的介面中选exit,接着选yes保存并退出</li>
<li>make clean</li>
<li>make</li>
<li>./releasekerneltojb42.sh   =&lt;执行脚本自动把zImage和IR module ko拷贝到jb42下>
//=======================================================================
注: 生成的文件zImage在 arch/arm/boot 中,将zImage文件更名为kernel
然后拷贝到jb4.2.2/device/mstar/mstarnike下替换原文件
//=======================================================================</li>
</ol>

<h2>JB编绎:</h2>

<ol>
<li>cd /jb</li>
<li>source ./build/envsetup.sh</li>
<li>lunch</li>
<li>如果是1080P输入13,如果是4K2K输入12,回车</li>
<li>make -j12(新服务器可使用12线程编译) (电脑是4核CPU可以用 -j4 八核CPU用-j8 会快得多)
等待编绎完成...根据电脑性能不同,可能需要1-4个小时左右</li>
<li>./device/mstar/mstarnike/releaseimage_usb.sh 要打包USB升级包用这个 images/jb4.2.2/mstarnike/
./device/mstar/mstarnike/releaseimage.sh 要网络升级用这个
1080P高清生成的文件夹名为mstarnike,4K2K生成的文件名为mstarnikeu</li>
</ol>

<h2>Supernova编绎:</h2>

<ol>
<li>cd /projects</li>
<li>高清：source  buildsettings/build_Nike_049B_TVOS_EMMC.sh   现在用这个编译
4K2K: source  buildsettings/build_Nike_049B_TVOS_URSA8_EMMC.sh  暂时不用</li>
</ol>

<h4>3. make rebuild_all &amp;&amp; make image_all 暂时不用</h4>

<ol>
<li>./makenike_thenrelease.sh (包含步骤3的编译过程，并release到images目录下了)
注: 生成的文件在: target/europe_dtv.nike/images/ext4</li>
</ol>

<p>Image 打包升级生成USB BIN
cd 到images目录下
执行 ./make_usbbin.sh</p>

<p>/**************************************************************************/
华星4K2K屏: Supernova\projects\board\nike\MST049B_10AQV_13104_NIKEU\model\Customer_ursa8_4k2k 里面的 bPanel4K2KModeNeedCmd 设置为1</p>
";}i:2;i:3;i:3;s:3295:"
MSD6A818C编绎方法
## 如何下载代码：
1.在自己的家目录下建个ma818t的目录，cd 到ma818t目录下：
2.分别下载代码编译，最后整合：
svn co svn://192.168.1.252/ma818t/mboot
svn co svn://192.168.1.252/ma818t/3.1.10_Nike_TVOS
svn co svn://192.168.1.252/ma818t/jb42
svn co svn://192.168.1.252/ma818t/sn_nike
svn co svn://192.168.1.252/ma818t/stm32f103x8_proj
下载完代码，最好把代码的目录权限改成0777,自己的用户0755就行了
再按下面的步骤编译代码


## MBoot编绎:
1. cd /MBoot/sboot
###########################################################
!!!第2步不用执行，.config修改过了
2. 高清：cp .config.nike.android.049b.emmc  .config
   4k2k: cp .config.nike.android.049b.4k2k.emmc  .config
###########################################################
执行svn update 升级mboot/sboot下的.config
3. make menuconfig
打开介面后,直接退出保存
4. make clean
5. make

## Kernel编绎:
注:下载完kernel代码后，要把kernel目录下的.svn目录重命名一下
cd到3.1.10_Nike_TVOS目录下mv .svn svn.bak 再make,否则最终生成的升级包会导致开机系统就死机，很多service都启动不了，正常情况如果没有改动kernel,不需重新编译kernel。
1. cd /3.1.10/
2. ./genlink.sh
################################################################
!!!第3步不用执行，.config修改过了
3. cp .config.nike_quad_core.android.emmc .config
################################################################
4. make menuconfig
5. 输入y 回车 在打开的介面中选exit,接着选yes保存并退出
6. make clean
7. make
8. ./releasekerneltojb42.sh   =<执行脚本自动把zImage和IR module ko拷贝到jb42下>
//=======================================================================
注: 生成的文件zImage在 arch/arm/boot 中,将zImage文件更名为kernel
    然后拷贝到jb4.2.2/device/mstar/mstarnike下替换原文件
//=======================================================================

## JB编绎:
1. cd /jb
2. source ./build/envsetup.sh
3. lunch
4. 如果是1080P输入13,如果是4K2K输入12,回车
5. make -j12(新服务器可使用12线程编译) (电脑是4核CPU可以用 -j4 八核CPU用-j8 会快得多)
等待编绎完成...根据电脑性能不同,可能需要1-4个小时左右
6. ./device/mstar/mstarnike/releaseimage_usb.sh 要打包USB升级包用这个 images/jb4.2.2/mstarnike/
   ./device/mstar/mstarnike/releaseimage.sh 要网络升级用这个
1080P高清生成的文件夹名为mstarnike,4K2K生成的文件名为mstarnikeu

## Supernova编绎:
1. cd /projects
2. 高清：source  buildsettings/build_Nike_049B_TVOS_EMMC.sh   现在用这个编译
   4K2K: source  buildsettings/build_Nike_049B_TVOS_URSA8_EMMC.sh  暂时不用
####3. make rebuild_all && make image_all 暂时不用
4. ./makenike_thenrelease.sh (包含步骤3的编译过程，并release到images目录下了)
注: 生成的文件在: target/europe_dtv.nike/images/ext4

Image 打包升级生成USB BIN
cd 到images目录下
执行 ./make_usbbin.sh

/**************************************************************************/
华星4K2K屏: Supernova\projects\board\nike\MST049B_10AQV_13104_NIKEU\model\Customer_ursa8_4k2k 里面的 bPanel4K2KModeNeedCmd 设置为1


";}i:2;i:45;}i:5;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:3340;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3351;}i:7;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3351;}}