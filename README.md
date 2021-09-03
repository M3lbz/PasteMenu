# PasteMenu

PasteMenu is an AutoHotKey script that allows you to set up a local PasteBin that is accessible via a menu triggered by a keyboard shortcut.

By default the menu trigger is `ctrl + alt + V`

## Installation

Install [AutoHotKey](https://www.autohotkey.com/) on your machine

Pull down the Repo and right click the .ahk file and run as administrator

## Run on startup

Navigate to the startup folder:

`C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp`

Create a shortcut with the following options:

```
Target: "C:\Program Files\AutoHotkey\AutoHotkey.exe" C:\Path\to\Paste\dir\PasteMenu.ahk

Start in: C:\Path\to\Paste\dir\

Click "Advanced" and make sure "Run as administrator" is checked
```

## Usage

You can create .paste files in the same directory as the ahk file.

The file name will become the name on the menu.

Clicking the item will paste the files content line by line

Be sure to change the extension to .paste as that's what the script looks for to create the menu

## Contributing
Pull requests are welcome. But keep in mind I am not actively updating this Repo!

## License
[MIT](https://choosealicense.com/licenses/mit/)