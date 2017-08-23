---
title: 这很清华英语
date: 2017-08-18 00:59:00
updated: 2017-08-20 15:00:00
tags:
categories:
- hacking
---

# 网页内容

## InitStudy

### chinese

#### myaccount.jsp

--------------------------- ---------------
`openProgram` = true        (bool) 打开程序
`learnMode` = learning      学习模式
--------------------------- ---------------

返回背单词主页面.

> `http://192.168.10.113/InitStudy/chinese/myaccount.jsp?openProgram=true&learnMode=learning`

#### myaccount01.jsp

--------------------------- ---------------
`progName` = CN…            计划名称
`unit` = unit 6             学习单元
--------------------------- ---------------

返回一个背单词页面.

> `http://192.168.10.113/InitStudy/chinese/myaccount01.jsp?progName=CN-GaoZhongKGbk1&unit=unit%206`

<!-- more -->

#### mydevice.jsp

--------------------------- ---------------
`exampleChinese` = N        中文范例(?)
`learningType` = 3          (int) 学习模式(?)
`device` = learning         引擎
`program`                   计划
`unit`                      单元
--------------------------- ---------------

> `http://192.168.10.113/InitStudy/chinese/mydevice.jsp?exampleChinese=N&learningType=3&device=learning&program=CN-GaoZhongKGbk1&unit=`

#### mydevice_unit.jsp

--------------------------- ---------------
`exampleChinese` = N        中文范例(?)
`device` = learning         引擎
`program`                   计划
`unit`                      单元
--------------------------- ---------------

> `http://192.168.10.113/InitStudy/chinese/mydevice_unit.jsp?exampleChinese=N&device=learning&program=CN-GaoZhongKGbk1&unit=unit%206`

#### program

##### programInfo

计划信息。

Body:
--------------------------- ---------------
`program`                   计划
--------------------------- ---------------

Response:
```json
{
    "programInfo": {
        "series": 910,
        "vipFile": "http://www.initenglish.com/vip/",
        "unitSupport": true,
        "userSpellStatus":"<font color=red\>速度正常，加油</font\>",
        "dictateLearned": 0,
        "gapDay": 1095,
        "wordsViewed": 270,
        "wordsLearned": 29,
        "progInfo": "高考考纲（新课标） - 高考必考词一",
        "totalWords": 900,
        "isQuizLast": true,
        "isQuizForce": false,
        "hasPlans": false,
        "userDictateStatus":"<font color=red\>尚未学习</font\>",
        "hasStaticFile": false,
        "isPlanProgram": false,
        "dictateViewed": 0,
        "spellViewed": 50,
        "userMemStatus":"<a href=\"javascript:void(0)\"  style='color:red;' onClick=\"showmenu('unit-3')\" \><u\>偏慢，看秘诀</u\></a\>",
        "showInfo": "有效期至: 2020-08-16",
        "isQuizFirst": false,
        "studyID": 338041,
        "memspeed": "35&nbsp;个/小时",
        "dictatespeed": "",
        "program": "CN-GaoZhongKGbk1",
        "progCNName": "高考考纲（新课标） - 高考必考词一",
        "spellLearned": 5,
        "spellspeed": "87&nbsp;个/小时"
    },
    "success": "true"
}
```

##### programList

计划列表.

Body:
--------------------------- ---------------
`series`                    (int) 系列？
`showAll`                   (bool) 显示所有
--------------------------- ---------------

> `http://192.168.10.113/InitStudy/chinese/program/programList.jsp`

Response:
```xml
<ul>
<li id="prog_CN-GaoZhongKGbk1">
<a onclick='showkecheng();' href="javascript:openProgram=false;goProgram('CN-GaoZhongKGbk1')"  >
<img src="/images/zh_CN/student/openbook1.gif" width="16" height="15"/>
高考必考词一 900
</a>
</li>
<li id="prog_CN-GaoZhongKGbk2">
<a onclick='showkecheng();' href="javascript:openProgram=false;goProgram('CN-GaoZhongKGbk2')"  >
<img src="/images/zh_CN/student/closebook.gif" width="16" height="15"/>
高考必考词二 900
</a>
</li>
<li id="prog_CN-GaoZhongKGbk3">
<a onclick='showkecheng();' href="javascript:openProgram=false;goProgram('CN-GaoZhongKGbk3')"  >
<img src="/images/zh_CN/student/closebook.gif" width="16" height="15"/>
高考必考词三 846
</a>
</li>
<li id="prog_CN-GaoZhongKGmf">
<a onclick='showkecheng();' href="javascript:openProgram=false;goProgram('CN-GaoZhongKGmf')"  >
<img src="/images/zh_CN/student/closebook.gif" width="16" height="15"/>
高考满分词 905
</a>
</li>
<li id="prog_CN-GaoZhongKGbk">
<a onclick='showkecheng();' href="javascript:openProgram=false;goProgram('CN-GaoZhongKGbk')"  >
<img src="/images/zh_CN/student/closebook.gif" width="16" height="15"/>
高考必考词组 364
</a>
</li>
<li id="prog_CN-GaoZhongKGck">
<a onclick='showkecheng();' href="javascript:openProgram=false;goProgram('CN-GaoZhongKGck')"  >
<img src="/images/zh_CN/student/closebook.gif" width="16" height="15"/>
高考阅读常考补充词 371
</a>
</li>

</ul>
```

##### seriesList

Body:
--------------------------- ---------------
`date`                      (UNIX timestamp)
`series`                    (int)
`showAll`                   (bool) 显示全部
--------------------------- ---------------

Response:
```xml
<ul>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(1000)" align="left">
		<img id="sign_1000" name="sign_1000" src="/images/icon5.gif" style="margin:0 1px"> 
		牛津上海版 
	</a>
 </li>
  	<div class="program-li" id="div_1000" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(988)" align="left">
		<img id="sign_988" name="sign_988" src="/images/icon5.gif" style="margin:0 1px"> 
		中等职教版 
	</a>
 </li>
  	<div class="program-li" id="div_988" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(966)" align="left">
		<img id="sign_966" name="sign_966" src="/images/icon5.gif" style="margin:0 1px"> 
		新世纪版高中英语 
	</a>
 </li>
  	<div class="program-li" id="div_966" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(942)" align="left">
		<img id="sign_942" name="sign_942" src="/images/icon5.gif" style="margin:0 1px"> 
		牛津译林版(第3版) 
	</a>
 </li>
  	<div class="program-li" id="div_942" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(927)" align="left">
		<img id="sign_927" name="sign_927" src="/images/icon5.gif" style="margin:0 1px"> 
		人教社新课标（第2版） 
	</a>
 </li>
  	<div class="program-li" id="div_927" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(915)" align="left">
		<img id="sign_915" name="sign_915" src="/images/icon5.gif" style="margin:0 1px"> 
		重庆课标版 
	</a>
 </li>
  	<div class="program-li" id="div_915" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(914)" align="left">
		<img id="sign_914" name="sign_914" src="/images/icon5.gif" style="margin:0 1px"> 
		牛津译林版(2010) 
	</a>
 </li>
  	<div class="program-li" id="div_914" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(246)" align="left">
		<img id="sign_246" name="sign_246" src="/images/icon5.gif" style="margin:0 1px"> 
		高考词汇 
	</a>
 </li>
  	<div class="program-li" id="div_246" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(910)" align="left">
		<img id="sign_910" name="sign_910" src="/images/icon5.gif" style="margin:0 1px"> 
		高考考纲（新课标） 
	</a>
 </li>
  	<div class="program-li" id="div_910" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(303)" align="left">
		<img id="sign_303" name="sign_303" src="/images/icon5.gif" style="margin:0 1px"> 
		北师大课标版 
	</a>
 </li>
  	<div class="program-li" id="div_303" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(300)" align="left">
		<img id="sign_300" name="sign_300" src="/images/icon5.gif" style="margin:0 1px"> 
		外研社新标准(2009) 
	</a>
 </li>
  	<div class="program-li" id="div_300" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(263)" align="left">
		<img id="sign_263" name="sign_263" src="/images/icon5.gif" style="margin:0 1px"> 
		牛津版 
	</a>
 </li>
  	<div class="program-li" id="div_263" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(242)" align="left">
		<img id="sign_242" name="sign_242" src="/images/icon5.gif" style="margin:0 1px"> 
		词组 
	</a>
 </li>
  	<div class="program-li" id="div_242" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(51)" align="left">
		<img id="sign_51" name="sign_51" src="/images/icon5.gif" style="margin:0 1px"> 
		外研社新标准 
	</a>
 </li>
  	<div class="program-li" id="div_51" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(5)" align="left">
		<img id="sign_5" name="sign_5" src="/images/icon5.gif" style="margin:0 1px"> 
		人教社统编版 
	</a>
 </li>
  	<div class="program-li" id="div_5" style="display:none" loaded="none">
  	 
  	</div>

 <li align="left">
	<a href="#" onclick="ShowSubProgram(6)" align="left">
		<img id="sign_6" name="sign_6" src="/images/icon5.gif" style="margin:0 1px"> 
		人教社课标版 
	</a>
 </li>
  	<div class="program-li" id="div_6" style="display:none" loaded="none">
  	 
  	</div>

</ul>
```

#### unit_frame.jsp

--------------------------- ---------------
`progname`                  计划名称
`learnMode` = learning      学习模式
--------------------------- ---------------

> `http://192.168.10.113/InitStudy/chinese/unit_frame.jsp?progName=CN-GaoZhongKGbk1&learnMode=learning`

### servlet

#### WordBuilderHTTP

##### keepAlive

------------------- --------------
`cmd` = keepAlive   命令
`program` = Gz...   学习计划
`refresh`           (int)刷新？
------------------- --------------

> `/InitStudy/servlet/WordBuilderHTTP?cmd=keepAliveprogram=GzRenjiaosheXinkebiao(di2ban)9&refresh=99253684`

##### next

--------------------------- ---------------
`device` = learning         引擎
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
mode="learning"         学习模式
engineGear="4"          引擎等级
timespent="456"         已花时间
wordimage="no"          是否配图
learned="20"            已学习的
reviewed="0"            已复习的
wordsdropped="31"       不用管的
spelling="scarf"        拼写
syllable="sk1:f"        音标
soundmark=""            声标
meaning=""              意思
meaning2="n.围巾；头巾；领巾" 
                        第二个意思（一般用这个）
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

##### saveCurrentStatus

--------------------------- ---------------
`device` = learning         引擎
`cmd` = saveCurrentStatus   命令：保存当前状态
`program`                   计划
`unit_name`                 单元名
`learning_type` = 2         (int) 学习类型
`mode = learning`           学习模式
`initresp` = yes            [yes/no] 第一次回答
`confirmresp` = right       [(initresp=no:next)/(initresp=yes:right/wrong)] 第二次回答
`dummy = NaN`               是否正确操作检测？第一次为 undefined，然后是 NaN （或……？）
`OnlyForRefresh`            (int)
--------------------------- ---------------

> `http://192.168.10.113/InitStudy/servlet/WordBuilderHTTP?device=learning&cmd=saveCurrentStatus&program=GzRenjiaosheXinkebiao(di2ban)9&unit_name=Unit%201&learning_type=2&mode=learning&initresp=yes&confirmresp=right&dummy=NaN&OnlyForRefresh=120533913`

##### updateSpellStatus

--------------------------- ---------------
`cmd` = updateSpellStatus   命令：更新拼写状态
`program`                   计划
`wordIndex`                 (int) 单词索引
--------------------------- ---------------

## quiz

### quiz\_normal\_prompt.jsp

--------------------------- ---------------
`quizTypeId`                (int) 测试类型
`program`                   计划
`unit_name`                 单元名称
--------------------------- ---------------


> `http://192.168.10.113/InitStudy/quiz/quiz_normal_prompt.jsp?quizTypeId=8&program=CN-GaoZhongKGbk1&unit_name=unit%206`

### quiz\_unit\_prompt.jsp
--------------------------- ---------------
`type`                      (int) (?)
`program`                   计划
`unit_name`                 单元名称
--------------------------- ---------------

## css

CSS 文件 .

### style_lj.css

## images

### biaoqing-shuiping.jpg

{% asset_img biaoqing-shuiping.jpg %}

### bw.jpg

{% asset_img bw.jpg %}

### danyuankuan.jpg

{% asset_img danyuankuan.jpg %}

### danyuankuan-1.jpg

{% asset_img danyuankuan-1.jpg %}

### guanbi-1.jpg

{% asset_img guanbi-1.jpg %}

### logo.swf

就是 Logo.

### unit\_btn\_hui.jpg

{% asset_img unit_btn_hui.jpg %}

### wenziguang-2.jpg

{% asset_img wenziguang-2.jpg %}

### wenziguang.jpg

{% asset_img wenziguang.jpg %}

### zxyb1.jpg

{% asset_img zxyb1.jpg %}


## swf
### word_gb.swf
   ------------------------------- -----------------
   `quizForce` = no                 强制测试
   `finished` = yes                 已完成
   `quizLast` = Y                   上一次测试
   `localKey` = zh_CN               地区码
   `exampleChinese` = N             中文示例
   `quizWordView` = 30              (int)学习的单词数
   `ipaddr` = 192.168.10.113        IP 地址
   `device` = learning              引擎
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


### red.swf

拼写错误时出现.

### yellow.swf

拼写正确时出现.

## zh_CN

### language.as

如题。

```plain
&v_lgMemorytime=有效学习时长
&v_lgNewlyWord=生词
&v_lgDiscardsWord=熟词
&v_lgTotalLearned=已学单词
&v_lgReviewWord=复习单词
&v_lgAllWords=总单词
&v_lgUnitWords=单元词数
&v_lgTotalAdvancement=总进程
&v_lgWordDevice=词义记忆
&v_lgHideExample=隐藏例句
&v_lgBordSetting=面板设置
&v_lgOpePrompt=操作提示
&v_lgExample=例句:
&v_lgTranslation=译文:
&v_lgWarning=提醒
&v_lgCongrat=恭喜
&v_lgContinue=请点击ok继续
&v_lgExit=退出
&v_lgLogout=系统在储存你的数据..
&v_lgTimeout= 你已经有十五分钟没有进行任何操作了。本次登录已自动退出，继续学习请重新登录。
&v_lgMsgOthers=祝贺你！你已记完本课程所有生词! 建议你继续使用以加快反应速度----力图在更短时间内答出单词词义。同时时常作拼写练习和效果测评。
&v_lgNoneed=你现在无须复习该课程。当你开始遗忘本课程内容，系统将会提醒你。
&v_unitlgNoneed=你现在无须复习该单元。当你开始遗忘本课程内容，系统将会提醒你。

&v_lgExamplelable=例句译文
&v_lgQuizforce=你已学了30个单词, 现在我们检查一下你的学习效果。
&v_lgOperArea=操作区
&v_lgBackground=背景区
&v_lgSpellWord=词义强化单词
&v_lgSellPractice=词义强化

&v_lgSpellWord=词义强化
&v_lgSellPractice=词义强化
&v_lgNewlySpellWord=新拼单词:
&v_lgShowChinesse=显示中文解释	
&v_lgShowExample=显示例句
&v_lgInput=输入
&v_lgAnswer=答案
&v_lgEnter=提  交
&v_lgNext=下一个
&v_lgShanchu=跳过本单词
&v_lgOpePrompt2=提示关闭
&v_lgBordSetting2=关闭设置
&v_lgShowChinesse2=隐藏中文解释
&v_lgShowExample2=隐藏例句
&v_lgHideExample2=显示例句

&v_lgTypeStep1=开始学习
&v_lgTypeStep2=词义强化
&v_lgTypeStep3=效果测评
&v_lgTypeStep4=课程测评
&v_lgTypeStep5=测评记录
&v_lgTypeStep6=进度显示
&v_lgDetaiData=查看详细数据
&v_lgAbnormality=您的记忆速度为每小时
&v_lgTrueAbnormality=个单词
&v_lgIsAbnormality=个单词，如果需要开通帐号继续学习，请进入
&v_lgAoAbnormality=“购买指南”
&v_lgExpChinesse=中文解释
&v_lgEnExpChinesse=英文解释
&v_programs=NHCE,CN-IELTS,TOEFL,NEWTOEFL,NEWGRE,YISI-,YASI-,cn-sat,overseas_esl,overseas-k12,METS,daxue_zixue,daxue_zixuejiao,CN-DianDa,CN-ZhiCheng,CN-GuangZhouGWY,CN-GaoZhiGaoZhuan,CN-OpeEnglish,kaogangcihui,zaizhishuoshi,CN-XiaoXue_JianQiao,CN-MBALianKao,CN-ShenShuoTongKao,CN-GMAT,CN-YingYuZiKaoBZ,CN-GaoZhongBZDG,zsb,CN-XinZhiCheng,CN-AAAEnglish,CN-ChuJiAmericaEnglish,CN-ZhongJiAmericaEnglish,CN-GaoJiAmericaEnglish,CN-DoubleEnglish,CN-FutureEnglish,CN-AmeriSlowEnglish,Business-English,Medical-English,CN-PETS,
&v_programs_example=CN-IELTS,TOEFL,NEWTOEFL,NEWGRE,YISI-,YASI-,cn-sat,overseas_esl,overseas-k12,METS,daxue_zixue,publice-newconcept-,daxue_zixuejiao,CN-DianDa,CN-ZhiCheng,CN-GuangZhouGWY,CN-GaoZhiGaoZhuan,CN-OpeEnglish,kaogangcihui,zaizhishuoshi,CN-XiaoXue_JianQiao,CN-MBALianKao,CN-ShenShuoTongKao,CN-GMAT,CN-YingYuZiKaoBZ,CN-GaoZhongBZDG,zsb,CN-XinZhiCheng,CN-AAAEnglish,CN-ChuJiAmericaEnglish,CN-ZhongJiAmericaEnglish,CN-GaoJiAmericaEnglish,CN-DoubleEnglish,CN-FutureEnglish,CN-AmeriSlowEnglish,Business-English,Medical-English,CN-PETS,
&test=
```

### rest.swf

休息时展示的 swf.

### yinfu.swf

如题。\
哇，真是太可爱啦!

### rest

#### rest.as

休息时下面显示的标语

```plain
&step1=Believe yourself! 相信自己！
&step2=You can learn English well. 你能够学好英语。
&step3=Where there is a will, there is a way. 有志者，事竟成。
&step4=Nothing is impossible for a willing heart.心之所愿，无所不成。
&step5=From small beginning come great things. 伟大始于渺小。
```

#### rest.wave\#

$\alpha$脑波音乐，休息时播放。

文件名               音乐名                       作者
------------------- -------------------------   -------
`wave1.mp3`         WALKING IN THE AIR          Chloe Agnew
`wave2.mp3`         めぐる季節                   Joe Hisaishi
`wave3.mp3`         蓝色的爱                    Richard Clayderman
`wave4.mp3`         拥有Masbfca (广告配乐完整版) 几米
`wave5.mp3`         WALKING IN THE AIR          Chloe Agnew
------------------- -------------------------   -------

我知道你在想什么.\
wave1 和 wave 5 完全一样.

## sound

### multi_sound_file

(单词).swf
用来存储大小写等等都一样但不是一个单词的发音.

### swf-`.`

(单词首字母)\(单词).swf\
全小写，空格用 `_` 代替.

> `http://192.168.10.113/sound/swf-b/beneath.swf`

### newExampleSound

(前两个字母)\(句子).swf\
全小写，空格用 `_` 代替.

> `http://192.168.10.113/sound/newExampleSound/th/the_boat_sank_beneath_the_waves.swf`

## jpg_images

### jpg-`.`

(单词首字母)\(单词).jpg\
全小写，空格用 `_` 代替。

> `http://192.168.10.113/jpg_images/jpg-b/beneath.jpg`


## InitTeach

> `http://192.168.10.113/InitTeach/manager/login.jsp`

# 对应数据

## quizTypeId

quizTypeId					解释
--------------------------- ---------------
1							四维测试
2							效果测试
3							学前测试
4							学后测试
5							智能听写生词测试
6							(???)
7							智能默写生词测试
8							智能记忆闯关测试
11							(???)
12							(???)
13							(???)
10							熟词测试
14							考试中心组卷测试
15							智能听写闯关测试
16							已学单词测试
17							听力测试 (`/InitStudy/sentenceInit/listen/listenQuiz.jsp`)
18							翻译测试 (`/InitStudy/sentenceInit/translate/translateQuiz.jsp`)
21							(???)
22							智能默写闯关测试


```javascript
if (quizTypeId == 17) {
    url = "/InitStudy/sentenceInit/listen/listenQuiz.jsp?"
        + "programName=" + programName
        + "&unitName=" + unitName
        + "&userId=" + userId
        + "&quizTypeId=" + quizTypeId
        + "&passScore=" + passScore
        + "&t=" + (new Date().getTime())//解决缓存问题
        + "&listenViewed=" + 0;
} else if (quizTypeId == 18) {
    url = "/InitStudy/sentenceInit/translate/translateQuiz.jsp?"
        + "programName=" + programName
        + "&unitName=" + unitName
        + "&userId=" + userId
        + "&quizTypeId=" + quizTypeId
        + "&passScore=" + passScore
        + "&t=" + (new Date().getTime())//解决缓存问题
        + "&translateViewed=" + 0;
} else {
    url = "/InitStudy/rest/quiz/autopaper?"
        + "programName=" + programName
        + "&unitName=" + unitName
        + "&userId=" + userId
        + "&quizTypeId=" + quizTypeId
        + "&studyId=" + studyId
        + "&wordViewed=" + wordViewed
        + "&t=" + (new Date().getTime());//解决缓存问题
    if ("" != "") {
        url += "&currentTime=";
    }
}
```

## 金币计算

### 测试

```javascript
var thisGold = parseInt(spentTime / 60) + parseInt(spentTime / (60 * 15) * 10) + quizIntegral;
// 金币数 = 花费时间 / 60 + 花费时间 / 900 * 10 + 
```

> 对于 **智能记忆闯关**、**智能听写闯关** 和 **智能默写闯关**，当成绩大于 90 时，如果
这是第一次做这个测试 或 本次成绩好与上一次成绩，则可多获得 10 金币。

```javascript
case 8:     //智能记忆 闯关
case 15:  // 智能听写 闯关
case 22: //智能默写 闯关
    if (score >= 90) { // 闯关成功 ，更新单元状态
        if (0 >= 90) {
            if (score > 0) {//重复闯关成功
                tipsMsg += "又创佳绩！佩服佩服！";
                quizIntegral += 10;
                jQuery("#tipsImage_top,#tipsImage_bottom").attr("src", "/images/biaoqing-98.jpg");
            } else {
                if (score == 100 && 0 == 100) {
                    tipsMsg += "战无不胜，攻无不克！";
                    jQuery("#tipsImage_top,#tipsImage_bottom").attr("src", "/images/biaoqing-98.jpg");
                } else {
                    tipsMsg += "挑战失败！不要灰心，再试一次吧！";
                    jQuery("#tipsImage_top,#tipsImage_bottom").attr("src", "/images/biaoqing-68.jpg");
                }
            }
        } else {//首次闯关成功
            tipsMsg += "闯关成功！膜拜，大神！";
            quizIntegral += 10;
            jQuery("#tipsImage_top,#tipsImage_bottom").attr("src", "/images/biaoqing-98.jpg");
        }
    } else {
        tipsMsg += "不要灰心，再试一次吧！";
        jQuery("#tipsImage_top,#tipsImage_bottom").attr("src", "/images/biaoqing-18.jpg");
    }
    jQuery("#quizAgainTop,#quizAgainBottom").show();
    break;
```

当且仅当做一道题的时间处于 0s - 30s 之间时，做这道题的时间才加入 spentTime 中。\
换句话说，如果做一道题的时间超过 30s，这道题就得不了金币 —— 虽然它不影响分数。

```javascript
if(addTime > 0 && addTime < 30){
	spentTime += addTime;
}
```
