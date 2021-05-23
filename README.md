# ONENOTE FONT AHK SCRIPT

<!-- TOC -->

- [ONENOTE FONT AHK SCRIPT](#onenote-font-ahk-script)
  - [是什么](#是什么)
  - [我采取的方案:](#我采取的方案)
  - [前提](#前提)
  - [如何使用这个脚本](#如何使用这个脚本)
  - [功能和快捷键](#功能和快捷键)
  - [附表 其他语言对应编码](#附表-其他语言对应编码)

<!-- /TOC -->

## 是什么

这是一个简单的autohotkey脚本, 用来应对onenote2016[中英文切换问题](https://www.zhihu.com/question/30089364)

经过我调查发现, 如果要用onenote2016, 这个问题应该永远无完美解法

##  我采取的方案:

我习惯中文使用"华文新魏"字体, 英文使用consolas等宽字体

首先, 我用FontCreator12制作了一份魔改的"华文新魏"字体, 把"华文新魏"里面的每个英文字母都改成了consolas里面的样式. 具体时间可能要花费整个下午, 颇为复杂

其次, 当我用手机端打开onenote笔记时, 会发现还是字体还是不对, 并且, 当我使用发送到博客选项时, 字体也会是不对的. 这个脚本专门用来解决这个问题, 目前onetastic宏可以写出这种功能, 但是使用颇为不便, 同样是脚本, 不如安装autohotkey来的方便, 此外还可以手动编写一些非常有用的快捷键

## 前提

* 必须是onenote2016 windows
* 安装autohotkey

## 如何使用这个脚本

1. 首先将 OneNote总设置里的字体改为你想要的中文字体
2. 将 字体栏 放在 快速启动栏 的第八个位置, **并且在框上输一次 想要的英文字体(不可以是中文系字体),按回车,这样只输入字体的前几个字,OneNote会自动补全后面的字**

![example](asset/1.jpg)

3. 下载`src/onenotefont.ahk`文件, 
    1. 自定义好全局变量 `fontBarPos` `Defaultfont` `Mathfont` `TableBarPos`
    2. 文件中Chinese对应编码`"00000804"`也可以改成其他编码, 可以按快捷键 `winkey`+`.` 查询, 也可以在注册表` HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout\DosKeybCodes`中查询
    3. `ahk`文件是可以编译成`exe`文件的, 修改好代码编译后, 可以不用再安装autohotkey
   
## 功能和快捷键

只会影响 OneNote 应用

 用来简写的符号 | 表示的快捷键
---|---
^ | ctrl
+|alt
!|shift

shortcuts | functions
 :--: | :----:
F1|设置当前行的字体为defaultFont
^F1|设置整页的字体为defaultFont
^w|向前选择
^+w|向后选择
^d|复制当前行
+del|删除当前行
F2|重命名
^!e|如果光标在表格中, 在光标左侧插入一列(要把表格栏也放在快速启动栏上)
!鼠标滚轮|左右滚动页面

## 附表 其他语言对应编码

locale|country
-------|------
0436 | Afrikaans
041c | Albanian
0401 | Arabic_Saudi_Arabia
0801 | Arabic_Iraq
0c01 | Arabic_Egypt
0401 | Arabic_Saudi_Arabia
0801 | Arabic_Iraq
0c01 | Arabic_Egypt
1001 | Arabic_Libya
1401 | Arabic_Algeria
1801 | Arabic_Morocco
1c01 | Arabic_Tunisia
2001 | Arabic_Oman
2401 | Arabic_Yemen
2801 | Arabic_Syria
2c01 | Arabic_Jordan
3001 | Arabic_Lebanon
3401 | Arabic_Kuwait
3801 | Arabic_UAE
3c01 | Arabic_Bahrain
4001 | Arabic_Qatar
042b | Armenian
042c | Azeri_Latin
082c | Azeri_Cyrillic
042d | Basque
0423 | Belarusian
0402 | Bulgarian
0403 | Catalan
0404 | Chinese_Taiwan
0804 | Chinese_PRC
0c04 | Chinese_Hong_Kong
1004 | Chinese_Singapore
1404 | Chinese_Macau
041a | Croatian
0405 | Czech
0406 | Danish
0413 | Dutch_Standard
0813 | Dutch_Belgian
0409 | English_United_States
0809 | English_United_Kingdom
0c09 | English_Australian
1009 | English_Canadian
1409 | English_New_Zealand
1809 | English_Irish
1c09 | English_South_Africa
2009 | English_Jamaica
2409 | English_Caribbean
2809 | English_Belize
2c09 | English_Trinidad
3009 | English_Zimbabwe
3409 | English_Philippines
0425 | Estonian
0438 | Faeroese
0429 | Farsi
040b | Finnish
040c | French_Standard
080c | French_Belgian
0c0c | French_Canadian
100c | French_Swiss
140c | French_Luxembourg
180c | French_Monaco
0437 | Georgian
0407 | German_Standard
0807 | German_Swiss
0c07 | German_Austrian
1007 | German_Luxembourg
1407 | German_Liechtenstein
408 | Greek
040d | Hebrew
0439 | Hindi
040e | Hungarian
040f | Icelandic
0421 | Indonesian
0410 | Italian_Standard
0810 | Italian_Swiss
0411 | Japanese
043f | Kazakh
0457 | Konkani
0412 | Korean
0426 | Latvian
0427 | Lithuanian
042f | Macedonian
043e | Malay_Malaysia
083e|Malay_Brunei_Darussalam
044e|Marathi
0414|Norwegian_Bokmal
0814|Norwegian_Nynorsk
0415|Polish
0416|Portuguese_Brazilian
0816|Portuguese_Standard
0418|Romanian
0419|Russian
044f|Sanskrit
081a|Serbian_Latin
0c1a|Serbian_Cyrillic
041b|Slovak
0424|Slovenian
040a|Spanish_Traditional_Sort
080a|Spanish_Mexican
0c0a|Spanish_Modern_Sort
100a|Spanish_Guatemala
140a|Spanish_Costa_Rica
180a|Spanish_Panama
1c0a|Spanish_Dominican_Republic
200a|Spanish_Venezuela
240a|Spanish_Colombia
280a|Spanish_Peru
2c0a|Spanish_Argentina
300a|Spanish_Ecuador
340a|Spanish_Chile
380a|Spanish_Uruguay
3c0a|Spanish_Paraguay
400a|Spanish_Bolivia
440a|Spanish_El_Salvador
480a|Spanish_Honduras
4c0a|Spanish_Nicaragua
500a|Spanish_Puerto_Rico
0441|Swahili
041d|Swedish
081d|Swedish_Finland
0449|Tamil
0444|Tatar
041e|Thai
041f|Turkish
0422|Ukrainian
0420|Urdu
0443|Uzbek_Latin
0843|Uzbek_Cyrillic
042a|Vietnamese

