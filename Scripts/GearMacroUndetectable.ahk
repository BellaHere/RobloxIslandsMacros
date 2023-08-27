#Requires AutoHotkey v2.0
InstallKeybdHook "1"
StartVar := 0
^s::
{
     StartVar:=1
     if StartVar = 1
     Loop {

	     Loop {
			 SleepVar := Random(299000, 310000)
		     Sleep SleepVar
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