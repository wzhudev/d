#Requires AutoHotkey v2.0

; Relaunch with Administrator privileges
#SingleInstance Force
full_command_line := DllCall("GetCommandLine", "str")
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
  try
  {
    if A_IsCompiled
      Run '*RunAs "' A_ScriptFullPath '" /restart'
    else
      Run '*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"'
  }
  ExitApp
}

; Remap CapsLock to Control
CapsLock::Control

; Switch between windows of the same application
!`::
{
    win_id := WinActive("A")
    win_class := WinGetClass("A")
    active_process_name := WinGetProcessName("A")
    ; We have to be extra careful about explorer.exe since that process is responsible for more than file explorer
    if (active_process_name = "explorer.exe")
        win_list := WinGetList("ahk_exe" active_process_name " ahk_class" win_class)
    else
        win_list := WinGetList("ahk_exe" active_process_name)
    
    ; Calculate index of next window. Since activating a window puts it at the top of the list, we have to take from the bottom.
    next_window_i := win_list.Length
    next_window_id := win_list[next_window_i]
    
    ; Activate the next window and send it to the top.
    WinMoveTop("ahk_id" next_window_id)
    WinActivate("ahk_id" next_window_id)
}
