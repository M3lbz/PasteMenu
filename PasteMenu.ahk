#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

; A function which removes and recreates a menu based on the contents of the folder we are in
RefreshMenu() {
    Menu PasteMenu, Add
    Menu PasteMenu, DeleteAll ; Clear the current Menu

    Loop Files, %A_ScriptDir%\*.paste ; Read all text files in the folter
    {
        ; Bind the args to the paste function so we can use a freindly name
        BoundGivePar := Func("PasteContents").Bind(A_LoopFileFullPath)
        SplitPath, A_LoopFileLongPath, OutFileName, OutDir, OutExtension, OutNameNoExt, OutDrive ; Split the path so we can get the nice name

        ; Create the menu item with the past function
        Menu PasteMenu, Add, %OutNameNoExt%, % BoundGivePar
    }

    ; Add a seperator and a refresh option
    Menu PasteMenu, Add
    Menu PasteMenu, Add, Refresh Menu, RefreshMenu

}

; Accepts a file name and pastes its content adding new lines at the begining of each new line after the first
PasteContents(filePath)
{
    Loop, read, %filePath%
    {
        if (A_Index != 1)
        {
            SendInput {enter}
        }

        Send, %A_LoopReadLine%
    }
}

RefreshMenu()
return

^!v::Menu, PasteMenu, Show
return