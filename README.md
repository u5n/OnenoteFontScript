# ONENOTE FONT PLUGIN

<!-- TOC -->

- [ONENOTE FONT PLUGIN](#onenote-font-plugin)
    - [用法](#用法)
        - [使用release上的exe文件](#使用release上的exe文件)
        - [使用ahk文件](#使用ahk文件)
    - [功能和快捷键](#功能和快捷键)
    - [主要问题](#主要问题)
    - [其他可用语言](#其他可用语言)

<!-- /TOC -->

关于 onenote2016 中英文切换问题,
最好是更改系统字体,如果需要分享出去,且页面上有各种字体,就适合用onetastic的[宏](/onetastic.cs)

1. 如果因为种种原因不替换系统字体,或者不方便
    * 本脚本可以在流畅的情况下,处理大部分用英文输入法输入英文字体的情况,转换为你想要的字体,只要不随便输入
    * 提供其他有用的[快捷键功能](#功能和快捷键)

1. 如果已经把系统上的calibri字体替换了
    * 本脚本另一个版本提供 数学字体 可以在编写数学笔记时候使用
    * 提供其他[快捷键功能](#功能和快捷键)


适用于 onenote2016 Windows,onenote UWP没做
同时也适用于各种非中文简体语言
[其他可用语言](#其他可用语言)

## 用法

将 字体栏 放在 快速启动栏 的第八个位置
![example](/1.jpg)

### 使用release上的exe文件

1. 选择并下载release上exe文件
2. 将快捷方式放在↓以便开机启动
> C:\Users\%user_name%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

### 使用ahk文件

1. 下载 OneNote.ahk 文件 或者选择 AfterSubstituteFont.ahk 文件
1. 自定义好变量 %fontBarPos%/Defaultfont/Mathfont/codefont 
1. 特别注意 Lshift 将用来 切换输入法,所以输入法最好只保留两个, 在这里 Lshift 被映射成了 ctrl+shift
1. 变量 ch 对应用户使用的语言[其他可用语言](#其他可用语言)

    query the locale in your  or press `winkey`+`.` in OneNote ,

> HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout\DosKeybCodes
1. run on startup:add shortcut to the following address

> C:\Users\%user_name%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

## 功能和快捷键

只影响 OneNote 应用

 标识符 | 含义
---|--- 
^ | ctrl
+|alt
!|shift

shortcuts | functions
 :--: | :----:
^!0|改变一行的字体
^F3|改变选择内容的字体
^w|forwards selection
^+w|backwards selection
leftshift|change input method
^d|duplicate line
^LeftMouseButton|select line
^!Backspace|delete line
F2|rename
^!e|create column in the left (in a table)
F3|toggle the use of mathfont and defaultfont
F2|toggle the use of codefont and defaultfont
^!w|create table(you should put the insert table option in the 6th position of quick access bar)
^!`winkey`w|create table with brace

## 主要问题

* 中文之间不能改变字体
* 中文输入法的英文状态输出字体仍然是 不可预估的

## 其他可用语言

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

