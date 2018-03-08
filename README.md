# OnenoteFontPlugin

this is a small procedure try to solved the chinese (or other langs) font problem in Onenote2016 in windows system (not UWP)
, If don't replace the system font;

And it can also provide another font like cambria math

## Run

### first

put the font bar in the 8th position of quick access bar
![pic](1.gif)

### run from the release file

1. 只有中文用户才能用release上的exe文件
2. 将快捷方式放在↓以便开机启动
> C:\Users\%user_name%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

### run from .ahk source file

1. download autohotkey...
1. change the variables %fontBarPos%/Defaultfont/Mathfont/codefont to the font you like
1. change the shortcut like (LShift) in your way
1. query the locale in your [country](#appendix) or press winkey and . ,and edit the zn variable
> HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout\DosKeybCodes
1. run on startup:add shortcut to the following address

> C:\Users\%user_name%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

## Usage

only influence OneNote Applications

shortcuts | functions
 :--: | :----:
F3|toggle the use of mathfont and defaultfont
^ |means ctrl
+|means alt
!|means shift
leftshift|change input method
^w|forwards selection
^+w|backwards selection
^d|duplicate line
^LeftMouseButton|select line
^!Backspace|delete line
F2|rename
^!w|create table
^!#(win)w|create table with brace
^!e|create column in the left (in a table)
^!0|format with %defaultFont%

## disAdvantage

中文之间不能改变符号
中文输入法的英文状态输出字体仍然是 calibri

## appendix

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
