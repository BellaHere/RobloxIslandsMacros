#Requires AutoHotkey v2.0
#WinActivateForce
InstallKeybdHook "1"
StartVar := 0
MsgBox "To start the program, press Control S. To exit the program, press Control X."
^s::
{
	MsgBox "Macro Started"
	StartVar := 1
	if StartVar = 1
	{
		Loop
		{
			SleepVar := Random(590000, 610000)
			Sleep SleepVar
			RobloxCount := WinGetCount("Roblox", , "Roblox Account Manager")
			while RobloxCount > 0
			{
				loop RobloxCount
				{
					WinMove 0, 0, 256, 256, "Roblox", , "Roblox Account Manager"
					WinActivateBottom "Roblox", , "Roblox Account Manager"
					sleep 5
					Loop 3
					{
						MouseClick "Right", 34, 30, 5
						sleep 5
						SendInput "{Space 3}"
					}
					--RobloxCount
				}
			}
		}
	}
}
^x::
{
	MsgBox "Macro Ended"
	ExitApp
}