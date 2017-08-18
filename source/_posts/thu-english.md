---
title: 这很清华英语
date: 2017-08-18 00:59:00
tags:
categories:
- hacking
---

## /InitStudy/servlet

### WordBuilderHTTP

#### keepAlive

------------------- --------------
`cmd` = keepAlive   命令
`program` = Gz...   学习计划
`refresh`           (int)刷新？
------------------- --------------

> `/InitStudy/servlet/WordBuilderHTTP?cmd=keepAliveprogram=GzRenjiaosheXinkebiao(di2ban)9&refresh=99253684`

#### next

--------------------------- ---------------
`device` = learning         方法？
`cmd` = next                命令
`program`                   计划
`unit_name`                 (optional)单元名称
`learning_type` = 2         (int)学习类型
`mode` = learning           学习模式
`isFirst` = true            (bool)当第一次进入时为 True
`dummy` = NaN               (?)
`time`                      (UNIX timestamp)
`OnlyForRefresh`            (?)
--------------------------- ---------------

> `InitStudy/servlet/WordBuilderHTTP?device=learning&cmd=nextprogram=GzRenjiaosheXinkebiao(di2ban)9&unit_name=Unit%201learning_type=2&mode=learning&isFirst=true&dummy=NaNtime=1502962908851&OnlyForRefresh=102521787`

Response: 
```html
<WordReply 
mode="learning"         模式
engineGear="4"          引擎等级
timespent="456"         已花费的时间
wordimage="no"          有配图？
learned="20"            已学习的
reviewed="0"            已复习的
wordsdropped="31"       ？？？
spelling="scarf"        拼写
syllable="sk1:f"        音标
soundmark=""            ？？？
meaning=""              意思？
meaning2="n.围巾；头巾；领巾" 
                        第二个意思？
soundfile="http://192.168.10.113/sound/swf-s/scarf.swf" 
                        声音文件
jpgfile="http://192.168.10.113/jpg_images/jpg-s/scarf.jpg" 
                        配图文件
examplec="我想买一条丝绸围巾。" 
                        例句汉语
example="I'd like to buy a silk scarf." 
                        例句英语
example2="http://192.168.10113/sound/newExampleSound/i_/i_d_like_to_buy_a_silk_scarfswf" 
                        例句音频
wordID="543514" 
                        单词ID
rest="no"               是否休息
diff="3.0"              难度
memcurve="26"           记忆曲线？      
totalwords="64"         总单词数
totallearned="26"       掌握的单词数
totaldropped="35"       没记住的单次数
prog_totallearned="26"  总掌握
prog_totaldropped="35"  总没记住
last_known="0"          最后一次知道这个词？
wordIndex="58"          单词索引
/>
```

AnotherResponse:
```html
<WordReply error="You do not need to study this program NOW. You have learned all the new words and you still remember them. Please do some practices or study another program. The system will remind you to come back to this program when you start to forget the words learned in this program."></WordReply>
```

#### saveCurrentStatus

--------------------------- ---------------
`device` = learning         方法？
`cmd` = saveCurrentStatus   命令：保存当前状态
`program`                   计划
`unit_name`                 单元名
`learning_type` = 2         (int) 学习类型
`mode = learning`           学习模式
`initresp` = yes            [yes/no] 第一次回答
`confirmresp` = right       [(initresp=no:next)/(initresp=yes:right/wrong)] 第二次回答
`dummy = NaN`               (?)
`OnlyForRefresh`            (int)
--------------------------- ---------------

> `http://192.168.10.113/InitStudy/servlet/WordBuilderHTTP?device=learning&cmd=saveCurrentStatus&program=GzRenjiaosheXinkebiao(di2ban)9&unit_name=Unit%201&learning_type=2&mode=learning&initresp=yes&confirmresp=right&dummy=NaN&OnlyForRefresh=120533913`

## /swf
### word_gb.swf
   ------------------------------- -----------------
   `quizForce` = no                 强制测试
   `finished` = yes                 已完成
   `quizLast` = Y                   上一次测试
   `localKey` = zh_CN               地区码
   `exampleChinese` = N             中文示例
   `quizWordView` = 30              (int)学习的单词数
   `ipaddr` = 192.168.10.113        IP 地址
   `device` = learning              方法?
   `time_spent` = nulll             用时
   `language` = Simplified-Chinese  语言
   `program` = CN-GaoZhongKGbk1     学习计划
   `from` = Chinese                 来源
   `SystemOS` = Linux               操作系统
   `prog_local` = 高考考纲……         本地化的学习计划名称
   `isVip` = N                      判断 VIP
   `vip_file` = initenglish.com/vip VIP 文件?
   `contextPath` = /InitStudy       内容路径
   `learning_type` = 3              学习类型
   `lockTime` = 0.5                 锁定时间?
   ------------------------------- -----------------