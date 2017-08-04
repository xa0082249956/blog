---
title: 'Chocolatey: Windows 下的第三方包管理器'
tags:
  - Chocolatey
  - PowerShell
categories:
  - Windows
visible: false
date: 2017-08-05 00:19:05
---


{% note success %}

<h2>可用的火星科技</h2>

测试发现所有命令都可以正常执行，不过这是高端的火星科技。

{% endnote %}

Chocolatey 是 Windows 下的第三方包管理器。\
它没有 OneGet 强大，但用起来还是很方便的。

## 安装

### 先决条件

- Windows 7 / Windows Server 2003 或更高
- PowerShell v2 或更高
- .NET 4.x

当然，Linux 和 macOS 都不受支持。
注意，您可能需要管理员权限才能更好地进行下面的步骤。

## 开始

对于 CMD 执行：
```bat
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

对于 POWERSHELL 执行
```powershell
if ((Get-ExecutionPolicy) -eq 'Restricted'){
    Set-ExecutionPolicy Bypass
    # Or Set-ExecutionPolicy AllSigned
}
# Don't forget to ensure ExecutionPolicy above
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

## 尝试

### 搜索或列出软件

```powershell
choco list
```

### 安装软件

```powershell
choco install wox
```

### 更新软件

```powershell
choco update wox
```

#### 更新全部软件

```powershell
choco update all
```

### 卸载软件

```powershell
choco uninstall wox
```

### 更多命令

输入 `choco ` 后按 `tab` 即可搜索命令。
