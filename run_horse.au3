; Hotkeys
HotKeySet("{F11}", "hammer_toggle")
global $autohammer = 0
Func hammer_toggle()
	Send('t')
	Sleep(100)
	
   If $autohammer = 0 Then
      Sleep(100)
      MouseDown("right")
      Send("{ShiftDown}")
      Sleep(100)
      $autohammer = 1
      HotKeySet("{F11}")
      HotKeySet("+{F11}", "hammer_toggle")
   Else
      Sleep(100)
      MouseUp("right")
      Send("{ShiftUp}")
      Sleep(100)
      $autohammer = 0
      HotKeySet("+{F11}")
      HotKeySet("{F11}", "hammer_toggle")
   EndIf
EndFunc
; Idle
While 1
   Sleep(10)
Wend