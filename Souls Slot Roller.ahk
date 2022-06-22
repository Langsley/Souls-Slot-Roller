#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook
SetStoreCapsLockMode off

;---------------------------------------------------------------------HOTKEYS START HERE, BOYS-------------------------------------------------------------------------------
;THE FIRST HOTKEY IS IMPORTANT, PLEASE READ, YOU SUNNUVAGUN

reloadKey				:= "^f11"

global slotSwitchKey	:= "Ins"		;this is your swap spell/item/ button, you can look up replacements here: https://www.autohotkey.com/docs/KeyList.htm


global slot1			:= "1"			;your first item/magic slot Hotkey, ~this is labeled global cause otherwise other functions won't recognize it.
global slot2			:= "2"			;your 2nd slot hotkey
global slot3			:= "3"
global slot4			:= "4"
global slot5			:= "5"
global slot6			:= "6"
global slot7			:= "7"
global slot8			:= "8"
global slot9			:= "9"
global slot10			:= "0"


;---------------------------------------------------------------------HOTKEYS END HERE, BOYS-------------------------------------------------------------------------------
;the ~ before each key makes it so that they "pass-through"

Hotkey, ~%reloadKey%, reloadRun

Hotkey, ~%slot1%, setSlotChoiceTo1
Hotkey, ~%slot2%, setSlotChoiceTo2
Hotkey, ~%slot3%, setSlotChoiceTo3
Hotkey, ~%slot4%, setSlotChoiceTo4
Hotkey, ~%slot5%, setSlotChoiceTo5
Hotkey, ~%slot6%, setSlotChoiceTo6
Hotkey, ~%slot7%, setSlotChoiceTo7
Hotkey, ~%slot8%, setSlotChoiceTo8
Hotkey, ~%slot9%, setSlotChoiceTo9
Hotkey, ~%slot10%, setSlotChoiceTo10



;----------Say hi to the people you care about, or the ones that care about you. Good luck in life, chief. Think of me fondly for the few seconds that you do.-------------
global choiceSlot	:= 1
global currentSlot	:= 1

return

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------
#MaxHotkeysPerInterval 150							; so mouse wheeling can really rack up the count, sooooo....

switchRoller()
{
	Send, {%slotSwitchKey% down}
	Sleep 550
	Send, {%slotSwitchKey% up}
	
	currentSlot	:= 1
	while (currentSlot != choiceSlot)
		{
			Sleep 25
			currentSlot++
			Send, {%slotSwitchKey% down}
			Sleep 25
			Send, {%slotSwitchKey% up}
		}
}
return

setSlotChoiceTo1:
{
	choiceSlot	:= 1
	Keywait, %slot1%
	switchRoller()
}
return

setSlotChoiceTo2:
{
	choiceSlot	:= 2
	Keywait, %slot2%
	switchRoller()
}
return

setSlotChoiceTo3:
{
	choiceSlot	:= 3
	Keywait, %slot3%
	switchRoller()
}
return

setSlotChoiceTo4:
{
	choiceSlot	:= 4
	Keywait, %slot4%
	switchRoller()
}
return

setSlotChoiceTo5:
{
	choiceSlot	:= 5
	Keywait, %slot5%
	switchRoller()
}
return

setSlotChoiceTo6:
{
	choiceSlot	:= 6
	Keywait, %slot6%
	switchRoller()
}
return

setSlotChoiceTo7:
{
	choiceSlot	:= 7
	Keywait, %slot7%
	switchRoller()
}
return

setSlotChoiceTo8:
{
	choiceSlot	:= 8
	Keywait, %slot8%
	switchRoller()
}
return

setSlotChoiceTo9:
{
	choiceSlot	:= 9
	Keywait, %slot9%
	switchRoller()
}
return

setSlotChoiceTo10:
{
	choiceSlot	:= 10
	Keywait, %slot10%
	switchRoller()
}
return

;---------------------------------------------------------------------------------------------------------------------------------------------------------------------

reloadRun:
{
reload
}
return