#Persistent
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1

Gui, Add, Picture, BackgroundTrans vBackground x0 y0 w218 h100, https://raw.githubusercontent.com/Sky28702/COMBAT-AHK/main/ahk/bg.png
Gui, Add, DropDownList, vSelector x8 y8 w120, Infinite Slide|Starfire|More|Select Moves||
Gui, Add, Button, x131 y7 w80 h23, OK
Gui, Add, Button, x131 y32 w80 h23, Pause ; Changed the text to "Pause"
Gui, Add, Button, x131 y57 w80 h23, EXIT

; Set GUI always on top
Gui +AlwaysOnTop

Gui, Show, w218 h100, Mover

SoundPlay, https://raw.githubusercontent.com/Sky28702/COMBAT-AHK/main/ahk/Landscape.mp3

Return

ButtonOK:
    Gui, Submit, NoHide
    SetTimer, CheckSelected, -0
Return

CheckSelected:
    If (Selector = "Select Moves")
    {
        MsgBox, Please select a move
        Return
    }
    Else If (Selector = "Infinite Slide")
    {
loop,
{
sleep, 250
send,c
sleep, 250
}
return
    }
    Else If (Selector = "Starfire")
    {
Loop,
{
Send {Shift down}
sleep, 200
Send {a down}
Sleep 200
Send, {Space}
Sleep, 200
Send, {down c}{up c}
Sleep, 100
Send, {a up}
Sleep, 200
Send {d down}
sleep 200
Send, {Space}
Sleep, 200
Send, {down c}{up c}
Sleep,100
Send, {d up}
sleep,200
Send {Shift up}
}

return
    }
    Else If (Selector = "More")
    {
        ; your script for Macro 3 here
        MsgBox, If you got default key binds then it will work more updates coming soon. Please don't edit keybinds likes SHIFT A S D C V0.1 thanks
    }
Return

ButtonEXIT:
GuiEscape:
GuiClose:
    ExitApp
    return

Reload:
    Reload
    return

ButtonPause: ; Changed the label to match the new button text
    GoSub, Reload
return
