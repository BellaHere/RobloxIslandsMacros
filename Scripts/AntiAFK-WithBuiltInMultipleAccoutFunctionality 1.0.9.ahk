#Requires AutoHotkey v2.0
#WinActivateForce
InstallKeybdHook "1"
StartVar := 0
^s::
{
	MsgBox "Macro Started"
	Label1:
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
				if RobloxCount = 0
				{
					MsgBox "Error 404; While trying to locate Roblox: Roblox not found during the read of the program"
					while RobloxCount = 0
					{
						loop
						{
							RobloxCount := WinGetCount("Roblox", , "Roblox Account Manager")
							if RobloxCount > 0
							{
								Goto("Label2")
								;
							}
						}
					}
				}
				else
				{
					Label2:
					WinActivateBottom "Roblox", , "Roblox Account Manager"
					sleep 5
					Loop 3
					{
						MouseClick "right", , , 5
						sleep 25
						SendInput "{Raw}{Space 3}"
					}
				RobloxCount--
				;
				}
			}
		}
	}
	;
}
else
{
	MsgBox "Error 1; Error with StartVar: StartVar was not equal to 1. Please press OK. If Error 1 persists, please contact Discord user bellawashere"
	Goto("Label1")
	;
}
^x::
{
	MsgBox "Macro Ended"
	ExitApp
}
