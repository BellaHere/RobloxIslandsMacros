#Requires AutoHotkey v2.0
MsgBox "Before running this we kindly ask that you press OK out of privacy reasons.", "IRaVGaCtMABF"
MsgBox "WARNING: BEFORE RUNNING THIS, MAKE SURE YOU HAVE NO BROWSER WITH A TAB NAMED ROBLOX OPEN, THIS CAN CAUSE FLASHING AND POSSIBLY INDUCE SEIZURES!!!", "Warning: IRaVGaCtMABF"
; Unused Code here
UnusedCodeWithPossibleLaterUsage := Gui()
; Code that may be able to be used if the devs ever wise up and make a fix
UnusedCodeWithPossibleLaterUsage.Add("Text",, "Please select your weapon's attack methodology")
UnusedCodeWithPossibleLaterUsage.Add("DropDownList", "vWeaponStyle", ["Melee","Magic","Archery"])

; Yes this belongs to the previous group.
UnusedCodeWithPossibleLaterUsage.SetFont("cC0FFEE s12 w500 q5", "Arial") ; DefaultFont
UnusedCodeWithPossibleLaterUsage.Add("Text",, "Please select your Healing Food slot. (Range = 1 to 8) (To disable, set to 0)")
UnusedCodeWithPossibleLaterUsage.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
UnusedCodeWithPossibleLaterUsage.Add("Edit")
heart := UnusedCodeWithPossibleLaterUsage.Add("UpDown", "vHeart Range0-8", 1)

; Here for somepoint later
UnusedCodeWithPossibleLaterUsage.Add("Progress", "w200 h20 cGreen vActivityBar", 0)
UnusedCodeWithPossibleLaterUsage["ActivityBar"].Value := 50  ; Set the current position to 50.
UnusedCodeWithPossibleLaterUsage.Add("Text",, "Choose your own font color using hexadecimal inputs.")
UnusedCodeWithPossibleLaterUsage.Add("Text",, "Choose your own font size using this up and down arrow. (Range is 10-20)")
UnusedCodeWithPossibleLaterUsage.Add("Text",, "Choose your own font thickness using this up and down arrow. (Range is 100-1000)")

; Used Code
; Frame Working, and basic variables.
IRaVGaCtMABF := Gui()
HahaFunnyGay := 0
gay1 := IRaVGaCtMABF
gay2 := gay1
gayColor1 := "000000"
gayStuff1 := "c000000 s12 w500 q5"
gayStuff2 := "cC0FFEE s12 w500 q5"
gayStuff3 := "Arial"
gayOpt1 := "-DPIScale"
gayOpt2 := "AutoSize Center Restore"
gayCountNA := 1
gayCountNB := 2
gayCountNC := 3
gayCountND := 4


IRaVGaCtMABF.BackColor := gayColor1
IRaVGaCtMABF.SetFont(gayStuff1, gayStuff3) ; BackupFont
IRaVGaCtMABF.SetFont(gayStuff2, gayStuff3) ; DefaultFont

IRaVGaCtMABF.Opt(gayOpt1)
tab := IRaVGaCtMABF.Add("Tab", "h800 w700", ["View", "Program Settings", "Islands Settings"])

tab.UseTab(2)

IRaVGaCtMABF.Add("Text",, "Please select a hotkey for starting the program.")
StartKey := IRaVGaCtMABF.Add("Hotkey", "vStartKey")
stk := StartKey.Value

IRaVGaCtMABF.Add("Text",, "Please select a hotkey for stopping the program.")
ExitKey := IRaVGaCtMABF.Add("Hotkey", "vExitKey")
exk := ExitKey.Value

tab.UseTab(3)

IRaVGaCtMABF.Add("Text",, "Please select your Bow slot. (Range 1-8)")

IRaVGaCtMABF.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
IRaVGaCtMABF.Add("Edit")
bow := IRaVGaCtMABF.Add("UpDown", "vBow Range1-8", 1)
bow.OnEvent("Change", SPoVC)

IRaVGaCtMABF.SetFont("cC0FFEE s12 w500 q5", "Arial") ; DefaultFont
IRaVGaCtMABF.Add("Text",, "Please select your Swap Sword slot. (Range 1-8) (To disable, set to 0)")

IRaVGaCtMABF.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
IRaVGaCtMABF.Add("Edit")
swapsword := IRaVGaCtMABF.Add("UpDown", "vSwapSword Range0-8", 1)
swapsword.OnEvent("Change", SPoVC)

IRaVGaCtMABF.SetFont("cC0FFEE s12 w500 q5", "Arial") ; DefaultFont
IRaVGaCtMABF.Add("Text",, "Please select your Blueberry Cookie slot. (Range 1-8) (To disable, set to 0)")

IRaVGaCtMABF.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
IRaVGaCtMABF.Add("Edit")
blueberrycookie := IRaVGaCtMABF.Add("UpDown", "vBlueberryCookie Range0-8", 1)
blueberrycookie.OnEvent("Change", SPoVC)

IRaVGaCtMABF.SetFont("cC0FFEE s12 w500 q5", "Arial") ; DefaultFont
IRaVGaCtMABF.Add("Text",, "Please select your Dragon Roll slot. (Range 1-8) (To disable, set to 0)")

IRaVGaCtMABF.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
IRaVGaCtMABF.Add("Edit")
dragonroll := IRaVGaCtMABF.Add("UpDown", "vDragonRoll Range0-8", 1)
dragonroll.OnEvent("Change", SPoVC)

IRaVGaCtMABF.SetFont("cC0FFEE s12 w500 q5", "Arial") ; DefaultFont
IRaVGaCtMABF.Add("Text",, "Please select your Starfruit Cake slot. (Range 1-8) (To disable, set to 0)")

IRaVGaCtMABF.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
IRaVGaCtMABF.Add("Edit")
starfruitcake := IRaVGaCtMABF.Add("UpDown", "vStarfruitCake Range0-8", 1)
starfruitcake.OnEvent("Change", SPoVC)

IRaVGaCtMABF.SetFont("cC0FFEE s12 w500 q5", "Arial") ; DefaultFont
IRaVGaCtMABF.Add("Text",, "Please select your Jam Sandwich slot. (Range 1-8) (To disable, set to 0)")

IRaVGaCtMABF.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
IRaVGaCtMABF.Add("Edit")
jamsandwich  := IRaVGaCtMABF.Add("UpDown", "vJamSandwich Range0-8", 1)
jamsandwich.OnEvent("Change", SPoVC)

tab.UseTab(1)

IRaVGaCtMABF.SetFont("cC0FFEE s12 w500 q5", "Arial")
IRaVGaCtMABF.Add("Text",, "Program Activity Bar")
IRaVGaCtMABF.Add("Progress", "w200 h20 c99ff99 vActivityBar", 0)

IRaVGaCtMABF.SetFont("c000000 s12 w500 q5", "Arial") ; BackupFont
StartButton := IRaVGaCtMABF.Add("Button", "w80", "START")
StartButton.OnEvent("Click", SPoVC)

StopButton := IRaVGaCtMABF.Add("Button", "w80", "STOP")
StopButton.OnEvent("Click", EP)

; Variables I could only declare now.
B := bow.Value
SS := swapsword.Value
BC := blueberrycookie.Value
DR := dragonroll.Value
SC := starfruitcake.Value
JS := jamsandwich.Value

IRaVGaCtMABF.Show("AutoSize Center Restore")

^S::
SPoVC(*)
{
    B := bow.Value
    SS := swapsword.Value
    BC := blueberrycookie.Value
    DR := dragonroll.Value
    SC := starfruitcake.Value
    JS := jamsandwich.Value
    SK := stk
    EK := exk
    loop 100
    {
        sleep 1
        IRaVGaCtMABF["ActivityBar"].Value += 1
    }
    loop
    {
        WinMove(0, 0, 500, 500, "Roblox", "" , "Roblox Account Manager")
    }
}

^X::
EP(*)
{
    loop 200
    {
        sleep 1
        IRaVGaCtMABF["ActivityBar"].Value -= 0.5
    }
    ExitApp
}