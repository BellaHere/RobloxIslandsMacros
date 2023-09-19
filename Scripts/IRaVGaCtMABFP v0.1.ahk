#Requires AutoHotkey v2.0
MsgBox "Before running this we kindly ask that you press OK out of privacy reasons.", "IRaVGaCtMABFP"

; This is unused code and may or may not be used in the future, do not pay attention to it.
UnusedCodeWithPossibleLaterUsage := Gui()
UnusedCodeWithPossibleLaterUsage.Add("Text",, "Please select your weapon's attack methodology")
UnusedCodeWithPossibleLaterUsage.Add("DropDownList", "vWeaponStyle", ["Melee","Magic","Archery"])




IRaVGaCtMABFPGui := Gui()

IRaVGaCtMABFPGui.BackColor := "000000"
IRaVGaCtMABFPGui.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
IRaVGaCtMABFPGui.SetFont("cC0FFEE s12 w500 q5", "Arial") ; DefaultFont
IRaVGaCtMABFPGui.Opt("-DPIScale")
Tab := IRaVGaCtMABFPGui.Add("Tab", "w700", ["View", "Program Settings", "Islands Settings"])


Tab.UseTab(1)
IRaVGaCtMABFPGui.Add("Text",, "Program Activity Bar")
IRaVGaCtMABFPGui.Add("Progress", "w200 h20 cGreen vMyProgress", 0)
IRaVGaCtMABFPGui.Add("Text",, "Your selected Start Key")
IRaVGaCtMABFPGui.Add("Text",, "")
IRaVGaCtMABFPGui.Add("Text",, "Your selected Exit Key")
IRaVGaCtMABFPGui.Add("Text",, "")


Tab.UseTab(2)
IRaVGaCtMABFPGui.Add("Text",, "Please select a hotkey for starting the program.")
IRaVGaCtMABFPGui.Add("Hotkey", "vStartKey")
IRaVGaCtMABFPGui.Add("Text",, "Please select a hotkey for stopping the program.")
IRaVGaCtMABFPGui.Add("Hotkey", "vExitKey")
IRaVGaCtMABFPGui.Add("Text",, "Choose your own font color using hexadecimal inputs.")
IRaVGaCtMABFPGui.Add("Text",, "Choose your own font size using this up and down arrow. (Range is 10-20)")
IRaVGaCtMABFPGui.Add("Text",, "Choose your own font thickness using this up and down arrow. (Range is 100-1000)")

Tab.UseTab(3)
IRaVGaCtMABFPGui.Add("Text",, "Please select your bow slot. (Range = 1 to 8)")

IRaVGaCtMABFPGui.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
IRaVGaCtMABFPGui.Add("Edit")
IRaVGaCtMABFPGui.Add("UpDown", "vBow Range1-8", 1)

IRaVGaCtMABFPGui.SetFont("cC0FFEE s12 w500 q5", "Arial") ; DefaultFont
IRaVGaCtMABFPGui.Add("Text",, "Please select your weapon to swap to. (Range = 1 to 8)")

IRaVGaCtMABFPGui.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
IRaVGaCtMABFPGui.Add("Edit")
IRaVGaCtMABFPGui.Add("UpDown", "vSwapWeapon Range1-8", 1)

IRaVGaCtMABFPGui.SetFont("cC0FFEE s12 w500 q5", "Arial") ; DefaultFont
IRaVGaCtMABFPGui.Add("Text",, "Please select your Blueberry Cookie slot. (Range = 1 to 8)")

IRaVGaCtMABFPGui.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
IRaVGaCtMABFPGui.Add("Edit")
IRaVGaCtMABFPGui.Add("UpDown", "vBlueberryCookies Range1-8", 1)

IRaVGaCtMABFPGui.SetFont("cC0FFEE s12 w500 q5", "Arial") ; DefaultFont
IRaVGaCtMABFPGui.Add("Text",, "Please select your Dragon Roll slot. (Range = 1 to 8)")

IRaVGaCtMABFPGui.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
IRaVGaCtMABFPGui.Add("Edit")
IRaVGaCtMABFPGui.Add("UpDown", "vDragonRolls Range1-8", 1)

IRaVGaCtMABFPGui.SetFont("cC0FFEE s12 w500 q5", "Arial") ; DefaultFont
IRaVGaCtMABFPGui.Add("Text",, "Please select your Starfruit Cake slot. (Range = 1 to 8)")

IRaVGaCtMABFPGui.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
IRaVGaCtMABFPGui.Add("Edit")
IRaVGaCtMABFPGui.Add("UpDown", "vSFCake Range 1-8" 1)

IRaVGaCtMABFPGui.Show("AutoSize Center Restore")
