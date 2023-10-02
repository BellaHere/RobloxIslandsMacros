#Requires AutoHotkey v2.0
StartVariable := 0
^S::
{
	StartVariable := 1
	while StartVariable = 1
	{
		WinMove(0, 0, 256, 256, "Roblox Account Manager", , ,)
		WinActivate("Roblox Account Manager)
	}
}
