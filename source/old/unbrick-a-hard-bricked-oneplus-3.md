---
title: 救一只黑砖的 Oneplus 3
date: 2017-05-01 21:23:51
tags: 
- Android
---

> 看到设备管理器里的 Qualcomm 9008 \
> 你有些不知所措……但你还是充满了决心

<!-- more -->

# 准备

- 驱动: [https://www.androidfilehost.com/?fid=24052804347799753]()
- 恢复工具
  - Oneplus 3 Mini / 不含系统: [https://www.androidfilehost.com/?fid=24591000424942611]()
  - Oneplus 3 Full / 含 Oxygen OS 3.1.2: [https://www.androidfilehost.com/?fid=24591000424942573]()
  - Oneplus 3T: [https://mega.nz/#!Q1YnTTAT!gnLf6NEkSRy7W-WY8J0H2SmJJLzO91-vReKx7B1VVpI]()
- / 可能需要 / DPInst.zip: [http://pan.baidu.com/s/1slWAxp7]()

# 开始

1. 如果当前 Windows 版本是 Vista / 7 / 8 / 10 或更高，需要首先禁用驱动程序强制签名。
      1. 按 `Windows Key` > `电源` > `Shift` + `重启`
      2. `疑难解答` > `高级选项` > `启动设置` > `重启`
      3. 重启后选择 `7. 禁用驱动程序强制签名`
2. 重启完成后解压并安装驱动。直接双击 `安装.bat` 如果出现错误 `'DPInst_xxx' 不是内部或外部命令，也不是可运行的程序或批处理文件。` 将 [`DPInst.zip`](http://pan.baidu.com/s/1slWAxp7) 解压到这里后再次尝试。
2. 打开设备管理器 （去问 Cortana）
3. 将手机连接到电脑。
4. 如果在设备管理器的 `端口 (COM 和 LPT)`中看到 `Qualcomm 9008` 则继续。
    否则，参考文末的解决方案。
5. 运行恢复工具中的 `MsmDownloadTool V3.0.exe` 并点击左上角的 `Start`。
6. 等待手机重启，结束。

    > 如果你使用 Mini 版本失败，请尝试 Full 版本。

## 没有看到 `Qualcomm 9008` ? 

0. 请尝试长按 `电源键` + `上音量键` 持续 20 秒以上，再检查设备管理器。
1. 确保已禁用驱动数字签名验证。
2. 尝试这些驱动:
   - [https://www.androidfilehost.com/?fid=24052804347799753]()
   - [https://www.androidfilehost.com/?fid=24269982086990168]()
   - [https://www.androidfilehost.com/?fid=24349802275800175]()
   - [https://www.androidfilehost.com/?fid=24349802275800173]()
   - [https://www.androidfilehost.com/?fid=24349802275800171]()

> **这些内容可能已经失效了**\
> 下载 [这个文件好像不存在了](http://www.mediafire.com/download/4a...6wc67/Qualcomm 1.00.11.rar)
> 
> 1. 确认手机已经和电脑断开连接。
> 2. 打开文件夹 `qc` 并安装证书到 `受信任的根证书颁发机构`，`受信任的发布者`，`第三方根证书颁发机构`。
> 3. 运行文件夹中的 `Qualcomm setup wizard `
> 4. 完成以后最好重启禁用驱动程序强制签名。
> 5. 现在应该自动安装驱动了，没有的话看下面。
>

### 看到了 `QHUSB_BULK` 或 `Qualcomm  HS HSB`?
4. 在设备管理器中你的设备上右键，选择 `更新驱动程序软件`，手动安装刚才下载的 .inf 文件。

### 上面的方法没能解决？
我……可能……帮不了你了……\
你可以去 xda-developers 找找看。\
或者去一加论坛试试。

# 参考与致谢
- [[UNBRICK] Unbrick Tutorial For The OnePlus 3T](https://forum.xda-developers.com/oneplus-3t/how-to/unbrick-unbrick-tutorial-oneplus-3t-t3515306)
- [[GUIDE] Mega Unbrick Guide for A Hard Bricked OnePlus 3](https://forum.xda-developers.com/oneplus-3/how-to/guide-mega-unbrick-guide-hard-bricked-t3405700)
- [【玩机组出品】一加3 9008救黑砖教程](http://www.oneplusbbs.com/thread-3272835-1-1.html)
- 还有你。
