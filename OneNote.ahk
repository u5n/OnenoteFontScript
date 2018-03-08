#SingleInstance force ;不弹出 是否重新加载的消息

global en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)
global zn := DllCall("LoadKeyboardLayout", "Str", "00000804", "Int", 1)
global font:="con"
global chfont:="华文新魏"

;consolas->consolas;fira->fira code;cambria->cambria math 
;需要把字体设置在快速访问工具栏,位置8

;;;;;;;;ONENOTE;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive, ahk_class Framework::CFrame

F1:: 
  Send !f
  Send T
  Send !f
  ;;设置consolas
  Send c
  Loop 15{
    Send {Down}
  }
  Send {Enter}{Enter}

^F1::
  Send !f
  Send T
  Send !f
  ;;设置华文新魏
  Send y
  Loop 23{
    Send {Down}
  }
  Send {Enter}{Enter}
  return

;;标题栏部分
  !^1::
    Send ^!1{Esc} ;if not select, esc not use ; else cancel select
    Send ^a 
    SetFon()
    return
  !^2::
    Send ^!2{Esc}
    Send ^a
    SetFon()
    return
  !^3::
    Send ^!3{Esc}
    Send ^a
    SetFon()
    return
  !^4::
    Send ^!4{Esc}
    Send ^a
    SetFon()
    return
  !^5::
    Send ^!5{Esc}
    Send ^a
    SetFon()
    return
  !^6::
    Send ^!6{Esc}
    Send ^a
    SetFon()
    return

  !^0::
    send !^0{Esc}
    Send ^a
    SetFon()
    return

;;;cambria math字体的开关
F3::
    if(font="con"){
      font:="cam"
      SetEnglish()
      Send !8
      Send cambria math{Enter}{Esc}
    } else {
      font:="con"
    }
    return

SetFon(){
    lang :=DllCall("GetKeyboardLayout", Int,DllCall("GetWindowThreadProcessId", int,WinActive("A"), Int,0))
    
    Send !8

    if (lang = zn){
      SetEnglish()

      SetFon() 
      
      SetChinese()
      ;加入这段是为了在 选择了一大段字 时也能更改字体
    } else {

      Send %font%{Enter}{esc}{esc}
    }
    
}

shift:: ;此处对应你自定义的OneNote内专用的切换输入法快捷键
  send {Ctrl Down}{Shift down}{ctrl up}{shift up} ;此处对应系统切换中英输入法的快捷键
  ;获取当前输入法
  lang :=DllCall("GetKeyboardLayout", Int,DllCall("GetWindowThreadProcessId", int,WinActive("A"), Int,0))
  
  if (lang = en){
      Send !8  ;此处对应 选中字体栏 的快捷键,我把字体栏 放在了快速访问工具栏
      Send con ;consolas
      Send {enter}{esc}{esc}
  }
  return

;;;在表格左侧插入一列
;;;overdriven and ignore TIM_QQ shortcut 
^!e::
  send !JLL
return
;;;重命名
  F2::Send {RButton}R
return
;;;复制行
  ^d::Send ^a^c{Right}^v
  return
;;;删除行
^!BS::Send ^a{BS}
return
;;;;选中一行
^LButton::Send {LButton Down}{LButton Up}^a
return
#ifWinactive

;编辑与运行某个ahk脚本

; #^e::
;  Run,notepad "???alt+q.ahk"
; return
; #^r::
;   Send ^s ;保存
;   Run,open "???\alt+q.ahk"
; return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;函数区;;;;;;;;;;;;
SetEnglish(){
  PostMessage, 0x50, 0, %en%,, A
}
SetChinese(){
  PostMessage, 0x50, 0, %zn%,, A
}

;;;新建单个方框,并设置为fira code 字体

; ^!#w::
; ^!w::
; Send !6{1}{Tab}{1}{Enter}

; a:=font
; msgbox %a%
; ;;;;TODO var knows
; font:="fir"
; SetFon()
; font:=a 

; if (GetKeyState("LWin","P"))
;   send {{}{}}{Left}{Enter}{Enter}{Left}{Tab}{Left}{Left}

; return