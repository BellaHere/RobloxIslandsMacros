#Requires AutoHotkey v2.0
InstallKeybdHook "1"
StartVar := 0
^s::
{
     StartVar:=1
     if StartVar = 1
     Loop {

	     Loop {
		     Sleep 600000
		     RobloxCount := WinGetCount("Roblox")
	         Loop {
				 WinActivateBottom "Roblox"
                 if (RobloxCount = 0)
	             break
				 Send "{Space}"
				 RobloxCount-- 

			 } 
		 }
     }
}
^x::ExitApp