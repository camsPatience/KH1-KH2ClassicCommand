LUAGUI_NAME = "Custom Magic Command HUD Color"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Custom Magic Command HUD Color"

MagicTextCR = 156
MagicTextCG = 96
MagicTextCB = 255
MagicDropDownR = 137
MagicDropDownG = 86
MagicDropDownB = 253
MagicMenuSymbolR = 128
MagicMenuSymbolG = 128
MagicMenuSymbolB = 128
MagicStartR = 137
MagicStartG = 86
MagicStartB = 253
MagicSelectR = 105
MagicSelectG = 52
MagicSelectB = 220
MagicBackGroundR = 49
MagicBackGroundG = 24
MagicBackGroundB = 104

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
		ConsolePrint("Custom Magic Command HUD Color (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Custom Magic Command HUD Color (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Custom Magic Command HUD Color (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
MagicStartRightR = 0x2853CC0
MagicStartRightG = MagicStartRightR+0x4
MagicStartRightB = MagicStartRightR+0x8
MagicStartLeftR = MagicStartRightR+0x1740
MagicStartLeftG = MagicStartLeftR+0x4
MagicStartLeftB = MagicStartLeftR+0x8
MagicTextR = MagicStartRightR-0x9C0
MagicTextG = MagicTextR+0x4
MagicTextB = MagicTextR+0x8
MagicSymbolR = MagicStartRightR+0x50C0
MagicSymbolG = MagicSymbolR+0x4
MagicSymbolB = MagicSymbolR+0x8
MagicEndRightR = MagicStartRightR+0xBCB8
MagicEndRightG = MagicEndRightR+0x4
MagicEndRightB = MagicEndRightR+0x8
MagicEndLeftR = MagicStartRightR+0xBC78
MagicEndLeftG = MagicEndLeftR+0x4
MagicEndLeftB = MagicEndLeftR+0x8
MagicMiddleRightR = MagicStartRightR+0xBD38
MagicMiddleRightG = MagicMiddleRightR+0x4
MagicMiddleRightB = MagicMiddleRightR+0x8
MagicMiddleLeftR = MagicStartRightR+0xBD78
MagicMiddleLeftG = MagicMiddleLeftR+0x4
MagicMiddleLeftB = MagicMiddleLeftR+0x8
StartLeftR = MagicStartRightR+0xBDB8
StartLeftG = StartLeftR+0x4
StartLeftB = StartLeftR+0x8
StartRightR = MagicStartRightR+0xBDF8
StartRightG = StartRightR+0x4
StartRightB = StartRightR+0x8
SelectLeftR = MagicStartRightR+0xBEB8
SelectLeftG = SelectLeftR+0x4
SelectLeftB = SelectLeftR+0x8
SelectRightR = MagicStartRightR+0xBEF8
SelectRightG = SelectRightR+0x4
SelectRightB = SelectRightR+0x8
BackGroundLeftR = MagicStartRightR+0xBFF8
BackGroundLeftG = BackGroundLeftR+0x4
BackGroundLeftB = BackGroundLeftR+0x8
BackGroundMidR = MagicStartRightR+0xC018
BackGroundMidG = BackGroundMidR+0x4
BackGroundMidB = BackGroundMidR+0x8
BackGroundRightR = MagicStartRightR+0xC098
BackGroundRightG = BackGroundRightR+0x4
BackGroundRightB = BackGroundRightR+0x8
BackGroundGroundLineR = MagicStartRightR+0x15C0
BackGroundGroundLineG = BackGroundGroundLineR+0x4
BackGroundGroundLineB = BackGroundGroundLineR+0x8
WriteInt(MagicStartRightR, MagicDropDownR)
WriteInt(MagicStartRightG, MagicDropDownG)
WriteInt(MagicStartRightB, MagicDropDownB)
WriteInt(MagicStartLeftR, MagicDropDownR)
WriteInt(MagicStartLeftG, MagicDropDownG)
WriteInt(MagicStartLeftB, MagicDropDownB)
WriteInt(MagicTextR, MagicTextCR)
WriteInt(MagicTextG, MagicTextCG)
WriteInt(MagicTextB, MagicTextCB)
WriteInt(MagicSymbolR, MagicMenuSymbolR)
WriteInt(MagicSymbolG, MagicMenuSymbolG)
WriteInt(MagicSymbolB, MagicMenuSymbolB)
WriteFloat(MagicEndRightR, MagicDropDownR)
WriteFloat(MagicEndRightG, MagicDropDownG)
WriteFloat(MagicEndRightB, MagicDropDownB)
WriteFloat(MagicEndLeftR, MagicDropDownR)
WriteFloat(MagicEndLeftG, MagicDropDownG)
WriteFloat(MagicEndLeftB, MagicDropDownB)
WriteFloat(MagicMiddleRightR, MagicDropDownR)
WriteFloat(MagicMiddleRightG, MagicDropDownG)
WriteFloat(MagicMiddleRightB, MagicDropDownB)
WriteFloat(MagicMiddleLeftR, MagicDropDownR)
WriteFloat(MagicMiddleLeftG, MagicDropDownG)
WriteFloat(MagicMiddleLeftB, MagicDropDownB)
WriteFloat(StartLeftR, MagicStartR)
WriteFloat(StartLeftG, MagicStartG)
WriteFloat(StartLeftB, MagicStartB)
WriteFloat(StartRightR, MagicStartR)
WriteFloat(StartRightB, MagicStartB)
WriteFloat(StartRightG, MagicStartG)
WriteFloat(SelectLeftR, MagicSelectR)
WriteFloat(SelectLeftG, MagicSelectG)
WriteFloat(SelectLeftB, MagicSelectB)
WriteFloat(SelectRightR, MagicSelectR)
WriteFloat(SelectRightG, MagicSelectG)
WriteFloat(SelectRightB, MagicSelectB)
WriteFloat(BackGroundLeftR, MagicBackGroundR)
WriteFloat(BackGroundLeftG, MagicBackGroundG)
WriteFloat(BackGroundLeftB, MagicBackGroundB)
WriteFloat(BackGroundMidR, MagicBackGroundR)
WriteFloat(BackGroundMidG, MagicBackGroundG)
WriteFloat(BackGroundMidB, MagicBackGroundB)
WriteFloat(BackGroundRightR, MagicBackGroundR)
WriteFloat(BackGroundRightG, MagicBackGroundG)
WriteFloat(BackGroundRightB, MagicBackGroundB)
WriteInt(BackGroundGroundLineR, MagicDropDownR)
WriteInt(BackGroundGroundLineG, MagicDropDownG)
WriteInt(BackGroundGroundLineB, MagicDropDownB)
end

---------- Steam Version
if stmgames == 1 then
MagicStartRightR = 0x28532C0
MagicStartRightG = MagicStartRightR+0x4
MagicStartRightB = MagicStartRightR+0x8
MagicStartLeftR = MagicStartRightR+0x1740
MagicStartLeftG = MagicStartLeftR+0x4
MagicStartLeftB = MagicStartLeftR+0x8
MagicTextR = MagicStartRightR-0x9C0
MagicTextG = MagicTextR+0x4
MagicTextB = MagicTextR+0x8
MagicSymbolR = MagicStartRightR+0x50C0
MagicSymbolG = MagicSymbolR+0x4
MagicSymbolB = MagicSymbolR+0x8
MagicEndRightR = MagicStartRightR+0xBCB8
MagicEndRightG = MagicEndRightR+0x4
MagicEndRightB = MagicEndRightR+0x8
MagicEndLeftR = MagicStartRightR+0xBC78
MagicEndLeftG = MagicEndLeftR+0x4
MagicEndLeftB = MagicEndLeftR+0x8
MagicMiddleRightR = MagicStartRightR+0xBD38
MagicMiddleRightG = MagicMiddleRightR+0x4
MagicMiddleRightB = MagicMiddleRightR+0x8
MagicMiddleLeftR = MagicStartRightR+0xBD78
MagicMiddleLeftG = MagicMiddleLeftR+0x4
MagicMiddleLeftB = MagicMiddleLeftR+0x8
StartLeftR = MagicStartRightR+0xBDB8
StartLeftG = StartLeftR+0x4
StartLeftB = StartLeftR+0x8
StartRightR = MagicStartRightR+0xBDF8
StartRightG = StartRightR+0x4
StartRightB = StartRightR+0x8
SelectLeftR = MagicStartRightR+0xBEB8
SelectLeftG = SelectLeftR+0x4
SelectLeftB = SelectLeftR+0x8
SelectRightR = MagicStartRightR+0xBEF8
SelectRightG = SelectRightR+0x4
SelectRightB = SelectRightR+0x8
BackGroundLeftR = MagicStartRightR+0xBFF8
BackGroundLeftG = BackGroundLeftR+0x4
BackGroundLeftB = BackGroundLeftR+0x8
BackGroundMidR = MagicStartRightR+0xC018
BackGroundMidG = BackGroundMidR+0x4
BackGroundMidB = BackGroundMidR+0x8
BackGroundRightR = MagicStartRightR+0xC098
BackGroundRightG = BackGroundRightR+0x4
BackGroundRightB = BackGroundRightR+0x8
BackGroundGroundLineR = MagicStartRightR+0x15C0
BackGroundGroundLineG = BackGroundGroundLineR+0x4
BackGroundGroundLineB = BackGroundGroundLineR+0x8
WriteInt(MagicStartRightR, MagicDropDownR)
WriteInt(MagicStartRightG, MagicDropDownG)
WriteInt(MagicStartRightB, MagicDropDownB)
WriteInt(MagicStartLeftR, MagicDropDownR)
WriteInt(MagicStartLeftG, MagicDropDownG)
WriteInt(MagicStartLeftB, MagicDropDownB)
WriteInt(MagicTextR, MagicTextCR)
WriteInt(MagicTextG, MagicTextCG)
WriteInt(MagicTextB, MagicTextCB)
WriteInt(MagicSymbolR, MagicMenuSymbolR)
WriteInt(MagicSymbolG, MagicMenuSymbolG)
WriteInt(MagicSymbolB, MagicMenuSymbolB)
WriteFloat(MagicEndRightR, MagicDropDownR)
WriteFloat(MagicEndRightG, MagicDropDownG)
WriteFloat(MagicEndRightB, MagicDropDownB)
WriteFloat(MagicEndLeftR, MagicDropDownR)
WriteFloat(MagicEndLeftG, MagicDropDownG)
WriteFloat(MagicEndLeftB, MagicDropDownB)
WriteFloat(MagicMiddleRightR, MagicDropDownR)
WriteFloat(MagicMiddleRightG, MagicDropDownG)
WriteFloat(MagicMiddleRightB, MagicDropDownB)
WriteFloat(MagicMiddleLeftR, MagicDropDownR)
WriteFloat(MagicMiddleLeftG, MagicDropDownG)
WriteFloat(MagicMiddleLeftB, MagicDropDownB)
WriteFloat(StartLeftR, MagicStartR)
WriteFloat(StartLeftG, MagicStartG)
WriteFloat(StartLeftB, MagicStartB)
WriteFloat(StartRightR, MagicStartR)
WriteFloat(StartRightB, MagicStartB)
WriteFloat(StartRightG, MagicStartG)
WriteFloat(SelectLeftR, MagicSelectR)
WriteFloat(SelectLeftG, MagicSelectG)
WriteFloat(SelectLeftB, MagicSelectB)
WriteFloat(SelectRightR, MagicSelectR)
WriteFloat(SelectRightG, MagicSelectG)
WriteFloat(SelectRightB, MagicSelectB)
WriteFloat(BackGroundLeftR, MagicBackGroundR)
WriteFloat(BackGroundLeftG, MagicBackGroundG)
WriteFloat(BackGroundLeftB, MagicBackGroundB)
WriteFloat(BackGroundMidR, MagicBackGroundR)
WriteFloat(BackGroundMidG, MagicBackGroundG)
WriteFloat(BackGroundMidB, MagicBackGroundB)
WriteFloat(BackGroundRightR, MagicBackGroundR)
WriteFloat(BackGroundRightG, MagicBackGroundG)
WriteFloat(BackGroundRightB, MagicBackGroundB)
WriteInt(BackGroundGroundLineR, MagicDropDownR)
WriteInt(BackGroundGroundLineG, MagicDropDownG)
WriteInt(BackGroundGroundLineB, MagicDropDownB)
end

---------- Steam JP Version
if stmjpgames == 1 then
MagicStartRightR = 0x28532C0
MagicStartRightG = MagicStartRightR+0x4
MagicStartRightB = MagicStartRightR+0x8
MagicStartLeftR = MagicStartRightR+0x1740
MagicStartLeftG = MagicStartLeftR+0x4
MagicStartLeftB = MagicStartLeftR+0x8
MagicTextR = MagicStartRightR-0x9C0
MagicTextG = MagicTextR+0x4
MagicTextB = MagicTextR+0x8
MagicSymbolR = MagicStartRightR+0x50C0
MagicSymbolG = MagicSymbolR+0x4
MagicSymbolB = MagicSymbolR+0x8
MagicEndRightR = MagicStartRightR+0xBCB8
MagicEndRightG = MagicEndRightR+0x4
MagicEndRightB = MagicEndRightR+0x8
MagicEndLeftR = MagicStartRightR+0xBC78
MagicEndLeftG = MagicEndLeftR+0x4
MagicEndLeftB = MagicEndLeftR+0x8
MagicMiddleRightR = MagicStartRightR+0xBD38
MagicMiddleRightG = MagicMiddleRightR+0x4
MagicMiddleRightB = MagicMiddleRightR+0x8
MagicMiddleLeftR = MagicStartRightR+0xBD78
MagicMiddleLeftG = MagicMiddleLeftR+0x4
MagicMiddleLeftB = MagicMiddleLeftR+0x8
StartLeftR = MagicStartRightR+0xBDB8
StartLeftG = StartLeftR+0x4
StartLeftB = StartLeftR+0x8
StartRightR = MagicStartRightR+0xBDF8
StartRightG = StartRightR+0x4
StartRightB = StartRightR+0x8
SelectLeftR = MagicStartRightR+0xBEB8
SelectLeftG = SelectLeftR+0x4
SelectLeftB = SelectLeftR+0x8
SelectRightR = MagicStartRightR+0xBEF8
SelectRightG = SelectRightR+0x4
SelectRightB = SelectRightR+0x8
BackGroundLeftR = MagicStartRightR+0xBFF8
BackGroundLeftG = BackGroundLeftR+0x4
BackGroundLeftB = BackGroundLeftR+0x8
BackGroundMidR = MagicStartRightR+0xC018
BackGroundMidG = BackGroundMidR+0x4
BackGroundMidB = BackGroundMidR+0x8
BackGroundRightR = MagicStartRightR+0xC098
BackGroundRightG = BackGroundRightR+0x4
BackGroundRightB = BackGroundRightR+0x8
BackGroundGroundLineR = MagicStartRightR+0x15C0
BackGroundGroundLineG = BackGroundGroundLineR+0x4
BackGroundGroundLineB = BackGroundGroundLineR+0x8
WriteInt(MagicStartRightR, MagicDropDownR)
WriteInt(MagicStartRightG, MagicDropDownG)
WriteInt(MagicStartRightB, MagicDropDownB)
WriteInt(MagicStartLeftR, MagicDropDownR)
WriteInt(MagicStartLeftG, MagicDropDownG)
WriteInt(MagicStartLeftB, MagicDropDownB)
WriteInt(MagicTextR, MagicTextCR)
WriteInt(MagicTextG, MagicTextCG)
WriteInt(MagicTextB, MagicTextCB)
WriteInt(MagicSymbolR, MagicMenuSymbolR)
WriteInt(MagicSymbolG, MagicMenuSymbolG)
WriteInt(MagicSymbolB, MagicMenuSymbolB)
WriteFloat(MagicEndRightR, MagicDropDownR)
WriteFloat(MagicEndRightG, MagicDropDownG)
WriteFloat(MagicEndRightB, MagicDropDownB)
WriteFloat(MagicEndLeftR, MagicDropDownR)
WriteFloat(MagicEndLeftG, MagicDropDownG)
WriteFloat(MagicEndLeftB, MagicDropDownB)
WriteFloat(MagicMiddleRightR, MagicDropDownR)
WriteFloat(MagicMiddleRightG, MagicDropDownG)
WriteFloat(MagicMiddleRightB, MagicDropDownB)
WriteFloat(MagicMiddleLeftR, MagicDropDownR)
WriteFloat(MagicMiddleLeftG, MagicDropDownG)
WriteFloat(MagicMiddleLeftB, MagicDropDownB)
WriteFloat(StartLeftR, MagicStartR)
WriteFloat(StartLeftG, MagicStartG)
WriteFloat(StartLeftB, MagicStartB)
WriteFloat(StartRightR, MagicStartR)
WriteFloat(StartRightB, MagicStartB)
WriteFloat(StartRightG, MagicStartG)
WriteFloat(SelectLeftR, MagicSelectR)
WriteFloat(SelectLeftG, MagicSelectG)
WriteFloat(SelectLeftB, MagicSelectB)
WriteFloat(SelectRightR, MagicSelectR)
WriteFloat(SelectRightG, MagicSelectG)
WriteFloat(SelectRightB, MagicSelectB)
WriteFloat(BackGroundLeftR, MagicBackGroundR)
WriteFloat(BackGroundLeftG, MagicBackGroundG)
WriteFloat(BackGroundLeftB, MagicBackGroundB)
WriteFloat(BackGroundMidR, MagicBackGroundR)
WriteFloat(BackGroundMidG, MagicBackGroundG)
WriteFloat(BackGroundMidB, MagicBackGroundB)
WriteFloat(BackGroundRightR, MagicBackGroundR)
WriteFloat(BackGroundRightG, MagicBackGroundG)
WriteFloat(BackGroundRightB, MagicBackGroundB)
WriteInt(BackGroundGroundLineR, MagicDropDownR)
WriteInt(BackGroundGroundLineG, MagicDropDownG)
WriteInt(BackGroundGroundLineB, MagicDropDownB)
end
end
