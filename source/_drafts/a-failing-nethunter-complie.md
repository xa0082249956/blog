---
title: 一次失败的 NetHunter 编译
date: 2017-09-03 22:53:10
tags:
- kali-nethunter
---


{% note warning %}

<h2>未完成的项目</h2>

该项目目前并未完成。

{% endnote %}

{% note warning %}

<h4>继续之前</h4>

请确保你有至少 <b>100G</b> 的磁盘剩余空间。

{% endnote %}

## 下载 Android 源码

首先按照 [这篇文章](https://source.android.com/source/initializing) 搭建编译环境。

### 安装 Repo

主条目: <https://source.android.com/source/downloading#installing-repo>

>要安装 Repo，请执行以下操作：
>
>确保主目录下有一个 bin/ 目录，并且该目录包含在路径中：

```bash
$ mkdir ~/bin
$ PATH=~/bin:$PATH
```

>下载 Repo 工具，并确保它可执行：

```bash
    $ curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
    $ chmod a+x ~/bin/repo
```

>对于 1.21 版，Repo 的 SHA-1 校验和为 b8bd1804f432ecf1bab730949c82b93b0fc5fede
>
>对于 1.22 版，Repo 的 SHA-1 校验和为 da0514e484f74648a890c0467d61ca415379f791
>
>对于 1.23 版，Repo 的 SHA-1 校验和为 ac9d646f6d699f6822a6bc787d3e7338ae7ab6ed

### 初始化 Repo 客户端

主条目: <https://source.android.com/source/downloading>

>创建一个空目录来存放您的工作文件。如果您使用的是 MacOS，必须在区分大小写的文件系统中创建该目录。为其指定一个您喜欢的任意名称：

```bash
$ mkdir WORKING_DIRECTORY
$ cd WORKING_DIRECTORY
```

然后用 repo 下载源码，这里使用 Lineage OS 的源码。
```bash
repo init -u https://github.com/LineageOS/android.git --depth=1 
```

开始下载(大小~18G)
```bash
repo sync
```

## 准备内核源码

每一次进入编译环境都要准备环境变量。
```bash
source build/envsetup.sh
```

> **注意**
> fish shell 与 该脚本 存在语法不兼容的问题。\
> 因此如果你在使用 fish，则应考虑编译 Android 内核时换为其他 shell。

接下来下载手机专属代码，即 `breakfast ` + 手机codename (不知道可以搜索)
```bash
breakfast oneplus3
```

## 修改内核参数

首先进入内核代码目录
```bash
cd kernel/oneplus/oneplus3
make clean
```

> **注意**\
> 附加的命令\
> 在 Android 官方的教程中没有提到以下内容，但不进行该动作会导致之后内容失败。
>
> 对于 arm64 架构
```bash
export ARCH=arm64
export SRCARCH=arm64
export CROSS_COMPILE=aarch64-linux-android-
```
> 对于 arm 架构
```bash
export ARCH=arm
export SRCARCH=arm
export CROSS_COMPILE=arm-linux-androideabi-gcc
```
> 对于 x86 架构
```bash
export ARCH=x86
export SRCARCH=x86
export CROSS_COMPILE=x86-gcc
```
> 对于 x86-64 架构
```bash
export ARCH=x86_64
export SRCARCH=x86_64
export CROSS_COMPILE=x86_64-gcc
```
> 其他架构同理，可参考[这篇文章](https://developer.android.com/ndk/guides/standalone_toolchain.html)。

然后加载已有的配置文件。\
可以通过 `ls arch/[架构]/configs` 查看。\
这里以 `lineage_oneplus3_defconfig` 为例。

```bash
ls arch/arm64/configs
make lineage_oneplus3_defconfig
```

然后进入配置，可以选择使用 shell 内菜单:
```bash
make menuconfig
```
`esc``esc`返回上级目录，`y`确认，`n`取消，`m`作为模块用的时候再加载。\
也可以使用基于 qt4 的 `xconfig` 或基于 gtk2 的 `gconfig`。

>配置的时候按[这个教程](https://github.com/offensive-security/kali-nethunter/wiki/Modifying-the-Kernel)走就可以，如果使用了GUI配置界面可以通过 `Ctrl`+`F` 快速搜索。\
注意原教程中\
`DVB for Linux` -> `Digital TV support`\
选 `Customize DVB Frontends` 之前要先取消 `Autoselect ancillary drivers`.

> 如果在上面 menuconfig 里选了 `HCI USB Driver`，编译通过不了的话，按这个 patch 改一下这个文件就好。另外，必须选中 `Bluetooth device drivers` 里面的 `Atheros firmware download driver`，`btusb.c` 需要里面的一个函数。

可以使用 `make` 命令检查配置是否成功。\
若没有问题，即可保存配置:
```bash
cp .config lineage_oneplus3_defconfig
make mrproper
```

## 其他配置

>如果在前面将一些模块用 `m` 独立编译了，而且没有关闭 SELinux，接下来还要改一下 SEPolicy。在 `源码/device/oneplus/oneplus3/sepolicy` 目录（ `oneplus/oneplus3` 换成设备型号）里，新建或者编辑 `init.te` 在结尾加上
```
allow init self:capability { sys_module };
```
>原来只需要fd use 和 system module_load就可以的，可我忘了策略咋写的了。
>
>如果想用 USB keyboard，或者 badUSB 攻击，而且和我一样就是不想关 SELinux，那就继续改 policy。按[他的教程](https://github.com/pelya/android-keyboard-gadget/blob/master/README.md)来。还要打上[这个 patch](https://github.com/offensive-security/nethunter-devices/commit/19dc67f0b3af19cc9833c6f7d984e241a6366f20)。

## 编译内核与启动镜像

```bash
cd ../../..
mka bootimage
```

## 适配 NetHunter

再找一个目录下载 NetHunter Installer.
```bash
git clone https://github.com/offensive-security/kali-nethunter.git --depth 1
cd kali-nethunter/nethunter-installer
```

然后下载 NetHunter 设备目录，一路回车就行。(~1G)
```bash
./bootstarp.sh
```

## References

- <https://zhuanlan.zhihu.com/p/24946336>
- <https://source.android.com/source/>
- <https://developer.android.com/ndk/guides/standalone_toolchain.html>
