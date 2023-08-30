#Requires AutoHotkey v2.0
#WinActivateForce
InstallKeybdHook "1"
StartVar := 0
^s::
{
	MsgBox "Macro Started"
     StartVar:=1
     if StartVar = 1
     Loop {

	     Loop {
			 SleepVar := Random(595000, 605000)
		     Sleep SleepVar
		     RobloxCount := WinGetCount("Roblox")
	         Loop {
				 WinActivateBottom "Roblox"
                 if (RobloxCount = 0)
	             break
				 sleep 5
				 Loop 3
				  {
					 MouseClick "right", , , 10
					 sleep 25
				     SendInput "{Raw}{Space 3}"
				  }
				 RobloxCount-- 

			 } 
		 }
     }
}
^x::
{
	MsgBox "Macro Ended"
	ExitApp
}
