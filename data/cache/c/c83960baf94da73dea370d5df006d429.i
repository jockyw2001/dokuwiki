a:8:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"628工程下载编译";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:1;i:1;s:0:"";}i:2;i:1;i:3;s:10:"<markdown>";}i:2;i:35;}i:4;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:3;i:1;s:1697:"<h2>SVN地址</h2>

<p>svn://192.168.1.252/6A628/628_Mboot
svn://192.168.1.252/6A628/628_Linux
svn://192.168.1.252/6A628/628_Supernova
svn://192.168.1.252/6A628/628_KitKat</p>

<h1>编译流程</h1>

<h2>mboot</h2>

<ol>
<li>进入mboot/sboot执行以下命令。
make clean;make</li>
</ol>

<h2>kernel</h2>

<ol>
<li>./genlink.sh</li>
<li>make clean;make</li>
</ol>

<h2>Kitcat</h2>

<ol>
<li>source ./build/envsetup.sh</li>
<li>lunch   choose  12（full_mango-userdebug)</li>
<li>make</li>
<li>./development/scripts/releaseimage.sh</li>
<li>Bk与image比较把下面的文件从bk覆盖image同样的文件。
（只要执行了./development/scripts/releaseimage.sh命令，就必须修改此config文件）</li>
</ol>

<p>在打包bin之前，确保：
（1）首先要先确认628_Mboot\sboot\out 中最新的
mboot.bin和rom_emmc_boot.bin   copy 到 \images\kitkat\mango中。
（2）需要确认supernova也编译过，并且images中有supernova生成的最新相关镜像。</p>

<h2>打包bin文件：</h2>

<ol>
<li>development/scripts 中 ./make_usb_upgrade.sh</li>
<li>choose 2)madison Device? 1)mango 2)banana :1 DEVICE: mango</li>
<li><strong>Enable secureboot? (y/n)n</strong></li>
<li>Upgrade all? (y/n)y</li>
<li><strong>Update tee? (y/n)n</strong></li>
<li>Update tvconfig? (y/n)y     //这个是升级supernova的</li>
<li><strong>Upgrade systembackup? (y/n)n</strong></li>
<li>Update RTPM? (y/n)y</li>
<li>Upgrade mboot? (y/n)y</li>
<li>Mboot partition type 1)SPI; 2)EMMC :    2</li>
</ol>

<p>Supernova
1. source buildsettings/build_Madison_066B_TVOS_ROM_EMMC.sh
2. ./make_kitkat_066B_release.sh</p>

<h2>升级</h2>

<p>开机按enter键，串口输入custar进行升级</p>
";}i:2;i:3;i:3;s:1433:"

## SVN地址
svn://192.168.1.252/6A628/628_Mboot
svn://192.168.1.252/6A628/628_Linux
svn://192.168.1.252/6A628/628_Supernova
svn://192.168.1.252/6A628/628_KitKat

# 编译流程
## mboot
1. 进入mboot/sboot执行以下命令。
make clean;make

## kernel
1. ./genlink.sh
2. make clean;make

## Kitcat
1. source ./build/envsetup.sh
2. lunch   choose  12（full_mango-userdebug)
3. make
4. ./development/scripts/releaseimage.sh
5. Bk与image比较把下面的文件从bk覆盖image同样的文件。
（只要执行了./development/scripts/releaseimage.sh命令，就必须修改此config文件）

在打包bin之前，确保：
（1）首先要先确认628_Mboot\sboot\out 中最新的
mboot.bin和rom_emmc_boot.bin   copy 到 \images\kitkat\mango中。
（2）需要确认supernova也编译过，并且images中有supernova生成的最新相关镜像。

## 打包bin文件：
1. development/scripts 中 ./make_usb_upgrade.sh
2. choose 2)madison Device? 1)mango 2)banana :1 DEVICE: mango
3. **Enable secureboot? (y/n)n**
4. Upgrade all? (y/n)y
5. **Update tee? (y/n)n**
6. Update tvconfig? (y/n)y     //这个是升级supernova的
7. **Upgrade systembackup? (y/n)n**
8. Update RTPM? (y/n)y
9. Upgrade mboot? (y/n)y
10. Mboot partition type 1)SPI; 2)EMMC :    2

Supernova
1. source buildsettings/build_Madison_066B_TVOS_ROM_EMMC.sh
2. ./make_kitkat_066B_release.sh


## 升级
开机按enter键，串口输入custar进行升级

";}i:2;i:45;}i:5;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:13:"markdownextra";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:11:"</markdown>";}i:2;i:1478;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1489;}i:7;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1489;}}