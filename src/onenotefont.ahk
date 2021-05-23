#SingleInstance force
global defaultFont:="con" ;consolas
global MathFont="cambria math" ;cambria math

global font:=defaultFont
global en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)
global ch := DllCall("LoadKeyboardLayout", "Str", "00000804", "Int", 1)
global fontBarPos:=9 ; 字体栏所在位置
global TableBarPos:=8 ; 表格栏所在位置

#IfWinActive, ahk_class Framework::CFrame 
  
;;;;;; 字体更改部分 ;;;;
  ; 查询当前语言编码
  #.::
    MsgBox %A_Language%
    
  ; 当前行字体更改为 defaultFont
    F1::
      send ^a
      font:=defaultFont
      SetEnglish()
      setFon()
      return
  ; 当前页面字体更改为 defaultFont
    ^F1:: 
      send ^a^a^a^a
      font:=defaultFont
      SetEnglish()
      setFon()
      return
  ; 当前行改为 mathFont
    F6::
      font:=MathFont
      SetEnglish()
      setFon()
      return

;;;; 一些有用快捷键 ;;;;;
  ; 左右滚动
    +WheelDown::rollright()
    +WheelUp::rollleft()

  ; 向前选择单词, 向后选择单词
    ^w::
    Send ^+{Left}
    return
    ^+w::
    Send ^+{Right}
    return

  ; 重命名
  F2::Send {RButton}R
  

  ; 复制当前行
    ^d::Send ^a^c{Right}^v
  ; 删除当前行
    +Del::Send ^a{BS}

  ; 光标处创建表格, 创建表格选项要被放在快速启动栏第TableBarPos个位置
    ^!w::Send !%TableBarPos%{1}{Tab}{1}{Enter}

  ; 如果当前处于表格单元, 在单元左侧添加一列
    ^!e::send !JL

;;;函数部分
  SetEnglish(){
    PostMessage, 0x50, 0, %en%,,  A
  }
  SetChinese(){
    PostMessage, 0x50, 0, %ch%,, A
  }
  SetFon(){
      Send {altDown}%fontBarPos%{AltUp}
      Send %font%{Enter}{esc}{esc}
  }

  SetFonTitle(){
      lang :=DllCall("GetKeyboardLayout", Int,DllCall("GetWindowThreadProcessId", int,WinActive("A"), Int,0))

      if (lang = en){ 
        SetFon()
      } else {
        SetEnglish()
        SetFon()
        settimer,SetChinese,-200
      }
  }

  rollright(){
      CoordMode, Mouse, Screen
      MouseGetPos, xmouse, ymouse, id, control
      loop,12{

      SendMessage, 0x114, 1, 0, %control%, ahk_id %id% 
      }
  }
  rollleft(){
      CoordMode, Mouse, Screen
      MouseGetPos, xmouse, ymouse, id, control
      loop,12{
      SendMessage, 0x114, 0, 0, %control%, ahk_id %id% 
      }
  }
#ifWinactive