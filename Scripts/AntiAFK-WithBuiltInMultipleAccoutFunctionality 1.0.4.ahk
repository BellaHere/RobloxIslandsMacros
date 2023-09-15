#Requires AutoHotkey v2.0
#WinActivateForce
InstallKeybdHook "1"
StartVar := 0
^s::
{
	MsgBox "Macro Started"
	StartVar:=1
	if StartVar = 1
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
	else
	{
		MsgBox "Error 1; Error with StartVar: StartVar was not equal to 1. Please press OK and relaunch the program. If Error 1 persistsm, report this to Discord user bellawashere"
		ExitApp
	}
}
^x::
{
	MsgBox "Macro Ended"
	ExitApp
}
