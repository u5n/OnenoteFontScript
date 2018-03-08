#SingleInstance force
global Defaultfont:="con" ;consolas
global MathFont="cam" ;cambria math
global codeFont="fir" ;firacode 
global font:=Defaultfont
global en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)
global ch := DllCall("LoadKeyboardLayout", "Str", "00000809", "Int", 1)
global lang :=DllCall("GetKeyboardLayout", Int,DllCall("GetWindowThreadProcessId", int,WinActive("A"), Int,0))
global fontBarPos:=8

global lineChange:=1

#IfWinActive, ahk_class Framework::CFrame 
#.::
  send %A_Language%
return
SetEnglish(){
  PostMessage, 0x50, 0, %en%,,  A
}
SetChinese(){
  PostMessage, 0x50, 0, %ch%,, A
}
shift::
  send {Ctrl Down}{Shift down}{ctrl up}{shift up}
  lang :=DllCall("GetKeyboardLayout", Int,DllCall("GetWindowThreadProcessId", int,WinActive("A"), Int,0))
  return
F3::
  if(font=Defaultfont){
    font:=MathFont
  } else {
    font:=Defaultfont
  }
  setFonTitle()
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

  a:=font

  font:=codeFont
  SetFonTitle()
  font:=a 

  if (GetKeyState("LWin","P")){
    SetEnglish()
    send {{}{}}{Left}{Enter}{Enter}{Left}{Tab}{Left}{Left}
  }
  lineChange=0
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
    Send ^!1{Esc}
    Send ^a 
    SetFonTitle()
    return
  ^!2::
    Send ^!2{Esc}
    Send ^a 
    SetFonTitle()
    return
  ^!3::
    Send ^!3{Esc}
    Send ^a 
    SetFonTitle()
    return
  ^!4::
    Send ^!4{Esc}
    Send ^a 
    SetFonTitle()
    return
  ^!5::
    Send ^!5{Esc}
    Send ^a 
    SetFonTitle()
    return
  ^!6::
    Send ^!6{Esc}
    Send ^a 
    SetFonTitle()
    return
  ^!0::
    send ^!0{Esc}
    send ^a
    SetFonTitle()
    return

;;;;;截取,处理所有正常的输入
~Up up::
  lineChange = 1
  return
~LButton up::
  lineChange = 1
  return
~Down up::
  lineChange = 1
  return
Enter::
  send {Enter}
  lineChange = 1
  return
tab::
  send {tab}
  lineChange = 1
  return
^a::
  send ^a
  lineChange=1
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


1::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw 1
return
2::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw 2
return
3::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw 3
return
4::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw 4
return
5::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw 5
return
6::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw 6
return
7::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw 7
return
8::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw 8
return
9::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw 9
return
0::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw 0
return
q::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw q
return
w::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw w
return
e::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw e
return
r::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw r
return
t::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw t
return
y::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw y
return
u::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw u
return
i::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw i
return
o::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw o
return
p::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw p
return
a::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw a
return
s::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw s
return
d::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw d
return
f::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw f
return
g::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw g
return
h::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw h
return
j::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw j
return
k::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw k
return
l::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw l
return
z::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw z
return
x::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw x
return
c::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw c
return
v::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw v
return
b::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw b
return
n::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw n
return
m::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw m
return
-::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw -
return
=::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  send {=}
return
[::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw [
return
]::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw ]
return
`;::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw `;
return
'::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw '
return
,::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw `,
return
.::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw .
return
/::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw /
return
\::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw \
return
|::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw |
return
<::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw <
return
>::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw >
return
?::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw ?
return
:::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw :
return
"::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw "
return
{::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw {
return
}::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw }
return
(::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw (
return
)::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw )
return
_::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw _
return
+::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw +
return
`::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw ``
return
~::
  if(lineChange = 1 && lang = en){
    SetFon()
    lineChange = 0
  }

  sendRaw ~
return

#ifWinactive