#Requires AutoHotkey v2.0
CoordMode "Mouse", "Screen"
CountingVariable := 1
StartVariable := 0
^S::
{
	MsgBox "Starting Now..."
	StartVariable := 1
	While StartVariable = 1
	{
		loop 36
		{
			CountVariable := 2
			WinMove(501, 0, 500, 500, "Roblox Account Manager", , , )
			WinActivate("Roblox Account Manager")
			Sleep 150
			loop 17
			{
				Sleep 500
				sendInput "{Tab}"
			}
			Sleep 250
			sendInput "{Down}"
			Sleep 200
			MouseMove 1015, 107
			Sleep 200
			MouseClick "left", 1015, 107, 1
			Sleep 60000
			WinMove(0, 0, 500, 500, "Roblox", , "Roblox Account Manager",)
			loop 25
			{
				Sleep 75
				MouseMove 457, 389
				Sleep 75
				MouseClick "left", 457, 389, 50 ; Exit Game if crashed
				Sleep 75
				MouseClickDrag "left", 184, 582, 214, 582 , 1 ; Jitter Mouse To Activate Play
			}
			While CountingVariable > 4
			{
				Sleep 200
				MouseMove 27, 249
				Sleep 200
				MouseClick "left", 27, 249, 1 ; Profile
				Sleep 200
				MouseMove 97, 286
				Sleep 200
				MouseClick "left", 97, 286, 1 ; Change Profile
				Sleep 200
				MouseMove 270, 227
				Sleep 200
				MouseClick "left", 270, 227, 1 ; Slot 1
				Sleep 30000
				SendInput "F"
				Sleep 15000
				MouseMove 629, 471
				Sleep 200
				MouseClick "left", 629, 471, 1 ; View Shop
				Sleep 5000
				MouseMove 359, 147
				Sleep 200
				MouseClick "left", 359, 147, 1 ; Pineapple Seed
				Sleep 200
				MouseMove 544, 432
				Sleep 200
				MouseClick "left", 544, 432, 1 ; Manual Number Input
				Sleep 200
				MouseMove 588, 470
				Sleep 200
				MouseClick "left", 588, 470, 1 ; ...
				Sleep 200
				SendInput "6"
				Sleep 200
				MouseMove 600, 468
				Sleep 200
				MouseClick "left", 600, 468, 1 ; OK
				Sleep 200
				MouseMove 520, 514
				Sleep 200
				MouseClick "left", 520, 514, 1 ; Buy
				Sleep 200
				SendInput "C"
				Sleep 200
				MouseMove 27, 249
				Sleep 200
				MouseClick "left", 27, 249, 1 ; Profile
				Sleep 200
				MouseMove 97, 286
				Sleep 200
				MouseClick "left", 97, 286, 1 ; Change Profile
				Sleep 200
				if CountingVariable = 2
				{
					MouseMove 352, 227
					Sleep 200
					MouseClick "left", 352, 227, 1 ; Slot 2
					CountingVariable += 1
				}
				if CountingVariable = 3
				{
					MouseMove 450, 227
					Sleep 200
					MouseClick "left", 450, 227, 1 ; Slot 3
					CountingVariable += 1
				}
			}
		}
	}
}
^X::
{
	MsgBox "Exiting now..."
	ExitApp
}
