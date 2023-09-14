#Requires AutoHotkey v2.0
#WinActivateForce
InstallKeybdHook "1"
StartVar := 0
^s::
{
	MsgBox "Macro Started"
	StartVar:=1
	if StartVar = 1
	Loop
	{
		Loop
		{
			SleepVar := Random(595000, 605000)
			Sleep SleepVar
			RobloxCount := WinGetCount("Roblox", , "Roblox Account Manager")
			Loop
			{
				WinActivateBottom "Roblox", , "Roblox Account Manager"
				if (RobloxCount = 0)
				{
					MsgBox "Error 404; While trying to locate Roblox: Roblox not found during the read of the program"
					break
				}
				else
					{
						sleep 5
						Loop 3
							{
								MouseClick "right", , , 5
								sleep 25
								SendInput "{Raw}{Space 3}"
							}
					RobloxCount--
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
