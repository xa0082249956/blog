---
title: 'PackageManagement: Windows 的包管理器?'
tags:
  - PackageManagement
  - PowerShell
categories:
  - Windows
date: 2017-08-04 23:52:25
---

{% note warning %}

<h2>不稳定的火星科技</h2>

测试发现部分命令并不能正常执行，或许这是高端的火星科技？

{% endnote %}

项目地址: <https://github.com/oneget/oneget>

PackageManagement 可以用来在 Windows 系统上管理软件，无论是 [chocolatey][chocolatey]，[PowerShellGet][PSGet]……都可以用相同的 PackageManagement cmdlet 解决。

<!-- more -->

> **没人看的东西**
>
> PackageManagement 是 Windows 的包管理器，曾经叫 OneGet. 它为软件包管理系统提供了一个统一的框架，使得应用程序的查找、安装和管理可以通过一些的 cmdlet 完成。无论这些包管理系统技术如何，用户可以用都可以用这些 cmdlet 来安装/卸载软件包，添加/删除/查询软件包仓库，或者查询系统上已安装的软件。
>
> 用 PackageManagement，你可以
>
>- 管理一个可以搜索、获取和安装软件包的仓库列表
>- 搜索和筛选你的仓库来找到你需要的软件包
>- 用一行 PowerShell 命令从一个或多个仓库无缝的管理软件
>

## 结构

{% asset_img Architecture.png %}

## 开始

### 先决条件

- Windows 10, Windows Server 2016 或 更低版本的Windows+WMF5
- 装了 PowerShell Core 的 Linux / macOS

### 继续之前

建议先更新一下 PackageManagement:

    Update-Module PowerShellGet

## 尝试

{% note warning %}

<h2>再次提醒：火星科技</h2>

测试发现部分命令并不能正常执行。请在继续前三思。

{% endnote %}

### 与 PowerShellGallery 搞基


    # 1. 检查可用 Package Provider
    PS ~> Get-PackageProvider

    Name                     Version          DynamicOptions
    ----                     -------          --------------
    msi                      3.0.0.0          AdditionalArguments
    msu                      3.0.0.0
    NuGet                    2.8.5.209        Destination, ExcludeVersion...
    PowerShellGet            1.1.3.1          PackageManagementProvider, Type...
    Programs                 3.0.0.0          IncludeWindowsInstaller, ...

    # 2. 从 PSGallery 里找到你要的模块，比如 TabExpansionPlusPlus
    PS ~> Find-Package TabExpansionPlusPlus

    Name                      Version     Source      Summary
    ----                      -------     ------      -------
    TabExpansionPlusPlus      1.2         PSGallery   TabExpansionPlusPlus...

    # 3. 从 PSGallery 里安装模块
    # 注意，你似乎需要管理员权限才能继续往下走
    
    PS ~> Install-Package TabExpansionPlusPlus
    Install-Package : The following commands are already available on this system:'Register-ArgumentCompleter'. This module 'TabExpansionPlusPlus' may override the existing commands. If you still want to install this module 'TabExpansionPlusPlus', use -AllowClobber parameter.
    所在位置 行:1 字符: 1
    + Install-Package TabExpansionPlusPlus
    + ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        + CategoryInfo          : InvalidOperation: (Microsoft.Power....InstallPackage:InstallPackage) [Install-Package]，Exception
        + FullyQualifiedErrorId : CommandAlreadyAvailable,Validate-ModuleCommandAlreadyAvailable,Microsoft.PowerShell.PackageManagement.Cmdlets.InstallPackage

    PS ~> Install-Package TabExpansionPlusPlus -AllowClobber

    Name                      Version     Source      Summary
    ----                      -------     ------      -------
    TabExpansionPlusPlus      1.2         PSGallery   TabExpansionPlusPlus...

    # 4. 确认某个模块是否已经安装
    PS ~> Get-Package TabExpansionPlusPlus

    Name                      Version     Source      Summary
    ----                      -------     ------      -------
    TabExpansionPlusPlus      1.2         https:...   TabExpansionPlusPlus...

    # 5. 卸载模块
    PS ~> Uninstall-Package TabExpansionPlusPlus


### 与 Chocolatey 搞基

    # 0. 检查可用 Package Provider

    PS ~> Get-PackageProvider

    Name                     Version          DynamicOptions
    ----                     -------          --------------
    msi                      3.0.0.0          AdditionalArguments
    msu                      3.0.0.0
    NuGet                    2.8.5.209        Destination, ExcludeVersion...
    PowerShellGet            1.1.3.1          PackageManagementProvider, Type...
    Programs                 3.0.0.0          IncludeWindowsInstaller, ...

    # 1. 安装 ChocolateyGet

    PS ~> Install-PackageProvider ChocolateyGet

    Name                           Version          Source           Summary
    ----                           -------          ------           -------
    ChocolateyGet                  1.0.0.1          PSGallery        An PowerShell OneGet provider that discovers packages from https://www.chocolatey.org.

下面的内容都是我编的。别信。

    # 2. 从 chocolatey 里找到你要的模块，比如 wox
    PS ~> Find-Package wox

    Name                      Version     Source       Summary
    ----                      -------     ------       -------
    wox                       1.2         chocolatey   WoBianDe

    # 3. 从 chocolatey 里安装模块
    # 注意，你似乎需要管理员权限才能继续往下走

    PS ~> Install-Package wox

    The package(s) come(s) from a package source that is not marked as trusted.
    Are you sure you want to install software from 'https://www.chocolatey.org'?
    [Y] 是(Y)  [A] 全是(A)  [N] 否(N)  [L] 全否(L)  [S] 暂停(S)  [?] 帮助 (默认值为“N”): Y

    Are you sure you want to perform this action?
    Installing package 'wox'. By Installing you accept licenses for the package(s). The package possibly needs to run 'chocolateyInstall.ps1'.
    [Y] 是(Y)  [N] 否(N)  [S] 暂停(S)  [?] 帮助 (默认值为“Y”): Y

    Name                      Version     Source       Summary
    ----                      -------     ------       -------
    wox                       1.2         chocolatey   WoBianDe

    # 4. 确认某个模块是否已经安装
    PS ~> Get-Package wox

    Name                      Version     Source       Summary
    ----                      -------     ------       -------
    wox                       1.2         chocolatey   WoBianDe

    # 5. 卸载模块
    PS ~> Uninstall-Package wox

上面的内容都是我编的。都是我编的。

## 删除某个 Package Provider

目前 PowerShell 5.1 似乎并没有删除 Package Provider 的命令，因此需要确定其位置后手动删除：

    Remove-Item (Get-PackageProvider -Name chocolatey).ProviderPath


[chocolatey]: http://chocolatey.org/
[PSGet]: https://www.powershellgallery.com/
