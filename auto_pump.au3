Global $Timer = TimerInit(), $Diff = 0
While 1
    $Diff = TimerDiff($Timer)
    If $Diff >= 10000 Then
        ConsoleWrite($Diff / 1000 & @CRLF)
		Send(1)
		Send(2)
        $Timer = TimerInit()
    EndIf
    Sleep(10) ; so you don't burn up your CPU or use too much of it
WEnd
