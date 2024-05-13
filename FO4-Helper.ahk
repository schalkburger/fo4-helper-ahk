
SetTitleMatchMode, 2
#SingleInstance Force
#MaxThreadsPerHotkey 1

; Set to your Fallout 4 executable. This changes if you are using something like Mod Organiser to launch the game.
#IfWinActive, Fallout4

; Toggle ADS with Right Mouse Button
*RButton Up::
    If (Toggle := !Toggle)
        Send {Click Down Right}
    Else
        Send {RButton up}
Return

; Toggle flashlight
F::PressAndReleaseTab()

PressAndReleaseTab() {
    Send {Tab down}  ; Presses the Tab key down
    Sleep 1000       ; Delays for 1000 milliseconds (1 second)
    Send {Tab up}    ; Releases the Tab key
}
; Toggle holster weapons
C::PressAndReleaseR()

PressAndReleaseR() {
    Send {R down}  ; Presses the R key down
    Sleep 500       ; Delays for 1000 milliseconds (1 second)
    Send {R up}    ; Releases the R key
}

#IfWinActive