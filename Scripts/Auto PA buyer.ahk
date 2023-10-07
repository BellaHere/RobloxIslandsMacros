#Requires AutoHotkey v2.0
StartVariable := 0
^S::
{
	StartVariable := 1
	while StartVariable = 1
	{
		WinMove(501, 0, 500, 500, "Roblox Account Manager", , ,)
		WinActivate("Roblox Account Manager)
	}
}
