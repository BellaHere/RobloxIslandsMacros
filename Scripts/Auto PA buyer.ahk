#Requires AutoHotkey v2.0
CoordMode "Mouse", "Screen"
StartVariable := 0
^S::
{
	StartVariable := 1
	while StartVariable = 1
	{
        loop 36
        {
            WinMove(501, 0, 500, 500, "Roblox Account Manager", , ,)
            WinActivate("Roblox Account Manager")
            sleep 150
            loop 17
            {
                sleep 500
                sendInput "{Tab}"
            }
            Sleep 250
            sendInput "{Down}"
            MouseMove 1015, 107
            Sleep 5000
            MouseClick "left", 1015, 107, 1
            sleep 3000
            MsgBox "Haha Funny Shit Fuck I don't know"
        }
	}
}
