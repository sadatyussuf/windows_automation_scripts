; #Requires AutoHotkey v2.0

; Resize and Reposition Applications:
; #IfWinActive
; {
;     WinMove, A,, 0, 0, 300, 600 ; Move to (0,0) and resize to 300x400 pixels
; }


; Always-on-Top Hotkey:
; ^SPACE::  ; Ctrl + SPACE
; {
;    Winset, AlwaysOnTop, , A
; }


; Move Active Window to Next Monitor:
; ^#Right:: ; Ctrl + Win + Right arrow
; {
;     WinGetPos, X, Y, Width, Height, A
;     if (X < A_ScreenWidth)
;         WinMove, A,, A_ScreenWidth, Y
;     else
;         WinMove, A,, 0, Y
; }

^#Left::  ; Ctrl + Win + Left arrow
{
    WinMove, A,, 0, 0, A_ScreenWidth / 2, A_ScreenHeight ; Move to (0,0) and resize to 50% width, 100% height
}

^#Right::  ; Ctrl + Win + Right arrow
{
    WinMove, A,, A_ScreenWidth / 2, 0, A_ScreenWidth / 2, A_ScreenHeight ; Move to (50% width,0) and resize to 50% width, 100% height
}
