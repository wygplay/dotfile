;启动windows terminal
^!t::
send, #2
return

;关机
#q::
Shutdown, 1
return

;启动obsidian
^!o::
run, C:\Users\lenovo\AppData\Local\Obsidian\Obsidian.exe
return

; ---vim action---
#IfWinActive ahk_exe Code.exe
~Esc::
    Send, ^{F8}
    Send, ^{Space}
return

CapsLock::Ctrl