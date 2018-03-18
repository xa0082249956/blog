---
title: Undertale 的调试模式
description: "Undertale 调试模式的启用方式与用法介绍。"
date: 2017-05-15T23:32:21+08:00
update: 2018-03-11T23:54:32+08:00
tags: ["undertale"]
categories: ["hacking", "undertale"]
aliases:
- "/2017/05/15/undertale-debug-mode/"
---

Undertale 的调试模式可以使用十六进制编辑器修改游戏数据文件进入。

> \* 我的孩子，在你完成整个游戏之前最好先不要阅读这些内容，\
> 因为它们充满了**剧透**。\
> \* 当个好孩子，好吗？ 

<!--more-->

# 启用调试

{{% admonition type="warning" title="注意" %}}
在继续之前，请确定你已经备份了 `Undertale.*` 和 `data.*` [Windows] / `game.*` [Linux]。\
如果你的游戏如果打不开了，请找 Flowey 或者 Chara，那朵花和那只猹应该知道怎么做。
{{% /admonition %}}

{{% admonition %}}
你需要有 带十六进制编辑功能的编辑器 ( 以下简称 编辑器 )  才能进行下面的操作，推荐使用 UltraEdit。
{{% /admonition %}}

## Version 1.0

使用类似 WinRAR 或 好压 等解压软件解压游戏目录下的 `Undertale.exe` 到游戏根目录，然后用编辑器打开 `data.win`，定位到 `0x725B24` ( UltraEdit 可以使用快捷键 `Ctrl + G` ) 后将值改为 `01`，保存退出。( 覆盖原先的 exe 文件 )

{{% admonition %}}
如果你在玩 Steam 版，你必须全部解压并删除其中的文件中的 `steam-api.dll`，否则调试模式不能启用。
*If you are playing the Steam version, you should extract every file except steam_api.dll, or the debug mode won't be activated.*
\{{% /admonition %}}

## Version 1.001

### Windows

用编辑器打开 `data.win`，定位到 `0x725D8C` ( 或许可以 Ctrl + G ) 后将值改为 `01`，保存退出。

### Linux

用编辑器打开 `game.unx`，定位到 `0x725DDC` ( 或许可以 Ctrl + G ) 后将值改为 `01`，保存退出。

### macOS

用编辑器打开 `game.ios`，定位到 `0x725D8C` ( 或许可以 Cmd + G ) 后将值改为 `01`，保存退出。

# 调试模式功能

## Fun 内容

在调试模式启用时，所有需要改 Fun 内容才能出现的 Gaster 追随者会自动出现。

## 键盘快捷键

### 部分摘要

| G [O/I] | S / L | P [W/F] Back | M    | V    | Ins / Del |
| ------- | ----- | ------------ | ---- | ---- | --------- |
| 箱子[取/放] | 存 / 读 | 速度[慢/快]      | 杀    | 边缘   | 下 / 上     |

### 详细

| 按键        | 影响                                       |
| :-------- | ---------------------------------------- |
| G         | 使用箱子。                                    |
| G - 在商店中  | 设置金币数为 5000.                             |
| I         | 打开一个对话框，可以让你把东西放到箱子里。 ( 在正常游戏下没有出现过 )        |
| O         | 打开一个对话框，可以让你把东西从箱子取出。 ( 在正常游戏下没有出现过 )        |
| S         | 打开存档对话框。                                 |
| L         | 即时读档。                                    |
| M         | LOVE 加一。 ( 你想进屠杀路线吗？ )  ( 但是谁也没有来。 )             |
| W         | 将 FPS 设为 10.                             |
| F         | 将 FPS 设为 60 并两倍速游戏，不影响音乐播放。   |
| P         | 在快和正常之间切换游戏速度。                           |
| R - 7 连击 | 重启游戏。                              |
| U         | 切换 Undyne 的电话。改变角色配色为 蓝 或 黄。             |
| V         | 显示房间边缘。                                  |
| 5         | *Increase battle group by 5. Does not roll over to 0 after 256.* |
| 退格键     | 按下时可以走快一些。                            |
| Page Up   | *Increase 'steps' by 100.*               |
| Page Down | *Sets attack in the STAT menu to 989. Appears to be cosmetic only.* |
| End       | 演示从 New Home 开始的下一个怪物，在屠杀路线中，是 Flowey.   |
| Home      | 在当前 battle group 中开始一场战斗，默认是 140 - 真抱歉 [v1.0] |
| Insert    | 传送到下一个房间。将你放在一个确定的位置。( 如不能移动可以尝试 F10 )   |
| Delete    | 传送到上一个房间。                                |

| 按键    | 影响                                       |
| :---- | ---------------------------------------- |
| F3    | 在你的存档文件夹中放置文件 `system_information_962`。在游戏重新启动后，把你放在屠杀路线后的黑屏状态。*似乎不太好* |
| F7    | 增加 500 金币。                               |
| F9    | 停止所有音乐。                                  |
| F10   | 自由移动。                                    |
| F11   | 传送到与 Papyrus 作战后的房间 [`room_water1`/id:`82`]. |
| F12   | 重新打开当前房间。                                |
| R + 6 | 传送到 Ruins 中的谜题房间 [`room_ruins2`/id:`7`].  |
| T + 6 | 传送到 Ruins 出口的外面 [`room_tundra1`/id:`44`]. |
| W + 6 | 传送到与 Papyrus 作战后的房间 [`room_water1`/id:`82`] ，与 F11 作用相同。 |
| F + 6 | 传送到 Hotlands 饮水机房间 [`room_fire2`/id:`138`]. |
| E + 6 | 传送到 New Home 入口 [`room_castle_front`/id:`219`]. |
| Y + 6 | 传送到 True Lab 入口 [`room_truelab_elevator`/id:`244`].                          |



### 战斗中

| 按键     | 影响                                       |
| ------ | ---------------------------------------- |
| 1      | 减速。不能低于 1 FPS，否则崩溃。                      |
| 2      | 加速。不能超过正常速度的两倍，否则崩溃。                     |
| F      | 加速到两倍速。                                  |
| W      | 减速到 10 FPS.                              |
| 8      | 敌方回合减短。                                  |
| 9      | 敌方回合加长。                                  |
| Delete | 当前战斗中 HP 设置为 999.                        |
| F6     | 设置仁慈为 0，攻击为 9999.                        |
| O + P  | 设置仁慈为 9999，可以直接仁慈。*Some enemies that cannot be normally spared turn into Aaron.* |



## 调试 Flag

| Flag | 在 `file0` 中的位置 | 描述                                       |
| ---- | -------------- | ---------------------------------------- |
| 4    | 5              | 设置为 1 后，在与 Undyne 作战之前，她会认为你没有杀人。        |
| 26   | 57             | 非 0 时覆盖 LOVE 的值。                         |
| 28   | 59             | 设置为 1 后，可以按 C 来快速跳过对话。                   |
| 69   | 100            | *If set to 1, changes Burgerpants' dialogue slightly.* |



## 特殊区域

### First Sans Encounter

过场动画时，按 J 来仔细观察 Sans，然后游戏崩溃。*喵喵喵？*

| 按键   | 影响             |
| ---- | -------------- |
| J    | 放大 Sans 并崩溃游戏。 |

### Chara 的倒影

你在 Waterfall 的水洼中的倒影会在你按下 空格 后变成一个神秘人物 ( 似乎是 Chara )。

| 按键   | 影响   |
| ---- | ---- |
| 空格   | 变猹。  |

### 怪物小孩攀登

在你的头上会出现两个数值，开始时是 `-1` 和 `0`，第一个数值是一个计时器，由第二个数值确定。第二个数值代表怪物小孩的状态。

## 特殊战斗中的特殊内容

### Lesser Dog

| 按键   | 影响      |
| ---- | ------- |
| J    | 增加头的高度。 |

### Papyrus

| 按键   | 影响                                       |
| ---- | ---------------------------------------- |
| 空格   | 设置 Papyrus 的下一次攻击和对话内容为 "*THE KING WILL TRIM A HEDGE IN THE SHAPE OF MY SMILE!!!*" 「国王会以我笑容的图案建造一片树篱！！」 |
| O    | 如果你在你变蓝时按下了它，Papyrus 不会攻击你，如果你尝试仁慈或攻击它，它会说"*...*" |

### Shyren

| 按键   | 影响                                       |
| ---- | ---------------------------------------- |
| 3    | *Increases the emotion variable, used during the fight to affect her status.* |

### 疯狂假人

一个从 300 开始的红色数字会出现在疯狂假人的头顶，代表它的 HP。按下 A 会将 HP 设置为 180，它会活蹦乱跳，准备他的「最后攻击！」

| 按键   | 影响          |
| ---- | ----------- |
| A    | 设置假人 HP 为 180. |

### Undyne

> 你不能使用 O + P 来饶恕 Undyne.

| 按键        | 影响           |
| --------- | ------------ |
| 7         | 设置 HP 为 999. |
| A         | 减少 1 回合计数。   |
| ~~O + P~~ | ~~乖，不会有用的~~  |

### Asgore

一个从 0 开始的计数器会出现在游戏界面左上角。计数器的值越大，Asgore 的攻击力就越强，抵抗力就越弱。\
按 A 来减少或按 S 来增加这个值。如果这个值大于 20，它会在 Asgore 来一次黄蓝攻击后变回 20…\
如果你手动设置成大于 22 或小于 1 的值，游戏会在 Asgore 攻击时崩溃。

| 按键   | 影响         |
| ---- | ---------- |
| A    | 减弱攻击，增强抵抗。 |
| S    | 增强攻击，减弱抵抗。 |

### Photoshop Flowey

> 你以为我是谁啊？\
> 我是这个世界的神！

黄色的<font color = #ffd000 face="Serif"> debug </font>会随着 Flowey 一起在游戏界面的右下角出现。

| 按键                  | 影响                                       |
| ------------------- | ---------------------------------------- |
| F3                  | 在存档文件夹中创建 `system_information_962` 文件。   |
| Home                | 立刻攻击 Flowey. 如果所有灵魂指示器都变暗了，产生 6000 点伤害。  |
| Page Up             | 按顺序关闭灵魂指示器，在下一轮灵魂战斗中增加伤害。所有指示器均关闭时禁用，在下一次灵魂战斗开始时，游戏崩溃。 |
| 右 Shift, 左 Shift, X | 按顺序关闭灵魂指示器，在下一轮灵魂战斗中增加伤害。                |
| Shift               | 关闭灵魂指示器，一次一个。                            |
| Q                   | 在载入时直接开始战斗。但它不会停止载入，所以直到 Flowey 接近你之前你都不能移动，而你也不会被攻击。 |
| W                   | 将 FPS 设为 10. 如果在 Flowey 死亡状态下使用，将在 Flowey 生命值回复后开始攻击。*待确认：谁开始攻击？* |
| E                   | 每只眼睛三颗星形炮弹。                                 |
| R                   | 每只眼睛七颗星形炮弹。                                 |
| I                   | 让 Flowey 笑，然后重新开始战斗。可以在灵魂战斗中使用。          |
| A                   | 切换火焰发射器。                                 |
| F                   | 两倍速。锁定火球攻击。*Lock on pellet attack.*      |
| H                   | 一次手指枪攻击。                                  |
| V                   | 一次藤条攻击。                                  |
| N                   | 一次掉落的炸弹攻击。                                  |
| M                   | 一次食蝇草攻击。*Ball of teeth/dentata attack.* |
| C                   | 切换 Flowey 嘴唇的摆动状态。                       |
| S                   | 存档。在游戏界面左下角显示「存档 2 已保存」。                 |
| L                   | 读档。在游戏界面左下角显示「存档 2 已读取」。                 |
| O                   | 紫色灵魂战斗 ( 书 ) 。                               |
| P                   | 绿色灵魂战斗 ( 平底锅 ) 。                             |
| G                   | 橘色灵魂战斗 ( 手套 ) 。                              |
| J                   | 黄色灵魂战斗 ( 枪 ) 。                               |
| K                   | 蓝色灵魂战斗 ( 刀子 ) 。                              |

### Asriel Dreemurr

> 死亡暗黑重金属摇滚炫彩中二小王子?

| 按键   | 影响                                       |
| ---- | ---------------------------------------- |
| C    | 切换 Asriel 四处浮动 / 在屏幕中间静止。                |
| 空格   | 和 G 相同，主要在文本框上部浮动。Asriel 还必须和下面的任意一个按键一起使用。攻击立刻开始，可以叠加。 |
| G    | 混沌冲击 / 混沌爆发。*Chaos Buster/Chaos Blaster.* |
| B    | 无尽雷霆 / 无尽雷霆 II。*Shocker Breaker/Shocker Breaker II* |
| W    | 混沌之刃 / 混沌魔刃。*Chaos Saber/Chaos Slicer* 将 FPS 设为 10.                     |
| S    | 爆热星辰 / 爆热银河。*Star Blazing/Galacta Blazing* |
| H    | 终极毁灭。*HYPER GONER*                            |

### Undyne the Undying

> 你不能使用 O + P 来饶恕 Undyne.

| 按键        | 影响           |
| --------- | ------------ |
| 7         | 设置 HP 为 999. |
| A         | 减少 1 回合计数。   |
| ~~O + P~~ | ~~乖，不会有用的~~  |

### Sans

| 按键   | 影响                 |
| ---- | ------------------ |
| E    | 设置下一次攻击为他的「特殊攻击」。  |
| A    | 设置下一次攻击为他饶恕你的那一部分。 |

# 参考资料与致谢
1. https://tcrf.net/Undertale/Debug_Mode
2. https://steamcommunity.com/sharedfiles/filedetails/?id=584103897
3. http://tieba.baidu.com/p/4784165936
4. http://zh.undertale.wikia.com/
5. Undertale 的制作团队。
5. 还有，你。

# 更新日志

- 2017年5月15日 23点20分 [v1.0.0] 基本翻译完毕。
- 2017年5月15日 23点33分 [v1.1.0] 对照 wiki 修正。
- 2017年5月15日 23点36分 [v1.2.0] 功能 -> 影响。
- 2017年5月15日 23点48分 [v1.2.1] 普通的格式修改。
- 2017年5月16日 22点00分 [v1.2.2] 修正 Asriel 攻击名称翻译。
- 2017年7月29日 17点36分 [v1.2.2] 使用 Pandoc 渲染的格式修正。有点想某个人。
- 2018年3月12日 01点59分 [v1.3.0] 移动至 Hugo 下，修正部分翻译。
