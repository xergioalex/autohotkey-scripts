#Persistent
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; Change LookBack and TickSize value for MKTP indicator
^+1::
    ; Check if the MetaTrader 4 window exists
    IfWinExist, ahk_class MetaQuotes::MetaTrader::4.00
    {
        ; Activate the MetaTrader 4 window
        WinActivate
        ; Type "Ctrl+i" keys: This opens the indicator window
        Send, ^i
        ; Set the coordinate mode for the mouse to screen
        CoordMode, Mouse, Screen
        ; Double Click on "MKTP" indicator to open it
        Click, 115, 177, 2
        ; Double click on "LookBack" input value
        Click, 853, 160, 2
        ; Copy the selected text to the clipboard
        Send, ^c
        ; Wait a moment for the clipboard to update
        ClipWait
        Sleep, 500
        ; Read the value from the clipboard
        lookBackValue := Clipboard
        if (lookBackValue == "6" || lookBackValue == "9") {
            ; Type "backspace" key
            Send, {Backspace}
            if (lookBackValue == "6") {
                ; Type "9" key
                Send, 9
            } else {
                ; Type "6" key
                Send, 6
            }
        }
        ; Double click on "TickSize" input value
        Click, 853, 340, 2
        ; Copy the selected text to the clipboard
        Send, ^c
        ; Wait a moment for the clipboard to update
        ClipWait
        Sleep, 500
        ; Read the value from the clipboard
        tickSizeValue := Clipboard
        if (tickSizeValue == "1" || tickSizeValue == "3" || tickSizeValue == "4") {
            ; Type "backspace" key
            Send, {Backspace}
            if (tickSizeValue == "1" || lookBackValue == "9") {
                ; Type "4" key
                Send, 4
            } else {
                ; Type "1" key
                Send, 1
            }
        }
        ; Double click on "OK" button to save changes on indicators
        Click, 1016, 426
        Click, 1016, 426
        ; Double click on "Close" button to back to the chart
        Click, 438, 316
        Click, 438, 316
    } else {
        ; Display a message box if the window does not exist
        MsgBox, The window does not exist.
    }
return


; Change LookBack and TickSize value for MKTP indicator on all charts
^+2::
    ; Check if the MetaTrader 4 window exists
    IfWinExist, ahk_class MetaQuotes::MetaTrader::4.00
    {
        ; Activate the MetaTrader 4 window
        WinActivate
        ; Loop through all open charts
        Loop, 15 ; Assuming there are 5 charts open, adjust the number as needed
        {
            ; Type "Ctrl+i" keys: This opens the indicator window
            Send, ^i
            ; Set the coordinate mode for the mouse to screen
            CoordMode, Mouse, Screen
            ; Double Click on "MKTP" indicator to open it
            Click, 115, 177, 2
            ; Double click on "LookBack" input value
            Click, 853, 160, 2
            ; Type "backspace" key
            Send, {Backspace}
            ; Type "9" key
            Send, 9
            ; Double click on "TickSize" input value
            Click, 853, 340, 2
            ; Copy the selected text to the clipboard
            Send, ^c
            ; Wait a moment for the clipboard to update
            ClipWait
            Sleep, 500
            ; Read the value from the clipboard
            tickSizeValue := Clipboard
            if (tickSizeValue == "1" || tickSizeValue == "3" || tickSizeValue == "4") {
                ; Type "backspace" key
                Send, {Backspace}
                ; Type "1" key
                Send, 1
            }
            ; Double click on "OK" button to save changes on indicators
            Click, 1016, 426
            Click, 1016, 426
            ; Double click on "Close" button to back to the chart
            Click, 438, 316
            Click, 438, 316
            ; Type "Ctrl+Shift+f6" keys
            Send, ^+{F6}
            Sleep, 500
        }
    } else {
        ; Display a message box if the window does not exist
        MsgBox, The window does not exist.
    }
return

; Change LookBack and TickSize value for MKTP indicator on all charts
^+3::
    ; Check if the MetaTrader 4 window exists
    IfWinExist, ahk_class MetaQuotes::MetaTrader::4.00
    {
        ; Activate the MetaTrader 4 window
        WinActivate
        ; Loop through all open charts
        Loop, 15 ; Assuming there are 5 charts open, adjust the number as needed
        {
            ; Type "Ctrl+i" keys: This opens the indicator window
            Send, ^i
            ; Set the coordinate mode for the mouse to screen
            CoordMode, Mouse, Screen
            ; Double Click on "MKTP" indicator to open it
            Click, 115, 177, 2
            ; Double click on "LookBack" input value
            Click, 853, 160, 2
            ; Type "backspace" key
            Send, {Backspace}
            ; Type "6" key
            Send, 6
            ; Double click on "TickSize" input value
            Click, 853, 340, 2
            ; Copy the selected text to the clipboard
            Send, ^c
            ; Wait a moment for the clipboard to update
            ClipWait
            Sleep, 500
            ; Read the value from the clipboard
            tickSizeValue := Clipboard
            if (tickSizeValue == "1" || tickSizeValue == "3" || tickSizeValue == "4") {
                ; Type "backspace" key
                Send, {Backspace}
                ; Type "4" key
                Send, 4
            }
            ; Double click on "OK" button to save changes on indicators
            Click, 1016, 426
            Click, 1016, 426
            ; Double click on "Close" button to back to the chart
            Click, 438, 316
            Click, 438, 316
            ; Type "Ctrl+Shift+f6" keys
            Send, ^+{F6}
            Sleep, 500
        }
    } else {
        ; Display a message box if the window does not exist
        MsgBox, The window does not exist.
    }
return


; Switch to Firefox
^+4::
    ; Check if the Firefox window exists
    IfWinExist, ahk_class MozillaWindowClass
    {
        ; Activate the Firefox window
        WinActivate
    }
return

; Switch to Tick Mill
^+5::
    ; Check if the Tick Mill window exists
    IfWinExist, ahk_id 3867586
    {
        ; Activate the Tick Mill window
        WinActivate
    }
return

; Switch to Exness
^+6::
    ; Check if the Exness window exists
    IfWinExist, ahk_id 67816
    {
        ; Activate the Exness window
        WinActivate
    }
return