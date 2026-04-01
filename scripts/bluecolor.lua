LUAGUI_NAME = "Custom Main Command HUD Color"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Custom Main Command HUD Color"

-- Header
CommandStartRed = 30
CommandStartGreen = 116
CommandStartBlue = 246
-- COMMAND text
CommandTextRed = 121
CommandTextGreen = 186
CommandTextBlue = 255
-- Select: current selected command
SelectRed = 1
SelectGreen = 83
SelectBlue = 205
-- Attack: Unselected Attach command
AttackRed = 30
AttackGreen = 116
AttackBlue = 246
-- SelectGround: Drawing of the space behind selected command
SelectGroundRed = 30
SelectGroundGreen = 116
SelectGroundBlue = 246
-- Bottom unselected command
CommandEndRed = 30
CommandEndGreen = 116
CommandEndBlue = 246
-- Middle unselected command
CommandMiddleRed = 30
CommandMiddleGreen = 116
CommandMiddleBlue = 246
-- Selected command gradient
SelectCentreRed = 0
SelectCentreGreen = 39
SelectCentreBlue = 97
-- Various symbols
AttackSymbolRed = 128
AttackSymbolGreen = 128
AttackSymbolBlue = 128
MagicSymbolRed = 128
MagicSymbolGreen = 128
MagicSymbolBlue = 128
ItemSymbolRed = 128
ItemSymbolGreen = 128
ItemSymbolBlue = 128
SummonSymbolRed = 128
SummonSymbolGreen = 128
SummonSymbolBlue = 128

--- Version Check
IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = IsEpicGLVersion-0x1108
IsSteamJPVersion = IsEpicGLVersion-0x1158

-------------------------------------------------------------------------
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	epicgames = 0
	stmgames = 0
	stmjpgames = 0
	end
end
-------------------------------------------------------------------------
function _OnFrame()
	if ReadLong(IsEpicGLVersion) == 0x7265737563697065 and epicgames == 0 then
		epicgames = 1
		ConsolePrint("Custom Main Command HUD Color (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Custom Main Command HUD Color (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Custom Main Command HUD Color (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
CommandStartR = 0x285C178
CommandStartG = CommandStartR+0x4
CommandStartB = CommandStartR+0x8
CommandTextR = CommandStartR+0xAC40
CommandTextG = CommandStartR+0xAC44
CommandTextB = CommandStartR+0xAC48
SelectR = CommandStartR+0x80
SelectG = CommandStartR+0x84
SelectB = CommandStartR+0x88
AttackR = CommandStartR-0x57F8
AttackG = CommandStartR-0x57F4
AttackB = CommandStartR-0x57F0
SelectGroundR = CommandStartR-0x25B8
SelectGroundG = CommandStartR-0x25B4
SelectGroundB = CommandStartR-0x25B0
CommandEndR = CommandStartR-0xC0
CommandEndG = CommandStartR-0xBC
CommandEndB = CommandStartR-0xB8
CommandMiddleR = CommandStartR-0x40
CommandMiddleG = CommandStartR-0x3C
CommandMiddleB = CommandStartR-0x38
SelectCentreLeftR = CommandStartR+0x140
SelectCentreLeftG = CommandStartR+0x144
SelectCentreLeftB = CommandStartR+0x148
SelectCentreRightR = CommandStartR+0x160
SelectCentreRightG = CommandStartR+0x164
SelectCentreRightB = CommandStartR+0x168
AttackSymbolR = CommandStartR-0x39F8
AttackSymbolG = CommandStartR-0x39F4
AttackSymbolB = CommandStartR-0x39F0
MagicSymbolR = CommandStartR-0x3938
MagicSymbolG = CommandStartR-0x3934
MagicSymbolB = CommandStartR-0x3930
ItemSymbolR = CommandStartR-0x3878
ItemSymbolG = CommandStartR-0x3874
ItemSymbolB = CommandStartR-0x3870
SummonSymbolR = CommandStartR-0x3338
SummonSymbolG = CommandStartR-0x3334
SummonSymbolB = CommandStartR-0x3330
WriteFloat(CommandStartR, CommandStartRed)
WriteFloat(CommandStartG, CommandStartGreen)
WriteFloat(CommandStartB, CommandStartBlue)
WriteFloat(CommandTextR, CommandTextRed)
WriteFloat(CommandTextG, CommandTextGreen)
WriteFloat(CommandTextB, CommandTextBlue)
WriteFloat(SelectR, SelectRed)
WriteFloat(SelectG, SelectGreen)
WriteFloat(SelectB, SelectBlue)
WriteInt(AttackR, AttackRed)
WriteInt(AttackG, AttackGreen)
WriteInt(AttackB, AttackBlue)
WriteInt(SelectGroundR, SelectGroundRed)
WriteInt(SelectGroundG, SelectGroundGreen)
WriteInt(SelectGroundB, SelectGroundBlue)
WriteFloat(CommandEndR, CommandEndRed)
WriteFloat(CommandEndG, CommandEndGreen)
WriteFloat(CommandEndB, CommandEndBlue)
WriteFloat(CommandMiddleR, CommandMiddleRed)
WriteFloat(CommandMiddleG, CommandMiddleGreen)
WriteFloat(CommandMiddleB, CommandMiddleBlue)
WriteFloat(SelectCentreLeftR, SelectCentreRed)
WriteFloat(SelectCentreLeftG, SelectCentreGreen)
WriteFloat(SelectCentreLeftB, SelectCentreBlue)
WriteFloat(SelectCentreRightR, SelectCentreRed)
WriteFloat(SelectCentreRightG, SelectCentreGreen)
WriteFloat(SelectCentreRightB, SelectCentreBlue)
WriteInt(AttackSymbolR, AttackSymbolRed)
WriteInt(AttackSymbolG, AttackSymbolGreen)
WriteInt(AttackSymbolB, AttackSymbolBlue)
WriteInt(MagicSymbolR, MagicSymbolRed)
WriteInt(MagicSymbolG, MagicSymbolGreen)
WriteInt(MagicSymbolB, MagicSymbolBlue)
WriteInt(ItemSymbolR, ItemSymbolRed)
WriteInt(ItemSymbolG, ItemSymbolGreen)
WriteInt(ItemSymbolB, ItemSymbolBlue)
WriteInt(SummonSymbolR, SummonSymbolRed)
WriteInt(SummonSymbolG, SummonSymbolGreen)
WriteInt(SummonSymbolB, SummonSymbolBlue)
end

---------- Steam Version
if stmgames == 1 then
CommandStartR = 0x285B778
CommandStartG = CommandStartR+0x4
CommandStartB = CommandStartR+0x8
CommandTextR = CommandStartR+0xAC40
CommandTextG = CommandStartR+0xAC44
CommandTextB = CommandStartR+0xAC48
SelectR = CommandStartR+0x80
SelectG = CommandStartR+0x84
SelectB = CommandStartR+0x88
AttackR = CommandStartR-0x57F8
AttackG = CommandStartR-0x57F4
AttackB = CommandStartR-0x57F0
SelectGroundR = CommandStartR-0x25B8
SelectGroundG = CommandStartR-0x25B4
SelectGroundB = CommandStartR-0x25B0
CommandEndR = CommandStartR-0xC0
CommandEndG = CommandStartR-0xBC
CommandEndB = CommandStartR-0xB8
CommandMiddleR = CommandStartR-0x40
CommandMiddleG = CommandStartR-0x3C
CommandMiddleB = CommandStartR-0x38
SelectCentreLeftR = CommandStartR+0x140
SelectCentreLeftG = CommandStartR+0x144
SelectCentreLeftB = CommandStartR+0x148
SelectCentreRightR = CommandStartR+0x160
SelectCentreRightG = CommandStartR+0x164
SelectCentreRightB = CommandStartR+0x168
AttackSymbolR = CommandStartR-0x39F8
AttackSymbolG = CommandStartR-0x39F4
AttackSymbolB = CommandStartR-0x39F0
MagicSymbolR = CommandStartR-0x3938
MagicSymbolG = CommandStartR-0x3934
MagicSymbolB = CommandStartR-0x3930
ItemSymbolR = CommandStartR-0x3878
ItemSymbolG = CommandStartR-0x3874
ItemSymbolB = CommandStartR-0x3870
SummonSymbolR = CommandStartR-0x3338
SummonSymbolG = CommandStartR-0x3334
SummonSymbolB = CommandStartR-0x3330
WriteFloat(CommandStartR, CommandStartRed)
WriteFloat(CommandStartG, CommandStartGreen)
WriteFloat(CommandStartB, CommandStartBlue)
WriteFloat(CommandTextR, CommandTextRed)
WriteFloat(CommandTextG, CommandTextGreen)
WriteFloat(CommandTextB, CommandTextBlue)
WriteFloat(SelectR, SelectRed)
WriteFloat(SelectG, SelectGreen)
WriteFloat(SelectB, SelectBlue)
WriteInt(AttackR, AttackRed)
WriteInt(AttackG, AttackGreen)
WriteInt(AttackB, AttackBlue)
WriteInt(SelectGroundR, SelectGroundRed)
WriteInt(SelectGroundG, SelectGroundGreen)
WriteInt(SelectGroundB, SelectGroundBlue)
WriteFloat(CommandEndR, CommandEndRed)
WriteFloat(CommandEndG, CommandEndGreen)
WriteFloat(CommandEndB, CommandEndBlue)
WriteFloat(CommandMiddleR, CommandMiddleRed)
WriteFloat(CommandMiddleG, CommandMiddleGreen)
WriteFloat(CommandMiddleB, CommandMiddleBlue)
WriteFloat(SelectCentreLeftR, SelectCentreRed)
WriteFloat(SelectCentreLeftG, SelectCentreGreen)
WriteFloat(SelectCentreLeftB, SelectCentreBlue)
WriteFloat(SelectCentreRightR, SelectCentreRed)
WriteFloat(SelectCentreRightG, SelectCentreGreen)
WriteFloat(SelectCentreRightB, SelectCentreBlue)
WriteInt(AttackSymbolR, AttackSymbolRed)
WriteInt(AttackSymbolG, AttackSymbolGreen)
WriteInt(AttackSymbolB, AttackSymbolBlue)
WriteInt(MagicSymbolR, MagicSymbolRed)
WriteInt(MagicSymbolG, MagicSymbolGreen)
WriteInt(MagicSymbolB, MagicSymbolBlue)
WriteInt(ItemSymbolR, ItemSymbolRed)
WriteInt(ItemSymbolG, ItemSymbolGreen)
WriteInt(ItemSymbolB, ItemSymbolBlue)
WriteInt(SummonSymbolR, SummonSymbolRed)
WriteInt(SummonSymbolG, SummonSymbolGreen)
WriteInt(SummonSymbolB, SummonSymbolBlue)
end

---------- Steam JP Version
if stmjpgames == 1 then
CommandStartR = 0x285B778
CommandStartG = CommandStartR+0x4
CommandStartB = CommandStartR+0x8
CommandTextR = CommandStartR+0xAC40
CommandTextG = CommandStartR+0xAC44
CommandTextB = CommandStartR+0xAC48
SelectR = CommandStartR+0x80
SelectG = CommandStartR+0x84
SelectB = CommandStartR+0x88
AttackR = CommandStartR-0x57F8
AttackG = CommandStartR-0x57F4
AttackB = CommandStartR-0x57F0
SelectGroundR = CommandStartR-0x25B8
SelectGroundG = CommandStartR-0x25B4
SelectGroundB = CommandStartR-0x25B0
CommandEndR = CommandStartR-0xC0
CommandEndG = CommandStartR-0xBC
CommandEndB = CommandStartR-0xB8
CommandMiddleR = CommandStartR-0x40
CommandMiddleG = CommandStartR-0x3C
CommandMiddleB = CommandStartR-0x38
SelectCentreLeftR = CommandStartR+0x140
SelectCentreLeftG = CommandStartR+0x144
SelectCentreLeftB = CommandStartR+0x148
SelectCentreRightR = CommandStartR+0x160
SelectCentreRightG = CommandStartR+0x164
SelectCentreRightB = CommandStartR+0x168
AttackSymbolR = CommandStartR-0x39F8
AttackSymbolG = CommandStartR-0x39F4
AttackSymbolB = CommandStartR-0x39F0
MagicSymbolR = CommandStartR-0x3938
MagicSymbolG = CommandStartR-0x3934
MagicSymbolB = CommandStartR-0x3930
ItemSymbolR = CommandStartR-0x3878
ItemSymbolG = CommandStartR-0x3874
ItemSymbolB = CommandStartR-0x3870
SummonSymbolR = CommandStartR-0x3338
SummonSymbolG = CommandStartR-0x3334
SummonSymbolB = CommandStartR-0x3330
WriteFloat(CommandStartR, CommandStartRed)
WriteFloat(CommandStartG, CommandStartGreen)
WriteFloat(CommandStartB, CommandStartBlue)
WriteFloat(CommandTextR, CommandTextRed)
WriteFloat(CommandTextG, CommandTextGreen)
WriteFloat(CommandTextB, CommandTextBlue)
WriteFloat(SelectR, SelectRed)
WriteFloat(SelectG, SelectGreen)
WriteFloat(SelectB, SelectBlue)
WriteInt(AttackR, AttackRed)
WriteInt(AttackG, AttackGreen)
WriteInt(AttackB, AttackBlue)
WriteInt(SelectGroundR, SelectGroundRed)
WriteInt(SelectGroundG, SelectGroundGreen)
WriteInt(SelectGroundB, SelectGroundBlue)
WriteFloat(CommandEndR, CommandEndRed)
WriteFloat(CommandEndG, CommandEndGreen)
WriteFloat(CommandEndB, CommandEndBlue)
WriteFloat(CommandMiddleR, CommandMiddleRed)
WriteFloat(CommandMiddleG, CommandMiddleGreen)
WriteFloat(CommandMiddleB, CommandMiddleBlue)
WriteFloat(SelectCentreLeftR, SelectCentreRed)
WriteFloat(SelectCentreLeftG, SelectCentreGreen)
WriteFloat(SelectCentreLeftB, SelectCentreBlue)
WriteFloat(SelectCentreRightR, SelectCentreRed)
WriteFloat(SelectCentreRightG, SelectCentreGreen)
WriteFloat(SelectCentreRightB, SelectCentreBlue)
WriteInt(AttackSymbolR, AttackSymbolRed)
WriteInt(AttackSymbolG, AttackSymbolGreen)
WriteInt(AttackSymbolB, AttackSymbolBlue)
WriteInt(MagicSymbolR, MagicSymbolRed)
WriteInt(MagicSymbolG, MagicSymbolGreen)
WriteInt(MagicSymbolB, MagicSymbolBlue)
WriteInt(ItemSymbolR, ItemSymbolRed)
WriteInt(ItemSymbolG, ItemSymbolGreen)
WriteInt(ItemSymbolB, ItemSymbolBlue)
WriteInt(SummonSymbolR, SummonSymbolRed)
WriteInt(SummonSymbolG, SummonSymbolGreen)
WriteInt(SummonSymbolB, SummonSymbolBlue)
end
end
