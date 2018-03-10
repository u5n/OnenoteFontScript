#SingleInstance force
global Defaultfont:="con" ;consolas
global MathFont="cam" ;cambria math

global font:=Defaultfont
global en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)
global ch := DllCall("LoadKeyboardLayout", "Str", "00000804", "Int", 1)
global lang :=DllCall("GetKeyboardLayout", Int,DllCall("GetWindowThreadProcessId", int,WinActive("A"), Int,0))
global fontBarPos:=8

#IfWinActive, ahk_class Framework::CFrame 

SetEnglish(){
  PostMessage, 0x50, 0, %en%,,  A
}
SetChinese(){
  PostMessage, 0x50, 0, %ch%,, A
}
shift::
  send {Ctrl Down}{Shift down}{ctrl up}{shift up}
  lang :=DllCall("GetKeyboardLayout", Int,DllCall("GetWindowThreadProcessId", int,WinActive("A"), Int,0))
  if( lang = en && font = MathFont ){
    setFon()
  }
  return
  
F3::
  if(font= MathFont){
    font:=Defaultfont
  } else {
    font:=MathFont
  }
  SetEnglish()
  setFon()
  return
^F3:: ;consolas所有字体
  a:=font
  font:=Defaultfont
  SetEnglish()
  setFon()
  font:=a
  return
;;;;shortcuts;;;;;

;;类似于 idea 的选择功能
  ^w::
  Send ^+{Left}
  return
  ^+w::
  Send ^+{Right}
  return

;重命名
F2::Send {RButton}R
return

;删除复制选择行
^d::Send ^a^c{Right}^v
return
^!BS::Send ^a{BS}
return
^LButton::Send {LButton Down}{LButton Up}^a
return

^!#w::
^!w::
  Send !6{1}{Tab}{1}{Enter}

  if (GetKeyState("LWin","P")){
    SetEnglish()
    send {{}{}}{Left}{Enter}{Enter}{Left}{Tab}{Left}{Left}
  }
return

^!e::
  send !JLL
return
;;;函数部分


SetFon(){
    Send {altDown}%fontBarPos%{AltUp}
    Send %font%{Enter}{esc}{esc}
}
SetFonTitle(){
    
    if (lang = en){ 
      SetFon()
    } else {
      SetEnglish()
      SetFon()
      SetChinese()
    }
}

;;标题栏部分
  ^!1::
    Send ^!1
    if (font = MathFont){
      send {Esc}^a
      SetFonTitle()
    }
    return
  ^!2::
    Send ^!2
    if (font = MathFont){
      send {Esc}^a
      SetFonTitle()
    }
    return
  ^!3::
    Send ^!3
    if (font = MathFont){
      send {Esc}^a
      SetFonTitle()
    }
    return
  ^!4::
    Send ^!4
    if (font = MathFont){
      send {Esc}^a
      SetFonTitle()
    }
    return
  ^!5::
    Send ^!5
    if (font = MathFont){
      send {Esc}^a
      SetFonTitle()
    }
    return
  ^!6::
    Send ^!6
    if (font = MathFont){
      send {Esc}^a
      SetFonTitle()
    }
    return
  ^!0::
    send ^!0
    send {Esc}^a
    SetFonTitle()
    return


#ifWinactive