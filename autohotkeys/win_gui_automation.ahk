; #Requires AutoHotkey v2.0

Run, https://www.example.com/login
Sleep, 3000 ; Wait for 3 seconds
Send, myusername{TAB}mypassword{ENTER}
return

; ----------------------
Gui, Add, DropDownList, vMySnippets, Snippet1||Snippet2||Snippet3
Gui, Add, Button, gPasteSnippet, Paste
Gui, Show
return
PasteSnippet:
    Gui, Submit
    Send, %MySnippets%
return
; ----------------------


Gui, Add, Text,, Enter time in seconds:
Gui, Add, Edit, vTimerVal
Gui, Add, Button, gStartTimer, Start
Gui, Show
return

StartTimer:
    Gui, Submit
    SetTimer, Countdown, 1000 ; Trigger every second
return

Countdown:
    TimerVal -= 1
    if (TimerVal <= 0)
    {
        MsgBox, Time's up!
        SetTimer, Countdown, Off
    }
return
