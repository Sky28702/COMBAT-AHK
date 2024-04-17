#Persistent
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1

Gui, Add, Picture, BackgroundTrans vBackground x0 y0 w218 h100, C:\Users\prate\OneDrive\Desktop\ahk\bg.png
Gui, Add, DropDownList, vSelector x8 y8 w120, Macro 1|Macro 2|Macro 3|Select Macro||
Gui, Add, Button, x131 y7 w80 h23, OK
Gui, Add, Button, x131 y32 w80 h23, Pause ; Changed the text to "Pause"
Gui, Add, Button, x131 y57 w80 h23, EXIT

; Set GUI always on top
Gui +AlwaysOnTop

Gui, Show, w218 h100, Mover

SoundPlay, C:\Users\prate\OneDrive\Desktop\ahk\Landscape.mp3

Return

ButtonOK:
    Gui, Submit, NoHide
    SetTimer, CheckSelected, -0
Return

CheckSelected:
    If (Selector = "Select Macro")
    {
        MsgBox, Please select a Macro
        Return
    }
    Else If (Selector = "Macro 1")
    {
        ; your script for Macro 1 here
        MsgBox, You selected Macro 1
    }
    Else If (Selector = "Macro 2")
    {
        ; your script for Macro 2 here
        MsgBox, You selected Macro 2
    }
    Else If (Selector = "Macro 3")
    {
        ; your script for Macro 3 here
        MsgBox, You selected Macro 3
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
