---
title: 这很清华英语
date: 2017-08-18 00:59:00
tags:
categories:
- hacking
---

## /InitStudy/servlet

### WordBuilderHTTP

1. `cmd = keepAlive`, `program`, `refresh`(?)
    > `/InitStudy/servlet/WordBuilderHTTP?cmd=keepAlive&program=GzRenjiaosheXinkebiao(di2ban)9&refresh=99253684`

2. `device = learning`, `cmd = next`, `program`, `unit_name`\
   `learning_type = 2`(int), `mode = learning`, `isFirst`(bool)\
   `dummy = NaN`(?), `time`(UNIX timestamp), `OnlyForRefresh`(?)
   > `InitStudy/servlet/WordBuilderHTTP?device=learning&cmd=next&program=GzRenjiaosheXinkebiao(di2ban)9&unit_name=Unit%201&learning_type=2&mode=learning&isFirst=true&dummy=NaN&time=1502962908851&OnlyForRefresh=102521787`

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
    example2="http://192.168.10.113/sound/newExampleSound/i_/i_d_like_to_buy_a_silk_scarf.swf" 
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
3. `device = learning`, `cmd = saveCurrentStatus`, `program`, `unit_name`\
   `learning_type = 2`(int), `mode = learning`, \
   `initresp = yes`(?), `confirmresp = right`(?)\
   `dummy = NaN`(?),  `OnlyForRefresh`(?)
   > `http://192.168.10.113/InitStudy/servlet/WordBuilderHTTP?device=learning&cmd=saveCurrentStatus&program=GzRenjiaosheXinkebiao(di2ban)9&unit_name=Unit%201&learning_type=2&mode=learning&initresp=yes&confirmresp=right&dummy=NaN&OnlyForRefresh=120533913`