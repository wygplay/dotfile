; vscode中按下esc键切换为英文
#HotIf WinActive("ahk_exe Code.exe")
Esc::
{
   SendInput "{Esc}"
   ; 切换为英文 0x4090409=67699721
   PostMessage 0x0050, 0, 0x4090409, , "A"
}
#HotIf

; 键位映射
CapsLock::Ctrl